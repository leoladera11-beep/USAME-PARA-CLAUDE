//! El código real de Windows frente a un Drive simulado, con peticiones HTTP de verdad.
use brisa_host_tests::{drive_core::*, drive_token::*, mock::{File, Mock}};
use serde_json::json;

const GOOD: &str = "ya29.token-valido-0123456789abcdef";
const NOW: u64 = 1_000_000_000;
fn data(size: usize) -> Vec<u8> { (0..size).map(|i| (i * 31 + 7) as u8).collect() }
fn drive() -> Mock {
    Mock::start(vec![
        ("AUD1".into(), File { name: "Ana - Tema.m4a".into(), mime: "audio/mp4".into(), data: data(300_000) }),
        ("VID1".into(), File { name: "Concierto.mp4".into(), mime: "video/mp4".into(), data: data(50_000) }),
        ("AUD2".into(), File { name: "Otra.mp3".into(), mime: "application/octet-stream".into(), data: data(1000) }),
    ])
}
fn fixed(token: &'static str) -> impl FnMut(bool) -> Result<String, String> { move |_| Ok(token.to_string()) }

#[test] fn token_de_acceso_valido_conecta_al_instante() {
    let mock = drive(); let api = mock.endpoints();
    let session = connect(&json!({"access": format!("  Bearer {GOOD}\n")}), &api, NOW).unwrap();
    assert_eq!(session.access, GOOD);
    assert_eq!(session.email, "yo@example.com");
    assert_eq!(session.expiry, NOW + 1_800_000);
    assert!(!session.permanent());
    let summary = session.summary(NOW);
    assert_eq!(summary["minutes"], 30); assert_eq!(summary["active"], true); assert_eq!(summary["fullDrive"], false); assert_eq!(summary["expired"], false);
    assert!(!summary.to_string().contains(GOOD), "el resumen nunca incluye el token");
    assert_eq!(session.summary(NOW + 3_600_000)["expired"], true);
    assert!(mock.log.lock().unwrap().iter().any(|l| l.starts_with("GET /about") && l.contains(&format!("[Bearer {GOOD}]"))));
}
#[test] fn errores_con_su_motivo() {
    let mock = drive(); let api = mock.endpoints();
    let fail = |input: serde_json::Value| connect(&input, &api, NOW).err().unwrap();
    assert!(fail(json!({"access": "ya29.token-caducado-0123456789"})).contains("no es válido o ya caducó"));
    assert!(fail(json!({"access": "ya29.token-sinpermiso-0123456789"})).contains("permiso para Google Drive"));
    assert!(fail(json!({"access": "corto"})).contains("token de acceso OAuth válido"));
    assert!(fail(json!({"access": ""})).contains("válido"));
    assert!(fail(json!({"refresh": "1//bueno-refresh-token-0123456789"})).contains("ID de cliente"));
    assert!(fail(json!({"refresh": "1//malo-refresh-token-0123456789", "clientId": "123-abc.apps.googleusercontent.com"})).contains("Token has been expired or revoked."));
    let before = mock.log.lock().unwrap().len();
    assert!(fail(json!({"access": "ya29.con espacios dentro-0123456789"})).contains("válido"));
    assert_eq!(mock.log.lock().unwrap().len(), before, "un token malformado nunca sale del equipo");
}
#[test] fn sesion_permanente_con_token_de_actualizacion() {
    let mock = drive(); let api = mock.endpoints();
    let mut session = connect(&json!({"refresh": "1//bueno-refresh-token-0123456789", "clientId": "123-abc.apps.googleusercontent.com", "clientSecret": "GOCSPX-secreto"}), &api, NOW).unwrap();
    assert_eq!(session.access, "ya29.renovado-valido-0123456789");
    assert!(session.permanent());
    assert_eq!(session.expiry, NOW + 3_599_000);
    assert_eq!(session.summary(NOW)["fullDrive"], true);
    assert_eq!(session.summary(NOW + 99_000_000)["expired"], false);
    let sent = mock.log.lock().unwrap().iter().find(|l| l.starts_with("POST /token")).cloned().unwrap();
    assert!(sent.contains("grant_type=refresh_token") && sent.contains("client_secret=GOCSPX-secreto") && sent.contains("client_id=123-abc.apps.googleusercontent.com"));
    session.access = "ya29.viejo-0123456789abcdefgh".into(); session.expiry = 0;
    renew(&mut session, &api, NOW + 5000).unwrap();
    assert_eq!(session.access, "ya29.renovado-valido-0123456789");
    assert!(usable(&session.access, session.expiry, NOW + 5000));
    // Un token de acceso caducado se salva si hay token de actualización.
    let rescued = connect(&json!({"access": "ya29.token-caducado-0123456789", "refresh": "1//bueno-refresh-token-0123456789", "clientId": "123-abc.apps.googleusercontent.com"}), &api, NOW).unwrap();
    assert_eq!(rescued.access, "ya29.renovado-valido-0123456789");
    let mut temporary = Session { access: GOOD.into(), email: "yo@example.com".into(), ..Default::default() };
    assert!(renew(&mut temporary, &api, NOW).err().unwrap().contains("caducó"));
}
#[test] fn lista_musica_y_videos_en_varias_paginas() {
    let mock = drive(); let api = mock.endpoints();
    let found = list(&api, &mut fixed(GOOD)).unwrap();
    assert_eq!(found.iter().map(|f| (f.id.as_str(), f.kind, f.size)).collect::<Vec<_>>(), vec![("AUD1", "audio", 300_000), ("VID1", "video", 50_000), ("AUD2", "audio", 1000)]);
    assert_eq!(mock.log.lock().unwrap().iter().filter(|l| l.starts_with("GET /files?")).count(), 2);
    assert!(list(&api, &mut fixed("ya29.token-caducado-0123456789")).err().unwrap().contains("HTTP 401"));
    // Si Drive rechaza el token, se renueva una vez y se reintenta.
    let mut asked = Vec::new();
    let found = list(&api, &mut |force| { asked.push(force); Ok(if force { GOOD.to_string() } else { "ya29.token-caducado-0123456789".to_string() }) }).unwrap();
    assert_eq!(found.len(), 3); assert_eq!(asked[..2], [false, true]);
}
#[test] fn lee_tramos_y_archivos_enteros() {
    let mock = drive(); let api = mock.endpoints(); let source = data(300_000);
    let piece = fetch(&api, "AUD1", parse_range(Some("bytes=1000-"), 4096), &mut fixed(GOOD)).unwrap();
    assert_eq!((piece.status, piece.kind.as_str(), piece.content_range.as_deref()), (206, "audio/mp4", Some("bytes 1000-5095/300000")));
    assert_eq!(piece.body, source[1000..5096]);
    let tail = fetch(&api, "AUD1", parse_range(Some("bytes=299000-"), CHUNK), &mut fixed(GOOD)).unwrap();
    assert_eq!(tail.content_range.as_deref(), Some("bytes 299000-299999/300000")); assert_eq!(tail.body.len(), 1000);
    let whole = fetch(&api, "AUD1", None, &mut fixed(GOOD)).unwrap();
    assert_eq!((whole.status, whole.content_range), (200, None)); assert_eq!(whole.body, source);
    assert_eq!(fetch(&api, "NADA", None, &mut fixed(GOOD)).err().unwrap().0, 404);
    assert_eq!(fetch(&api, "../malo", None, &mut fixed(GOOD)).err().unwrap().0, 404);
    assert_eq!(fetch(&api, "AUD1", Some((900_000, 900_100)), &mut fixed(GOOD)).err().unwrap().0, 416);
    assert_eq!(fetch(&api, "AUD1", None, &mut fixed("ya29.token-caducado-0123456789")).err().unwrap().0, 502);
    let mut asked = Vec::new();
    let renewed = fetch(&api, "AUD1", Some((0, 9)), &mut |force| { asked.push(force); Ok(if force { GOOD.to_string() } else { "ya29.token-caducado-0123456789".to_string() }) }).unwrap();
    assert_eq!(renewed.body, source[..10]); assert_eq!(asked, [false, true]);
    assert_eq!(fetch(&api, "AUD1", None, &mut |_| Err("Inicia sesión".to_string())).err().unwrap(), (401, "Inicia sesión".to_string()));
}
