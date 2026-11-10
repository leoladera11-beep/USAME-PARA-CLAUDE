EDICION LIGERA: consulta LEEME-LIGERO.md. yt-dlp.exe y el ZIP de fuentes FFmpeg se recuperan mediante python3 tools/descargar-dependencias.py; no estan dentro de este ZIP.

# Compartir Brisa Local 3.0.2

El paquete reúne las apps listas para instalar, las fuentes disponibles, el proyecto
de reconstrucción Android, las dependencias incluidas y las instrucciones para
continuar el desarrollo. Comparte el ZIP descargado: la página sigue siendo privada.

## Contenido
- apps/: APK F8 Pro, APK Galaxy A30 y ZIP portable Windows 11 x64.
- fuentes/Brisa-Local-3.0.2-codigo.zip: extrae este ZIP para trabajar con el código.
- documentacion/: instalación, compilación, dependencias y límites de las fuentes.
- licencias/: licencia del proyecto y avisos de componentes.
- SHA256SUMS.txt: integridad de todos los archivos incluidos.

Las apps conservan la firma y el identificador de la entrega 3.0.2. No se incluyen
vídeos, canciones, cuentas, sesiones ni datos personales del usuario.

## Para instalar
Android: instala la APK de tu modelo. Windows: extrae todo el ZIP y abre
Brisa Local.exe; conserva las DLL, resources y las licencias a su lado. WebView2 y
Google Drive para ordenadores, si se usa esa integración, se instalan aparte.

## Para desarrollar
Extrae el ZIP de fuentes. Lee README.md, COMPILAR.md y DEPENDENCIAS.md.
Windows usa Rust/Tauri y web. Android contiene los nuevos auxiliares Java y un
proyecto APKTool/smali, no un proyecto Gradle limpio. Consulta los límites documentados.

La clave privada de firma, su contraseña y los tokens de publicación NO se incluyen.
Conserva tu copia privada por separado. Para actualizar una instalación Android
existente se necesita la misma firma. Para una variante independiente usa tu propia
clave y otro identificador. OAuth Google Android depende del paquete/certificado;
ajusta su configuración si los cambias.

En Linux/WSL: sha256sum -c SHA256SUMS.txt. En PowerShell usa Get-FileHash con
-Algorithm SHA256 y compara con ese archivo. Conserva las licencias al redistribuir.
