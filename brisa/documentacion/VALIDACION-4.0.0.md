# Validación de Brisa 4.0.0

Esta lista separa lo que se comprobó de lo que no. No dispuse de un Galaxy A30, de un F8 Pro, de un
equipo con Windows 11 ni de tu cuenta de Drive, y en el entorno de trabajo no hay emulador de Android.

## Comprobado

**Compilación y firma**
- Las dos APK se construyen, se alinean a 4 bytes y las bibliotecas nativas a 16 KiB, y se firman
  con los esquemas v2 y v3. `apksigner verify` las acepta. API mínima 26, objetivo 37, versión 40000.
- La app de Windows compila en modo release para x86_64 con Rust y LLVM MinGW.
- Los 14 enganches aplicados al código recuperado de la APK se verifican en cada compilación.

**Verificación estática del código de Android**
- Convertí la APK original y la nueva a clases Java y las pasé por el verificador de tipos de la
  JVM. La nueva tiene exactamente los mismos 9 avisos que la original, todos en métodos que no
  toqué y debidos a la conversión. Las clases que modifiqué (`PlaybackService`, `DownloadService`,
  la tarea de descarga, `VideoActivity`) y las 13 clases nuevas pasan la verificación completa.
  Tres clases (`MainActivity`, `VideoPlaybackService` y la de Drive) ya fallaban antes en un
  método ajeno, lo que impide al verificador llegar al resto; ahí mis cambios son una constante,
  una llamada con la misma firma y una lectura de texto.

**Pruebas automáticas, todas en verde**
- 306 comprobaciones en JVM de la lógica nativa: sonido (223), gestos de vídeo (13), política de
  imagen en imagen (15), copia sin conexión (7), puente de streaming (27) y decisiones nuevas (21).
  El puente se prueba con peticiones HTTP reales contra 127.0.0.1: archivo completo, rangos,
  secreto incorrecto, métodos no permitidos, cortes del cliente y errores del origen.
- 13 pruebas Rust: salida del descargador, incluida la copia de audio sin recomprimir (9) y rutas (4).
- 11 pruebas de JavaScript: enlaces, sonido, estantes del inicio, formato de la música y qué copias
  se pueden liberar en «Solo Drive».
- 32 pruebas de interfaz en Chromium con los puentes nativos simulados: 18 de Windows y 14 de
  Android. Cubren inicio y estantes, vistas, menú por canción, niveles de cristal por equipo, pausa
  de animaciones en segundo plano, reproducción desde Drive, bloqueo sin Wi-Fi, recarga tras liberar
  el servicio, «Solo Drive», descargas, sonido y pantalla completa.
- Capturas a 360×780 (A30), 412×915 (F8 Pro) y 1280×820 (PC) sin errores de JavaScript ni
  desplazamiento horizontal.

## No comprobado: hay que verlo en tus equipos

Lo que sigue está razonado y revisado, pero **no se ha ejecutado en un dispositivo real**:

1. **Reproducción desde Drive en Android.** El puente está probado en JVM, pero no con el
   reproductor de música ni con el de vídeo de Android leyendo de él, ni contra los servidores de
   Drive. Es el cambio con más riesgo.
2. **Inicio de sesión de Drive** con la firma nueva. Depende de que crees el cliente OAuth.
3. **Liberación del servicio en pausa** y la recarga posterior, sobre todo con HyperOS.
4. **Música con audio original en Android**: uso el mismo unidor sin recompresión que ya empleaba
   el vídeo, pero no he visto el M4A resultante reproducirse en el teléfono. Si falla, Brisa recurre
   al MP3.
5. **Descargas de YouTube.** No modifiqué el extractor. YouTube cambia a menudo y no pude probar
   una descarga real.
6. **Windows**: no he ejecutado el programa. La compilación es correcta y la interfaz está probada
   en Chromium, que es el motor de WebView2, pero el botón de imagen en imagen, la copia de audio
   con el FFmpeg incluido y el lanzador de PowerShell no se han probado en Windows.
7. **Rendimiento y batería reales** en el A30 y el F8 Pro. No hay mediciones.

## Qué probar primero

1. Instalar la APK junto a la 3.0.2, añadir unas canciones y reproducir con la pantalla apagada.
2. Pausar, salir de la app, esperar más de diez minutos, volver y pulsar reproducir: debe continuar
   en el mismo punto.
3. Descargar un vídeo corto como «Ambos» y comprobar que el M4A suena igual que el vídeo.
4. Configurar Drive, descargar con destino «Solo Google Drive» y reproducir con Wi-Fi.
5. En el PC, abrir con `ABRIR-BRISA.cmd` y repetir la descarga.

Si algo falla, la 3.0.2 sigue instalada y funcionando. Dime qué paso falló y qué mensaje aparece.
