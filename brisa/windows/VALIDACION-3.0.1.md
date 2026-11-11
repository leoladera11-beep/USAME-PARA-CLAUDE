# Brisa Local 3.0.1 · Windows

- Compilación release x86_64-pc-windows-gnullvm con Rust/LLVM MinGW; versión del EXE 3.0.1.
- 7 pruebas Rust ejecutadas en Linux sobre el módulo de exportación usado por la app:
  dos archivos completos antes de registrar, audio solo, validación de opciones,
  cancelación entre archivos, fallo al mover el segundo archivo, fallo de registro y
  protección de archivos existentes. La pareja se revierte si no puede completarse.
- 5 pruebas JavaScript de enlaces, sonido y tamaños.
- 12 pruebas Chromium, incluyendo ambos formatos en una tarea, conservación de calidad,
  cancelación durante conversión, notificación de dos archivos y pantalla completa
  sin desplazamiento en el documento ni sus contenedores. Al salir se restaura el scroll.
- El vídeo descargado se conserva y el MP3 se deriva de su audio, una sola vez a 320 kbps.
  Para archivos directos que requieren MP4 se utiliza remux con copia de pistas.
- ZIP y motores verificados por SHA-256. Se mantiene la verificación de los ejecutables.

No se dispone de Windows 11 en este entorno. Las pruebas de interfaz simulan el puente
Tauri; no verifican WebView2/FFmpeg/yt-dlp ejecutándose en Windows ni una descarga real
de YouTube. La prueba de comandos con FFmpeg Linux no sustituye esa validación.
La página de entrega se valida con lógica Node y el despliegue del proveedor; no había
herramienta de navegador de Sites disponible para una prueba visual de esa página.
