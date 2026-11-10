# Brisa 3.0.2 · paquete ligero, menos de 30 MB

Incluye las dos APK firmadas, la app de Windows, las fuentes disponibles,
pruebas, dependencias vendorizadas, licencias e instrucciones. El limite
de 30 MB se aplica al ZIP que compartes, no al espacio despues de prepararlo.

## Windows
Extrae todo apps/Brisa-Local-3.0.2-Windows-x64-ligero.zip y abre ABRIR-BRISA.cmd.
La primera vez obtiene yt-dlp 2026.10.26 (23.575.744 bytes) desde su publicacion
oficial y verifica tamano y SHA-256. Despues abre la misma app 3.0.2.
Windows 11 incluye PowerShell. El lanzador no cambia la politica permanente
de scripts de Windows; su opcion se aplica solo al proceso que prepara Brisa.
Mantiene las DLL, los otros motores y sus licencias. No hay que bajar nada a mano.
Una vez preparado puedes abrir Brisa Local.exe normalmente.

Reproducir archivos locales funciona sin conexion; descargar desde enlaces
necesita internet. WebView2 y Google Drive para ordenadores siguen siendo
requisitos externos si se utilizan, como en el paquete completo.

## Android
Instala la APK de tu modelo encima de Brisa, sin desinstalar. Ambas APK se
incluyen completas y conservan la firma original; no necesitan este preparador.

## Fuentes
Extrae fuentes/Brisa-Local-3.0.2-codigo-ligero.zip. Desde esa carpeta:
python3 tools/descargar-dependencias.py

Ese comando recupera las versiones exactas de yt-dlp y del archivo de fuentes
FFmpeg desde sus proyectos oficiales, comprueba SHA-256 y restaura sus rutas.
Son los dos archivos grandes que se omiten para cumplir el limite. Para compilar
solo Tauri sin reconstruir FFmpeg puedes usar la opcion --solo-motor.
JDK/SDK, Rust, Node y otras herramientas de desarrollo se instalan aparte;
consulta DEPENDENCIAS.md y COMPILAR.md.

La fuente original de la envoltura JNI Android de MP3 sigue sin estar disponible.
Se conservan sus binarios; consulta LIMITES-DE-LAS-FUENTES.md.
No se incluyen claves privadas, contrasenas, cuentas, tokens ni medios personales.
Comparte el ZIP descargado; la pagina de descarga sigue siendo privada.

## Integridad y validacion
SHA256SUMS.txt permite comprobar los archivos del paquete. El preparador Python
se comprueba con pruebas de descarga, integridad y rechazo de archivos corruptos.
Se verifican las URL oficiales y hashes. El script PowerShell no se ha ejecutado
en un Windows real en este entorno; las pruebas de dispositivos siguen documentadas.
