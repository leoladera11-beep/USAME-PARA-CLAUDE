//! Reutiliza los módulos reales de la app y añade un Drive simulado para probarlos.
#[path = "../../src/drive_token.rs"] pub mod drive_token;
#[path = "../../src/drive_core.rs"] pub mod drive_core;
#[path = "../../src/download_resume.rs"] pub mod download_resume;
pub mod mock;
