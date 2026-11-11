# Conectar Google Drive

Hay dos formas de conectar tu cuenta. La **A** es inmediata y sirve en el teléfono y en el PC. La
**B** solo existe en Android y exige un registro previo, pero después no hay que tocar nada más.

## A. Iniciar con un token de acceso (inmediato)

Un token de acceso OAuth es una credencial temporal que Google emite para tu cuenta. Si lo pegas en
Brisa, Drive te reconoce al instante.

**Dónde se pega**
- Teléfono: Vídeos → Google Drive → Iniciar con un token de acceso.
- PC: Vídeos → Google Drive → Iniciar con un token de acceso.

**Cómo obtener uno** con la herramienta oficial OAuth 2.0 Playground de Google. Estos pasos siguen
la documentación de Google; no he podido ejecutarlos con tu cuenta:

1. Abre https://developers.google.com/oauthplayground
2. En el paso 1 busca «Drive API v3» y marca un permiso:
   - `https://www.googleapis.com/auth/drive` → Brisa ve todo tu Drive. Es lo más cómodo, y en el PC
     hace que aparezcan toda tu música y tus vídeos.
   - `https://www.googleapis.com/auth/drive.file` → Brisa solo ve los archivos creados con ese mismo
     cliente. Es el acceso mínimo.
3. Pulsa «Authorize APIs», elige tu cuenta y acepta.
4. En el paso 2 pulsa «Exchange authorization code for tokens».
5. Copia el **Access token** (empieza por `ya29.`) y pégalo en Brisa.

**Lo que debes saber**
- El token de acceso **dura alrededor de una hora**. Brisa te muestra los minutos que le quedan y te
  avisa cuando caduca; entonces hay que pegar otro.
- Para que **no caduque**, despliega «Mantener la sesión sin que caduque» y pega también el
  **Refresh token**, el **ID de cliente** y el **secreto del cliente**. Tienen que ser de un cliente
  OAuth tuyo: en Playground, el icono del engranaje → «Use your own OAuth credentials». Con las
  credenciales por defecto de Playground, Google revoca el token de actualización a las 24 horas.
  Crea ese cliente en Google Cloud → Credenciales → ID de cliente de OAuth → tipo «Aplicación web»,
  con `https://developers.google.com/oauthplayground` como URI de redirección autorizada.
- Si la pantalla de consentimiento de tu proyecto está en modo «Prueba», Google caduca los tokens de
  actualización a los siete días. Publicar la app lo evita.
- **Usa siempre el mismo cliente.** Brisa reconoce su biblioteca en Drive por unas marcas que Drive
  solo enseña al cliente que las creó. Si cambias de cliente, los archivos siguen en tu Drive pero
  Brisa en Android no los listará como suyos.
- **Trata el token como una contraseña.** Quien lo tenga puede leer tu Drive con ese permiso. No lo
  pegues en chats ni lo subas a ningún sitio. Brisa lo guarda solo en el dispositivo; en Windows, en
  un archivo de tu perfil de usuario sin cifrado adicional, así que no lo uses en un PC compartido.
- Para cerrar la sesión: «Cerrar la sesión por token». Para invalidar el token del todo, quita el
  acceso en https://myaccount.google.com/permissions

## B. Conectar con el botón de Google en Android (una sola vez)

Google solo deja iniciar sesión a una app Android si en Google Cloud existe un cliente OAuth con
**el mismo paquete y la misma huella de firma** que la APK instalada. Brisa 4.0.0 usa una firma
nueva, así que hay que registrar esa huella. Es gratis y se hace una vez.

Datos de esta versión:

- Paquete: `com.brisa.player`
- Huella SHA-1: `7F:41:41:DE:F5:C6:A5:C7:98:28:9A:57:F4:55:05:53:DA:EC:C1:65`

Si vuelves a compilar con otra clave, obtén su huella con `bash tools/crear-clave.sh`.

## Pasos

1. Entra en https://console.cloud.google.com con tu cuenta de Google.
2. Elige un proyecto. Si ya creaste uno para Brisa 3.0.2, **usa ese mismo**: así los archivos que
   Brisa ya subió a tu Drive siguen siendo visibles. Si no tienes ninguno, crea uno nuevo.
3. Menú → APIs y servicios → Biblioteca → busca «Google Drive API» → Habilitar.
4. APIs y servicios → Pantalla de consentimiento de OAuth. Tipo «Externo». Rellena el nombre de la
   app y tu correo. En «Usuarios de prueba» añade tu propio correo.
5. APIs y servicios → Credenciales → Crear credenciales → ID de cliente de OAuth → tipo **Android**.
   Escribe el paquete y la huella SHA-1 de arriba y crea el cliente. No hay que descargar nada ni
   copiar ninguna clave a la app.
6. En Brisa: Vídeos → Google Drive → Conectar cuenta, y acepta el permiso.

## Si algo falla

- **«Conexión con Drive cancelada» o un error al elegir la cuenta**: revisa que el paquete y la
  huella del cliente coincidan exactamente y espera unos minutos tras crearlo.
- **Te pide permiso de nuevo cada semana**: en modo «Prueba» Google caduca la autorización a los
  siete días. Para evitarlo, en la pantalla de consentimiento pulsa «Publicar la app». Según la
  documentación de Google, el permiso que usa Brisa (`drive.file`) es de bajo riesgo y no exige el
  proceso de verificación. No he podido comprobarlo con tu cuenta.
- **No aparecen tus archivos antiguos**: Brisa solo ve los archivos creados con el mismo proyecto de
  Google Cloud. Crea el cliente Android dentro del proyecto que usabas antes.

Brisa pide solo el permiso `drive.file`: ve los archivos que ella misma crea en tu Drive y nada más.
El token de acceso se guarda en memoria, nunca en disco, y no se envía a ningún servidor que no sea
de Google.

## Guardar descargas en Drive desde Windows

La opción A sirve en el PC para ver y reproducir lo que hay en tu Drive. Para **guardar** las
descargas en Drive no hace falta token. Instala Google Drive para ordenadores, elige «Ver archivos sin
descargarlos» y en Brisa pulsa Vídeos → Google Drive → Elegir mi carpeta de Drive.
