#![cfg_attr(not(debug_assertions), windows_subsystem = "windows")]

mod job;
mod media;
mod downloads;
mod download_output;
mod download_resume;
mod drive_storage;
mod drive_token;
mod drive_core;
mod drive_api;
mod storage_paths;
use std::{sync::{Arc, Mutex, atomic::AtomicBool}, path::PathBuf, process::Child};
use serde::{Serialize, Deserialize};
use serde_json::{Value, json};
use tauri::Manager;

#[derive(Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct Entry { pub id: String, pub path: String, pub name: String, pub size: u64, pub added: u64, pub kind: String, #[serde(default)] pub storage: String,
    /// Identificador en Drive cuando el archivo se reproduce por internet con la sesión por token.
    #[serde(default, skip_serializing_if = "String::is_empty")] pub drive_id: String }
pub struct Shared {
    pub root: PathBuf,
    pub entries: Mutex<Vec<Entry>>,
    pub persistence: Mutex<()>,
    pub folder: Mutex<PathBuf>,
    pub drive_folder: Mutex<Option<PathBuf>>,
    pub drive_session: Mutex<Option<drive_api::Session>>,
    pub drive_cache: Mutex<Vec<Entry>>,
    pub drive_hidden: Mutex<Vec<String>>,
    pub state: Mutex<Value>,
    pub active: AtomicBool,
    pub cancelled: AtomicBool,
    pub direct_cancel: tokio::sync::Notify,
    pub close_after_download: AtomicBool,
    pub child: Mutex<Option<Child>>,
    pub plans: Mutex<std::collections::HashMap<String, downloads::Plan>>,
    pub inspecting: Arc<tokio::sync::Semaphore>,
}
pub type Store = Arc<Shared>;
pub fn now() -> u64 { std::time::SystemTime::now().duration_since(std::time::UNIX_EPOCH).unwrap_or_default().as_millis() as u64 }
pub fn persist(store: &Shared) -> Result<(), String> {
    let _guard = store.persistence.lock().unwrap();
    let bytes = serde_json::to_vec(&*store.entries.lock().unwrap()).map_err(|e| e.to_string())?;
    let temp = store.root.join("library.tmp");
    std::fs::write(&temp, bytes).map_err(|_| "No se pudo guardar la biblioteca.".to_string())?;
    std::fs::rename(temp, store.root.join("library.json")).map_err(|_| "No se pudo guardar la biblioteca.".to_string())
}
#[tauri::command]
fn video_mode(window: tauri::WebviewWindow, fullscreen: bool) -> Result<(), String> {
    window.set_fullscreen(fullscreen).map_err(|e| e.to_string())
}
fn main() {
    tauri::Builder::default()
        // brisadrive://<id>: el reproductor pide tramos y se traen de Drive con el token. Cada petición va en su hilo.
        .register_asynchronous_uri_scheme_protocol("brisadrive", |context, request, responder| {
            let app = context.app_handle().clone();
            std::thread::spawn(move || responder.respond(drive_api::serve(&app, &request)));
        })
        .setup(|app| {
            let root = app.path().app_local_data_dir()?; std::fs::create_dir_all(&root)?;
            let entries: Vec<Entry> = std::fs::read(root.join("library.json")).ok().and_then(|b| serde_json::from_slice(&b).ok()).unwrap_or_default();
            for entry in &entries { let _ = app.asset_protocol_scope().allow_file(&entry.path); }
            let folder = std::fs::read_to_string(root.join("folder.txt")).map(PathBuf::from)
                .unwrap_or_else(|_| dirs::video_dir().or_else(dirs::download_dir).unwrap_or_else(|| root.clone()).join("Brisa"));
            let drive_folder = std::fs::read_to_string(root.join("drive-folder.txt")).ok().map(PathBuf::from);
            let drive_session: Option<drive_api::Session> = std::fs::read(root.join("drive-token.json")).ok().and_then(|b| serde_json::from_slice(&b).ok());
            let (drive_cache, drive_hidden) = (drive_api::load(&root, "drive-cache.json"), drive_api::load(&root, "drive-hidden.json"));
            app.manage(Arc::new(Shared { drive_session: Mutex::new(drive_session), drive_cache: Mutex::new(drive_cache), drive_hidden: Mutex::new(drive_hidden), root, persistence: Mutex::new(()), entries: Mutex::new(entries), folder: Mutex::new(folder), drive_folder: Mutex::new(drive_folder), state: Mutex::new(json!({"status":"idle"})),
                active: AtomicBool::new(false), cancelled: AtomicBool::new(false), direct_cancel: tokio::sync::Notify::new(), close_after_download: AtomicBool::new(false), child: Mutex::new(None), plans: Mutex::new(Default::default()), inspecting: Arc::new(tokio::sync::Semaphore::new(1)) }));
            Ok(())
        })
        .invoke_handler(tauri::generate_handler![media::pick_media, media::list_media, media::forget_media, media::save_text,
            drive_storage::drive_storage_status, drive_storage::choose_drive_folder, drive_storage::open_drive_setup,
            drive_api::drive_token_connect, drive_api::drive_token_status, drive_api::drive_token_disconnect, drive_api::drive_refresh,
            video_mode, downloads::inspect, downloads::start, downloads::cancel, downloads::state, downloads::folder])
        .on_window_event(|window, event| {
            if let tauri::WindowEvent::CloseRequested { api, .. } = event {
                let store = window.state::<Store>();
                if store.active.load(std::sync::atomic::Ordering::SeqCst) { store.close_after_download.store(true, std::sync::atomic::Ordering::SeqCst); api.prevent_close(); let _ = window.minimize(); }
            }
            if let tauri::WindowEvent::Focused(true) = event {
                window.state::<Store>().close_after_download.store(false, std::sync::atomic::Ordering::SeqCst);
            }
        })
        .build(tauri::generate_context!())
        .expect("No se pudo iniciar Brisa")
        .run(|app, event| {
            if let tauri::RunEvent::Exit = event {
                let store = app.state::<Store>();
                if let Some(child) = store.child.lock().unwrap().as_mut() { let _ = child.kill(); let _ = child.wait(); };
            }
        });
}
