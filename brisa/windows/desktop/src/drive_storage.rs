use crate::Store;
use serde_json::{Value,json};
use std::path::Path;

use crate::storage_paths::contains;
pub fn is_drive(store: &Store, path: &Path) -> bool { store.drive_folder.lock().unwrap().as_ref().map(|root|contains(root,path)).unwrap_or(false) }
#[tauri::command]
pub fn drive_storage_status(store:tauri::State<'_,Store>)->Value{
    let folder=store.drive_folder.lock().unwrap();
    json!({"configured":folder.is_some(),"available":folder.as_ref().map(|p|p.is_dir()).unwrap_or(false),"folder":folder.as_ref().map(|p|p.to_string_lossy().to_string()),"integration":"Google Drive para ordenadores"})
}
#[tauri::command]
pub async fn choose_drive_folder(store:tauri::State<'_,Store>)->Result<(),String>{
    if store.active.load(std::sync::atomic::Ordering::SeqCst){return Err("Espera a que termine la descarga antes de cambiar Drive.".into());}
    let shared=store.inner().clone();
    tauri::async_runtime::spawn_blocking(move||{
        let folder=rfd::FileDialog::new().set_title("Elige tu carpeta de Google Drive (unidad de Drive para ordenadores)").pick_folder().ok_or("No se eligió una carpeta de Drive.")?;
        if !folder.is_dir(){return Err("Abre Google Drive para ordenadores y elige una carpeta de su unidad.".into());}
        std::fs::write(shared.root.join("drive-folder.txt"),folder.to_string_lossy().as_bytes()).map_err(|_|"No se pudo guardar la carpeta de Drive.".to_string())?;
        *shared.drive_folder.lock().unwrap()=Some(folder);Ok(())
    }).await.map_err(|_|"No se pudo elegir la carpeta de Drive.".to_string())?
}
#[tauri::command]
pub fn open_drive_setup()->Result<(),String>{
    #[cfg(windows)]{std::process::Command::new("explorer.exe").arg("https://www.google.com/drive/download/").spawn().map_err(|_|"Abre https://www.google.com/drive/download/ en tu navegador.".to_string())?;Ok(())}
    #[cfg(not(windows))]{Err("Abre https://www.google.com/drive/download/ en tu navegador.".into())}
}
