# Conectar Google Drive en Android (una sola vez)

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

## Windows

En el PC no hace falta nada de esto. Instala Google Drive para ordenadores, elige «Ver archivos sin
descargarlos» y en Brisa pulsa Vídeos → Google Drive → Elegir mi carpeta de Drive.
