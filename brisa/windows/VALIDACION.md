# Validación de Brisa Local 3.0.0

## Comprobado

- Dos APK reconstruidas con APKTool 2.12.1; auxiliares Java compilados con JDK 21,
  SDK 37 y D8 min API 26. Android min 26, target 37, versión 30000.
- Firma v2/v3 válida en ambas APK. Certificado SHA-256:
  04f02e7e8cb0b367de58b06d1b1ab6a43ff34c1de773d82956a5cb683d6aa8c6.
  Es el certificado original de las entregas anteriores; mismo paquete com.brisa.localplus.
- Alineación ZIP para páginas nativas de 16 KiB y segmentos ARM64 alineados a 0x4000.
- SoundCore: 223 aserciones, incluidos 20 ciclos música/vídeo, volumen base no unitario,
  reconfiguración repetida sin atenuación acumulativa, original, pausa, sesión nueva,
  pérdida/recuperación de control, errores de efecto y sesión cero.
- 13 casos de gestos y 15 casos de política PiP/transportes pasaron en JVM.
- 5 pruebas unitarias JavaScript pasaron.
- 10 pruebas de interfaz Windows en Chromium: importación con puente Tauri simulado,
  descargas y errores, pantalla completa, 20 alternancias reales de HTMLMediaElement
  con un AudioContext y dos fuentes, ganancia constante, original a 1, suspensión al
  pausar, MP3 automático 320, restauración silenciosa y perfil/ahorro visual.
- 7 pruebas web Android: restauración silenciosa/visibilidad, nuevos avisos una vez,
  MP3 único a 320 y color enviado al puente nativo.
- Conversión de muestras AAC y Opus con el mismo comando de codificación mediante
  FFmpeg Linux instalado: ffprobe detectó MP3 320000 bit/s y 48000 Hz en ambos casos.
  Esta comprobación no equivale a ejecutar el FFmpeg Windows distribuido.
- Compilación release Windows x64 con Rust/LLVM MinGW completada. Se comprueban PE,
  versión 3.0.0, DLL necesarias y hashes de los cuatro motores incluidos.
- FFmpeg Windows compilado con AAC/Opus/MP3, libmp3lame, resample y muxer MP3;
  sin protocolo de red ni funciones GPL/nonfree. Vídeo usa copia/remux de pistas.

## Diseño revisado

Un propietario de efecto por proceso, liberación al pausar/cambiar sesión y volumen
calculado desde la base del usuario. Vídeo cierra/libera su servicio antes de continuar
música; los atributos de audio de ambos se clasifican como música multimedia.
El servicio musical entra en primer plano antes de pedir foco de audio.
No se añadió sondeo periódico para efectos, notificaciones, colores ni PiP.
El arte se almacena en una caché de seis imágenes de 256 px; las notificaciones y
metadatos musicales se reutilizan mientras no cambie su contenido.
Las funciones API 31/33 de PiP/receptores están protegidas por versión para Android 11.
Solo VideoActivity conserva KEEP_SCREEN_ON.

## Pendiente en hardware

No había dispositivo Android, emulador ni Windows 11 disponibles. No se han probado
la instalación/ejecución en los teléfonos, la escucha por altavoces, los ciclos de
bloqueo reales, los gestos del fabricante, el renderizado de Hyper Island ni la
reproducción/cancelación nativa de Windows. La batería y CPU no se han medido.
Las pruebas web simulan los puentes nativos y no sustituyen esas comprobaciones.

Prueba recomendada en cada teléfono: mismo archivo y volumen, música → vídeo → música
20 veces; comprobar brillo/pantalla bloqueada, PiP al ir a Inicio, ±10 s, reproducción
al bloquear/desbloquear y color/logo en los controles del sistema. No desinstalar la
app entre ciclos, porque eso ocultaría el fallo de estado que se busca comprobar.
HyperOS puede limitar acciones, aplicar su propia máscara o ignorar el acento enviado.
MP3 a 320 kbps sigue siendo conversión con pérdida y no restaura detalle de YouTube.
