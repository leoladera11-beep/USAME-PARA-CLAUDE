EDICION LIGERA: consulta LEEME-LIGERO.md. yt-dlp.exe y el ZIP de fuentes FFmpeg se recuperan mediante python3 tools/descargar-dependencias.py; no estan dentro de este ZIP.

# Compilar y comprobar Brisa 3.0.2

Desde la carpeta de fuentes extraída. Lee DEPENDENCIAS.md y los límites de las fuentes.

## Android
En Linux/WSL configura las rutas de tu equipo:
```bash
export BRISA_JDK="/ruta/al/jdk-21"
export BRISA_BT="/ruta/al/android-sdk/build-tools/36.0.0"
export BRISA_API="/ruta/al/android-sdk/platforms/android-37/android.jar"
export BRISA_APKTOOL="/ruta/al/apktool_2.12.1.jar"
bash tools/build-android.sh
```
Produce android/f8-unsigned.apk y android/a30-unsigned.apk. Compila auxiliares Java,
genera DEX, excluye stubs y los integra en el proyecto APKTool actualizado.
No vuelvas a aplicar los antiguos parches.

Para firmar configura BRISA_KEYSTORE y BRISA_KEYSTORE_PASSWORD_FILE con tus archivos
privados. El alias utilizado es brisa; las APK firmadas aparecen en dist/.
Para otra clave adapta el alias/apksigner. Los archivos privados no están incluidos.

## Windows
Con Rust y herramientas C++ disponibles:
```text
cd windows
npm ci
npm run desktop:build
```
El EXE necesita los recursos y las DLL de tu compilación. La entrega MinGW contiene
Brisa Local.exe, WebView2Loader.dll, libunwind.dll, resources/ y licencias.
La interfaz va incluida en el EXE; no hay servidor web residente.

Compilación MinGW desde Linux, con LLVM MinGW UCRT en PATH:
```bash
rustup target add x86_64-pc-windows-gnullvm
export CC_x86_64_pc_windows_gnullvm=x86_64-w64-mingw32-clang
export CXX_x86_64_pc_windows_gnullvm=x86_64-w64-mingw32-clang++
export AR_x86_64_pc_windows_gnullvm=llvm-ar
cargo build --manifest-path windows/desktop/Cargo.toml --target x86_64-pc-windows-gnullvm --release --locked
```

## Pruebas
```bash
mkdir -p test-classes
javac -d test-classes android/src/com/brisa/local/{SoundCore,VideoGestureEngine,VideoBackgroundPolicy,OfflineCopy}.java android/tests/*.java
for name in SoundCoreTest VideoGestureEngineTest VideoBackgroundPolicyTest OfflineCopyTest; do
  java -cp test-classes com.brisa.local.$name
done
rustc --edition 2021 --test windows/desktop/src/download_output.rs -o test-output
./test-output
rustc --edition 2021 --test windows/desktop/src/storage_paths.rs -o test-paths
./test-paths
cd windows
npm ci
npm test
npm run test:ui
node node_modules/@playwright/test/cli.js test --config playwright.android.config.js
```
Playwright apunta a Chromium /usr/bin/chromium; adapta la ruta en otro sistema.
Los puentes nativos se simulan. La validación con equipos y Drive reales está pendiente.
