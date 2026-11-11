use crate::{Store, now, media, download_output::{Output, AudioFormat, commit_files}};
use crate::download_resume::{self, YoutubeVersion};
use serde_json::{Value, json};
use sha2::{Sha256, Digest};
use std::{collections::{HashMap, HashSet}, path::{Path, PathBuf}, process::{Command, Stdio}, sync::{atomic::Ordering, mpsc}, io::{Read, BufRead, BufReader}, time::{Duration, Instant}, net::{IpAddr, ToSocketAddrs}};
use tauri::{Manager, Emitter};

#[derive(Clone)]
pub struct Plan {
    url: String,
    title: String,
    /// (título, artista) para la biblioteca de música; ver track_names.rs.
    names: (String, String),
    created: u64,
    choices: HashMap<String, String>,
    direct: bool,
    audio: Option<String>,
    versions: HashMap<String, YoutubeVersion>,
    inspection: Value,
}
fn canonical(text: &str) -> Result<(String, bool), String> {
    if text.len() > 8192 { return Err("El enlace es demasiado largo.".into()); }
    let u = reqwest::Url::parse(text.trim()).map_err(|_| "Enlace no válido.".to_string())?;
    if u.scheme() != "https" || !u.username().is_empty() || u.password().is_some() || u.port().is_some() { return Err("Usa un enlace HTTPS público.".into()); }
    let host = u.host_str().ok_or("El enlace no tiene dominio.")?;
    let youtube = ["youtube.com", "www.youtube.com", "m.youtube.com", "music.youtube.com", "youtu.be", "www.youtu.be", "youtube-nocookie.com", "www.youtube-nocookie.com"].contains(&host);
    if !youtube {
        let path = Path::new(u.path());
        let ext = path.extension().and_then(|s| s.to_str()).unwrap_or("").to_ascii_lowercase();
        if !["mp4", "m4v", "webm", "mov", "mkv", "3gp"].contains(&ext.as_str()) { return Err("Pega un enlace de YouTube o un archivo directo de vídeo.".into()); }
        return Ok((u.to_string(), true));
    }
    let pieces: Vec<&str> = u.path().split('/').filter(|s| !s.is_empty()).collect();
    let id = if host.ends_with("youtu.be") && pieces.len() == 1 { pieces[0].to_string() }
        else if u.path() == "/watch" { u.query_pairs().find(|(k,_)| k == "v").map(|(_,v)| v.to_string()).unwrap_or_default() }
        else if pieces.len() == 2 && ["shorts", "live", "embed", "v"].contains(&pieces[0]) { pieces[1].to_string() } else { String::new() };
    if id.len() != 11 || !id.chars().all(|c| c.is_ascii_alphanumeric() || c == '_' || c == '-') { return Err("El enlace no identifica un vídeo de YouTube.".into()); }
    Ok((format!("https://www.youtube.com/watch?v={id}"), false))
}
fn engine(app: &tauri::AppHandle, name: &str) -> Result<PathBuf, String> {
    let base = app.path().resource_dir().map_err(|_| "No se encuentra la carpeta de la app.".to_string())?.join("resources");
    let base = if base.join(name).exists() { base } else { std::env::current_exe().map_err(|_| "No se encuentra la app.".to_string())?.parent().unwrap().join("resources") };
    let hashes: Value = serde_json::from_slice(&std::fs::read(base.join("hashes.json")).map_err(|_| "Faltan los motores de descarga. Extrae la carpeta completa de Brisa.".to_string())?).map_err(|_| "El manifiesto de motores no es válido.".to_string())?;
    let path = base.join(name);
    let mut file = std::fs::File::open(&path).map_err(|_| format!("Falta {name}. Extrae la carpeta completa de Brisa."))?;
    let mut hash = Sha256::new(); let mut buffer = [0u8; 65536];
    loop { let n = file.read(&mut buffer).map_err(|_| "No se pudo verificar el motor.".to_string())?; if n == 0 { break; } hash.update(&buffer[..n]); }
    if hashes[name].as_str() != Some(format!("{:x}", hash.finalize()).as_str()) { return Err("Un motor de descarga fue modificado. Vuelve a extraer el paquete original.".into()); }
    Ok(path)
}
fn command(path: &Path) -> Command {
    let mut command = Command::new(path);
    #[cfg(windows)] { use std::os::windows::process::CommandExt; command.creation_flags(0x08000000); }
    command
}
fn base_args(qjs: &Path) -> Vec<String> {
    vec!["--ignore-config", "--no-playlist", "--no-warnings", "--no-remote-components", "--socket-timeout", "20", "--retries", "1", "--extractor-retries", "1", "--js-runtimes"].into_iter().map(String::from).chain([format!("quickjs:{}", qjs.display())]).collect()
}
fn public(ip: IpAddr) -> bool {
    match ip {
        IpAddr::V4(v) => { let b = v.octets(); !v.is_private() && !v.is_loopback() && !v.is_link_local() && !v.is_unspecified() && !v.is_multicast() && b[0] != 0 && b[0] < 224 && !(b[0] == 100 && (64..=127).contains(&b[1])) },
        IpAddr::V6(v) => !v.is_loopback() && !v.is_unspecified() && !v.is_multicast() && (v.segments()[0] & 0xfe00 != 0xfc00) && (v.segments()[0] & 0xffc0 != 0xfe80) && v.to_ipv4_mapped().map(|v| public(IpAddr::V4(v))).unwrap_or(true),
    }
}
// Resolve once and pin the checked addresses. Every redirect is checked again.
async fn direct_response(url: &str, head: bool, partial: Option<(String, u64)>) -> Result<reqwest::Response, String> {
    let mut url = reqwest::Url::parse(url).map_err(|_| "Enlace no válido.".to_string())?;
    for _ in 0..6 {
        if url.scheme() != "https" || !url.username().is_empty() || url.password().is_some() || url.port().is_some() { return Err("Redirección no segura.".into()); }
        let host = url.host_str().ok_or("Dominio no válido.")?;
        let addresses: Vec<_> = (host, 443).to_socket_addrs().map_err(|_| "No se pudo conectar. Comprueba Internet.".to_string())?.collect();
        if addresses.is_empty() || addresses.iter().any(|a| !public(a.ip())) { return Err("No se admiten direcciones de red privadas.".into()); }
        let client = reqwest::Client::builder().no_proxy().redirect(reqwest::redirect::Policy::none()).resolve_to_addrs(host, &addresses).connect_timeout(Duration::from_secs(20)).read_timeout(Duration::from_secs(35)).build().map_err(|_| "No se pudo preparar la conexión.".to_string())?;
        let mut request = (if head { client.head(url.clone()) } else { client.get(url.clone()) })
            .header(reqwest::header::ACCEPT_ENCODING, "identity");
        if let Some((etag, offset)) = &partial {
            request = request.header(reqwest::header::RANGE, format!("bytes={offset}-"))
                .header(reqwest::header::IF_RANGE, etag);
        }
        let response = request.send().await.map_err(|_| "No se pudo conectar al archivo. Comprueba Internet.".to_string())?;
        if response.status().is_redirection() {
            let location = response.headers().get(reqwest::header::LOCATION).and_then(|v| v.to_str().ok()).ok_or("Redirección no válida.")?;
            url = url.join(location).map_err(|_| "Redirección no válida.".to_string())?; continue;
        }
        if partial.is_some() && response.status().as_u16() == 416 { return Ok(response); }
        if !response.status().is_success() { return Err(format!("El servidor devolvió HTTP {}. Prueba otro enlace.", response.status().as_u16())); }
        return Ok(response);
    }
    Err("El enlace redirige demasiadas veces.".into())
}
#[tauri::command]
pub async fn inspect(app: tauri::AppHandle, store: tauri::State<'_, Store>, url: String) -> Result<Value, String> {
    let (url, direct) = canonical(&url)?;
    let _permit = store.inspecting.acquire().await.map_err(|_| "No se pudo iniciar la consulta.")?;
    if let Some(result) = store.plans.lock().unwrap().values()
        .find(|plan| plan.url == url && now().saturating_sub(plan.created) < 120_000)
        .map(|plan| plan.inspection.clone())
    {
        return Ok(result);
    }
    let mut choices = HashMap::new(); let mut formats = Vec::new(); let title; let duration; let names;
    let mut audio = None;
    let mut audio_size = 0;
    let mut versions = HashMap::new();
    if direct {
        let query = url.clone();
        let size = tauri::async_runtime::spawn_blocking(move || tauri::async_runtime::block_on(direct_response(&query, true, None)).map(|r| download_resume::header(&r, "content-length").parse::<u64>().unwrap_or(0))).await.map_err(|_| "No se pudo consultar el archivo.".to_string())??;
        title = reqwest::Url::parse(&url).unwrap().path_segments().and_then(|mut s| s.next_back()).unwrap_or("Video").to_string(); duration = 0;
        names = crate::track_names::names(Path::new(&title).file_stem().and_then(|s| s.to_str()).unwrap_or(&title), None, None, None);
        choices.insert("original".into(), String::new());
        formats.push(json!({"id":"original", "label":"Calidad original", "codec":"Formato del archivo", "size":size, "compatible":true}));
    } else {
        let executable = engine(&app, "yt-dlp.exe")?; let qjs = engine(&app, "qjs.exe")?;
        let mut cmd = tokio::process::Command::from(command(&executable));
        cmd.args(base_args(&qjs)).args(["--dump-single-json", "--skip-download", "--", &url]).kill_on_drop(true);
        let child = cmd.stdout(Stdio::piped()).stderr(Stdio::null()).spawn().map_err(|_| "No se pudo iniciar el motor de descarga.".to_string())?;
        let _job = crate::job::Job::assign(child.id().ok_or("No se pudo iniciar el motor.")?)?;
        let output = tokio::time::timeout(Duration::from_secs(50), child.wait_with_output()).await.map_err(|_| "YouTube tardó demasiado. Inténtalo otra vez.".to_string())?.map_err(|_| "No se pudo iniciar el motor de descarga.".to_string())?;
        if !output.status.success() { return Err("No se pudo consultar el vídeo. Puede ser privado, no estar disponible o requerir una actualización de Brisa.".into()); }
        if output.stdout.len() > 16 * 1024 * 1024 { return Err("La respuesta del vídeo es demasiado grande.".into()); }
        let info: Value = serde_json::from_slice(&output.stdout).map_err(|_| "El motor devolvió una respuesta no válida.".to_string())?;
        if info["is_live"].as_bool() == Some(true) || info["live_status"] == "is_upcoming" { return Err("Por ahora se descargan vídeos terminados; los directos aún no están disponibles.".into()); }
        title = info["title"].as_str().unwrap_or("Video").to_string(); duration = info["duration"].as_f64().unwrap_or(0.0) as u64;
        names = crate::track_names::names(&title, info["track"].as_str(), info["artist"].as_str().or_else(|| info["creator"].as_str()),
            info["channel"].as_str().or_else(|| info["uploader"].as_str()));
        let source = info["formats"].as_array().ok_or("No hay formatos descargables.")?;
        let score = |f: &&Value| (f["language_preference"].as_f64().unwrap_or(0.0) * 10000.0 + f["abr"].as_f64().unwrap_or(0.0) * if f["acodec"].as_str().unwrap_or("").starts_with("opus") { 1.25 } else { 1.0 }) as i64;
        let format_id = |f: &Value| f["format_id"].as_str().filter(|id| valid_format_id(id)).map(str::to_string);
        let best_audio = source.iter().filter(|f| f["vcodec"] == "none" && f["acodec"] != "none"
            && f["has_drm"].as_bool() != Some(true) && format_id(f).is_some()).max_by_key(score);
        if let Some(track) = best_audio {
            audio = format_id(track);
            audio_size = estimate(track, duration);
        }
        for track in source {
            if let (Some(id), Some(version)) = (format_id(track),
                track["url"].as_str().and_then(download_resume::youtube_version))
            {
                versions.insert(id, version);
            }
        }
        let mut videos: Vec<_> = source.iter().filter(|f| f["vcodec"].as_str().map(|s| s != "none").unwrap_or(false) && f["height"].as_u64().unwrap_or(0) > 0 && f["has_drm"].as_bool() != Some(true)).collect();
        videos.sort_by_key(|f| std::cmp::Reverse((f["height"].as_u64().unwrap_or(0), f["fps"].as_f64().unwrap_or(0.0) as u64, f["acodec"] == "none")));
        let mut seen = HashSet::new();
        for f in videos {
            let video_id = f["format_id"].as_str().unwrap_or("");
            if !valid_format_id(video_id) { continue; }
            let codec = f["vcodec"].as_str().unwrap_or("");
            let label = if codec.starts_with("avc") { "H.264" } else if codec.starts_with("vp") { "VP9" } else if codec.starts_with("av01") { "AV1" } else { continue; };
            let height = f["height"].as_u64().unwrap_or(0); let fps = f["fps"].as_f64().unwrap_or(0.0);
            if !seen.insert((height, fps as u64, label)) { continue; }
            let separate = f["acodec"] == "none";
            let selector = if separate {
                let Some(audio_id) = &audio else { continue; };
                format!("{video_id}+{audio_id}")
            } else { video_id.to_string() };
            let id = uuid::Uuid::new_v4().to_string(); choices.insert(id.clone(), selector);
            let video_size = estimate(f, duration);
            let size = if separate && video_size > 0 && audio_size > 0 { video_size.saturating_add(audio_size) }
                else if separate { 0 } else { video_size };
            formats.push(json!({"id":id, "label":format!("{height}p"), "height":height, "codec":label, "fps":fps, "size":size, "compatible": label == "H.264" && height <= 1080}));
            if formats.len() >= 40 { break; }
        }
    }
    if formats.is_empty() && audio.is_none() { return Err("No hay formatos descargables para este vídeo.".into()); }
    let id = uuid::Uuid::new_v4().to_string(); let mut plans = store.plans.lock().unwrap();
    plans.retain(|_, p| now().saturating_sub(p.created) < 600_000);
    if plans.len() >= 4 {
        if let Some(oldest) = plans.iter().min_by_key(|(_, plan)| plan.created).map(|(id, _)| id.clone()) {
            plans.remove(&oldest);
        }
    }
    let inspection = json!({"inspectionId":id, "title":title, "duration":duration, "formats":formats,
        "audioAvailable":audio.is_some(), "audioSize":audio_size});
    plans.insert(id, Plan { url, title, names, created: now(), choices, direct, audio, versions, inspection: inspection.clone() });
    Ok(inspection)
}

fn valid_format_id(id: &str) -> bool {
    !id.is_empty() && id.chars().all(|c| c.is_ascii_alphanumeric() || "._-".contains(c))
}

fn estimate(track: &Value, duration: u64) -> u64 {
    track["filesize"].as_u64().or_else(|| track["filesize_approx"].as_u64()).filter(|n| *n > 0)
        .unwrap_or_else(|| {
            let bitrate = track["tbr"].as_f64().or_else(|| track["abr"].as_f64()).unwrap_or(0.0);
            (duration as f64 * bitrate * 125.0) as u64
        })
}

fn publish(app: &tauri::AppHandle, store: &Store, status: &str, title: &str, done: u64, total: u64, error: Option<&str>) {
    let mut value = json!({"status":status,"title":title,"downloadedBytes":done,"totalBytes":total});
    if let Some(error) = error { value["error"] = json!(error); }
    *store.state.lock().unwrap() = value.clone(); let _ = app.emit("brisa-download", value);
}
fn safe_name(title: &str) -> String {
    let text: String = title.chars().map(|c| if c.is_control() || "\\/<>:\"|?*".contains(c) { '_' } else { c }).take(140).collect();
    let text = text.trim().trim_end_matches(['.', ' ']); if text.is_empty() { "Video".into() } else { text.into() }
}

fn convert_file(app: &tauri::AppHandle, store: &Store, input: &Path, output: &Path, title: &str, args: &[&str], phase: &str, failure: &str) -> Result<PathBuf,String> {
    if store.cancelled.load(Ordering::SeqCst) { return Err("Descarga cancelada.".into()); }
    publish(app,store,phase,title,0,0,None);
    let ffmpeg=engine(app,"ffmpeg.exe")?;
    let mut cmd=command(&ffmpeg);
    cmd.args(["-nostdin","-hide_banner","-loglevel","error","-i"]).arg(input)
       .args(args).arg(output).stdout(Stdio::null()).stderr(Stdio::null());
    let mut child=cmd.spawn().map_err(|_|"No se pudo iniciar el motor de conversión.".to_string())?;
    let job=match crate::job::Job::assign(child.id()){Ok(job)=>job,Err(error)=>{let _=child.kill();let _=child.wait();return Err(error);}};
    *store.child.lock().unwrap()=Some(child);
    let result=loop {
        if store.cancelled.load(Ordering::SeqCst){job.terminate();if let Some(c)=store.child.lock().unwrap().as_mut(){let _=c.kill();}}
        let status={let mut handle=store.child.lock().unwrap();handle.as_mut().unwrap().try_wait().map_err(|_|"No se pudo consultar la conversión.".to_string())?};
        if let Some(status)=status{break status.success();}
        std::thread::sleep(Duration::from_millis(100));
    };
    *store.child.lock().unwrap()=None;
    if store.cancelled.load(Ordering::SeqCst){return Err("Descarga cancelada.".into());}
    if !result||std::fs::metadata(output).map(|m|m.len()).unwrap_or(0)==0{return Err(failure.into());}
    Ok(output.to_path_buf())
}
// La música se guarda con el audio original siempre que el contenedor lo admita; si la copia
// directa falla, se recurre al MP3 para no dejar la descarga sin música.
fn export_audio(app: &tauri::AppHandle, store: &Store, input: &Path, temp: &Path, title: &str, format: AudioFormat) -> Result<PathBuf,String> {
    if !format.recodes() {
        let copied = convert_file(app,store,input,&temp.join(format.file_name()),title,format.ffmpeg_args(),"converting","");
        if copied.is_ok() || store.cancelled.load(Ordering::SeqCst) { return copied; }
        let _ = std::fs::remove_file(temp.join(format.file_name()));
    }
    let mp3 = AudioFormat::Mp3;
    convert_file(app,store,input,&temp.join(mp3.file_name()),title,mp3.ffmpeg_args(),
        "converting","No se pudo guardar la música. Comprueba que el archivo tenga audio.")
}

fn run(app: tauri::AppHandle, store: Store, plan: Plan, selector: String, mode: Output, audio_format: AudioFormat, root: PathBuf, destination: String) {
    let suffix = uuid::Uuid::new_v4().to_string();
    let temp = root.join(format!(".brisa-{suffix}"));
    let mut cache = None;
    let result = (|| -> Result<PathBuf, String> {
        std::fs::create_dir_all(&temp).map_err(|_| "No se puede escribir en la carpeta de descargas. Elige otra ubicación.".to_string())?;
        if plan.direct {
            let dir = download_resume::prepare(&store.root, &format!("direct:{}", plan.url))?;
            cache = Some(dir.clone());
            let source = tauri::async_runtime::block_on(async {
                let cancelled = store.direct_cancel.notified();
                if store.cancelled.load(Ordering::SeqCst) { return Err("Descarga cancelada.".into()); }
                let mut last = Instant::now();
                let transfer = download_resume::direct(&dir, |range| direct_response(&plan.url, false, range), |done, total| {
                    if last.elapsed() > Duration::from_millis(500) && !store.cancelled.load(Ordering::SeqCst) {
                        publish(&app, &store, "downloading", &plan.title, done, total, None);
                        last = Instant::now();
                    }
                });
                tokio::select! {
                    biased;
                    _ = cancelled => Err("Descarga cancelada.".into()),
                    result = transfer => result,
                }
            })?;
            let url = reqwest::Url::parse(&plan.url).unwrap();
            let ext = Path::new(url.path()).extension().and_then(|s| s.to_str()).unwrap_or("mp4");
            let target = temp.join(format!("source.{ext}"));
            std::fs::copy(source, &target).map_err(|_| "No se pudo guardar el vídeo. Comprueba el espacio disponible.")?;
            return Ok(target);
        }
        let formats = selector.split('+').map(|id| plan.versions.get(id).map(|version| (id, version)))
            .collect::<Option<Vec<_>>>();
        let selector = if let Some(formats) = formats {
            let versions: Vec<_> = formats.iter().map(|(_, version)| version.key()).collect();
            cache = Some(download_resume::prepare(&store.root, &format!("youtube:{}:{selector}:{}", plan.url, versions.join("+")))?);
            formats.iter().map(|(id, version)| version.selector(id)).collect::<Vec<_>>().join("+")
        } else { selector };
        let work = cache.as_deref().unwrap_or(&temp);
        let executable = engine(&app, "yt-dlp.exe")?; let qjs = engine(&app, "qjs.exe")?; let ffmpeg = engine(&app, "ffmpeg.exe")?;
        let template = work.join("source.%(ext)s");
        let mut cmd = command(&executable);
        cmd.args(base_args(&qjs)).args(["--newline", "--progress", "--no-mtime", "--concurrent-fragments", "4", "--socket-timeout", "35", "--retries", "4", "--fragment-retries", "4", "--abort-on-unavailable-fragments", "--continue", "--buffer-size", "64K", "--no-resize-buffer"]);
        if !mode.audio_only() { cmd.args(["--merge-output-format", "mp4", "--remux-video", "mp4"]); }
        cmd.args(["--format", &selector, "--ffmpeg-location"]).arg(ffmpeg.parent().unwrap()).arg("--output").arg(&template)
            .args(["--progress-template", "download:BRISA:%(progress.downloaded_bytes)s:%(progress.total_bytes,progress.total_bytes_estimate)s", "--progress-template", "postprocess:BRISA_MERGE", "--print", "after_move:BRISA_FILE:%(filepath)s", "--", &plan.url]);
        cmd.stdout(Stdio::piped()).stderr(Stdio::null());
        let mut child = cmd.spawn().map_err(|_| "No se pudo iniciar el motor de descarga.".to_string())?;
        let job = match crate::job::Job::assign(child.id()) {
            Ok(job) => job,
            Err(error) => { let _ = child.kill(); let _ = child.wait(); return Err(error); }
        };
        let stdout = child.stdout.take().unwrap(); *store.child.lock().unwrap() = Some(child);
        let (send, receive) = mpsc::channel();
        let reader = std::thread::spawn(move || { for line in BufReader::new(stdout).lines().map_while(Result::ok) { if send.send(line).is_err() { break; } } });
        let mut output = None; let mut last = Instant::now();
        let success = loop {
            if store.cancelled.load(Ordering::SeqCst) { job.terminate(); if let Some(child) = store.child.lock().unwrap().as_mut() { let _ = child.kill(); } }
            while let Ok(line) = receive.try_recv() {
                if let Some(path) = line.strip_prefix("BRISA_FILE:") { output = Some(PathBuf::from(path)); }
                else if line.starts_with("BRISA_MERGE") { publish(&app, &store, "merging", &plan.title, 0, 0, None); }
                else if let Some(progress) = line.strip_prefix("BRISA:") {
                    if last.elapsed() > Duration::from_millis(500) {
                        let parts: Vec<_> = progress.split(':').collect();
                        let done = parts.first().and_then(|s| s.parse::<f64>().ok()).unwrap_or(0.0) as u64;
                        let total = parts.get(1).and_then(|s| s.parse::<f64>().ok()).unwrap_or(0.0) as u64;
                        publish(&app, &store, "downloading", &plan.title, done, total, None); last = Instant::now();
                    }
                }
            }
            let status = { let mut handle = store.child.lock().unwrap(); handle.as_mut().unwrap().try_wait().map_err(|_| "No se pudo consultar la descarga.".to_string())? };
            if let Some(status) = status { break status.success(); }
            std::thread::sleep(Duration::from_millis(100));
        };
        let _ = reader.join();
        for line in receive.try_iter() { if let Some(path) = line.strip_prefix("BRISA_FILE:") { output = Some(PathBuf::from(path)); } }
        *store.child.lock().unwrap() = None;
        if store.cancelled.load(Ordering::SeqCst) { return Err("Descarga cancelada.".into()); }
        if !success { return Err("No se pudo descargar el vídeo. Revisa la conexión, el espacio libre o consulta de nuevo el enlace.".into()); }
        let output = output.ok_or("La descarga no devolvió un archivo terminado.")?.canonicalize().map_err(|_| "No se encontró el archivo terminado.".to_string())?;
        if output.parent() != Some(work.canonicalize().map_err(|_| "Carpeta temporal no válida.".to_string())?.as_path()) {
            return Err("El motor devolvió un destino no válido.".into());
        }
        if cache.is_some() {
            let target = temp.join(output.file_name().ok_or("Archivo sin nombre.")?);
            std::fs::copy(&output, &target).map_err(|_| "No se pudo guardar el archivo temporal. Comprueba el espacio disponible.")?;
            return Ok(target);
        }
        Ok(output)
    })().and_then(|output| {
        // En «Ambos» la música sale de la pista de audio del vídeo ya descargado: una sola descarga y el mismo sonido.
        let audio = if mode.wants_audio() { Some(export_audio(&app,&store,&output,&temp,&plan.title,audio_format)?) } else { None };
        let mut files = Vec::new();
        if !mode.audio_only() {
            let video = if mode == Output::Both && !output.extension().map(|s| s.eq_ignore_ascii_case("mp4")).unwrap_or(false) {
                convert_file(&app,&store,&output,&temp.join("complete.mp4"),&plan.title,
                    &["-map","0:v:0","-map","0:a:0?","-c","copy","-map_metadata","0","-y"],
                    "merging","No se pudo guardar este vídeo como MP4 sin recomprimir. Prueba otro formato.")?
            } else { output };
            files.push((video,"video"));
        }
        if let Some(audio) = audio { files.push((audio,"audio")); }
        if store.cancelled.load(Ordering::SeqCst) { return Err("Descarga cancelada.".into()); }
        publish(&app, &store, "exporting", &plan.title, 0, 0, None);
        // El archivo se llama como el vídeo, sin sufijos; solo si ya existe uno igual se le añade «(2)».
        let extensions: Vec<String> = files.iter().filter_map(|(path, _)| path.extension().and_then(|s| s.to_str()).map(str::to_string)).collect();
        let stem = crate::track_names::free_stem(&root, &safe_name(&plan.title), &extensions);
        let total = commit_files(files,&root,&stem,
            ||store.cancelled.load(Ordering::SeqCst),
            |files|media::register_batch(&app,&store,files,Some((&plan.names.0,&plan.names.1))).map(|entries|entries.iter().map(|e|e.size).sum::<u64>()))?;
        let value=json!({"status":"completed","title":plan.title,"output":mode.as_str(),"storage":destination,"fileCount":if mode==Output::Both {2} else {1},"downloadedBytes":total,"totalBytes":total});
        *store.state.lock().unwrap()=value.clone();let _=app.emit("brisa-download",value);
        Ok(total)
    });
    if let Some(dir) = cache {
        if result.is_ok() { let _ = std::fs::remove_dir_all(&dir); }
        else { download_resume::touch(&dir); }
    }
    if let Err(error) = result { publish(&app, &store, if store.cancelled.load(Ordering::SeqCst) { "cancelled" } else { "error" }, &plan.title, 0, 0, Some(&error)); }
    if let Some(mut child) = store.child.lock().unwrap().take() { let _ = child.kill(); let _ = child.wait(); }
    let _ = std::fs::remove_dir_all(&temp); store.active.store(false, Ordering::SeqCst);
    if store.close_after_download.load(Ordering::SeqCst) { app.exit(0); }
}
#[tauri::command]
pub fn start(app: tauri::AppHandle, store: tauri::State<'_, Store>, inspection_id: String, format_id: String, options: Option<serde_json::Value>) -> Result<(), String> {
    let plan = store.plans.lock().unwrap().get(&inspection_id).cloned().ok_or("Vuelve a consultar el enlace; la selección ha caducado.")?;
    if now().saturating_sub(plan.created) > 600_000 { return Err("Vuelve a consultar el enlace; la selección ha caducado.".into()); }
    let output = options.as_ref().and_then(|v| v["output"].as_str()).unwrap_or("mp4");
    let mode = Output::parse(output)?;
    let audio_format = AudioFormat::parse(options.as_ref().and_then(|v| v["audioFormat"].as_str()));
    let destination=options.as_ref().and_then(|v|v["destination"].as_str()).unwrap_or("local").to_string();
    let root=match destination.as_str(){
        "local"=>store.folder.lock().unwrap().clone(),
        "drive"=>{let path=store.drive_folder.lock().unwrap().clone().ok_or("Configura primero tu carpeta de Google Drive para ordenadores.")?;if !path.is_dir(){return Err("La unidad de Drive no está disponible. Abre Google Drive para ordenadores y comprueba tu conexión.".into());}path},
        _=>return Err("Destino de descarga no válido.".into())
    };
    let selector = if mode.audio_only() { plan.audio.clone().ok_or("El enlace no ofrece una pista de audio independiente.")? } else { plan.choices.get(&format_id).cloned().ok_or("Calidad no válida.")? };
    if store.active.compare_exchange(false, true, Ordering::SeqCst, Ordering::SeqCst).is_err() { return Err("Ya hay una descarga en curso.".into()); }
    store.cancelled.store(false, Ordering::SeqCst); publish(&app, &store, "starting", &plan.title, 0, 0, None);
    let shared = store.inner().clone(); tauri::async_runtime::spawn_blocking(move || run(app, shared, plan, selector, mode, audio_format, root, destination)); Ok(())
}
#[tauri::command]
pub fn cancel(app: tauri::AppHandle, store: tauri::State<'_, Store>) {
    if !store.active.load(Ordering::SeqCst) { return; }
    store.cancelled.store(true, Ordering::SeqCst);
    store.direct_cancel.notify_waiters();
    let title = store.state.lock().unwrap()["title"].as_str().unwrap_or("Vídeo").to_string(); publish(&app, &store, "cancelling", &title, 0, 0, None);
    if let Some(child) = store.child.lock().unwrap().as_mut() { let _ = child.kill(); }
}
#[tauri::command]
pub fn state(store: tauri::State<'_, Store>) -> Value { store.state.lock().unwrap().clone() }
#[tauri::command]
pub async fn folder(store: tauri::State<'_, Store>) -> Result<(), String> {
    if store.active.load(Ordering::SeqCst) { return Err("Espera a que termine la descarga antes de cambiar de carpeta.".into()); }
    let shared = store.inner().clone();
    tauri::async_runtime::spawn_blocking(move || {
        if let Some(folder) = rfd::FileDialog::new().set_title("Carpeta para descargar vídeos").pick_folder() {
            std::fs::write(shared.root.join("folder.txt"), folder.to_string_lossy().as_bytes()).map_err(|_| "No se pudo guardar la carpeta.".to_string())?;
            *shared.folder.lock().unwrap() = folder;
        }
        Ok(())
    }).await.map_err(|_| "No se pudo elegir la carpeta.".to_string())?
}
