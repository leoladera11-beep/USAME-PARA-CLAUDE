use std::path::{Path, PathBuf};

#[derive(Clone, Copy, Debug, PartialEq)]
pub enum Output { Video, Audio, Both }
impl Output {
    pub fn parse(value: &str) -> Result<Self, String> {
        match value { "mp4" => Ok(Self::Video), "mp3" => Ok(Self::Audio), "both" => Ok(Self::Both), _ => Err("Formato de salida no válido.".into()) }
    }
    pub fn audio_only(self) -> bool { self == Self::Audio }
    pub fn wants_audio(self) -> bool { self != Self::Video }
    pub fn as_str(self) -> &'static str { match self { Self::Video => "mp4", Self::Audio => "mp3", Self::Both => "both" } }
}

/// Formato de la música descargada. «Original» copia la pista de audio tal como llega
/// (Opus o AAC) a un M4A, sin descodificar ni volver a comprimir: es la máxima calidad que
/// ofrece la fuente y suena idéntica a la del vídeo. MP3 queda para equipos antiguos.
#[derive(Clone, Copy, Debug, PartialEq)]
pub enum AudioFormat { Original, Mp3 }
impl AudioFormat {
    pub fn parse(value: Option<&str>) -> Self { if value == Some("mp3") { Self::Mp3 } else { Self::Original } }
    pub fn file_name(self) -> &'static str { match self { Self::Original => "complete.m4a", Self::Mp3 => "complete.mp3" } }
    /// Argumentos de FFmpeg entre el archivo de entrada y el de salida.
    pub fn ffmpeg_args(self) -> &'static [&'static str] {
        match self {
            Self::Original => &["-map", "0:a:0", "-vn", "-c:a", "copy", "-map_metadata", "0", "-f", "mp4", "-y"],
            Self::Mp3 => &["-map", "0:a:0", "-vn", "-c:a", "libmp3lame", "-b:a", "320k", "-compression_level", "0", "-threads", "1", "-map_metadata", "0", "-y"],
        }
    }
    pub fn recodes(self) -> bool { self == Self::Mp3 }
}

/// Keep a pair together: a cancelled/failed export never leaves a partial pair or library entry.
pub fn commit_files<T>(sources: Vec<(PathBuf, &'static str)>, root: &Path, stem: &str,
    cancelled: impl Fn() -> bool, register: impl FnOnce(&[(PathBuf, &'static str)]) -> Result<T, String>) -> Result<T, String> {
    let mut moved = Vec::new();
    let result = (|| {
        for (source, kind) in sources {
            if cancelled() { return Err("Descarga cancelada.".into()); }
            let ext = source.extension().and_then(|s| s.to_str()).ok_or("Archivo sin formato.")?;
            let target = root.join(format!("{stem}.{ext}"));
            if target.exists() { return Err("El destino ya contiene un archivo con ese nombre.".into()); }
            std::fs::rename(source, &target).map_err(|_| "No se pudo guardar el archivo terminado.".to_string())?;
            moved.push((target, kind));
        }
        if cancelled() { return Err("Descarga cancelada.".into()); }
        register(&moved)
    })();
    if result.is_err() { for (target, _) in moved { let _ = std::fs::remove_file(target); } }
    result
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::{fs, sync::atomic::{AtomicUsize, Ordering}};
    static SEQ: AtomicUsize = AtomicUsize::new(0);
    struct Fixture(PathBuf);
    impl Fixture {
        fn new() -> Self { let p=std::env::temp_dir().join(format!("brisa-pair-{}-{}",std::process::id(),SEQ.fetch_add(1,Ordering::Relaxed)));fs::create_dir_all(p.join("temp")).unwrap();Self(p) }
        fn file(&self, name: &str) -> PathBuf { let p=self.0.join("temp").join(name);fs::write(&p,name).unwrap();p }
    }
    impl Drop for Fixture { fn drop(&mut self) { let _=fs::remove_dir_all(&self.0); } }
    #[test] fn validates_modes() { assert_eq!(Output::parse("both").unwrap(),Output::Both);assert!(!Output::Both.audio_only());assert!(Output::Both.wants_audio());assert!(Output::Audio.audio_only());assert!(!Output::Video.wants_audio());assert!(Output::parse("invalid").is_err()); }
    #[test] fn registers_two_complete_files_together() {
        let f=Fixture::new();let v=f.file("source.mp4");let a=f.file("complete.mp3");
        let count=commit_files(vec![(v,"video"),(a,"audio")],&f.0,"Song",||false,|files| {assert_eq!(files.len(),2);assert!(files.iter().all(|(p,_)|p.is_file()));assert_eq!(files[0].1,"video");assert_eq!(files[1].1,"audio");Ok(files.len())}).unwrap();
        assert_eq!(count,2);assert!(f.0.join("Song.mp4").is_file());assert!(f.0.join("Song.mp3").is_file());
    }
    #[test] fn failed_second_move_removes_first_file() { let f=Fixture::new();let v=f.file("source.mp4");let result=commit_files(vec![(v,"video"),(f.0.join("missing.mp3"),"audio")],&f.0,"Song",||false,|_|Ok(()));assert!(result.is_err());assert!(!f.0.join("Song.mp4").exists()); }
    #[test] fn failed_library_commit_removes_both_files() { let f=Fixture::new();let v=f.file("source.mp4");let a=f.file("complete.mp3");let result:Result<(),String>=commit_files(vec![(v,"video"),(a,"audio")],&f.0,"Song",||false,|_|Err("disk full".into()));assert!(result.is_err());assert!(!f.0.join("Song.mp4").exists());assert!(!f.0.join("Song.mp3").exists()); }
    #[test] fn cancel_between_files_rolls_back_the_pair() { let f=Fixture::new();let v=f.file("source.mp4");let a=f.file("complete.mp3");let n=AtomicUsize::new(0);let result=commit_files(vec![(v,"video"),(a,"audio")],&f.0,"Song",||n.fetch_add(1,Ordering::Relaxed)>0,|_|Ok(()));assert!(result.is_err());assert!(!f.0.join("Song.mp4").exists());assert!(!f.0.join("Song.mp3").exists()); }
    #[test] fn keeps_existing_destination_and_rolls_back_new_file() { let f=Fixture::new();let v=f.file("source.mp4");let a=f.file("complete.mp3");fs::write(f.0.join("Song.mp3"),"previous").unwrap();let result=commit_files(vec![(v,"video"),(a,"audio")],&f.0,"Song",||false,|_|Ok(()));assert!(result.is_err());assert!(!f.0.join("Song.mp4").exists());assert_eq!(fs::read_to_string(f.0.join("Song.mp3")).unwrap(),"previous"); }
    #[test] fn audio_only_exports_no_video() { let f=Fixture::new();let a=f.file("complete.mp3");commit_files(vec![(a,"audio")],&f.0,"Song",||false,|files|{assert_eq!(files.len(),1);Ok(())}).unwrap();assert!(f.0.join("Song.mp3").exists());assert!(!f.0.join("Song.mp4").exists()); }
    #[test] fn audio_original_copia_sin_recomprimir() {
        let args = AudioFormat::Original.ffmpeg_args();
        assert!(args.windows(2).any(|w| w == ["-c:a", "copy"]));
        assert!(!args.iter().any(|a| a.contains("lame") || *a == "-b:a"));
        assert_eq!(AudioFormat::Original.file_name(), "complete.m4a");
        assert!(!AudioFormat::Original.recodes());
    }
    #[test] fn mp3_sigue_disponible_y_el_original_es_el_valor_por_defecto() {
        assert_eq!(AudioFormat::parse(Some("mp3")), AudioFormat::Mp3);
        assert_eq!(AudioFormat::parse(Some("original")), AudioFormat::Original);
        assert_eq!(AudioFormat::parse(None), AudioFormat::Original);
        assert_eq!(AudioFormat::parse(Some("otra-cosa")), AudioFormat::Original);
        let args = AudioFormat::Mp3.ffmpeg_args();
        assert!(args.windows(2).any(|w| w == ["-b:a", "320k"]));
        assert_eq!(AudioFormat::Mp3.file_name(), "complete.mp3");
    }
}
