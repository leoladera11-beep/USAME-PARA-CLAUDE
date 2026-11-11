//! Google Drive con un token OAuth pegado por el usuario: lado de la app.
//!
//! El PC ya podía guardar en Drive mediante Google Drive para ordenadores. Con un token, Brisa
//! además reconoce la cuenta al instante, lista la música y los vídeos que hay en Drive y los
//! reproduce por internet sin descargarlos: el reproductor pide tramos a brisadrive://<id> y Brisa
//! se los trae de la API de Drive. No hay sondeos: solo se habla con Drive cuando el usuario
//! reproduce o actualiza. La conversación con Google está en drive_core.rs.
use crate::{Entry, Store, now, drive_token::*, drive_core::{self, Endpoints}};
pub use crate::drive_core::Session;
use serde::{Serialize, Deserialize};
use serde_json::{Value, json};
use std::sync::atomic::Ordering;
use tauri::{Manager, http};

fn save<T: Serialize>(store: &Store, name: &str, value: &T) -> Result<(), String> {
    let bytes = serde_json::to_vec(value).map_err(|_| "No se pudo guardar.".to_string())?;
    let temp = store.root.join(format!("{name}.tmp"));
    std::fs::write(&temp, bytes).and_then(|_| std::fs::rename(&temp, store.root.join(name))).map_err(|_| "No se pudo guardar la sesión de Drive.".to_string())
}
pub fn load<T: for<'a> Deserialize<'a> + Default>(root: &std::path::Path, name: &str) -> T {
    std::fs::read(root.join(name)).ok().and_then(|b| serde_json::from_slice(&b).ok()).unwrap_or_default()
}
/// Token vigente; lo renueva si hace falta. `force` obliga a renovar cuando Drive lo rechazó.
fn token(store: &Store, force: bool) -> Result<String, String> {
    let mut guard = store.drive_session.lock().unwrap();
    let session = guard.as_mut().filter(|s| !s.email.is_empty()).ok_or("Inicia sesión en Drive con un token.")?;
    if force || !usable(&session.access, session.expiry, now()) { drive_core::renew(session, &Endpoints::default(), now())?; save(store, "drive-token.json", session)?; }
    Ok(session.access.clone())
}
/// Entradas de Drive que se muestran en la biblioteca: las de la última actualización, sin las ocultadas.
pub fn entries(store: &Store, kind: &str) -> Vec<Entry> {
    if store.drive_session.lock().unwrap().as_ref().map(|s| s.email.is_empty()).unwrap_or(true) { return Vec::new(); }
    let hidden = store.drive_hidden.lock().unwrap();
    store.drive_cache.lock().unwrap().iter().filter(|e| e.kind == kind && !hidden.contains(&e.id)).cloned().collect()
}
pub fn hide(store: &Store, id: &str) -> Result<(), String> {
    let mut hidden = store.drive_hidden.lock().unwrap();
    if !hidden.iter().any(|h| h == id) { hidden.push(id.to_string()); }
    save(store, "drive-hidden.json", &*hidden)
}
fn refresh(store: &Store) -> Result<usize, String> {
    let found = drive_core::list(&Endpoints::default(), &mut |force| token(store, force))?;
    let base = now();
    let entries: Vec<Entry> = found.into_iter().enumerate().map(|(index, file)| Entry { id: format!("drive:{}", file.id), path: String::new(), name: file.name, size: file.size,
        added: base.saturating_sub(index as u64), kind: file.kind.into(), storage: "drive-api".into(), drive_id: file.id }).collect();
    let count = entries.len();
    save(store, "drive-cache.json", &entries)?; *store.drive_cache.lock().unwrap() = entries; Ok(count)
}

#[tauri::command]
pub async fn drive_token_connect(store: tauri::State<'_, Store>, input: Value) -> Result<Value, String> {
    if store.active.load(Ordering::SeqCst) { return Err("Espera a que termine la descarga actual.".into()); }
    let shared = store.inner().clone();
    tauri::async_runtime::spawn_blocking(move || {
        let session = drive_core::connect(&input, &Endpoints::default(), now())?;
        save(&shared, "drive-token.json", &session)?;
        let summary = session.summary(now()); *shared.drive_session.lock().unwrap() = Some(session);
        let _ = refresh(&shared);
        Ok(summary)
    }).await.map_err(|_| "No se pudo iniciar la sesión.".to_string())?
}
#[tauri::command]
pub fn drive_token_status(store: tauri::State<'_, Store>) -> Value {
    store.drive_session.lock().unwrap().as_ref().map(|s| s.summary(now())).unwrap_or(json!({"active": false}))
}
#[tauri::command]
pub fn drive_token_disconnect(store: tauri::State<'_, Store>) -> Value {
    *store.drive_session.lock().unwrap() = None; store.drive_cache.lock().unwrap().clear();
    for name in ["drive-token.json", "drive-cache.json"] { let _ = std::fs::remove_file(store.root.join(name)); }
    json!({"active": false})
}
/// Vuelve a pedir a Drive la lista de música y vídeos. Devuelve cuántos encontró.
#[tauri::command]
pub async fn drive_refresh(store: tauri::State<'_, Store>) -> Result<usize, String> {
    let shared = store.inner().clone();
    tauri::async_runtime::spawn_blocking(move || refresh(&shared)).await.map_err(|_| "No se pudo consultar Drive.".to_string())?
}

fn plain(status: u16, message: &str) -> http::Response<Vec<u8>> {
    http::Response::builder().status(status).header("Content-Type", "text/plain; charset=utf-8").header("Access-Control-Allow-Origin", "*").body(message.as_bytes().to_vec()).unwrap()
}
/// Atiende una petición del reproductor a brisadrive://<id de archivo>.
pub fn serve(app: &tauri::AppHandle, request: &http::Request<Vec<u8>>) -> http::Response<Vec<u8>> {
    let store = app.state::<Store>();
    let id = request.uri().path().trim_matches('/');
    // Solo se sirven archivos que están en la biblioteca: la página no puede pedir un identificador cualquiera.
    if !valid_file_id(id) || !store.drive_cache.lock().unwrap().iter().any(|e| e.drive_id == id) { return plain(404, "Este archivo no está en tu biblioteca."); }
    let range = parse_range(request.headers().get("range").and_then(|v| v.to_str().ok()), CHUNK);
    match drive_core::fetch(&Endpoints::default(), id, range, &mut |force| token(&store, force)) {
        Err((status, message)) => plain(status, &message),
        Ok(piece) => {
            let mut reply = http::Response::builder().status(piece.status).header("Content-Type", piece.kind).header("Accept-Ranges", "bytes")
                .header("Access-Control-Allow-Origin", "*").header("Cache-Control", "no-store").header("Content-Length", piece.body.len());
            if let Some(value) = piece.content_range { reply = reply.header("Content-Range", value); }
            reply.body(piece.body).unwrap_or_else(|_| plain(502, "Respuesta no válida."))
        }
    }
}
