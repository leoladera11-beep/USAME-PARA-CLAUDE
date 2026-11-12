# Conectar Brisa Multimedia con Google Drive

## 1. Publicar el sitio

Abre [Settings → Pages](https://github.com/leoladera11-beep/USAME-PARA-CLAUDE/settings/pages). En **Source**, elige **Deploy from a branch**. Selecciona **brisa-pages**, la carpeta **/(root)** y pulsa **Save**. Cuando Pages indique que el sitio está publicado, abre los tres enlaces en una ventana de incógnito.

| Campo | URL |
| --- | --- |
| Página principal | https://leoladera11-beep.github.io/USAME-PARA-CLAUDE/ |
| Política de privacidad | https://leoladera11-beep.github.io/USAME-PARA-CLAUDE/privacidad.html |
| Términos del servicio | https://leoladera11-beep.github.io/USAME-PARA-CLAUDE/terminos.html |
| Dominio autorizado | `leoladera11-beep.github.io` |

## 2. Verificar el sitio y completar la marca

1. Entra con el Gmail dedicado a Brisa en [Search Console](https://search.google.com/search-console/welcome). Añade una propiedad de tipo **Prefijo de URL** con `https://leoladera11-beep.github.io/USAME-PARA-CLAUDE/`.
2. Elige **Archivo HTML** y descarga el archivo que te da Google. Súbelo con su nombre original a la raíz de la rama [brisa-pages](https://github.com/leoladera11-beep/USAME-PARA-CLAUDE/tree/brisa-pages) mediante **Add file → Upload files**. Espera a que Pages publique el cambio, abre el enlace exacto que te muestra Search Console y pulsa **Verificar**. Conserva ese archivo en la rama para mantener la verificación.
3. Abre [Información de la marca](https://console.cloud.google.com/auth/branding) y selecciona el proyecto **Brisa Multimedia**. Usa el Gmail dedicado para asistencia y contacto. Añade el dominio autorizado sin `https://` ni ruta, pega las tres URLs de la tabla y guarda.
4. Si la consola te muestra **Verificar marca**, completa ese paso y pulsa **Publicar marca** cuando esté disponible. Después abre [Público](https://console.cloud.google.com/auth/audience), conserva **Externo**, pulsa **Publicar app** y confirma que diga **En producción**.

Si Google Auth Platform solicita verificar el dominio completo pese a que Search Console ya verificó la ruta del proyecto, la propiedad adicional debe ser `https://leoladera11-beep.github.io/`. Para colocar un archivo de verificación en la raíz de ese host, GitHub Pages usa un sitio de usuario en un repositorio público llamado `leoladera11-beep.github.io`. El archivo HTML debe quedar en la raíz publicada de ese sitio. Si Google exige una propiedad DNS en lugar del prefijo o rechaza el dominio autorizado, conserva el mensaje exacto para revisar la opción disponible antes de contratar un dominio.

## 3. Generar el token de actualización

1. En [Acceso a los datos](https://console.cloud.google.com/auth/scopes), guarda `https://www.googleapis.com/auth/drive.file`. Confirma que [Google Drive API](https://console.cloud.google.com/apis/library/drive.googleapis.com) esté habilitada.
2. En [Clientes OAuth](https://console.cloud.google.com/auth/clients), usa un cliente de tipo **Aplicación web** con `https://developers.google.com/oauthplayground` en **URI de redirección autorizados**. Conserva su ID y su secreto.
3. Una vez que el proyecto diga **En producción**, abre [OAuth Playground](https://developers.google.com/oauthplayground/). En el engranaje marca **Use your own OAuth credentials**, pega el ID y el secreto del cliente y elige **Offline** y **Consent Screen**.
4. En **Step 1**, autoriza `https://www.googleapis.com/auth/drive.file` con tu Gmail dedicado. En **Step 2**, pulsa **Exchange authorization code for tokens** y copia **Refresh token**.
5. En **Brisa 4.1.1 → Vídeos → Google Drive → Sesión con renovación automática**, pega el token `1//`, el ID y el secreto. Pulsa **Usar este token**. Mantén privados esos datos. Como primera prueba, guarda una canción desde Brisa en Android con destino **Solo Google Drive**.

Mientras el proyecto siga en **Prueba**, Google aplica una caducidad de siete días al token de Drive. En producción, Brisa puede renovar el acceso mientras Google acepte la autorización.
