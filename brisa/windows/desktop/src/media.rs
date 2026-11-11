use crate::{Entry, Store, now, persist};
use std::{path::{Path, PathBuf}, collections::VecDeque};
use sha2::{Sha256, Digest};
use tauri::Manager;

fn valid(path: &Path, kind: &str) -> bool {
    let ext = path.extension().and_then(|s| s.to_str()).unwrap_or("").to_ascii_lowercase();
    if kind == "video" { ["mp4", "m4v", "webm", "mov", "mkv", "3gp"].contains(&ext.as_str()) }
    else { ["mp3", "m4a", "aac", "wav", "wave", "ogg", "oga", "opus", "flac", "amr", "aif", "aiff"].contains(&ext.as_str()) }
}
pub fn register(app: &tauri::AppHandle, store: &Store, path: PathBuf, kind: &str) -> Result<Entry, String> {
    register_batch(app, store, &[(path, kind)], None).map(|mut entries| entries.remove(0))
}
/// `names` es (título, artista) de una descarga: se guarda con la música para que la interfaz no dependa del nombre del archivo.
pub fn register_batch(app: &tauri::AppHandle, store: &Store, files: &[(PathBuf, &str)], names: Option<(&str, &str)>) -> Result<Vec<Entry>, String> {
    let mut batch = Vec::new();
    for (path, kind) in files {
    let path = path.canonicalize().map_err(|_| "El archivo no está disponible.".to_string())?;
    if !valid(&path, kind) { return Err("Formato no compatible.".into()); }
    let meta = path.metadata().map_err(|_| "No se pudo leer el archivo.".to_string())?;
    if !meta.is_file() || meta.len() == 0 { return Err("El archivo está vacío o no es un archivo.".into()); }
    let text = path.to_string_lossy().to_string();
    let entry = Entry { id: format!("{:x}", Sha256::digest(text.as_bytes())), name: path.file_name().unwrap().to_string_lossy().to_string(), path: text, size: meta.len(), added: now(), kind: (*kind).into(), storage: if crate::drive_storage::is_drive(store,&path) {"drive".into()}else{"local".into()}, drive_id: String::new(),
        title: names.filter(|_| *kind == "audio").map(|n| n.0.to_string()).unwrap_or_default(), artist: names.filter(|_| *kind == "audio").map(|n| n.1.to_string()).unwrap_or_default() };
    app.asset_protocol_scope().allow_file(&path).map_err(|_| "No se obtuvo permiso para reproducir el archivo.".to_string())?;
    batch.push(entry);
    }
    let _guard = store.persistence.lock().unwrap();
    let mut entries = store.entries.lock().unwrap(); let mut next = entries.clone();
    for entry in &batch { if !next.iter().any(|e| e.id == entry.id && e.kind == entry.kind) { next.push(entry.clone()); } }
    let bytes = serde_json::to_vec(&next).map_err(|_| "No se pudo guardar la biblioteca.".to_string())?;
    let temp = store.root.join("library.tmp");
    std::fs::write(&temp, bytes).and_then(|_| std::fs::rename(&temp, store.root.join("library.json"))).map_err(|_| "No se pudo guardar la biblioteca.".to_string())?;
    *entries = next; Ok(batch)
}
#[tauri::command]
pub async fn pick_media(app: tauri::AppHandle, store: tauri::State<'_, Store>, kind: String, folder: bool) -> Result<Vec<Entry>, String> {
    if kind != "audio" && kind != "video" { return Err("Tipo no válido.".into()); }
    let shared = store.inner().clone();
    tauri::async_runtime::spawn_blocking(move || {
        let mut paths = Vec::new();
        if folder && kind == "audio" {
            if let Some(root) = rfd::FileDialog::new().set_title("Importar carpeta de música").pick_folder() {
                let mut queue = VecDeque::from([root]); let mut scanned = 0;
                while let Some(dir) = queue.pop_front() {
                    if scanned > 100000 || paths.len() >= 5000 { break; }
                    if let Ok(children) = std::fs::read_dir(dir) {
                        for child in children.flatten() {
                            scanned += 1; let kind_meta = child.file_type().map_err(|_| "No se pudo leer la carpeta.".to_string())?;
                            if kind_meta.is_symlink() { continue; }
                            if kind_meta.is_dir() && queue.len() < 5000 { queue.push_back(child.path()); }
                            else if kind_meta.is_file() && valid(&child.path(), "audio") { paths.push(child.path()); }
                            if scanned > 100000 || paths.len() >= 5000 { break; }
                        }
                    }
                }
            }
        } else {
            let dialog = rfd::FileDialog::new().set_title(if kind == "video" { "Añadir vídeos" } else { "Añadir música" });
            let dialog = if kind == "video" { dialog.add_filter("Vídeos", &["mp4", "m4v", "webm", "mov", "mkv", "3gp"]) } else { dialog.add_filter("Audio", &["mp3", "m4a", "aac", "wav", "ogg", "opus", "flac"]) };
            paths = dialog.pick_files().unwrap_or_default();
        }
        let mut result = Vec::new();
        for path in paths.into_iter().take(5000) { if let Ok(entry) = register(&app, &shared, path, &kind) { result.push(entry); } }
        Ok(result)
    }).await.map_err(|_| "No se pudo importar.".to_string())?
}
#[tauri::command]
pub fn list_media(store: tauri::State<'_, Store>, kind: String) -> Vec<Entry> { store.entries.lock().unwrap().iter().filter(|e| e.kind == kind).cloned().map(|mut e|{e.storage=if crate::drive_storage::is_drive(&store,Path::new(&e.path)){"drive".into()}else{"local".into()};e})
        // Con la sesión por token, la música y los vídeos de Drive aparecen junto a los locales.
        .chain(crate::drive_api::entries(&store, &kind)).collect() }
#[tauri::command]
pub fn forget_media(store: tauri::State<'_, Store>, id: String, kind: String) -> Result<(), String> {
    // Un archivo de Drive no se borra: solo deja de mostrarse en Brisa.
    if id.starts_with("drive:") { return crate::drive_api::hide(&store, &id); }
    store.entries.lock().unwrap().retain(|e| e.id != id || e.kind != kind); persist(&store)
}
#[tauri::command]
pub async fn save_text(name: String, text: String) -> Result<(), String> {
    if text.len() > 4_000_000 || name.contains(['/', '\\']) { return Err("Archivo de texto no válido.".into()); }
    tauri::async_runtime::spawn_blocking(move || {
        if let Some(path) = rfd::FileDialog::new().set_file_name(&name).save_file() { std::fs::write(path, text).map_err(|_| "No se pudo guardar el texto.".to_string())?; }
        Ok(())
    }).await.map_err(|_| "No se pudo guardar.".to_string())?
}
