//! Google simulado: lo justo de Drive y OAuth para ejercitar el código real por HTTP.
//! Tokens: los que contienen «valido» se aceptan, «sinpermiso» devuelve 403 y el resto 401.
use std::{collections::HashMap, io::{Read, Write}, net::{TcpListener, TcpStream}, sync::{Arc, Mutex}};
use crate::drive_core::Endpoints;

pub struct File { pub name: String, pub mime: String, pub data: Vec<u8> }
pub struct Mock { pub base: String, pub log: Arc<Mutex<Vec<String>>> }
impl Mock {
    pub fn endpoints(&self) -> Endpoints {
        Endpoints { about: format!("{}/about", self.base), files: format!("{}/files", self.base), renew: format!("{}/token", self.base), info: format!("{}/tokeninfo?access_token=", self.base) }
    }
    pub fn start(files: Vec<(String, File)>) -> Mock {
        let listener = TcpListener::bind("127.0.0.1:0").unwrap();
        let base = format!("http://{}", listener.local_addr().unwrap());
        let log = Arc::new(Mutex::new(Vec::new()));
        let (shared, files) = (log.clone(), Arc::new(files));
        std::thread::spawn(move || for stream in listener.incoming().flatten() {
            let (log, files) = (shared.clone(), files.clone());
            std::thread::spawn(move || { let _ = handle(stream, &log, &files); });
        });
        Mock { base, log }
    }
}
pub fn read_request(stream: &mut TcpStream) -> Option<(String, String, HashMap<String, String>, String)> {
    let mut data = Vec::new(); let mut buffer = [0u8; 4096];
    let head_end = loop {
        if let Some(at) = data.windows(4).position(|w| w == b"\r\n\r\n") { break at + 4; }
        let n = stream.read(&mut buffer).ok()?; if n == 0 { return None; }
        data.extend_from_slice(&buffer[..n]);
    };
    let head = String::from_utf8_lossy(&data[..head_end]).to_string();
    let mut lines = head.split("\r\n");
    let mut first = lines.next()?.split(' ');
    let (method, target) = (first.next()?.to_string(), first.next()?.to_string());
    let headers: HashMap<String, String> = lines.filter_map(|l| l.split_once(':')).map(|(k, v)| (k.trim().to_ascii_lowercase(), v.trim().to_string())).collect();
    let length: usize = headers.get("content-length").and_then(|v| v.parse().ok()).unwrap_or(0);
    while data.len() < head_end + length { let n = stream.read(&mut buffer).ok()?; if n == 0 { break; } data.extend_from_slice(&buffer[..n]); }
    Some((method, target, headers, String::from_utf8_lossy(&data[head_end..]).to_string()))
}
pub fn respond(stream: &mut TcpStream, status: u16, headers: &[(&str, String)], body: &[u8]) -> std::io::Result<()> {
    let mut head = format!("HTTP/1.1 {status} X\r\nContent-Length: {}\r\nConnection: close\r\n", body.len());
    for (name, value) in headers { head.push_str(&format!("{name}: {value}\r\n")); }
    head.push_str("\r\n");
    stream.write_all(head.as_bytes())?; stream.write_all(body)?; stream.flush()
}
fn json(stream: &mut TcpStream, status: u16, body: &str) -> std::io::Result<()> { respond(stream, status, &[("Content-Type", "application/json".into())], body.as_bytes()) }
fn handle(mut stream: TcpStream, log: &Mutex<Vec<String>>, files: &[(String, File)]) -> std::io::Result<()> {
    let Some((method, target, headers, body)) = read_request(&mut stream) else { return Ok(()) };
    let auth = headers.get("authorization").cloned().unwrap_or_default();
    let range = headers.get("range").cloned().unwrap_or_default();
    log.lock().unwrap().push(format!("{method} {target} [{auth}] [{range}] {body}"));
    let (path, query) = target.split_once('?').unwrap_or((&target, ""));
    let granted = |token: &str| if token.contains("valido") { 200 } else if token.contains("sinpermiso") { 403 } else { 401 };
    match (method.as_str(), path) {
        ("POST", "/token") => if body.contains("refresh_token=1%2F%2Fbueno") { json(&mut stream, 200, r#"{"access_token":"ya29.renovado-valido-0123456789","expires_in":3599,"scope":"https://www.googleapis.com/auth/drive"}"#) }
            else { json(&mut stream, 400, r#"{"error":"invalid_grant","error_description":"Token has been expired or revoked."}"#) },
        ("GET", "/tokeninfo") => if granted(query) == 200 { json(&mut stream, 200, r#"{"expires_in":"1800","scope":"https://www.googleapis.com/auth/drive.file"}"#) } else { json(&mut stream, 400, r#"{"error":"invalid_token"}"#) },
        ("GET", "/about") => match granted(&auth) { 200 => json(&mut stream, 200, r#"{"user":{"emailAddress":"yo@example.com"}}"#), code => json(&mut stream, code, "{}") },
        ("GET", "/files") => {
            if granted(&auth) != 200 { return json(&mut stream, 401, "{}"); }
            let second = query.contains("pageToken=p2");
            let half = files.len().div_ceil(2);
            let part = if second { &files[half..] } else { &files[..half] };
            let mut items: Vec<String> = part.iter().map(|(id, f)| format!(r#"{{"id":"{id}","name":"{}","size":"{}","mimeType":"{}"}}"#, f.name, f.data.len(), f.mime)).collect();
            if !second { items.push(r#"{"id":"DOC1","name":"Apuntes.pdf","size":"10","mimeType":"application/pdf"}"#.into()); items.push(r#"{"id":"../malo","name":"x.mp3","size":"1","mimeType":"audio/mpeg"}"#.into()); }
            let next = if !second && files.len() > half { r#","nextPageToken":"p2""# } else { "" };
            json(&mut stream, 200, &format!(r#"{{"files":[{}]{next}}}"#, items.join(",")))
        }
        ("GET", p) if p.starts_with("/files/") => {
            if granted(&auth) != 200 { return json(&mut stream, 401, "{}"); }
            let Some((_, file)) = files.iter().find(|(id, _)| id == &p[7..]) else { return json(&mut stream, 404, "{}") };
            let total = file.data.len() as u64;
            match range.strip_prefix("bytes=").and_then(|r| r.split_once('-')) {
                Some((a, b)) => {
                    let start: u64 = a.parse().unwrap_or(0);
                    if start >= total { return respond(&mut stream, 416, &[("Content-Range", format!("bytes */{total}"))], b""); }
                    let end = b.parse::<u64>().unwrap_or(total - 1).min(total - 1);
                    respond(&mut stream, 206, &[("Content-Type", file.mime.clone()), ("Content-Range", format!("bytes {start}-{end}/{total}"))], &file.data[start as usize..=end as usize])
                }
                None => respond(&mut stream, 200, &[("Content-Type", file.mime.clone())], &file.data),
            }
        }
        _ => json(&mut stream, 404, "{}"),
    }
}
