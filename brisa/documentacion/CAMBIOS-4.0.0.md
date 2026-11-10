# Brisa 4.0.0 · qué cambió y por qué

Partí de Brisa Local 3.0.2. Cada cambio responde a algo que pediste: menos batería y recursos en
segundo plano, una interfaz más moderna con cristal líquido, la máxima calidad de sonido igual en
música y en vídeo, y usar Drive sin ocupar espacio. Al final están los límites que debes conocer.

## 1. Batería y segundo plano

| Cambio | Por qué |
| --- | --- |
| El servicio de música se libera tras 10 minutos en pausa con la app fuera de pantalla (`Idle.java`). Al volver, la canción se recarga en el mismo segundo y se reenvía la cola. | En 3.0.2, al pausar y salir, el servicio quedaba iniciado para siempre con el descodificador y la sesión multimedia reservados. Un servicio iniciado impide que Android congele la app, así que Brisa contaba como app activa aunque no sonara nada. |
| El aviso de posición a la interfaz pasa de 2 veces por segundo a 1, y solo con la app visible. | La barra de progreso muestra segundos: el doble de avisos solo despertaba la interfaz sin aportar nada. |
| La letra sincronizada avanza con un temporizador puesto en el instante exacto del verso siguiente. | Es más precisa que esperar al aviso periódico y no necesita sondeo. Permite bajar la frecuencia de avisos sin que la letra llegue tarde. |
| El temporizador de apagado ya no ejecuta código cada segundo. La pausa la hace el sistema; la interfaz solo refresca el texto cada 20 s y solo si está visible. | Era un bucle de un segundo que seguía vivo con la app en segundo plano. |
| Negro real en toda la interfaz. | El A30 y el F8 Pro tienen pantalla OLED: los píxeles negros están apagados. |
| Las animaciones solo cambian `transform` y `opacity`, y se pausan en segundo plano, con ahorro de batería y con «reducir movimiento». | Son las dos propiedades que la GPU anima sin recalcular la página. Fuera de pantalla no queda ninguna animación viva. |
| En Windows, con sonido original no se crea el grafo de Web Audio. | El sistema reproduce el archivo directamente: menos CPU y ningún procesado intermedio. |
| El puente local de streaming no tiene temporizadores: su hilo duerme hasta que el reproductor pide datos. | No consume CPU en reposo. |

Se conserva lo que ya funcionaba bien: la música sigue sonando con la pantalla apagada mediante un
servicio en primer plano, los vídeos entran en imagen en imagen al salir de la app y las descargas
solo mantienen el teléfono despierto mientras duran.

## 2. Interfaz

- **Hoja de estilos nueva y única** (`common/brisa.css`) en lugar de tres hojas acumuladas con textos
  de 6 a 9 píxeles. Todo el texto es legible y los botones miden al menos 44 píxeles.
- **Inicio** con saludo según la hora, seis accesos rápidos y estantes: Volver a escuchar, Tus
  artistas, Lo que más suena y Recién añadidas. Los estantes salen de tu propia biblioteca.
- **Tres vistas**: Inicio, Buscar y Tu biblioteca, más Vídeos, en la barra inferior del teléfono y
  en el panel lateral del PC.
- **Reproductor**: minirreproductor con el color de la canción y línea de progreso; al ampliarlo,
  carátula grande, controles principales en una fila y accesos a velocidad, sonido, cola y letra.
- **Menú ⋯ por canción**: reproducir a continuación, añadir a la cola, favorita, ver letra, guardar
  o liberar la copia sin conexión y quitar de Brisa. Sustituye a la papelera en cada fila.
- **Ajustes** reunidos en un diálogo.
- **Cristal líquido y animaciones**, en tres niveles que se eligen solos según el equipo:
  - *Completo* (F8 Pro y PC): desenfoque real del fondo en el reproductor, la barra inferior, los
    paneles y los diálogos; bordes luminosos; ambiente de color que toma el tono de la canción y se
    mueve despacio en el PC; entrada escalonada de tarjetas; halo en la carátula mientras suena.
  - *Ligero* (A30 y siempre que el teléfono esté en ahorro de batería): el mismo aspecto con capas
    translúcidas, sin desenfoque ni animación continua. El desenfoque es lo único caro del efecto y
    la GPU del A30 no lo mueve con soltura.
  - *Desactivado*: al apagar «Animaciones suaves».
  Puedes forzar el nivel en Ajustes → Efectos de cristal.
- **Una sola fuente para las dos plataformas**: `tools/build-web.py` genera la interfaz de Android y
  de Windows desde `common/` y comprueba que cada elemento que busca el código existe. Antes había
  dos copias que se iban separando.

Es un diseño propio inspirado en la disposición habitual de los reproductores actuales; no copia
marcas, iconos ni recursos de ninguna otra app.

## 3. Sonido

- **Sonido original por defecto**, sin ecualizar ni tocar el volumen. En 3.0.2 venía activada una
  «mejora suave» que subía graves y agudos y bajaba 3 dB el volumen. Si el ecualizador del teléfono
  no se podía aplicar a uno de los dos reproductores, la música y el vídeo sonaban distinto. Sin
  procesado, los dos salen exactamente igual y con la máxima fidelidad al archivo.
- El ecualizador sigue disponible en Sonido y se aplica con los mismos valores a música y vídeo.

## 4. Convertidor de YouTube

- **Música con el audio original, sin recomprimir** (`AudioExport.java` en Android,
  `download_output.rs` en Windows). YouTube entrega Opus de unos 160 kbps o AAC de unos 128 kbps.
  Convertirlo a MP3 de 320 kbps no añade calidad: descodifica y vuelve a comprimir con pérdida, ocupa
  más del doble y suena distinto del vídeo. Ahora se copia la misma pista de audio que lleva el
  vídeo a un archivo M4A, sin tocar una muestra. Es la máxima calidad que ofrece la fuente.
- **MP3 320 kbps** queda como opción para reproductores antiguos. Si la copia directa no es posible
  con algún archivo, Brisa recurre sola al MP3 para no dejarte sin música.
- En «Ambos», el vídeo y la música comparten la misma pista de audio: suenan idénticos.
- Las opciones elegidas se recuerdan.

## 5. Google Drive sin ocupar espacio

- **Android: reproducción directa desde Drive** (`DriveStream.java` y `StreamRelay.java`). Los
  archivos que están solo en Drive se reproducen por internet pidiendo únicamente los tramos
  necesarios, así que puedes saltar a cualquier minuto sin descargar el archivo. En 3.0.2 había que
  descargar antes una copia completa. Funciona para música, con cola y pantalla apagada, y para vídeo.
- **Solo con Wi-Fi por defecto**, como pediste. Ajustes → «Usar datos móviles para Drive» lo cambia.
- **Destino «Solo Google Drive»** en las descargas: se sube a tu Drive y, cuando Drive confirma la
  subida, se libera la copia del teléfono. Si la subida queda pendiente la copia se conserva: nunca
  se borra algo que aún no está a salvo.
- La copia sin conexión sigue existiendo, archivo por archivo, desde el menú ⋯ o desde Google Drive.
- **Windows** ya guardaba en la unidad de Google Drive para ordenadores sin copia local; se mantiene.
- El puente local solo escucha en 127.0.0.1, exige un secreto aleatorio y solo sirve archivos de tu
  biblioteca. El resto del tráfico sigue siendo HTTPS.

## 6. Imagen en imagen

- Android conserva la imagen en imagen del reproductor de vídeo, ahora también con vídeos de Drive.
- Windows gana un botón de imagen en imagen sobre el vídeo.

## 7. Instalación y firma

- La clave de firma original no estaba en el paquete, así que firmé con una **clave nueva** que te
  entrego en `clave/`. Guárdala: con ella podrás actualizar esta versión sin desinstalar.
- El paquete pasa a llamarse `com.brisa.player` para que se instale **junto a** tu Brisa 3.0.2 sin
  tocarla. Así puedes probar la 4.0.0 con calma y borrar la antigua cuando quieras.
- La compilación ya no necesita el SDK de Android: `tools/herramientas-android.py` descarga las
  herramientas de sus fuentes oficiales y las verifica por SHA-256; `tools/zipalign.py` alinea la APK
  a 16 KiB; se firma con los esquemas v2 y v3.

## Límites que debes conocer

- **No he podido probar en tus equipos.** No tengo un A30, un F8 Pro ni un Windows 11. Lee
  `VALIDACION-4.0.0.md`: separa lo que comprobé de lo que queda por comprobar en hardware real.
- **Drive en Android requiere un paso tuyo, una vez.** Google solo autoriza la app si existe un
  cliente OAuth con el paquete y la huella de la firma nueva. Está explicado en
  `CONFIGURAR_GOOGLE_DRIVE.md`.
- **La biblioteca no se traslada sola** desde la 3.0.2, porque Android no deja a una app leer los
  datos de otra. Hay que volver a añadir la música. Los archivos no se tocan.
- **«Sin ocupar espacio» significa sin copia permanente.** Mientras dura una descarga se usa espacio
  temporal, y reproducir desde Drive necesita conexión.
- Los vídeos reproducidos desde Drive no muestran subtítulos guardados; aparecen al guardar la copia
  sin conexión.
- No he medido el consumo de batería: las mejoras son de diseño y las explico arriba, pero la cifra
  real solo se obtiene midiendo en tu teléfono.
