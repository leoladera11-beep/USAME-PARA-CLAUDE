# Prompt: descargas más rápidas y que gasten menos internet

Copia el bloque de abajo y pégalo a un agente (Claude Code, Codex, Gemini CLI) con el repositorio
abierto. Está escrito para que no tenga que adivinar: dice qué se verificó en el código y qué son
solo sospechas que hay que medir.

````text
Trabajas en Brisa 4.1.0 (carpeta brisa/ del repositorio, reproductor de música y vídeo para Android
y Windows 11). Lee brisa/AGENTS.md entero antes de tocar nada y respeta sus reglas.

OBJETIVO
Que el apartado de descargas desde un enlace (YouTube y archivos directos) sea claramente más
rápido, aguante conexiones inestables y gaste solo los datos necesarios. La persona que lo usa
depende de su conexión a internet, a menudo con datos móviles.

LO QUE YA SE VERIFICÓ EN EL CÓDIGO (no lo vuelvas a investigar)
Windows (brisa/windows/desktop/src/downloads.rs y download_output.rs):
- yt-dlp se lanza con "--concurrent-fragments 1", "--buffer-size 64K --no-resize-buffer",
  "--socket-timeout 20", "--retries 1" y "--extractor-retries 1": un solo fragmento a la vez y un
  único reintento, así que una red lenta o con cortes falla pronto o va despacio.
- La consulta del enlace ejecuta yt-dlp con --dump-single-json y un tope de 50 s; se hace una vez
  por enlace antes de poder elegir calidad.
- Los archivos directos se descargan por una sola conexión, trozo a trozo con un tiempo de espera
  de 200 ms por trozo.
- FFmpeg corre con "-threads 1"; la conversión a MP3 usa "-compression_level 0" (la más lenta).
  La copia del audio original a M4A (opción por defecto) no recodifica y es rápida.
- Al terminar o fallar, run() borra siempre la carpeta temporal: una descarga cortada empieza de cero.
Android (código recuperado de la APK; ver brisa/documentacion/MAPA-ANDROID.md, clases o y DownloadService):
- La tarea de descarga baja el vídeo y DESPUÉS el audio, uno tras otro, en un solo hilo
  (newSingleThreadExecutor), con un búfer de 64 KB y una sola conexión por archivo (OkHttp).
- Si la descarga falla, se borran los archivos parciales: no hay reanudación.
- El extractor es NewPipe, empotrado en la APK; no se actualiza solo.

SOSPECHAS QUE DEBES MEDIR ANTES DE ACTUAR (no las des por ciertas)
- YouTube suele limitar la velocidad de una conexión larga única; pedir el archivo en trozos con
  Range y varios a la vez podría acelerar mucho. Mídelo.
- Bajar audio y vídeo a la vez en Android debería acortar el tiempo total cuando la red no está saturada.
- Subir "--concurrent-fragments" en Windows ayuda con listas DASH/HLS; puede ser inútil en MP4 progresivo.

QUÉ QUIERO QUE HAGAS, EN ESTE ORDEN
1. Crea un banco de pruebas reproducible SIN depender de YouTube: un servidor HTTP local (hay
   ejemplos en brisa/windows/desktop/host-tests/src/mock.rs y brisa/android/tests/StreamRelayDemo.java)
   que sirva un archivo grande con Range y que limite la velocidad por conexión (por ejemplo
   1 MB/s por conexión) y pueda cortar conexiones. Mide el estado actual: tiempo total, MB/s,
   comportamiento ante un corte. Guarda los números.
2. Windows: prueba valores de --concurrent-fragments (4 u 8), --retries y --fragment-retries más
   altos, --socket-timeout mayor, y --http-chunk-size si procede. Conserva la verificación SHA-256
   de los motores y el aislamiento por Job de Windows. Solo adopta lo que mejore la medición.
3. Android: descarga audio y vídeo en paralelo (dos hilos) y valora descarga por rangos con 3 o 4
   conexiones por archivo. Mantén la cancelación y el progreso, y el servicio en primer plano solo
   mientras dura la tarea.
4. Reanudación: conserva los archivos .part al fallar o cancelar y reanúdalos con Range (comprobando
   tamaño y que el origen siga igual), con un límite de edad para no acumular basura. Esto ahorra
   datos cuando la conexión se corta.
5. Ahorro de datos:
   - muestra el tamaño estimado de cada calidad antes de empezar (ya existe parte en la interfaz);
   - en Android avisa antes de descargar más de 100 MB con datos móviles y ofrece esperar a Wi-Fi;
   - preselecciona una calidad razonable (por ejemplo 720p o la recomendada) en lugar de la máxima;
   - si el usuario elige solo música, no descargues el vídeo (ya se hace en Windows; comprueba Android).
6. Velocidad percibida: lanza la consulta del enlace en cuanto se pega (ya hay una espera de 700 ms,
   valora reducirla), cachea el resultado de la consulta unos minutos y no repitas el trabajo al
   cambiar de calidad.

RESTRICCIONES (de brisa/AGENTS.md y de las decisiones ya tomadas)
- Batería primero: sin sondeos ni temporizadores periódicos; nada continuo con la app oculta.
- No añadas permisos de Android ni destinos de red nuevos sin pedírselo al usuario.
- No recomprimas el audio por defecto: sigue siendo el original en M4A. MP3 solo como opción.
- No saltes las comprobaciones de integridad (tamaño del archivo, SHA-256 de los motores).
- No elimines pruebas para que pasen; si un comportamiento cambia a propósito, actualiza la prueba.
- Los cambios de smali van en un tools/parches-X.Y.Z.py nuevo y deben pasar tools/verificar-apk.sh.
  Prefiere escribir Java en android/src y enganchar con una sola sustitución de llamada.
- Edita la interfaz en common/ y ejecuta python3 tools/build-web.py.
- Usa las descargas solo con contenido que el usuario tenga derecho a guardar; no añadas formas de
  saltarse restricciones de acceso ni de DRM.

ENTREGA
- bash brisa/tools/verificar-todo.sh debe terminar en «Todo correcto.»
- Pruebas nuevas para: descarga en paralelo, reanudación tras corte, límites de datos móviles.
- Una tabla antes/después con los números del banco de pruebas, en documentacion/CAMBIOS-X.Y.Z.md.
- Di con claridad qué NO pudiste probar (YouTube real, teléfono, Windows) en VALIDACION-X.Y.Z.md. No
  afirmes que algo es más rápido en la red del usuario si solo lo mediste en el servidor local.
- Un pull request con la plantilla de .github/pull_request_template.md.
````

## Cómo medir en la red real del usuario

El banco de pruebas local demuestra que la técnica funciona, no que YouTube vaya a dar más
velocidad. Para saberlo de verdad, en el PC del usuario:

1. Descarga el mismo vídeo de unos 100 MB tres veces con la versión actual y apunta el tiempo.
2. Haz lo mismo con la versión nueva.
3. Compara las medianas. Si no mejora, no hay que dejar el cambio solo porque «debería».
