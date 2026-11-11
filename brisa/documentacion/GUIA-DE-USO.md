# Guía de uso y consejos para evitar fallos

Lo que conviene saber para usar Brisa 4.1.0 sin sorpresas. Está escrita a partir de cómo funciona
el código y de lo que se comprobó; lo que no se ha podido ver en un teléfono o en Windows se dice.

## Antes de empezar

1. **Guarda la carpeta `clave/`** del paquete en un sitio privado y con copia (un USB o una carpeta
   privada de tu Drive). Es lo único que permite publicar una actualización que se instale encima
   de la 4.1.0 sin desinstalar. No se sube a GitHub y no se puede recuperar.
2. **No la compartas.** Quien la tenga puede firmar apps que Android tratará como tuyas.
3. **Instala primero en un solo teléfono** y prueba con unas pocas canciones antes de importar toda
   la biblioteca.
4. **La primera vez que algo falle, anota el paso exacto y el mensaje que aparece.** Sirve para
   cualquier persona o agente que lo arregle después (`PENDIENTES.md` tiene una tabla de síntomas).

## Que el sistema no corte la música con la pantalla apagada

Las apps de música sufren los ahorros de batería agresivos. Brisa ya usa un servicio en primer plano,
pero el sistema puede cerrarlo si la tiene limitada.

- **F8 Pro (HyperOS):** Ajustes → Apps → Brisa → Ahorro de batería → «Sin restricciones», y activa
  «Inicio automático». Deja también Brisa fijada en las apps recientes.
- **Galaxy A30 (One UI):** Ajustes → Aplicaciones → Brisa → Batería → «Sin restricciones», y quítala
  de «Apps en suspensión» si aparece.
- Esto no aumenta el gasto: solo evita que el sistema mate el servicio mientras suena. En pausa,
  Brisa libera el reproductor a los diez minutos por su cuenta.

## Batería y rendimiento

- En el **A30**, deja «Efectos de cristal» en Automático: usa la versión ligera, sin desenfoque. Si
  notas tirones, ponlo en Ligero o desactiva «Animaciones suaves».
- En el **F8 Pro** y el PC, Automático usa el cristal completo. Si el teléfono se calienta o gasta
  más de lo esperado, baja a Ligero.
- Con el teléfono en ahorro de batería, Brisa pasa sola a Ligero.
- No hay mediciones reales de consumo. Si el gasto te parece alto, mira en Ajustes del sistema →
  Batería → Brisa cuánto lleva en primer plano y en segundo plano, y cuéntalo.

## Drive: cómo conectarlo y no perder archivos

- **Lo más rápido:** pegar un token de acceso (Vídeos → Google Drive → Iniciar con un token). Dura
  una hora. Para que no caduque, añade el token de actualización y los datos de tu cliente OAuth.
  Pasos en `CONFIGURAR_GOOGLE_DRIVE.md`.
- **Usa siempre el mismo cliente OAuth.** Brisa reconoce en Android sus archivos por marcas que Drive
  solo enseña a quien las creó. Con otro cliente, los archivos siguen en tu Drive pero Brisa no los
  listará como suyos.
- **Pega el token solo en Brisa.** Es como una contraseña: no lo pongas en chats, notas ni capturas.
  Para invalidarlo del todo: https://myaccount.google.com/permissions
- **Reproducir desde Drive necesita conexión.** Por defecto solo con Wi-Fi; si lo activas con datos
  móviles, una canción consume unos 3 a 10 MB y un vídeo bastante más.
- **«Solo Google Drive» libera la copia del teléfono solo cuando Drive confirma la subida.** Si ves
  «subida pendiente», no borres nada a mano: espera o reintenta desde Google Drive.
- **Antes de un viaje o de una zona sin cobertura**, guarda sin conexión lo que quieras llevar:
  menú ⋯ de la canción → «Guardar sin conexión».
- **En Windows**, quitar de Brisa un archivo de Drive solo lo oculta: no se borra de tu Drive.

## Descargas desde YouTube

- **Usa solo contenido que tengas derecho a guardar.** Brisa no cambia lo que permiten las
  condiciones de cada sitio.
- **Música:** deja «Original» (M4A sin recomprimir). Es la máxima calidad que entrega la fuente y
  suena idéntica al vídeo. Elige MP3 solo si un reproductor antiguo no abre M4A.
- **Si una descarga falla de pronto con todos los enlaces**, lo más probable es que YouTube haya
  cambiado algo. En Windows se arregla actualizando `yt-dlp` (ver `PENDIENTES.md`). En Android el
  extractor va dentro de la APK y no se actualiza solo: hará falta una versión nueva de Brisa.
- **Deja espacio libre**: una descarga necesita temporalmente varias veces el tamaño del archivo.
- **No cierres la app durante una descarga** en el PC: Brisa minimiza la ventana en lugar de cerrar,
  y termina cuando acaba.

## Tu biblioteca

- Brisa **no copia ni modifica tus canciones**: guarda permisos de lectura. Si mueves o borras un
  archivo, hay que volver a añadirlo.
- **Desinstalar la app o borrar sus datos elimina la biblioteca** (favoritos, letras, historial), no
  tus archivos. No hay copia de seguridad automática: exportar e importar la biblioteca está en
  `PENDIENTES.md`. Hasta entonces, conserva tus originales.
- Al pasar de la 3.0.2 a la 4.x hay que **volver a añadir la música**; Android no deja que una app lea
  los datos de otra.
- Con muchas canciones, importa por carpetas y espera a que termine cada lote antes de empezar otro.

## Actualizar sin perder nada

1. Instala la APK nueva **encima** (misma firma = se conserva todo).
2. Si no tienes la clave, la APK nueva no podrá instalarse encima: habría que desinstalar y se pierde la
   biblioteca. Por eso el primer consejo de esta guía.
3. En Windows, extrae la carpeta nueva y abre `Brisa Local.exe`; la biblioteca vive en tu perfil de
   usuario y se conserva.

## Primera semana: qué vigilar

La 4.x no se ha ejecutado todavía en equipos reales. Prueba en este orden y avisa del primero que falle:

1. Instalar, añadir canciones y reproducir con la pantalla apagada.
2. Pausar, salir de la app, esperar más de diez minutos, volver y reproducir: debe seguir en el
   mismo punto.
3. Descargar un vídeo corto como «Ambos» y comprobar que el M4A suena igual que el vídeo.
4. Conectar Drive con un token y reproducir una canción por Wi-Fi.
5. Vídeo en imagen en imagen al salir de la app.
6. En el PC: abrir, descargar, pegar el token y reproducir una canción y un vídeo de Drive.

La 3.0.2 sigue instalada si quedó como antes, así que puedes volver a ella sin riesgo mientras tanto.

## Si algo va mal

| Ves | Prueba |
| --- | --- |
| La música se corta con la pantalla apagada | Quita las restricciones de batería de Brisa (arriba) |
| «La sesión de Drive por token caducó» | Pega un token nuevo, o configura el token de actualización |
| Una canción de Drive no suena | Comprueba Wi-Fi y el ajuste de datos móviles; mira el aviso que aparece |
| La descarga falla con todos los enlaces | `yt-dlp` desactualizado (Windows) o versión nueva necesaria (Android) |
| No aparecen tus archivos de Drive | El token es de otro cliente OAuth o solo tiene `drive.file` |
| Tras reiniciar, la biblioteca está vacía | Los datos se borraron: vuelve a añadir la música |
| El PC no abre Brisa | Extrae TODO el ZIP, conserva las DLL y `resources/`, y comprueba que tienes WebView2 |

Para cualquier otro fallo, `PENDIENTES.md` tiene la tabla de síntomas con el archivo donde mirar, y
`AGENTS.md` explica cómo preparar el entorno para que un agente lo corrija.
