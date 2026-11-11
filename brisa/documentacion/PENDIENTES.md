# Pendientes y siguientes mejoras

Ordenado por valor para el usuario. Actualiza esta lista al terminar cada tarea.

## 1. Validar en los equipos reales (lo más importante)

Nada de la 4.0.0 ni de la 4.1.0 se ha ejecutado en un teléfono ni en Windows. Pide al usuario que siga «Qué probar
primero» de `VALIDACION-4.1.0.md` y que cuente el paso y el mensaje exactos de cualquier fallo.
Si puede conectar el teléfono a un PC, `adb logcat | grep -iE "brisa|AndroidRuntime"` da la causa.

Dónde mirar según el síntoma:

| Síntoma | Sospecha | Archivo |
| --- | --- | --- |
| La app se cierra al abrir | Enganche smali o clase que falta | `tools/parches-4.0.0.py`, `tools/verificar-apk.sh` |
| «Conexión con Drive cancelada» | Falta el cliente OAuth con la huella nueva | `documentacion/CONFIGURAR_GOOGLE_DRIVE.md` (o usar el inicio con token) |
| El token se acepta pero no aparecen archivos | El token es de otro cliente OAuth o solo tiene `drive.file` | `TokenSession.java`, `drive_api.rs`, `CONFIGURAR_GOOGLE_DRIVE.md` |
| En Windows un archivo de Drive no suena | Protocolo `brisadrive://`, CSP o token caducado | `drive_api.rs` (`serve`), `tauri.conf.json` |
| Una canción de Drive no suena | Tráfico local bloqueado, token o red | `DriveStream.java`, `res/xml/network_security_config.xml` |
| El vídeo de Drive no arranca | ExoPlayer no admite la dirección local | `DriveStream.video`, `VideoPlaybackService.smali` |
| Tras una pausa larga no reanuda | `Idle` o la recarga desde la interfaz | `Idle.java`, `platform.js` (`onServiceLost`), `common/app.js` |
| La música descargada es MP3 aunque se eligió original | El unidor rechazó la pista | `AudioExport.java` |
| No encuentra formatos de YouTube | Extractor NewPipe obsoleto | `vendor/newpipe`, clase `m` |
| En Windows no descarga | yt-dlp antiguo o hash que no coincide | `windows/desktop/resources/hashes.json` |

## 2. Mantenimiento que caduca

- **yt-dlp** (Windows) queda obsoleto en semanas. Para actualizarlo: nueva versión y SHA-256 en
  `DEPENDENCIAS-LIGERAS.json`, `windows/desktop/resources/hashes.json`, `versions.json` y
  `windows/portable/Preparar-Brisa.ps1`.
- **NewPipe Extractor** (Android) está dentro de la APK recuperada, no se compila desde `vendor/`.
  Actualizarlo exige sustituir sus clases smali: es la tarea más difícil del proyecto. Alternativa
  más simple a valorar: que el teléfono descargue a través del PC.

## 3. Mejoras propuestas

- **Descargas más rápidas y con menos datos** (prioridad alta para el usuario): hay un prompt listo
  para un agente en `PROMPT-DESCARGAS-RAPIDAS.md`, con lo verificado en el código, lo que hay que
  medir y cómo.
- Carátulas reales: leer la imagen incrustada en los archivos y usarla en tarjetas, reproductor y
  notificación. Hoy son degradados con el color de la canción.
- Listas de reproducción propias, además de favoritas y cola.
- Trasladar la biblioteca: exportar e importar favoritas, letras y reproducciones a un archivo.
- Subtítulos al reproducir vídeo desde Drive sin copia local.
- Caché pequeña y acotada para la música de Drive, para aguantar cortes breves de red.
- Windows: subir las descargas por la API de Drive con la sesión por token (hoy la subida usa la carpeta de Google Drive para ordenadores) y cifrar el archivo de la sesión con DPAPI.
- Inicio de sesión de Google dentro de la app en Windows (flujo OAuth con navegador), para no tener que pegar el token.
- Windows: suspender WebView2 con la ventana minimizada y sin reproducción.
- Integración continua en GitHub Actions que ejecute `tools/verificar-todo.sh`.
- Medir batería de verdad en el A30 y el F8 Pro (Battery Historian) y ajustar con datos.
- Medir las descargas de enlaces propios en YouTube con Wi-Fi y datos móviles en los dos teléfonos y Windows. Comparar tres intentos por versión y probar un cambio de red durante la descarga.

## 4. Deuda técnica

- En Windows, una canción de Drive borrada en Drive sigue en la biblioteca hasta que se quita a mano;
  «Actualizar lista de Drive» solo añade las nuevas.

- `android/decoded/assets/desktop.js` y `sound-desktop.js` no se usan en Android; se conservan
  porque `index.html` los carga y salen sin hacer nada.
- `windows/vendor/` duplica `vendor/`.
- El código de `common/app.js` heredado es denso (líneas muy largas). Conviene partirlo en módulos
  cuando se toque una zona, sin reescribirlo entero de golpe.
- `referencia-original-2.6.0/` es Java antiguo de otra versión: útil para entender, no para compilar.
