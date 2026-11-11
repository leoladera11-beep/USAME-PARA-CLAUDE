# Brisa 4.1.0 · qué cambió y por qué

Sobre la 4.0.0 (ver `CAMBIOS-4.0.0.md`). Un cambio principal: **iniciar sesión en Google Drive
pegando un token de acceso OAuth**, en el teléfono y en el PC.

## Por qué

En Android, el botón «Conectar cuenta» solo funciona si antes registras en Google Cloud la huella
de la firma de la APK. Es un paso que hay que hacer una vez, pero es el que más cuesta. Con un token
de acceso que ya tengas, Drive reconoce tu cuenta al instante y no hace falta ese registro.

## Qué hace

**En las dos apps**
- En el diálogo de Google Drive hay un apartado «Iniciar con un token de acceso». Pegas el token y
  Brisa lo comprueba con Google, identifica la cuenta y queda conectada.
- Un token de acceso dura alrededor de una hora. Brisa muestra cuántos minutos le quedan y, cuando
  caduca, lo dice con claridad en lugar de fallar sin explicación.
- **Sesión permanente opcional**: si además pegas el token de actualización y los datos de tu
  cliente OAuth, Brisa renueva la sesión sola y no vuelve a pedirte nada.
- El token se trata como una contraseña: el campo no lo muestra, se vacía al guardar, nunca aparece
  en pantalla ni en los mensajes, y un texto que no tenga forma de token no sale del dispositivo.

**En Android**
- Todo lo que ya hacía Brisa con Drive funciona igual con la sesión por token: subir descargas,
  actualizar la biblioteca, guardar copias sin conexión y reproducir música y vídeos desde Drive.
- El botón «Conectar cuenta» de Google sigue ahí y sustituye a la sesión por token si lo usas.

**En Windows**
- El PC no tenía inicio de sesión en Drive: solo guardaba en la carpeta de Google Drive para
  ordenadores. Con el token, **la música y los vídeos de tu Drive aparecen en la biblioteca y se
  reproducen por internet sin descargarlos**, pidiendo a Drive solo los tramos que hacen falta.
- «Actualizar lista de Drive» vuelve a consultar. Al abrir la app se consulta una vez; no hay
  sondeo periódico.
- Quitar de Brisa un archivo de Drive solo lo oculta: no borra nada en tu Drive.
- Guardar las descargas en Drive sigue haciéndose con la carpeta de Google Drive para ordenadores.

## Cómo se hizo

- Android: `TokenSession.java` (lógica pura, probada en JVM) y `ManualAuth.java`. Un único enganche
  nuevo al principio de la función por la que pasa toda petición a Drive: si hay sesión por token,
  deja el token vigente en su sitio y el resto del código no nota la diferencia.
- Windows: `drive_token.rs` (lógica pura con pruebas) y `drive_api.rs`, que añade el protocolo
  propio `brisadrive://` con el que el reproductor pide tramos.
- Interfaz: `common/drive-token.js`, el mismo formulario en las dos plataformas.
- Destino de red nuevo: `oauth2.googleapis.com`, solo para comprobar y renovar el token.

## Límites que debes conocer

- **Qué archivos ve la sesión depende del permiso del token.** Con el permiso `drive` ve todo tu
  Drive. Con `drive.file` solo ve los archivos creados con el mismo cliente OAuth que emitió el
  token. En Android, la biblioteca de Brisa se reconoce por unas marcas que Drive solo muestra a ese
  mismo cliente: usa siempre el mismo cliente para que tus archivos anteriores sigan apareciendo.
- **Un token de acceso solo dura una hora.** Para no repetirlo, usa la sesión permanente.
- Los datos de la sesión se guardan en el almacenamiento privado de la app. En Windows es un
  archivo en tu perfil de usuario, sin cifrado adicional: no uses esta opción en un PC compartido.
- Sigue sin haberse ejecutado nada en un teléfono ni en Windows. Lo comprobado y lo pendiente está
  en `VALIDACION-4.1.0.md`.

## Descargas desde enlaces

- **Windows.** yt-dlp usa cuatro fragmentos, cuatro reintentos HTTP y por fragmento, y 35 s de
  espera por operación de red. Un fragmento que sigue faltando detiene la descarga. En HTTP
  progresivo directo se reanuda con `Range` e `If-Range` cuando coinciden la URL final, un ETag
  fuerte y el tamaño. Para YouTube, Brisa conserva el parcial de yt-dlp cuando puede fijar la
  revisión y el tamaño de todas las pistas seleccionadas. Los motores siguen verificándose por
  SHA-256 y se ejecutan en el Job de Windows.
- **Android.** Las pistas separadas se descargan juntas. Los archivos grandes admiten tres
  rangos validados por archivo, con un máximo de cuatro solicitudes activas en total. Si el
  origen responde con el archivo completo se aprovecha esa respuesta. Tras un corte se pide
  el tramo pendiente y se conserva el progreso en caché si el servidor permite validarlo.
- **Datos móviles.** La primera opción es la mejor calidad compatible hasta 720p, si existe.
  La interfaz indica los bytes estimados de transferencia y, en Android, pregunta antes de
  superar 100 MB en datos móviles. «Esperar a Wi-Fi» deja la descarga sin iniciar. «Música»
  requiere una pista independiente. «Ambos» obtiene la música de las pistas ya descargadas.
  El formato predeterminado sigue siendo audio original.
- **Consulta.** Pegar el enlace inicia la consulta. Al escribir hay una pausa de 180 ms. La
  consulta reutiliza durante dos minutos un plan vigente y los cambios de salida o de calidad
  reutilizan la información disponible. Los parciales se limpian al volver a descargar cuando
  han pasado seis horas.

### Medición local reproducible

```bash
bash tools/probar-android.sh
python3 tests/downloads/benchmark.py --yt-dlp /ruta/a/yt-dlp --android-classpath test-classes
```

El servidor limita cada respuesta de archivo a 512 KiB/s y cada fragmento HLS a 256 KiB/s.
Corta el cuerpo de las primeras solicitudes grandes según el escenario. Los valores son
tiempos de pared de ejecuciones locales en Linux. El caso Android posterior usa la clase Java
de producción en JVM y un transporte HTTP de prueba. El caso anterior representa el orden
y el número de conexiones de 4.1.0. Se verificó el contenido de las pistas byte a byte.

| Escenario | Antes | Después | Bytes de cuerpo antes → después |
| --- | ---: | ---: | ---: |
| Android, vídeo + audio, sin cortes | 16,16 s (0,49 MiB/s) | 4,35 s (1,84 MiB/s) | 8 388 420 → 8 388 421 |
| Android, vídeo + audio, dos cortes | Interrumpe la tarea | 7,73 s (1,03 MiB/s) | Sin archivo final → 8 388 421 |
| yt-dlp, HLS sin cortes | 8,60 s (0,21 MiB/s) | 2,67 s (0,67 MiB/s) | 1 873 508 → 1 873 508 |
| yt-dlp, HLS con dos cortes | Falló a los 7,64 s | 2,69 s (0,66 MiB/s) | 1 818 941 → 1 873 508 |
| HTTP, recuperar 6 MiB tras un corte | 12,60 s, reiniciando | 12,09 s, reanudando | 6 553 459 → 6 291 315 |

En los candidatos sin cortes, solo solapar las pistas tomó 12,11 s. Tres rangos de vídeo con
audio simultáneo tomaron 4,05 s y cuatro tomaron 4,04 s. Se eligieron tres para reducir
conexiones. Ocho fragmentos de yt-dlp tomaron 1,72 s sin cortes y 1,69 s con cortes en
el manifiesto de ocho fragmentos. Se eligieron cuatro para acotar las conexiones de descarga.
El caso de recuperación de 6 MiB compara el mismo corte con reinicio manual y reanudación.
La prueba local mide un límite por conexión, cuya presencia y efecto en YouTube siguen pendientes.
