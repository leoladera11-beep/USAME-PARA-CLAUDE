EDICION LIGERA: consulta LEEME-LIGERO.md. yt-dlp.exe y el ZIP de fuentes FFmpeg se recuperan mediante python3 tools/descargar-dependencias.py; no estan dentro de este ZIP.

# Brisa Local 3.0.2 — Windows

Consulta LEEME-3.0.2.txt para instalar la app portable de Windows. Esta actualización
añade la opción Ambos (MP4 + MP3) y oculta las barras de desplazamiento en pantalla completa.
Este directorio contiene la app Windows Tauri/Rust y su interfaz.

Compila con npm ci y npm run desktop:build. Para las pruebas: npm test y npm run test:ui.
El motor FFmpeg añade libmp3lame para MP3 automático 320 kbps; sus fuentes y scripts
están en third-party/ y scripts/. VALIDACION-3.0.2.md identifica los límites de las pruebas.

El módulo download_output exporta la pareja antes de registrarla en una sola transacción
de biblioteca. El vídeo y el MP3 conservan el mismo nombre y se procesan en una tarea.
Para sus pruebas sin dependencias Tauri: rustc --edition 2021 --test
desktop/src/download_output.rs -o test-download-output; después ejecuta ese binario.

Drive en Windows usa Google Drive para ordenadores. Consulta LEEME-3.0.2.txt para
configurar su unidad en streaming. No se usa la sesión web ni OAuth incrustado.
