# Mapa del código de Android

El Java original de la app no existe en este repositorio: `android/decoded/` es la APK desmontada
con APKTool y sus clases propias están ofuscadas (nombres de una letra). Este mapa dice qué es cada
una para no tener que redescubrirlo. Los nombres son los **reales**, los de los archivos `.smali` en
`android/decoded/smali/com/brisa/local/`. jadx les pone otros (`AbstractC0427a`, `C0434h`…); el real
aparece en su comentario `renamed from`.

Para leerlas con comodidad: `bash tools/descompilar.sh` y abre `build-tools/jadx-out/`. Algunos
métodos largos no se descompilan; para esos hay que leer el smali.

## Clases con nombre propio

| Clase | Papel |
| --- | --- |
| `MainActivity` | Única pantalla: un WebView que carga `assets/index.html`. Registra los puentes y recibe los resultados de los selectores de archivos |
| `PlaybackService` | Música: `MediaPlayer`, cola, aleatorio, repetición, temporizador, sesión multimedia y notificación |
| `VideoActivity`, `VideoPlaybackService` | Vídeo con Media3/ExoPlayer, gestos, subtítulos e imagen en imagen |
| `DownloadService` | Descargas en primer plano: consulta, descarga, unión, música, subtítulos, subida a Drive |
| `OfflineProvider` | `ContentProvider` que entrega las copias privadas de `files/offline` |
| `Mp3Encoder` | Conversión a MP3 con LAME por JNI (`libbrisa_mp3.so`, sin fuente) |
| `VideoImportService`, `MobileVideoFiles`, `OfflineCopy` | Importación de vídeos del selector (fuente en `android/src`) |
| `SoundCore`, `SoundSessions`, `Y` | Ecualizador único para música y vídeo (fuente en `android/src`) |
| `Presentation`, `VideoChrome`, `VideoGestureEngine`, `VideoSystemControls`, `VideoBackgroundPolicy` | Carátulas, controles y política de vídeo (fuente en `android/src`) |
| `DriveStream`, `StreamRelay`, `Idle`, `AudioExport`, `Tuning` | Novedades de la 4.0.0 (fuente en `android/src`) |
| `TrackNames` | Nombre y artista de la música: los deduce al descargar (título del vídeo y canal), corrige el título de lo que solo está en Drive (`entry` sustituye a `a.c` en `r.assets`) y, cuando el usuario renombra la canción que suena, actualiza `PlaybackService.o` y vuelve a publicar el estado (`rename`, expuesto como `BrisaTuning.rename`). No escribe en ningún archivo |
| `TokenSession`, `ManualAuth` | Inicio de sesión en Drive con token, de la 4.1.0. `ManualAuth.ensure` se llama al principio de `u.c` y deja el token vigente en `u.a` y `u.b` |

## Clases ofuscadas

| Clase | Qué es | Miembros útiles |
| --- | --- | --- |
| `a` | Almacén de archivos gestionados (preferencias `brisa-assets-v1`) | `m(ctx,id)` registro JSON · `s(ctx,kind)` lista · `t(ctx,id)` Uri local o null · `u(ctx)` carpeta `files/offline` · `y(ctx,json)` registro para la interfaz · `z(ctx,json)` guardar · `A(ctx,json)` ¿listo sin conexión? · `c(ctx,json)` entrada de música · `D(ctx,file)` Uri `content://…offline/` |
| `u` | Google Drive | campos estáticos `a` token y `b` caducidad · `c(ctx,url)` petición autorizada, renueva el token (nunca en el hilo principal) · `i(ctx)` correo · `v(ctx)` actualizar biblioteca · `r(ctx,json,cancel)` guardar copia · `A(...)` subir · `B(...)` subir subtítulos · `h(...)` descargar · `u(ctx,query)` listar · `w(ctx)` petición de autorización `drive.file` · `x(ctx)` estado |
| `v` | Música elegida con el selector (preferencias `brisa-file-grants`) | `u(ctx,nativeId)` Uri para reproducir · `f(ctx,uri)` metadatos |
| `d0` | Vídeos elegidos (preferencias `brisa-video-grants`) | `s(ctx,id)` Uri · `p(ctx,id)` registro · `a(ctx,uri)` registrar vídeo local · `g(ctx,uri)` comprobación previa a soltar el permiso (por confirmar leyendo el smali) |
| `K` | Puente `window.BrisaNative`: reproducción, selectores, vídeos | cada método `@JavascriptInterface` |
| `r` | Puente `window.BrisaDriveNative` | `status`, `connect`, `disconnect`, `refresh`, `assets`, `records`, `prepare`, `retry`, `removeOffline` |
| `h` | Puente `window.BrisaDownloadNative` | `inspect`, `start`, `cancel`, `state`, `folder` · `d(requestId,resultado,error)` responde a la interfaz |
| `X` | Puente `window.BrisaSoundNative` | `settings`, `configure` |
| `m` | Consulta de un enlace con NewPipe Extractor | `a` mapa de planes · `b(url)` crea el plan |
| `l` | Plan de descarga | `c` formatos · `d` título · `e` URL del mejor audio · `h` fuente con audio y vídeo juntos |
| `k` | Un formato del plan | `b` URL de vídeo · `c` URL de audio · `h` tamaño |
| `o` | Tarea de descarga (`run()`), el flujo completo | llama a `F1.i.s` para unir y a `AudioExport.a` para la música |
| `p` | `BooleanSupplier` de cancelación | — |
| `w`, `x` | Unidor MP4 sin recompresión (lectura y pistas) | — |
| `F1.i.s(video, audio o null, salida, cancel)` | Une pistas en un MP4 sin recomprimir. Con `audio` null copia todas las pistas del primer archivo | — |
| `N.Y` | Opciones de descarga | `a` bitrate · `b` salida (`mp4`/`mp3`/`both`) · `c` destino (`local`/`drive`/`both`) · `b()` ¿incluye vídeo? |
| `W` | Cliente HTTP OkHttp (`W.a`) y `W.a(nombre)` para limpiar nombres de archivo | — |
| `e`, `b`, `c` | Importación de música en lotes y tareas en segundo plano | — |
| `G`, `E` | `WebViewClient` (sirve `appassets.androidplatform.net` y el audio a la interfaz) y `WebChromeClient` | — |
| `Q` | Tareas del servicio de música: 0 temporizador de apagado, 1 aviso de posición | — |
| `M`, `N`, `O`, `P`, `S` | Oyentes del reproductor: preparado, búsqueda, fin, error, foco de audio | — |
| `z`, `A` | Envían a la interfaz el estado (`BrisaPlatform.receive`) y los lotes de importación | — |

## PlaybackService por dentro

Campos: `c` reproductor · `d` sesión multimedia · `e` preparado · `f` «debe sonar» · `g` en primer
plano · `l` volumen · `m` velocidad · `o` canción actual (JSON) · `p` cola (JSONArray) · `q`
posición pendiente en ms · `u` `Handler` · `z` (estático) instancia viva.

Métodos: `i(json, reproducir, historial)` cargar · `l()` reproducir · `k()` pausar · `r()` arrancar
tras preparar · `s()` detener y liberar · `p(ms)` buscar · `m()` posición · `a(bool)` siguiente ·
`n()` anterior · `o()` publicar estado en sesión, notificación e interfaz · `q()` instantánea JSON ·
`f(mensaje)` error.

`MainActivity`: `j` (estático) referencia débil a la actividad · `e` WebView · `g` visible ·
`b(acción, valor)` envía una orden al servicio · `c(evento, json)` lanza un evento en la interfaz ·
`i(json)` envía el estado de reproducción solo si la app está visible.

## Cómo enganchar código nuevo

1. Escribe una clase en `android/src/com/brisa/local/`. Para llamar a código ofuscado usa
   reflexión (`MobileVideoFiles.call("a", "m", …)`), como hacen las clases existentes.
2. Busca en smali la llamada que quieres desviar y sustitúyela por una a tu clase **con la misma
   firma**. Añade la sustitución a `tools/parches-4.0.0.py` con su motivo.
3. `bash tools/build-android.sh && bash tools/verificar-apk.sh`.

Los enganches actuales y su motivo están en `tools/parches-4.0.0.py` y `tools/parches-4.1.0.py` (descargas rápidas y nombres de la música).

## Puentes entre la interfaz y Android

| Objeto en la interfaz | Origen | Uso |
| --- | --- | --- |
| `BrisaNative` | `K` | reproducción, cola, selectores, vídeos |
| `BrisaDownloadNative` | `h` | descargas (asíncrono: responde con `window.BrisaDownloadResult`) |
| `BrisaDriveNative` | `r` | Drive (mismo mecanismo asíncrono) |
| `BrisaSoundNative` | `X` | ecualizador |
| `BrisaPresentation` | `Presentation.Bridge` | perfil del equipo (`a30`/`f8`) y ahorro de batería |
| `BrisaTuning` | `Tuning` | datos móviles para Drive, comprobación de red, formato de música, sesión por token (`manualToken` responde por `BrisaDownloadResult`) |

Eventos que Android lanza en la página: `brisa-download`, `brisa-video-import`, `brisa-video-error`,
`brisa-power`, `brisa-sound`, `brisa-stream`.
