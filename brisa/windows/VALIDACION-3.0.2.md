# Brisa Local 3.0.2

Comprobado en este entorno:

- Dos APK API mínima 26, target 37, versión 30002, certificado original y alineación ZIP 16 KiB.
- Compilación release Windows 11 x64 mediante Rust/LLVM MinGW, versión 3.0.2 en EXE y frontend.
- 7 pruebas JVM de la copia usada por Android: mismos bytes, tamaño desconocido, truncamiento,
  exceso de tamaño, archivo vacío, cancelación y error de lectura. El archivo anterior se
  conserva en caso de fallo y el parcial se elimina.
- Se mantienen las 223 aserciones de sonido y los 13 casos de gestos y 15 de política PiP.
- 7 pruebas Rust de exportación por pareja y 4 de reconocimiento de rutas Windows/Drive.
- 5 pruebas JavaScript; 12 pruebas Windows existentes y 2 nuevas de configuración/restauración
  de Drive; 9 pruebas de interfaz web Android, incluidas importación remota no lista y Ambos.
- Las pruebas de interfaz usan Chromium con puentes nativos simulados. La copia Java se ejecutó
  en JVM Linux y las pruebas Rust puras en Linux; no verifican los proveedores Android reales.
- Verificación de integridad ZIP y de los motores Windows existentes por SHA-256.

Revisión de comportamiento:

- Android copia los archivos de proveedores de nube desde un AssetFileDescriptor al archivo
  privado regular. Se registra el archivo después del cierre, sync y cambio atómico de nombre.
- El proveedor OfflineProvider entrega una fuente local que permite acceso y búsqueda normal.
- Un enlace SAF remoto antiguo ya no se etiqueta sin conexión por tener permiso de lectura.
- El servicio de importación es dataSync y funciona solo durante la selección explícita del
  usuario; no añade permisos nuevos. Se notifica el progreso y se admite cancelar.
- Los archivos privados vacíos o truncados no se consideran listos. Los códecs incompatibles
  se distinguen de los fallos de acceso en el mensaje del reproductor.
- PC utiliza la unidad del cliente oficial Google Drive para ordenadores. No incluye OAuth
  directo ni sincronización propia. Requiere configurar el cliente en modo streaming; Google
  administra la caché y la sincronización, que Brisa no puede confirmar por la mera escritura.
- La biblioteca conserva rutas a la unidad de Drive; no duplica sus archivos en IndexedDB.

Pendiente: instalar/ejecutar en F8 Pro, A30 y Windows 11; importar/reproducir con Drive real,
comprobar pausa/búsqueda de vídeo, pérdida de red, restricciones HyperOS y cancelación del
proveedor. Tampoco se ha medido batería ni almacenamiento de la caché del cliente Google.
