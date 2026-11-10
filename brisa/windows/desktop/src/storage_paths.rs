use std::path::Path;
pub fn contains(folder: &Path, path: &Path) -> bool {
    let normalize=|p:&Path|{
        let raw=p.to_string_lossy().replace('/',"\\").to_lowercase();
        let raw=if let Some(unc)=raw.strip_prefix("\\\\?\\unc\\"){format!("\\\\{unc}")}else{raw.trim_start_matches("\\\\?\\").to_string()};
        raw.trim_end_matches('\\').to_string()
    };
    let base=normalize(folder);if base.is_empty(){return false;}let path=normalize(path);path==base||path.starts_with(&(base+"\\"))
}
#[cfg(test)]mod tests{
 use super::*;
 #[test]fn handles_drive_letter_and_case(){assert!(contains(Path::new("G:\\Mi unidad\\Brisa"),Path::new("g:/mi unidad/brisa/Canción.mp4")));}
 #[test]fn requires_a_directory_boundary(){assert!(!contains(Path::new("G:\\Brisa"),Path::new("G:\\Brisa antigua\\video.mp4")));assert!(!contains(Path::new("G:\\Brisa"),Path::new("C:\\Brisa\\video.mp4")));}
 #[test]fn handles_verbatim_and_unc_paths(){assert!(contains(Path::new("G:\\Mi unidad"),Path::new("\\\\?\\G:\\Mi unidad\\video.mp4")));assert!(contains(Path::new("\\\\server\\Drive"),Path::new("\\\\?\\UNC\\server\\Drive\\video.mp4")));}
 #[test]fn rejects_an_empty_folder(){assert!(!contains(Path::new(""),Path::new("G:\\video.mp4")));}
}
