# Brisa · guía para agentes

Este archivo es el punto de entrada para cualquier agente de IA (Claude Code, Codex, Gemini CLI u
otro) que vaya a continuar el desarrollo. `CLAUDE.md` y `GEMINI.md` remiten aquí. Léelo entero antes
de cambiar nada: el proyecto de Android no es un proyecto normal y es fácil romperlo sin notarlo.

## Qué es

Brisa es un reproductor de música y vídeo personal para un Galaxy A30, un F8 Pro (HyperOS) y un PC
con Windows 11. Descarga desde enlaces de YouTube, guarda en Google Drive y reproduce desde Drive
sin copia local. Versión actual: **4.1.0**. El usuario habla español: interfaz, documentación,
comentarios y mensajes de commit van en español.

## Lo primero: preparar y comprobar

```bash
cd brisa
python3 tools/herramientas-android.py          # apktool, D8, android.jar y apksigner verificados (290 MB)
python3 tools/herramientas-extra.py analisis   # jadx y dex2jar, para leer y verificar la APK
(cd windows && npm ci)
BRISA_CHROMIUM=/ruta/a/chromium bash tools/verificar-todo.sh   # todo debe terminar en «Todo correcto.»
```

Requisitos: Java 21, Python 3, Node 22, Rust estable. `dl.google.com` puede estar bloqueado en
entornos de agente: por eso las herramientas de Android vienen de GitHub, Maven Central y
`storage.googleapis.com`, no del SDK oficial. Si tu entorno no tiene Chromium, ejecuta
`npx playwright install chromium` dentro de `windows/` y no definas `BRISA_CHROMIUM`.

Estos pasos se comprobaron desde un clon limpio de la rama: las pruebas pasan, `tools/build-android.sh`
genera las APK (sin firmar si no está `clave/`) y `tools/build-windows.sh` genera el `.exe`.

## Mapa del repositorio

| Ruta | Qué hay | Cómo se cambia |
| --- | --- | --- |
| `common/` | Interfaz compartida: `index.template.html`, `brisa.css`, `app.js`, `home.js`, `downloads.js`, sonido, letras | **Edita aquí** y ejecuta `python3 tools/build-web.py` |
| `android/decoded/assets/`, `windows/web/` | Interfaz generada más los módulos propios de cada plataforma | Solo se editan a mano `platform.js`, `video.js`, `drive.js`, `captions.js`, `download-api.js` (Android) y `desktop.js`, `video.js`, `video-chrome.*`, `drive-storage.js`, `download-api.js` (Windows) |
| `android/src/` | Java propio: `DriveStream`, `StreamRelay`, `Idle`, `AudioExport`, `Tuning`, `TokenSession`, `ManualAuth`, sonido, vídeo, importación | Edita y ejecuta `bash tools/build-android.sh` |
| `android/decoded/smali*` | Código recuperado de la APK original, ofuscado | Solo con sustituciones mínimas registradas en `tools/parches-4.0.0.py` |
| `android/decoded/smali_classes3/` | **Generado** desde `android/src`. No lo edites: se regenera en cada compilación | — |
| `android/stubs/` | Firmas para compilar contra clases ofuscadas. Nunca entran en la APK | — |
| `android/tests/`, `windows/tests/` | Pruebas JVM, de JavaScript y de interfaz (Playwright) de ambas plataformas | — |
| `windows/desktop/` | App nativa Tauri 2 / Rust | `bash tools/build-windows.sh` |
| `windows/desktop/host-tests/` | Drive simulado y pruebas del código de Drive de Windows en cualquier sistema, sin Tauri | `cargo test --manifest-path windows/desktop/host-tests/Cargo.toml` |
| `tools/` | Compilación, parches, verificación, capturas y empaquetado | — |
| `apps/` | Las apps compiladas de la versión publicada | `bash tools/empaquetar.sh` |
| `documentacion/` | Cambios, instalación, Drive, validación, mapa de Android y pendientes | — |
| `historial-3.0.2/`, `referencia-original-2.6.0/` | Documentación y Java antiguos, solo como referencia | No se compilan |

Lecturas obligadas según la tarea:
- Tocar Android nativo: `documentacion/MAPA-ANDROID.md` (qué es cada clase ofuscada).
- Decidir qué hacer a continuación: `documentacion/PENDIENTES.md`.
- Saber qué está probado: `documentacion/VALIDACION-4.1.0.md`.

## Reglas que no se rompen

1. **Nunca subas la clave de firma.** `clave/`, `*.jks` y `*clave*.txt` están en `.gitignore`. La
   clave la tiene el usuario en su copia del paquete. Si necesitas firmar una APK instalable encima
   de la 4.0.0, pídele que copie su carpeta `clave/` dentro de `brisa/`. Con una clave nueva la APK
   no actualiza la instalada y además deja de funcionar el inicio de sesión de Drive, porque Google
   lo ata a la huella de la firma.
2. **No cambies el paquete `com.brisa.player`** ni el identificador de Tauri `com.brisa.localplus`:
   de ellos dependen los datos del usuario y el cliente OAuth de Drive.
3. **No edites a mano la interfaz generada ni `smali_classes3`.** Se pierden en la siguiente compilación.
4. **Todo cambio en smali va en `tools/parches-4.0.0.py`** (o en un `parches-X.Y.Z.py` nuevo con la
   misma forma) y debe pasar `bash tools/verificar-apk.sh`. Prefiere siempre escribir Java en
   `android/src` y enganchar con una sola sustitución de llamada.
5. **No afirmes que algo funciona en el teléfono o en Windows si no lo viste.** Aquí no hay
   dispositivos ni emulador. Anota en `documentacion/VALIDACION-*.md` qué comprobaste y qué no.
6. **Batería primero.** Nada de temporizadores periódicos, sondeos ni animaciones que no sean de
   `transform`/`opacity`. Todo lo continuo debe pararse con la app oculta (clases `brisa-background`
   y `page-hidden`) y respetar `data-fx`.
7. **No añadas permisos de Android ni destinos de red** sin pedírselo al usuario.
8. **No actives ni desactives pruebas para que pasen.** Si cambias un comportamiento a propósito,
   actualiza la prueba y explica por qué en el commit.

## Flujo de trabajo

1. Cambia la fuente (`common/`, `android/src/`, `windows/desktop/src/` o un módulo de plataforma).
2. `python3 tools/build-web.py` si tocaste `common/`.
3. `bash tools/verificar-todo.sh`.
4. Si tocaste el streaming o Drive: `node tools/probar-streaming.cjs` reproduce medios reales por los
   dos puentes (ya va incluido en `verificar-todo.sh`).
5. Para cambios visuales: `node tools/capturas.cjs android/decoded/assets /tmp/c/brisa android` y
   mira las imágenes en los tres tamaños.
6. Para publicar una versión: sube el número en `tools/build-android.sh`, `tools/empaquetar.sh`,
   `android/decoded/apktool.yml` (`versionCode`), `windows/desktop/Cargo.toml`, `Cargo.lock`,
   `tauri.conf.json`, `windows/package.json` y la plantilla HTML; compila Android y Windows;
   ejecuta `bash tools/empaquetar.sh`; escribe `documentacion/CAMBIOS-X.Y.Z.md` y
   `VALIDACION-X.Y.Z.md`; confirma `apps/`.

## Arquitectura en una pantalla

- **Interfaz**: una página web sin dependencias ni empaquetador. En Android corre en un WebView y
  habla con el código nativo por puentes `window.Brisa*Native`; en Windows corre en WebView2 con
  Tauri (`window.__TAURI__`). `platform.js` (Android) y `desktop.js` (Windows) presentan la misma
  interfaz `window.BrisaPlatform` al resto del código.
- **Android, música**: `PlaybackService` con `MediaPlayer`, `MediaSession` y notificación. La cola
  vive en el servicio para seguir sonando con la interfaz dormida. `Idle` lo libera tras diez
  minutos en pausa.
- **Android, vídeo**: `VideoActivity` + `VideoPlaybackService` con Media3/ExoPlayer e imagen en imagen.
- **Android, Drive**: OAuth con alcance `drive.file`, por el inicio de sesión de Google o con un token pegado (`ManualAuth`). Los archivos sin copia local se reproducen
  mediante `StreamRelay`, un puente HTTP en 127.0.0.1 que reenvía rangos a la API de Drive con el
  token. `DriveStream` decide según cuenta, red y el ajuste de datos móviles.
- **Android, descargas**: `DownloadService` con NewPipe Extractor, un unidor MP4 sin recompresión y
  LAME por JNI para MP3. `AudioExport` elige entre copiar el audio original a M4A o convertir a MP3.
- **Windows**: Rust lanza `yt-dlp`, `ffmpeg` y `qjs` (verificados por SHA-256 en
  `resources/hashes.json`) y guarda la biblioteca en JSON. Las descargas se guardan en Drive a través de la unidad de
  Google Drive para ordenadores; con un token pegado, `drive_api.rs` lista la música y los vídeos de
  Drive y los reproduce por tramos con el protocolo `brisadrive://`.

## Estado y riesgos conocidos

Todo compila y las pruebas automáticas pasan, pero **nada de la 4.0.0 ni de la 4.1.0 se ha ejecutado en un
teléfono ni en Windows**. Lo más arriesgado, por orden: reproducción desde Drive en Android, inicio
de sesión de Drive (con la firma nueva o con token), liberación del servicio en pausa con HyperOS, M4A original
en Android y el extractor de YouTube, que no se tocó y puede haber quedado obsoleto. Si el usuario
informa de un fallo, empieza por ahí.
