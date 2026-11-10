EDICION LIGERA: consulta LEEME-LIGERO.md. yt-dlp.exe y el ZIP de fuentes FFmpeg se recuperan mediante python3 tools/descargar-dependencias.py; no estan dentro de este ZIP.

# Herramientas y dependencias

Las apps compiladas están incluidas; las herramientas se requieren para modificarlas.

## Android: Linux o WSL
- OpenJDK 21: https://adoptium.net/temurin/releases/?version=21
- Python 3: https://www.python.org/downloads/
- APKTool 2.12.1: https://github.com/iBotPeaches/Apktool/releases/tag/v2.12.1
- Android SDK Platform 37: https://developer.android.com/tools/sdkmanager
- Android Build Tools 36.0.0: https://developer.android.com/tools/releases/build-tools

El SDK aporta android.jar, D8, zipalign y apksigner. En WSL instala las herramientas
Linux del SDK/JDK. La reconstrucción usa Bash y APKTool. APK: min API 26, target 37,
versión 30002, paquete com.brisa.localplus. Las JNI originales están en decoded/lib.

## Windows
- Node.js LTS y npm: https://nodejs.org/
- Rust/Cargo: https://rustup.rs/
- Microsoft C++ Build Tools: https://visualstudio.microsoft.com/visual-cpp-build-tools/
- WebView2: https://developer.microsoft.com/microsoft-edge/webview2/
- Requisitos Tauri: https://v2.tauri.app/start/prerequisites/

Versiones exactas en windows/package-lock.json y windows/desktop/Cargo.lock.
Tauri CLI 2.9.4, Playwright 1.56.1. npm ci y Cargo necesitan conexión inicialmente.
No se requiere Node/Rust para ejecutar la app compilada.

La entrega se compiló desde Linux con LLVM MinGW UCRT 20261104 y el target Rust
x86_64-pc-windows-gnullvm. https://github.com/mstorsjo/llvm-mingw/releases
Una compilación MSVC puede necesitar otras DLL; no mezcles dependencias sin verificar.

## Motores incluidos
- yt-dlp 2026.10.26; QuickJS-ng 0.18.0: windows/desktop/resources/.
- FFmpeg/ffprobe n8.1 con LAME 3.100: mismo directorio.
- Fuentes FFmpeg: windows/third-party/ffmpeg-n8.1-source.zip.
- Fuentes LAME: windows/third-party/lame-3.100.tar.gz.
- Scripts: windows/scripts/build-lame-windows.sh y build-ffmpeg-windows.sh.
- Licencias: windows/third-party/licenses y desktop/resources/licenses.
- NewPipe/nanojson: vendor/, con sus licencias originales.

Si cambias motores, actualiza desktop/resources/hashes.json antes de compilar.
No se ha desactivado su verificación SHA-256. Drive en Windows usa el cliente oficial:
https://www.google.com/drive/download/ . Google administra la caché y sincronización.
