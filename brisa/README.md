# Brisa 4.0.0

Reproductor de música y vídeo para Android (Galaxy A30 y F8 Pro) y Windows 11, con descargas desde
un enlace y Google Drive como almacenamiento. Parte de Brisa Local 3.0.2.

- Qué cambió y por qué: [documentacion/CAMBIOS-4.0.0.md](documentacion/CAMBIOS-4.0.0.md)
- Instalar: [documentacion/INSTALAR.md](documentacion/INSTALAR.md)
- Conectar Drive en Android: [documentacion/CONFIGURAR_GOOGLE_DRIVE.md](documentacion/CONFIGURAR_GOOGLE_DRIVE.md)
- Qué está probado y qué no: [documentacion/VALIDACION-4.0.0.md](documentacion/VALIDACION-4.0.0.md)
- Para agentes de IA que continúen el desarrollo: [AGENTS.md](AGENTS.md), [documentacion/MAPA-ANDROID.md](documentacion/MAPA-ANDROID.md) y [documentacion/PENDIENTES.md](documentacion/PENDIENTES.md)
- Apps compiladas de esta versión: [`apps/`](apps/)
- Documentación de la versión anterior: `historial-3.0.2/`

## Organización

| Carpeta | Contenido |
| --- | --- |
| `common/` | Interfaz compartida: plantilla HTML, estilos y módulos idénticos en ambas plataformas |
| `android/decoded/` | Proyecto APKTool recuperado de la APK: smali, recursos y la interfaz generada |
| `android/src/` | Auxiliares Java propios: streaming de Drive, ahorro en pausa, audio original, sonido, vídeo |
| `android/tests/` | Pruebas JVM de esa lógica |
| `windows/` | App nativa Tauri/Rust, su interfaz generada y las pruebas de interfaz de ambas plataformas |
| `tools/` | Compilación, parches, alineado, pruebas y empaquetado |
| `vendor/` | NewPipe Extractor y nanojson con sus licencias |

El código antiguo de Android no es un proyecto Gradle: se recuperó de la APK. Los cambios nativos se
hacen en `android/src` y se enganchan con las sustituciones documentadas en `tools/parches-4.0.0.py`.
La biblioteca `libbrisa_mp3.so` se conserva tal como venía; no se dispone de su fuente.

## Compilar

Requisitos: Java 21, Python 3, Node 22 y, para Windows, Rust con LLVM MinGW.

```bash
python3 tools/build-web.py              # genera la interfaz de Android y Windows desde common/
python3 tools/herramientas-android.py   # una vez: descarga y verifica las herramientas de Android
bash tools/crear-clave.sh               # una vez: crea tu clave de firma en clave/
bash tools/build-android.sh             # APK firmadas en dist/
bash tools/probar-android.sh            # pruebas JVM

cd windows && npm ci
npm test                                                           # pruebas de JavaScript
BRISA_CHROMIUM=/ruta/a/chromium npx playwright test                # interfaz de Windows
BRISA_CHROMIUM=/ruta/a/chromium npx playwright test --config playwright.android.config.js

python3 ../tools/descargar-dependencias.py --solo-motor            # yt-dlp verificado
rustup target add x86_64-pc-windows-gnullvm
cargo build --manifest-path desktop/Cargo.toml --target x86_64-pc-windows-gnullvm --release --locked
bash ../tools/empaquetar.sh                                        # arma la entrega completa
```

Atajos: `bash tools/verificar-todo.sh` ejecuta todas las comprobaciones, `bash tools/build-windows.sh`
compila Windows desde Linux, `bash tools/verificar-apk.sh` verifica la APK sin teléfono y
`node tools/capturas.cjs` genera capturas de la interfaz.

En Windows nativo también sirve `npm run desktop:build` con las herramientas de Tauri.

## Privacidad y licencias

No se incluyen claves, contraseñas, tokens ni archivos personales. La carpeta `clave/` no se sube al
repositorio. El proyecto se distribuye bajo GPL-3.0 (`LICENSE`) e incluye componentes de terceros
descritos en `THIRD_PARTY_NOTICES.txt`. Usa las descargas solo con contenido que tengas derecho a guardar.
