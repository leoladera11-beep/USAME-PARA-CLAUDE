# Validación de Brisa 4.1.0

Esta lista separa lo que se comprobó de lo que no. No dispuse de un Galaxy A30, de un F8 Pro, de un
equipo con Windows 11 ni de tu cuenta de Drive, y en el entorno de trabajo no hay emulador de Android.

## Comprobado

**Compilación y firma**
- Las dos APK se construyen, se alinean a 4 bytes y las bibliotecas nativas a 16 KiB, y se firman
  con los esquemas v2 y v3. `apksigner verify` las acepta. API mínima 26, objetivo 37, versión 40100.
- La app de Windows compila en modo release para x86_64 con Rust y LLVM MinGW.
- Los 15 enganches aplicados al código recuperado de la APK se verifican en cada compilación.

**Verificación estática del código de Android**
- Convertí la APK original y la nueva a clases Java y las pasé por el verificador de tipos de la
  JVM. La nueva tiene exactamente los mismos 9 avisos que la original, todos en métodos que no
  toqué y debidos a la conversión. Las clases que modifiqué (`PlaybackService`, `DownloadService`,
  la tarea de descarga, `VideoActivity`) y las 17 clases nuevas pasan la verificación completa.
  Tres clases (`MainActivity`, `VideoPlaybackService` y la de Drive) ya fallaban antes en un
  método ajeno, lo que impide al verificador llegar al resto; ahí mis cambios son una constante,
  una llamada con la misma firma y una lectura de texto.

**Pruebas automáticas, todas en verde**
- 333 comprobaciones en JVM de la lógica nativa: sonido (223), gestos de vídeo (13), política de
  imagen en imagen (15), copia sin conexión (7), puente de streaming (27), decisiones nuevas (21) y
  sesión por token (27).
  El puente se prueba con peticiones HTTP reales contra 127.0.0.1: archivo completo, rangos,
  secreto incorrecto, métodos no permitidos, cortes del cliente y errores del origen.
- 17 pruebas Rust: salida del descargador, incluida la copia de audio sin recomprimir (9), rutas (4)
  y token de Drive, con rangos y validación (4).
- 5 pruebas de integración del código de Drive de Windows con **peticiones HTTP reales** contra un
  Drive simulado: token aceptado y rechazado, sesión permanente y renovación, lista en varias
  páginas, lectura por tramos y reintento cuando Drive rechaza el token.
- 13 pruebas de JavaScript: enlaces, sonido, estantes del inicio, formato de la música qué copias
  se pueden liberar en «Solo Drive» y el formulario del token.
- 36 pruebas de interfaz en Chromium con los puentes nativos simulados: 21 de Windows y 15 de
  Android. Cubren inicio y estantes, vistas, menú por canción, niveles de cristal por equipo, pausa
  de animaciones en segundo plano, reproducción desde Drive, bloqueo sin Wi-Fi, recarga tras liberar
  el servicio, «Solo Drive», inicio de sesión con token (aceptado, rechazado, permanente y cierre), descargas,
  sonido y pantalla completa.
- Capturas a 360×780 (A30), 412×915 (F8 Pro) y 1280×820 (PC) sin errores de JavaScript ni
  desplazamiento horizontal.

**Reproducción real por los puentes de streaming**
- Un navegador Chromium, el motor de WebView2, reprodujo 12 medios a través de los dos puentes: el
  de Android (`StreamRelay`) y el de Windows (el código de `brisadrive://` entregando tramos de
  32 KB frente al Drive simulado). Formatos: WAV, AAC en M4A, Opus en WebM y dos vídeos H.264, más un
  audio de dos minutos y 10 MB. En todos carga, avanza y salta a una zona no leída sin errores; en
  el archivo largo el salto al minuto 1:36 funcionó en ambos.
- Esto valida que la entrega por rangos es correcta para un reproductor real. No sustituye a la
  prueba en el teléfono, donde el reproductor es el de Android y el origen es el Drive de verdad.

**Inicio de sesión con token contra Google**
- Ejecuté el código de Android que valida el token contra los servidores reales de Google con
  credenciales falsas: las direcciones son correctas y Google responde lo esperado (token rechazado,
  cliente inexistente), con el mensaje adecuado en cada caso. No tuve un token válido, así que el
  camino de éxito solo está probado con respuestas simuladas.

## No comprobado: hay que verlo en tus equipos

Lo que sigue está razonado y revisado, pero **no se ha ejecutado en un dispositivo real**:

1. **Reproducción desde Drive en Android.** El puente está probado en JVM, pero no con el
   reproductor de música ni con el de vídeo de Android leyendo de él, ni contra los servidores de
   Drive. Es el cambio con más riesgo.
2. **Inicio de sesión de Drive**: con el botón de Google depende de que crees el cliente OAuth; con
   token, no lo he visto aceptar un token real ni usarlo después para subir o reproducir.
3. **Liberación del servicio en pausa** y la recarga posterior, sobre todo con HyperOS.
4. **Música con audio original en Android**: uso el mismo unidor sin recompresión que ya empleaba
   el vídeo, pero no he visto el M4A resultante reproducirse en el teléfono. Si falla, Brisa recurre
   al MP3.
5. **Descargas de YouTube.** No modifiqué el extractor. YouTube cambia a menudo y no pude probar
   una descarga real.
6. **Windows**: no he ejecutado el programa. La reproducción desde Drive con token usa un
   protocolo propio del que solo comprobé que compila y la lógica de rangos. La compilación es correcta y la interfaz está probada
   en Chromium, que es el motor de WebView2, pero el botón de imagen en imagen, la copia de audio
   con el FFmpeg incluido y el lanzador de PowerShell no se han probado en Windows.
7. **Rendimiento y batería reales** en el A30 y el F8 Pro. No hay mediciones.

## Qué probar primero

1. Instalar la APK junto a la 3.0.2, añadir unas canciones y reproducir con la pantalla apagada.
2. Pausar, salir de la app, esperar más de diez minutos, volver y pulsar reproducir: debe continuar
   en el mismo punto.
3. Descargar un vídeo corto como «Ambos» y comprobar que el M4A suena igual que el vídeo.
4. Pegar un token de acceso en Google Drive (guía `CONFIGURAR_GOOGLE_DRIVE.md`, opción A),
   descargar con destino «Solo Google Drive» y reproducir con Wi-Fi.
5. En el PC, abrir `Brisa Local.exe`, repetir la descarga, pegar el token y reproducir una canción
   y un vídeo de Drive.

Si algo falla, la 3.0.2 sigue instalada y funcionando. Dime qué paso falló y qué mensaje aparece.

## Validación de las mejoras de descarga

- `tools/verificar-todo.sh` terminó en «Todo correcto.» con Chrome for Testing en Linux.
  Pasaron las 21 pruebas de interfaz de Windows y las 16 de Android, las 15 pruebas
  de JavaScript y las 12 reproducciones reales por los dos puentes de streaming.
- Seis escenarios HTTP en JVM ejecutaron la transferencia de Android. Cubrieron pistas
  simultáneas, rangos, dos cortes, un servidor que ignora Range, rangos inválidos,
  reanudación en un nuevo intento, cancelación, cambio de origen y caducidad.
- El código Rust de reanudación pasó tres comprobaciones unitarias y dos contra un
  servidor HTTP local. Se verificó que pide únicamente los bytes pendientes y que
  descarta un parcial cuando cambia el ETag. El banco HLS compara cuatro y ocho
  fragmentos con el ajuste original y comprueba el SHA-256 del contenido.
- Se construyeron las dos APK sin firmar y el ejecutable de Windows x64 por compilación
  cruzada. La verificación de las APK no detectó avisos nuevos. El conversor dex2jar
  puede señalar primero `o` u `onStartCommand` en `VideoPlaybackService`. Se reprodujo
  el segundo aviso al aislar ese método en la APK base y se registró la firma exacta.
- Se probó el aviso de datos móviles, el límite de 100 MB y la opción de esperar a
  Wi-Fi con los puentes simulados. Las cifras antes y después están en
  `CAMBIOS-4.1.0.md`.

Quedan por medir las descargas de YouTube real y el rendimiento con Wi-Fi, datos
móviles o cambios de red. No se ejecutaron las APK en el A30 o el F8 Pro, ni el
ejecutable en Windows. La medición local tampoco mide consumo de batería.

## Validación de nombre y artista y de los botones de ±10 s

**Comprobado**
- La prueba que reproduce el fallo (`windows/tests/android/nombres.spec.js`, «editar título y artista
  desde Letra y datos…») falló antes del arreglo: tras sincronizar, «Editada con letra» volvía a ser
  «Vídeo oficial». Ahora pasa.
- `tools/verificar-todo.sh` termina en «Todo correcto.» con la APK recién compilada. Pruebas nuevas:
  7 de interfaz de Android (edición que sobrevive a la sincronización y a reabrir la app, M4A sin
  extensión, título que no se vacía, aviso a la notificación sin recargar la canción, diálogo sin
  letra, ±10 s sobre la fila principal a 360×780 y 412×915 con 44 px mínimos y sin desplazamiento
  horizontal); 3 de interfaz de Windows (título y artista de la descarga, sesión multimedia del PC,
  ±10 s en la fila de transporte y flechas activas); 6 de JavaScript (`mergeSynced`, sufijo de
  descargas antiguas, M4A); 5 de Rust (`track_names.rs`: campos de yt-dlp, «Artista - Título», canal,
  adornos y nombre de archivo sin sufijo) y 24 comprobaciones en JVM (`TrackNamesTest`).
- Capturas reales antes y después del reproductor ampliado a 360×780 y 412×915, del menú ⋯, del
  diálogo y de la barra del PC a 1280×820: nada cortado.
- Las dos APK se construyen sin firmar y `verificar-apk.sh` no da avisos nuevos con los tres
  enganches añadidos (`r.assets`, `DownloadService.g` y `m.b`). La app de Windows pasa `cargo check`
  para `x86_64-pc-windows-gnullvm`; no se generó el `.exe` ni se actualizó `apps/`.

**No comprobado**
1. **Teléfono real.** No se ha visto la notificación ni la pantalla de bloqueo cambiar de nombre al
   editar. `TrackNames.rename` modifica el registro del servicio por reflexión y vuelve a publicar el
   estado; está revisado contra el código descompilado, no ejecutado.
2. **Canal como artista en Android.** El canal se lee del extractor por reflexión
   (`videoDetails.author`). Si la forma del extractor no es la esperada, el artista queda vacío y nada
   más falla, pero no se ha visto funcionar con YouTube real.
3. **Descarga real.** No se descargó nada de YouTube: los campos `track`, `artist` y `channel` de
   yt-dlp se usan según su documentación y con datos simulados.
4. **Windows.** No se ejecutó el programa: el nombre del archivo sin sufijo, «Nombre (2)» y el título
   en los controles multimedia de Windows están probados en Rust puro y en Chromium, no en Windows 11.
5. **Bibliotecas ya existentes.** La reparación de nombres antiguos («Título - a1b2c3d4», «Nombre.m4a»,
   títulos vacíos) está probada con datos construidos a mano, no con la biblioteca real del usuario.
   Lo editado antes de esta versión en el teléfono ya se había perdido y no se puede recuperar.
6. **Teclado del teléfono** sobre el diálogo: probado en Chromium con pantalla táctil simulada, no con
   el teclado real de Android.

**Decisión pendiente del usuario.** Brisa sigue sin modificar ningún archivo. Escribir título y
artista dentro del archivo (etiquetas) no se ha implementado: queda como opción, solo para archivos
que Brisa descargó, si el usuario la quiere.
