//! Puente de demostración: sirve un archivo «desde Drive» igual que brisadrive:// en la app,
//! para comprobar con un navegador real que el reproductor acepta la entrega por tramos.
//!   bridge <archivo> <tipo MIME> <bytes por tramo>      imprime «URL http://127.0.0.1:puerto/MEDIA1»
use brisa_host_tests::{drive_core::fetch, drive_token::parse_range, mock::{read_request, respond, File, Mock}};
use std::net::TcpListener;

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let data = std::fs::read(&args[1]).expect("archivo");
    let chunk: u64 = args[3].parse().expect("tramo");
    let mock = Mock::start(vec![("MEDIA1".into(), File { name: "medio".into(), mime: args[2].clone(), data })]);
    let api = mock.endpoints();
    let listener = TcpListener::bind("127.0.0.1:0").unwrap();
    println!("URL http://{}/MEDIA1", listener.local_addr().unwrap());
    for mut stream in listener.incoming().flatten() {
        let api = api.clone();
        std::thread::spawn(move || {
            let Some((_, target, headers, _)) = read_request(&mut stream) else { return };
            let range = parse_range(headers.get("range").map(String::as_str), chunk);
            let _ = match fetch(&api, target.trim_matches('/'), range, &mut |_| Ok("ya29.token-valido-0123456789".to_string())) {
                Err((status, message)) => respond(&mut stream, status, &[("Access-Control-Allow-Origin", "*".into())], message.as_bytes()),
                Ok(piece) => {
                    let mut extra = vec![("Content-Type", piece.kind.clone()), ("Accept-Ranges", "bytes".to_string()), ("Access-Control-Allow-Origin", "*".to_string()), ("Cache-Control", "no-store".to_string())];
                    if let Some(value) = piece.content_range.clone() { extra.push(("Content-Range", value)); }
                    respond(&mut stream, piece.status, &extra, &piece.body)
                }
            };
        });
    }
}
