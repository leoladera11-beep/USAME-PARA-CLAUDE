# Prompt: editar nombre y artista de lo descargado, y botones de ±10 s arriba

Copia el bloque de abajo y pégalo a un agente (Claude Code, Codex, Gemini CLI) con el repositorio
abierto. Dice qué se verificó en el código y qué es solo una sospecha.

````text
Trabajas en Brisa 4.1.0 (carpeta brisa/, reproductor de música y vídeo para Android y Windows 11).
Lee brisa/AGENTS.md entero antes de tocar nada y respeta sus reglas.

PROBLEMA 1: NOMBRE Y ARTISTA DE LA MÚSICA DESCARGADA
El usuario descargó un MP3 desde un enlace con el convertidor y no consigue cambiar su nombre ni
su artista. Además, en general, lo descargado debería llamarse bien desde el principio.

VERIFICADO EN EL CÓDIGO (no lo investigues de nuevo)
- brisa/common/music.js, filenameInfo(): separa el nombre del archivo en «artista - título»
  cortando por « - ». Si no hay separador, el artista queda vacío.
- Windows (brisa/windows/desktop/src/downloads.rs, run()): el archivo se guarda como
  «<título de YouTube> - <8 caracteres aleatorios>». Con filenameInfo eso produce, para un vídeo
  titulado «Canción», artista «Canción» y título «a1b2c3d4», y para «Artista - Canción» el título
  «Canción - a1b2c3d4». Es decir, el nombre que ve el usuario sale con basura.
- Ninguna de las dos apps pide a yt-dlp que escriba metadatos (no hay --embed-metadata ni
  --parse-metadata), así que el archivo descargado no trae título ni artista propios.
- Android (clase a de brisa/android/decoded/smali, método c): la canción que solo está en Drive
  usa como título el nombre del archivo quitando únicamente «.mp3»; con M4A queda «Nombre.m4a».
- brisa/common/app.js, addNativeFiles(), línea de «known.has(entry.nativeId)»: cada vez que se
  sincroniza la biblioteca (al abrir, tras cada descarga y con las operaciones de Drive), las pistas
  ya conocidas que tienen assetId u offlineReady se actualizan con Object.assign(previous,
  changes), donde changes incluye title y artist que vienen de Android. Eso sobrescribe lo que el
  usuario haya editado. Es la causa más probable de «no deja cambiarlo»: el cambio se guarda y la
  siguiente sincronización lo borra. NO lo he reproducido en un teléfono; confírmalo con una prueba.
- La edición existe, pero solo dentro del panel de letra: botón «Editar letra y datos»
  (editLyrics y lookupForm en app.js), visible únicamente con una canción en reproducción. El menú ⋯
  de cada canción (trackSheet) no tiene «Editar nombre y artista».
- La notificación y la sesión multimedia de Android reciben título y artista en el JSON de
  setTrack(); una edición hecha con la canción sonando no las actualiza hasta que se recarga.

QUÉ QUIERO QUE HAGAS, EN ESTE ORDEN
1. Escribe primero una prueba que reproduzca el fallo: importar una pista, editar su título y
   artista, volver a llamar a onImport con la misma pista (como hace la sincronización) y comprobar
   que lo editado se conserva. Debe fallar antes de tu arreglo.
2. Arregla la sobrescritura: guarda lo que escribe el usuario aparte (por ejemplo un campo
   «edited» o userTitle/userArtist) y haz que la sincronización nunca lo pise. Lo que viene de
   Android o de Drive puede seguir actualizando tamaño, estado sin conexión y ruta.
3. Haz la edición fácil de encontrar: añade «Editar nombre y artista» al menú ⋯ de cada canción y
   un acceso desde el reproductor ampliado. Un diálogo corto con Título y Artista, que guarde sin
   pedir letra, y que funcione en el teléfono (teclado, 44 px mínimo por botón) y en el PC.
4. Refleja el cambio al momento: si es la canción que suena, actualiza notificación y sesión
   multimedia en Android (enviando de nuevo los metadatos al servicio) y la sesión multimedia del PC.
5. Nombra bien desde la descarga:
   - Windows: quita el sufijo aleatorio del título mostrado (mantenlo solo si hace falta para no
     chocar con otro archivo, pero sin que llegue a la interfaz) y pasa título y artista desde la
     consulta del enlace al registrar el archivo; amplía la estructura Entry de main.rs con
     title/artist opcionales.
   - Si yt-dlp ofrece los campos «artist» y «track» úsalos; si no, intenta «Artista - Título» en
     el título del vídeo y, si tampoco, usa el canal como artista. Limpia adornos como «(Official
     Video)» o «[HD]» solo si es seguro, y deja siempre que el usuario lo cambie.
   - Android: haz lo equivalente con los datos que da NewPipe (título del vídeo y nombre del canal) y
     corrige que M4A conserve «.m4a» en el título (usa AudioExport.ext / mime ya existentes).
6. Decide con el usuario, sin asumirlo, si además de guardarlo en la biblioteca se escriben las
   etiquetas dentro del archivo. Por defecto NO se modifica ningún archivo: Brisa promete no tocar
   las canciones. Si lo implementas, solo para archivos que Brisa creó y como opción.

PROBLEMA 2: BOTONES DE RETROCEDER Y ADELANTAR 10 SEGUNDOS
En el reproductor de música del teléfono (el ampliado) los botones de −10 s y +10 s están ABAJO,
en una segunda fila bajo los controles principales. El usuario quiere que estén ARRIBA.

VERIFICADO EN EL CÓDIGO
- brisa/common/brisa.css, regla «body.player-expanded .transport-buttons»: grid-template-areas
  «shuffle prev play next repeat» y «. back . forward .»; #backBtn y #forwardBtn van en la segunda
  fila. El orden del DOM está en brisa/common/index.template.html, dentro de .transport-buttons.
- En el minirreproductor esos botones están ocultos a propósito; no los muestres ahí.
- La barra del PC (pantallas de más de 900 px) los muestra dentro de la fila de transporte; el
  cambio es para el reproductor ampliado del teléfono, pero comprueba que el PC no empeora.

QUÉ QUIERO
1. Ponlos encima de la fila de controles principales (entre la barra de progreso y los controles,
   o a ambos lados de la barra de progreso: elige lo que se vea mejor y dilo). Mantén objetivos
   táctiles de al menos 44 px, las etiquetas accesibles actuales («Retroceder 10 segundos» y
   «Adelantar 10 segundos») y el atajo de flechas del PC.
2. Verifica con capturas reales, sin suponer: node tools/capturas.cjs android/decoded/assets
   /tmp/c/brisa android, a 360×780 (A30) y 412×915 (F8 Pro). Mira las imágenes del reproductor
   ampliado antes y después y asegúrate de que no se corta nada ni hay desplazamiento horizontal.
3. Edita en common/ y ejecuta python3 tools/build-web.py. No toques a mano la interfaz generada.

RESTRICCIONES (de brisa/AGENTS.md)
- Batería primero: sin sondeos ni temporizadores; nada continuo con la app oculta.
- No añadas permisos de Android ni destinos de red.
- Los cambios de smali van en un tools/parches-X.Y.Z.py nuevo y deben pasar tools/verificar-apk.sh;
  prefiere Java en android/src y una sola sustitución de llamada.
- No borres ni desactives pruebas para que pasen; si un comportamiento cambia a propósito,
  actualiza la prueba y explica por qué.

ENTREGA
- bash brisa/tools/verificar-todo.sh debe terminar en «Todo correcto.»
- Pruebas nuevas: que la edición sobrevive a la sincronización, que el nombre de una descarga no
  lleva sufijo, que M4A no muestra la extensión y que los botones de ±10 s quedan sobre la fila principal.
- Di con claridad en VALIDACION-X.Y.Z.md qué no pudiste probar (teléfono real, descarga real, Windows).
- Un pull request con la plantilla de .github/pull_request_template.md.
````
