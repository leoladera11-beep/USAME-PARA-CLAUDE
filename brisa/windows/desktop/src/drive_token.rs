//! Piezas puras del inicio de sesión en Drive con token: validación, rangos y nombres.
//! No dependen de ninguna biblioteca externa para poder probarse con `rustc --test`.

/// Margen para no usar un token a punto de caducar.
pub const MARGIN_MS: u64 = 60_000;
pub const DEFAULT_LIFE_MS: u64 = 50 * 60_000;
/// Tamaño máximo que se pide a Drive por cada petición del reproductor.
pub const CHUNK: u64 = 4 * 1024 * 1024;

/// Los tokens de Google solo llevan estos caracteres; cualquier otra cosa se rechaza antes de enviarla.
pub fn plausible(value: &str, min: usize) -> bool {
    value.len() >= min && value.len() <= 4096 && value.chars().all(|c| c.is_ascii_alphanumeric() || "._~+/=:-".contains(c))
}
/// Quita espacios y el prefijo «Bearer » que suele copiarse junto al token.
pub fn clean(value: &str) -> String {
    let text = value.trim();
    if text.len() > 7 && text[..7].eq_ignore_ascii_case("bearer ") { text[7..].trim().to_string() } else { text.to_string() }
}
pub fn valid_file_id(id: &str) -> bool {
    !id.is_empty() && id.len() <= 200 && id.chars().all(|c| c.is_ascii_alphanumeric() || c == '_' || c == '-')
}
pub fn expiry(now_ms: u64, expires_in_secs: u64) -> u64 {
    now_ms + if expires_in_secs > 0 { expires_in_secs * 1000 } else { DEFAULT_LIFE_MS }
}
pub fn usable(access: &str, expiry_ms: u64, now_ms: u64) -> bool { !access.is_empty() && now_ms + MARGIN_MS < expiry_ms }

/// Rango a pedir a Drive a partir de la cabecera Range del reproductor: nunca más de un tramo.
/// Sin cabecera devuelve None y se sirve el archivo entero (lo usan la lectura de letras y la IA).
pub fn parse_range(header: Option<&str>, chunk: u64) -> Option<(u64, u64)> {
    let value = header?.trim().strip_prefix("bytes=")?;
    let (first, last) = value.split_once('-')?;
    let start: u64 = first.trim().parse().ok()?;
    let limit = start.saturating_add(chunk.max(1) - 1);
    let end = match last.trim() { "" => limit, text => text.parse::<u64>().ok()?.min(limit) };
    if end < start { None } else { Some((start, end)) }
}

/// «audio» o «video» según el tipo que declara Drive y, si no ayuda, según la extensión.
pub fn kind_for(mime: &str, name: &str) -> Option<&'static str> {
    if mime.starts_with("audio/") { return Some("audio"); }
    if mime.starts_with("video/") { return Some("video"); }
    let ext = name.rsplit_once('.').map(|(_, e)| e.to_ascii_lowercase()).unwrap_or_default();
    if ["mp3", "m4a", "aac", "wav", "ogg", "oga", "opus", "flac"].contains(&ext.as_str()) { Some("audio") }
    else if ["mp4", "m4v", "webm", "mov", "mkv"].contains(&ext.as_str()) { Some("video") } else { None }
}
pub fn urlencode(text: &str) -> String {
    text.bytes().map(|b| if b.is_ascii_alphanumeric() || b"-_.~".contains(&b) { (b as char).to_string() } else { format!("%{b:02X}") }).collect()
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test] fn valida_y_limpia_tokens() {
        assert!(plausible("ya29.a0AfB_token-de-prueba_1234567890", 20));
        assert!(plausible("1//0abc-DEF_ghi.jkl+mno/pqr=", 20));
        assert!(!plausible("corto", 20));
        assert!(!plausible("ya29.con espacios dentro del token", 20));
        assert!(!plausible("ya29.con\nsalto-de-linea-0123456789", 20));
        assert!(!plausible(&"a".repeat(5000), 20));
        assert_eq!(clean("  Bearer ya29.abc  \n"), "ya29.abc");
        assert_eq!(clean("bearer ya29.abc"), "ya29.abc");
        assert_eq!(clean("ya29.abc"), "ya29.abc");
        assert_eq!(clean("bearer"), "bearer");
    }
    #[test] fn caducidad_con_margen() {
        assert_eq!(expiry(1000, 3600), 3_601_000);
        assert_eq!(expiry(1000, 0), 1000 + DEFAULT_LIFE_MS);
        assert!(usable("t", 200_000, 100_000));
        assert!(!usable("t", 200_000, 150_000));
        assert!(!usable("", 200_000, 0));
    }
    #[test] fn rangos_acotados_a_un_tramo() {
        assert_eq!(parse_range(Some("bytes=0-"), 100), Some((0, 99)));
        assert_eq!(parse_range(Some("bytes=500-"), 100), Some((500, 599)));
        assert_eq!(parse_range(Some("bytes=10-19"), 100), Some((10, 19)));
        assert_eq!(parse_range(Some("bytes=10-999999"), 100), Some((10, 109)));
        assert_eq!(parse_range(Some(" bytes=7-7 "), 100), Some((7, 7)));
        assert_eq!(parse_range(None, 100), None);
        assert_eq!(parse_range(Some("bytes=-500"), 100), None);
        assert_eq!(parse_range(Some("bytes=20-10"), 100), None);
        assert_eq!(parse_range(Some("items=0-5"), 100), None);
        assert_eq!(parse_range(Some("bytes=abc-"), 100), None);
        assert_eq!(parse_range(Some(&format!("bytes={}-", u64::MAX)), CHUNK), Some((u64::MAX, u64::MAX)));
    }
    #[test] fn identificadores_tipos_y_codificacion() {
        assert!(valid_file_id("1AbC_d-9"));
        assert!(!valid_file_id(""));
        assert!(!valid_file_id("../secreto"));
        assert!(!valid_file_id("id?alt=media"));
        assert_eq!(kind_for("audio/mpeg", "x"), Some("audio"));
        assert_eq!(kind_for("video/mp4", "x"), Some("video"));
        assert_eq!(kind_for("application/octet-stream", "Tema.M4A"), Some("audio"));
        assert_eq!(kind_for("application/octet-stream", "clip.mkv"), Some("video"));
        assert_eq!(kind_for("application/pdf", "doc.pdf"), None);
        assert_eq!(urlencode("a b&c=d/é"), "a%20b%26c%3Dd%2F%C3%A9");
    }
}
