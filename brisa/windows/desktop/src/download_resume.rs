use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{fs, future::Future, io::Write, path::{Path, PathBuf}, time::{Duration, SystemTime}};

const MAX_AGE: Duration = Duration::from_secs(6 * 3600);
const META: &str = "partial.json";
const USED: &str = "last-used";
pub const DATA: &str = "source.part";

pub fn fingerprint(value: &str) -> String {
    format!("{:x}", Sha256::digest(value.as_bytes()))
}

/// Las carpetas son privadas y llevan solo una huella, nunca la URL o el token.
pub fn prepare(root: &Path, key: &str) -> Result<PathBuf, String> {
    let root = root.join("download-parts");
    fs::create_dir_all(&root).map_err(|_| "No se pudo crear la carpeta de descargas parciales.")?;
    let now = SystemTime::now();
    for entry in fs::read_dir(&root).into_iter().flatten().flatten() {
        if entry.file_type().map(|kind| kind.is_dir()).unwrap_or(false)
            && entry.file_name().to_str().is_some_and(|s| s.len() == 64 && s.bytes().all(|b| b.is_ascii_hexdigit()))
            && fs::metadata(entry.path().join(USED)).or_else(|_| entry.metadata()).and_then(|m| m.modified()).map(|time| !fresh(now, time)).unwrap_or(false)
        {
            let _ = fs::remove_dir_all(entry.path());
        }
    }
    let dir = root.join(fingerprint(key));
    fs::create_dir_all(&dir).map_err(|_| "No se pudo abrir la carpeta de descargas parciales.")?;
    touch(&dir);
    Ok(dir)
}

fn fresh(now: SystemTime, modified: SystemTime) -> bool {
    now.duration_since(modified).is_ok_and(|age| age < MAX_AGE)
}

pub fn touch(dir: &Path) {
    let _ = fs::write(dir.join(USED), b"");
}

#[derive(Serialize, Deserialize)]
pub struct Version {
    pub total: u64,
    pub etag: String,
    pub resource: String,
}

impl Version {
    pub fn load(dir: &Path) -> Option<(Self, u64)> {
        let value: Self = serde_json::from_slice(&fs::read(dir.join(META)).ok()?).ok()?;
        let offset = fs::metadata(dir.join(DATA)).ok()?.len();
        (offset > 0 && offset < value.total && strong_etag(&value.etag)).then_some((value, offset))
    }

    pub fn store(&self, dir: &Path) -> Result<(), String> {
        let data = serde_json::to_vec(self).map_err(|_| "No se pudo preparar la reanudación.")?;
        fs::write(dir.join(META), data).map_err(|_| "No se pudo guardar la información de reanudación.".into())
    }

    pub fn accepts(&self, offset: u64, range: &str, length: Option<u64>, etag: &str, resource: &str) -> bool {
        if offset >= self.total || self.etag != etag || self.resource != resource {
            return false;
        }
        let expected = format!("bytes {offset}-{}/{}", self.total - 1, self.total);
        range == expected && length.is_none_or(|size| size == self.total - offset)
    }
}

pub fn strong_etag(tag: &str) -> bool {
    tag.len() >= 2 && tag.starts_with('"') && tag.ends_with('"')
}

pub fn forget(dir: &Path) -> Result<(), String> {
    for name in [META, DATA] {
        if let Err(error) = fs::remove_file(dir.join(name)) {
            if error.kind() != std::io::ErrorKind::NotFound {
                return Err("No se pudo descartar la descarga parcial.".into());
            }
        }
    }
    Ok(())
}

/// Un formato de YouTube solo se conserva entre intentos si identifica revisión y tamaño.
#[derive(Clone)]
pub struct YoutubeVersion {
    id: String,
    itag: u64,
    modified: u64,
    length: u64,
}

impl YoutubeVersion {
    pub fn key(&self) -> String {
        format!("{}:{}:{}:{}", self.id, self.itag, self.modified, self.length)
    }

    // Se aplica también al volver a extraer el enlace al inicio de la descarga. Así
    // yt-dlp nunca recibe un parcial de una revisión distinta aunque la consulta esté en caché.
    pub fn selector(&self, format: &str) -> String {
        let id = self.id.replace('.', r"\.");
        format!(r#"{format}[url~="^https://([A-Za-z0-9-]+\.)*googlevideo\.com/videoplayback\?"][url~="[?&]id={id}(&|$)"][url~="[?&]itag={}(&|$)"][url~="[?&]lmt={}(&|$)"][url~="[?&]clen={}(&|$)"]"#,
            self.itag, self.modified, self.length)
    }
}

pub fn youtube_version(url: &str) -> Option<YoutubeVersion> {
    let url = reqwest::Url::parse(url).ok()?;
    let host = url.host_str()?;
    if url.scheme() != "https" || !(host == "googlevideo.com" || host.ends_with(".googlevideo.com"))
        || url.path() != "/videoplayback"
    {
        return None;
    }
    let params: std::collections::HashMap<_, _> = url.query_pairs().collect();
    let id = params.get("id")?;
    if id.is_empty() || !id.bytes().all(|c| c.is_ascii_alphanumeric() || b"_.-".contains(&c)) {
        return None;
    }
    let number = |name: &str| params.get(name)?.parse::<u64>().ok().filter(|n| *n > 0);
    Some(YoutubeVersion { id: id.to_string(), itag: number("itag")?, modified: number("lmt")?, length: number("clen")? })
}

pub fn header<'a>(response: &'a reqwest::Response, name: &str) -> &'a str {
    response.headers().get(name).and_then(|value| value.to_str().ok()).unwrap_or("")
}
pub async fn direct<F, R>(dir: &Path, request: F, mut progress: impl FnMut(u64, u64)) -> Result<PathBuf, String>
where F: Fn(Option<(String, u64)>) -> R, R: Future<Output = Result<reqwest::Response, String>> {
    let path = dir.join(DATA);
    let mut attempts = 0;
    let mut use_saved = true;
    loop {
        let saved = use_saved.then(|| Version::load(dir)).flatten();
        let mut response = request(saved.as_ref().map(|(v, n)| (v.etag.clone(), *n))).await?;
        let status = response.status().as_u16();
        let kind = header(&response, "content-type");
        let encoding = header(&response, "content-encoding");
        if status != 416 && (kind.contains("text/html") || kind.contains("json")
            || !(encoding.is_empty() || encoding.eq_ignore_ascii_case("identity"))) {
            return Err("El enlace no devuelve un vídeo.".into());
        }
        let size = response.content_length();
        let resource = fingerprint(response.url().as_str());
        let etag = header(&response, "etag");
        let (mut done, total) = match (status, saved) {
            (206, Some((version, offset))) if version.accepts(offset, header(&response, "content-range"), size, etag, &resource) => (offset, version.total),
            (206 | 416, _) if use_saved => {
                forget(dir)?;
                use_saved = false;
                continue;
            }
            (200, _) => {
                forget(dir)?;
                if let Some(total) = size.filter(|n| *n > 0 && strong_etag(etag)) {
                    Version { total, etag: etag.into(), resource }.store(dir)?;
                }
                (0, size.unwrap_or(0))
            }
            _ => return Err("El servidor no devolvió el archivo completo.".into()),
        };
        let mut file = std::fs::OpenOptions::new().create(true).append(true).open(&path)
            .map_err(|_| "No se pudo abrir el archivo parcial.")?;
        let completed = loop {
            match response.chunk().await {
                Ok(Some(chunk)) => {
                    if total > 0 && chunk.len() as u64 > total - done {
                        drop(file);
                        forget(dir)?;
                        return Err("El archivo excede el tamaño anunciado.".into());
                    }
                    file.write_all(&chunk).map_err(|_| "No se pudo guardar. Comprueba el espacio disponible.")?;
                    done += chunk.len() as u64;
                    progress(done, total);
                }
                Ok(None) => break done > 0 && (total == 0 || done == total),
                Err(_) => break false,
            }
        };
        if completed { return Ok(path); }
        if attempts == 2 || Version::load(dir).is_none() {
            return Err("La conexión se interrumpió. Vuelve a intentarlo.".into());
        }
        attempts += 1;
        use_saved = true;
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn exige_misma_revision_y_rango_completo() {
        let version = Version { total: 100, etag: "\"v1\"".into(), resource: "a".into() };
        assert!(version.accepts(30, "bytes 30-99/100", Some(70), "\"v1\"", "a"));
        assert!(!version.accepts(30, "bytes 29-99/100", Some(70), "\"v1\"", "a"));
        assert!(!version.accepts(30, "bytes 30-99/101", Some(70), "\"v1\"", "a"));
        assert!(!version.accepts(30, "bytes 30-99/100", Some(69), "\"v1\"", "a"));
        assert!(!version.accepts(30, "bytes 30-99/100", Some(70), "\"v2\"", "a"));
        assert!(!version.accepts(30, "bytes 30-99/100", Some(70), "\"v1\"", "b"));
        assert!(!strong_etag("W/\"v1\""));
    }

    #[test]
    fn caducidad_de_seis_horas_y_relojes_incoherentes() {
        let now = SystemTime::now();
        assert!(fresh(now, now));
        assert!(!fresh(now, now - MAX_AGE));
        assert!(!fresh(now, now + Duration::from_secs(1)));
    }

    #[test]
    fn youtube_reutiliza_la_revision_aunque_cambie_la_firma() {
        let base = "https://r1.googlevideo.com/videoplayback?id=abc&itag=140&clen=12345";
        let key = |url: &str| youtube_version(url).unwrap().key();
        assert_eq!(key(&format!("{base}&lmt=22&sig=x")), key(&format!("{base}&lmt=22&sig=y")));
        assert_ne!(key(&format!("{base}&lmt=22")), key(&format!("{base}&lmt=23")));
        assert!(youtube_version(base).is_none());
        assert!(youtube_version(&base.replace("googlevideo.com", "googlevideo.com.example")).is_none());
    }
}
