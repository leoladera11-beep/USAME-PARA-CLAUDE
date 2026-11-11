//! Nombre y artista de lo que se descarga. Lógica pura, sin Tauri, para probarla en cualquier sistema.
//! La misma regla existe en Android (`TrackNames.java`): si cambias una, cambia la otra.
use std::path::Path;

/// Adornos que YouTube añade al título y no forman parte del nombre de la canción. Solo se quitan
/// cuando el paréntesis o corchete contiene exactamente uno de ellos: «(Remix)», «(En vivo)» o
/// «(feat. …)» sí son parte del nombre y se conservan.
const ADORNOS: &[&str] = &["official video", "official music video", "official audio", "official lyric video",
    "official lyrics video", "official visualizer", "official mv", "official hd video", "official 4k video",
    "video oficial", "vídeo oficial", "videoclip oficial", "audio oficial", "video lyric oficial", "lyric video",
    "lyrics video", "video lyric", "lyrics", "letra", "con letra", "video con letra", "visualizer", "audio", "video",
    "vídeo", "mv", "m/v", "hd", "hq", "4k", "1080p", "720p"];

/// Quita los adornos conocidos. Si al quitarlos no queda nada, devuelve el título tal cual.
pub fn clean(title: &str) -> String {
    let mut out = String::new();
    let mut rest = title;
    while let Some(start) = rest.find(['(', '[']) {
        let close = if rest[start..].starts_with('(') { ')' } else { ']' };
        let Some(length) = rest[start..].find(close) else { break };
        let inner = rest[start + 1..start + length].trim().to_lowercase();
        out.push_str(&rest[..start]);
        if !ADORNOS.contains(&inner.as_str()) { out.push_str(&rest[start..start + length + 1]); }
        rest = &rest[start + length + 1..];
    }
    out.push_str(rest);
    let text = out.split_whitespace().collect::<Vec<_>>().join(" ");
    let text = text.trim_matches(|c: char| c.is_whitespace() || c == '-' || c == '|').to_string();
    if text.is_empty() { title.trim().to_string() } else { text }
}

fn split(title: &str) -> Option<(String, String)> {
    for separator in [" - ", " – ", " — "] {
        if let Some(at) = title.find(separator) {
            let (artist, song) = (title[..at].trim(), title[at + separator.len()..].trim());
            if !artist.is_empty() && !song.is_empty() { return Some((song.to_string(), artist.to_string())); }
        }
    }
    None
}

fn filled(value: Option<&str>) -> Option<&str> { value.map(str::trim).filter(|text| !text.is_empty()) }

/// Devuelve (título, artista). Por orden: los campos «track» y «artist» de la fuente; si no,
/// «Artista - Título» en el título del vídeo; si no, el título limpio y el canal como artista.
pub fn names(video_title: &str, track: Option<&str>, artist: Option<&str>, channel: Option<&str>) -> (String, String) {
    if let (Some(track), Some(artist)) = (filled(track), filled(artist)) { return (track.to_string(), artist.to_string()); }
    let title = clean(video_title);
    if let Some(found) = split(&title) { return found; }
    let channel = filled(channel).map(|name| name.strip_suffix(" - Topic").unwrap_or(name).trim()).unwrap_or("");
    (title, channel.to_string())
}

/// Nombre de archivo libre: el propio nombre y, solo si ya existe alguno de los archivos, «Nombre (2)»,
/// «Nombre (3)»… El número nunca llega a la interfaz porque título y artista se guardan aparte.
pub fn free_stem(root: &Path, stem: &str, extensions: &[String]) -> String {
    let taken = |name: &str| extensions.iter().any(|ext| root.join(format!("{name}.{ext}")).exists());
    if !taken(stem) { return stem.to_string(); }
    (2..10_000).map(|n| format!("{stem} ({n})")).find(|name| !taken(name)).unwrap_or_else(|| stem.to_string())
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test] fn usa_track_y_artist_si_existen() {
        assert_eq!(names("Los Faroles - Carretera al sur (Official Video)", Some("Carretera al sur"), Some("Los Faroles"), Some("FarolesVEVO")), ("Carretera al sur".into(), "Los Faroles".into()));
    }
    #[test] fn si_no_parte_artista_y_titulo_del_titulo_del_video() {
        assert_eq!(names("Los Faroles - Carretera al sur [HD]", None, None, Some("Un canal")), ("Carretera al sur".into(), "Los Faroles".into()));
        assert_eq!(names("Irene Sala – Mil veces (Vídeo Oficial)", Some(""), None, None), ("Mil veces".into(), "Irene Sala".into()));
        assert_eq!(names("A - B - C", None, None, None), ("B - C".into(), "A".into()));
    }
    #[test] fn si_tampoco_el_canal_es_el_artista() {
        assert_eq!(names("Madrugada (Official Audio)", None, None, Some("Trío Albor - Topic")), ("Madrugada".into(), "Trío Albor".into()));
        assert_eq!(names("Canción", None, None, None), ("Canción".into(), String::new()));
    }
    #[test] fn solo_quita_adornos_seguros() {
        assert_eq!(clean("Canción (Remix) [Official Video]"), "Canción (Remix)");
        assert_eq!(clean("Canción (En vivo)"), "Canción (En vivo)");
        assert_eq!(clean("Canción (feat. Otra) (Lyrics)"), "Canción (feat. Otra)");
        assert_eq!(clean("(Official Video)"), "(Official Video)");
        assert_eq!(clean("Canción (sin cerrar"), "Canción (sin cerrar");
        assert_eq!(clean("Canción   [4K]  "), "Canción");
    }
    #[test] fn el_nombre_del_archivo_no_lleva_sufijo_aleatorio() {
        let root = std::env::temp_dir().join(format!("brisa-nombres-{}", std::process::id()));
        std::fs::create_dir_all(&root).unwrap();
        let exts = vec!["mp4".to_string(), "m4a".to_string()];
        assert_eq!(free_stem(&root, "Canción", &exts), "Canción");
        std::fs::write(root.join("Canción.m4a"), "x").unwrap();
        assert_eq!(free_stem(&root, "Canción", &exts), "Canción (2)");
        std::fs::write(root.join("Canción (2).mp4"), "x").unwrap();
        assert_eq!(free_stem(&root, "Canción", &exts), "Canción (3)");
        let _ = std::fs::remove_dir_all(&root);
    }
}
