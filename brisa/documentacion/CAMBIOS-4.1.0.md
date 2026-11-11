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
