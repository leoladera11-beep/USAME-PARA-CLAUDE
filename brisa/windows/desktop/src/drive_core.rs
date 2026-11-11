//! Conversación con Google para la sesión de Drive por token: validar, renovar, listar y leer
//! tramos. No depende de Tauri, así que se prueba en cualquier sistema con un Drive simulado
//! (ver host-tests/). Las direcciones son configurables solo para esas pruebas.
use crate::drive_token::*;
use serde::{Serialize, Deserialize};
use serde_json::{Value, json};
use std::time::Duration;

#[derive(Clone)]
pub struct Endpoints { pub about: String, pub files: String, pub renew: String, pub info: String }
impl Default for Endpoints {
    fn default() -> Self {
        Self { about: "https://www.googleapis.com/drive/v3/about?fields=user(emailAddress)".into(), files: "https://www.googleapis.com/drive/v3/files".into(),
            renew: "https://oauth2.googleapis.com/token".into(), info: "https://oauth2.googleapis.com/tokeninfo?access_token=".into() }
    }
}

#[derive(Clone, Default, Serialize, Deserialize)]
#[serde(default)]
pub struct Session { pub access: String, pub refresh: String, pub client_id: String, pub client_secret: String, pub email: String, pub scope: String, pub expiry: u64 }
impl Session {
    pub fn permanent(&self) -> bool { !self.refresh.is_empty() && !self.client_id.is_empty() }
    /// Lo que se muestra en pantalla. Nunca incluye los tokens.
    pub fn summary(&self, now: u64) -> Value {
        json!({"active": !self.email.is_empty(), "email": self.email, "permanent": self.permanent(), "minutes": self.expiry.saturating_sub(now) / 60_000,
            "expired": !self.permanent() && !usable(&self.access, self.expiry, now), "fullDrive": self.scope.split_whitespace().any(|s| s.ends_with("/auth/drive"))})
    }
}
pub fn client() -> Result<reqwest::blocking::Client, String> {
    reqwest::blocking::Client::builder().connect_timeout(Duration::from_secs(15)).timeout(Duration::from_secs(120)).build().map_err(|_| "No se pudo preparar la conexión.".to_string())
}
/// Pide un token de acceso nuevo con el token de actualización.
pub fn renew(session: &mut Session, api: &Endpoints, now: u64) -> Result<(), String> {
    if !session.permanent() { return Err("El token de acceso caducó. Pega uno nuevo en Google Drive.".into()); }
    let mut form = vec![("grant_type", "refresh_token"), ("refresh_token", session.refresh.as_str()), ("client_id", session.client_id.as_str())];
    if !session.client_secret.is_empty() { form.push(("client_secret", session.client_secret.as_str())); }
    let response = client()?.post(&api.renew).form(&form).send().map_err(|_| "No se pudo conectar con Google. Comprueba tu conexión.".to_string())?;
    let ok = response.status().is_success();
    let data: Value = serde_json::from_str(&response.text().unwrap_or_default()).unwrap_or(Value::Null);
    let token = data["access_token"].as_str().unwrap_or("");
    if !ok || !plausible(token, 20) {
        let reason = data["error_description"].as_str().or(data["error"].as_str()).unwrap_or("").trim_end_matches(['.', ' ']);
        return Err(format!("Google no renovó la sesión{} Revisa el token de actualización y los datos del cliente.", if reason.is_empty() { ".".to_string() } else { format!(": {reason}.") }));
    }
    session.access = token.to_string();
    session.expiry = expiry(now, data["expires_in"].as_u64().unwrap_or(0));
    if let Some(scope) = data["scope"].as_str() { session.scope = scope.to_string(); }
    Ok(())
}
/// Comprueba lo pegado contra Drive y devuelve la sesión lista para guardar.
pub fn connect(input: &Value, api: &Endpoints, now: u64) -> Result<Session, String> {
    let text = |key: &str| input[key].as_str().unwrap_or("").trim().to_string();
    let mut session = Session { access: clean(&text("access")), refresh: clean(&text("refresh")), client_id: text("clientId"), client_secret: text("clientSecret"), ..Default::default() };
    if !session.refresh.is_empty() && (!plausible(&session.refresh, 20) || !plausible(&session.client_id, 10) || (!session.client_secret.is_empty() && !plausible(&session.client_secret, 6))) {
        return Err("El token de actualización necesita también el ID de cliente (y su secreto, si lo tiene) sin espacios ni saltos de línea.".into());
    }
    if session.access.is_empty() && session.permanent() { renew(&mut session, api, now)?; }
    if !plausible(&session.access, 20) { return Err("Pega un token de acceso OAuth válido, sin espacios ni saltos de línea.".into()); }
    let http = client()?;
    let about = |token: &str| http.get(&api.about).bearer_auth(token).send().map_err(|_| "No se pudo conectar con Drive. Comprueba tu conexión.".to_string());
    let mut response = about(&session.access)?;
    if response.status().as_u16() == 401 && session.permanent() { renew(&mut session, api, now)?; response = about(&session.access)?; }
    match response.status().as_u16() {
        200 => {}
        401 => return Err("El token no es válido o ya caducó. Genera uno nuevo.".into()),
        403 => return Err("El token no tiene permiso para Google Drive. Genera uno con el permiso drive.file o drive.".into()),
        code => return Err(format!("Drive no respondió (HTTP {code}). Comprueba tu conexión.")),
    }
    let data: Value = serde_json::from_str(&response.text().unwrap_or_default()).unwrap_or(Value::Null);
    session.email = data["user"]["emailAddress"].as_str().unwrap_or("").to_string();
    if session.email.is_empty() { return Err("Drive no indicó a qué cuenta pertenece el token.".into()); }
    if session.expiry <= now {
        // tokeninfo dice cuánto le queda; si no contesta se asume un margen prudente.
        let info: Value = http.get(format!("{}{}", api.info, urlencode(&session.access))).send().ok().filter(|r| r.status().is_success())
            .and_then(|r| r.text().ok()).and_then(|t| serde_json::from_str(&t).ok()).unwrap_or(Value::Null);
        let seconds = info["expires_in"].as_u64().or_else(|| info["expires_in"].as_str().and_then(|s| s.parse().ok())).unwrap_or(0);
        if let Some(scope) = info["scope"].as_str() { session.scope = scope.to_string(); }
        session.expiry = expiry(now, seconds);
    }
    Ok(session)
}

pub struct Found { pub id: String, pub name: String, pub size: u64, pub kind: &'static str }
/// Música y vídeos del Drive, los más recientes primero. `token(true)` obliga a renovar.
pub fn list(api: &Endpoints, token: &mut dyn FnMut(bool) -> Result<String, String>) -> Result<Vec<Found>, String> {
    let http = client()?; let mut found = Vec::new(); let mut page = String::new();
    let query = urlencode("trashed=false and (mimeType contains 'audio/' or mimeType contains 'video/')");
    for _ in 0..10 {
        let url = format!("{}?q={query}&pageSize=200&orderBy=modifiedTime%20desc&fields=nextPageToken,files(id,name,size,mimeType)&supportsAllDrives=true{}", api.files,
            if page.is_empty() { String::new() } else { format!("&pageToken={}", urlencode(&page)) });
        let mut response = http.get(&url).bearer_auth(token(false)?).send().map_err(|_| "No se pudo conectar con Drive. Comprueba tu conexión.".to_string())?;
        if response.status().as_u16() == 401 { response = http.get(&url).bearer_auth(token(true)?).send().map_err(|_| "No se pudo conectar con Drive.".to_string())?; }
        if !response.status().is_success() { return Err(format!("Drive no entregó la lista (HTTP {}).", response.status().as_u16())); }
        let data: Value = serde_json::from_str(&response.text().unwrap_or_default()).map_err(|_| "Drive devolvió una lista no válida.".to_string())?;
        for file in data["files"].as_array().cloned().unwrap_or_default() {
            let (id, name) = (file["id"].as_str().unwrap_or(""), file["name"].as_str().unwrap_or(""));
            let Some(kind) = kind_for(file["mimeType"].as_str().unwrap_or(""), name) else { continue };
            if !valid_file_id(id) || name.is_empty() { continue; }
            let size = file["size"].as_str().and_then(|s| s.parse().ok()).or(file["size"].as_u64()).unwrap_or(0);
            found.push(Found { id: id.into(), name: name.chars().take(256).collect(), size, kind });
        }
        page = data["nextPageToken"].as_str().unwrap_or("").to_string();
        if page.is_empty() || found.len() >= 2000 { break; }
    }
    Ok(found)
}

pub struct Piece { pub status: u16, pub kind: String, pub content_range: Option<String>, pub body: Vec<u8> }
/// Lee de Drive un tramo del archivo (o el archivo entero si no hay rango). Error: (código HTTP, mensaje).
pub fn fetch(api: &Endpoints, id: &str, range: Option<(u64, u64)>, token: &mut dyn FnMut(bool) -> Result<String, String>) -> Result<Piece, (u16, String)> {
    if !valid_file_id(id) { return Err((404, "Archivo no válido.".into())); }
    let http = client().map_err(|e| (502, e))?;
    let mut call = |force: bool| -> Result<reqwest::blocking::Response, (u16, String)> {
        let mut request = http.get(format!("{}/{id}?alt=media&supportsAllDrives=true", api.files)).bearer_auth(token(force).map_err(|e| (401, e))?);
        if let Some((start, end)) = range { request = request.header("Range", format!("bytes={start}-{end}")); }
        request.send().map_err(|_| (502, "No se pudo leer el archivo de Drive. Comprueba tu conexión.".to_string()))
    };
    let mut response = call(false)?;
    if response.status().as_u16() == 401 { response = call(true)?; }
    let status = response.status().as_u16();
    if status != 200 && status != 206 { return Err((if status == 404 || status == 416 { status } else { 502 }, "Drive no entregó el archivo.".into())); }
    let header = |name: &str| response.headers().get(name).and_then(|v| v.to_str().ok()).map(str::to_string);
    let (kind, content_range) = (header("content-type").unwrap_or_else(|| "application/octet-stream".into()), header("content-range"));
    // Sin rango se entrega el archivo entero: se limita para no llenar la memoria con un vídeo grande.
    if range.is_none() && response.content_length().unwrap_or(0) > 96 * 1024 * 1024 { return Err((413, "El archivo es demasiado grande para leerlo entero.".into())); }
    let body = response.bytes().map_err(|_| (502, "La lectura desde Drive se interrumpió.".to_string()))?.to_vec();
    Ok(Piece { status, kind, content_range, body })
}
