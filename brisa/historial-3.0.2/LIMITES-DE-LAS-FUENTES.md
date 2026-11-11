# Alcance de las fuentes disponibles

Se incluye todo el código disponible usado en las modificaciones 3.0.2 y los
recursos/binarios para reconstruir las APK. No se recibió todo el código original.

- Android: auxiliares Java en android/src, interfaz en android/decoded/assets,
  código antiguo recuperado en smali dentro de android/decoded. Este es el proyecto
  de reconstrucción actual; no es un proyecto Gradle Java limpio.
- libbrisa_mp3.so (ARM64/ARMv7) se conserva de la APK recibida. No se recibió la
  fuente de su envoltura JNI. Se incluye el binario y las firmas Java; la fuente
  LAME para Windows NO sustituye esa envoltura. No se puede recompilar esa
  biblioteca desde C/C++ con lo recibido.
- Windows: código Rust/Tauri y web actual, dependencias bloqueadas y motores
  utilizados; fuentes y configuración de FFmpeg/LAME incluidas.
- vendor/: módulos NewPipe/nanojson que estaban en el código suministrado y licencias.
- referencia-original-2.6.0/: Android antiguo recibido, solo como referencia.
  No contiene las correcciones actuales y compilarlo no reproduce 3.0.2.

No se incluyen claves, contraseñas, tokens, cuentas de Drive, toolchains completos,
SDK, compiladores ni cachés. DEPENDENCIAS.md indica dónde obtener las herramientas.
No se afirma una reconstrucción idéntica bit a bit ni disponer de fuentes originales
que no se recibieron. VALIDACION-3.0.2.md distingue las pruebas de lo pendiente en hardware.
