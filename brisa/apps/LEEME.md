# Apps de Brisa 4.1.0

| Archivo | Para |
| --- | --- |
| `Brisa-4.1.0-A30.apk` | Samsung Galaxy A30 (arranca con el perfil visual ligero) |
| `Brisa-4.1.0-F8-Pro.apk` | F8 Pro (arranca con cristal completo) |
| `Brisa-4.1.0-Windows-x64.zip` | Windows 11 de 64 bits. Extrae todo y abre `Brisa Local.exe` |

Instrucciones: [../documentacion/INSTALAR.md](../documentacion/INSTALAR.md) y consejos en [../documentacion/GUIA-DE-USO.md](../documentacion/GUIA-DE-USO.md). Para usar Drive en el
teléfono: [../documentacion/CONFIGURAR_GOOGLE_DRIVE.md](../documentacion/CONFIGURAR_GOOGLE_DRIVE.md).

Para descargar un archivo desde GitHub, ábrelo y pulsa «Download raw file».

Las dos APK contienen la misma app y están firmadas con la clave del propietario (huella SHA-1
`7F:41:41:DE:F5:C6:A5:C7:98:28:9A:57:F4:55:05:53:DA:EC:C1:65`). Esa clave no está en el repositorio.
El paquete de Windows incluye el motor de descargas yt-dlp 2026.10.26, FFmpeg 8.1 y QuickJS-ng,
cada uno verificado por SHA-256 al usarlo.

`SHA256SUMS.txt` permite comprobar la integridad: `sha256sum -c SHA256SUMS.txt`.

Estado: compiladas y con todas las pruebas automáticas en verde, pero sin ejecutar todavía en un
teléfono ni en Windows. Detalle en [../documentacion/VALIDACION-4.1.0.md](../documentacion/VALIDACION-4.1.0.md).
