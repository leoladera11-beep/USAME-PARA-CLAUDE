EDICION LIGERA: consulta LEEME-LIGERO.md. yt-dlp.exe y el ZIP de fuentes FFmpeg se recuperan mediante python3 tools/descargar-dependencias.py; no estan dentro de este ZIP.

# Brisa Local 3.0.2

Lee LEEME-3.0.2.txt para instalar las APK del F8 Pro y A30 o la app portable de Windows 11 x64.
Esta entrega corrige la gestión de efectos y volumen al alternar vídeo/música, añade el sonido
compartido en Windows, MP3 automático a 320 kbps, acciones PiP/MediaSession y presentación
ligera por perfil. La apariencia final de Hyper Island la controla HyperOS.

## Organización de las fuentes

- android/decoded: proyecto APKTool completo, basado en la entrega estable 2.7.5; contiene
  el código smali actualizado, recursos, web y las dos bibliotecas JNI originales.
- android/src: fuentes Java de los nuevos auxiliares de sonido, vídeo, gestos y presentación.
- android/stubs: firmas para compilar contra clases ofuscadas de la APK. NO se empaquetan.
- android/tests: pruebas Java puras de sonido, gestos y política PiP.
- windows: proyecto nativo Tauri/Rust, web, pruebas y recursos de descarga.
- common: presentación, estilos y grafo Web Audio compartidos con las copias de cada web.
- tools/build-android.sh: recompila los auxiliares, los integra en el proyecto APKTool y
  construye las variantes f8/a30. No requiere volver a aplicar scripts de parches.

El código antiguo de Android fue recuperado de la APK suministrada; android/decoded es
la fuente de reconstrucción de esta entrega, no un nuevo proyecto Gradle de Java limpio.
Las bibliotecas libbrisa_mp3.so se conservan sin modificaciones de la APK suministrada;
no se dispone de la fuente de su envoltura JNI en los archivos recibidos. LAME 3.100 y
FFmpeg n8.1 correspondientes al motor Windows están incluidos en windows/third-party.

## Reconstruir Android

Requisitos: JDK 21, Python 3, APKTool 2.12.1, Android SDK Platform 37 y Build Tools 36.
Configura BRISA_JDK (raíz JDK), BRISA_BT (directorio build-tools), BRISA_API (android.jar)
y BRISA_APKTOOL (apktool.jar). Ejecuta bash tools/build-android.sh.
Produce android/f8-unsigned.apk y android/a30-unsigned.apk.
Para firmar configura BRISA_KEYSTORE y BRISA_KEYSTORE_PASSWORD_FILE con tus archivos
privados originales. Los paquetes firmados aparecen en dist/. La clave no se incluye.

El script usa D8 con min API 26 y no empaqueta stubs. La firma de actualización debe
coincidir con la clave original; una clave nueva no actualiza una instalación existente.

## Reconstruir Windows

En windows/: npm ci y npm run desktop:build con Rust, herramientas C++/WebView2 y Tauri.
En Linux se compiló con LLVM MinGW UCRT 20261104, Rust target x86_64-pc-windows-gnullvm:
cargo build --manifest-path desktop/Cargo.toml --target x86_64-pc-windows-gnullvm --release --locked
El resultado portable requiere Brisa Local.exe, WebView2Loader.dll, libunwind.dll,
resources/ y las licencias; el EXE contiene la web, sin servidor HTTP residente.

FFmpeg se reconstruye desde windows/third-party/ffmpeg-n8.1-source.zip con
windows/scripts/build-ffmpeg-windows.sh. Primero construye LAME 3.100 con
windows/scripts/build-lame-windows.sh; ambos usan BRISA_LAME_PREFIX y LLVM MinGW.
Si sustituyes un motor, actualiza resources/hashes.json antes de recompilar la app:
se comprueba su SHA-256 al usarlo. No se desactivó esa comprobación.

## Pruebas

Desde windows/: npm test; npm run test:ui; y
node node_modules/@playwright/test/cli.js test --config playwright.android.config.js.
Los tests de Android web utilizan android/decoded/assets al lado de windows/.
Playwright está configurado con Chromium en /usr/bin/chromium; adapta la ruta en otro SO.
Para las pruebas Java compila SoundCore, VideoGestureEngine, VideoBackgroundPolicy y OfflineCopy
junto con android/tests/*.java; ejecuta las cuatro clases Test del paquete com.brisa.local.
VALIDACION-3.0.2.md distingue las comprobaciones realizadas de las pendientes en equipos reales.

La actualización 3.0.2 añade MobileVideoFiles, OfflineCopy y VideoImportService para
copiar los vídeos SAF de nube a una fuente local real antes de anunciarlos sin conexión.
Windows incorpora drive_storage, storage_paths y drive-storage.js para usar una carpeta
de la unidad de Google Drive para ordenadores; requiere configurar el cliente oficial.

Para compartir o continuar el desarrollo: COMPARTIR.md, COMPILAR.md, DEPENDENCIAS.md
y LIMITES-DE-LAS-FUENTES.md detallan el contenido, los comandos y las fuentes faltantes.
