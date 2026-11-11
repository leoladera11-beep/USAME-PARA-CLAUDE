# Página de descargas

HTML/CSS/JavaScript estáticos. No contiene identidad del sitio privado ni credenciales.
Los binarios y los manifiestos se generan con tools/prepare-downloads.py.
Ejemplo desde las fuentes, usando los archivos del paquete para compartir:

python3 tools/prepare-downloads.py --site web-descargas --windows /ruta/Brisa-Local-3.0.2-Windows-x64.zip --f8 /ruta/Brisa-Local-3.0.2-F8-Pro.apk --a30 /ruta/Brisa-Local-3.0.2-A30.apk --share /ruta/Brisa-Local-3.0.2-para-compartir.zip

Copia LEEME-3.0.2.txt a web-descargas/LEEME.txt. Publica esa carpeta en un alojamiento
estático HTTPS. La página une las partes y verifica SHA-256 antes de guardar el ZIP.
El archivo original del paquete para compartir puede usarse como --share después
de extraerlo; no se incluye dentro de sí mismo ni en el código de la página.
