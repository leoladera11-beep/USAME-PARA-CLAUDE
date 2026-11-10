# Instalar Brisa 4.0.0

## Android (Galaxy A30 y F8 Pro)

1. Copia al teléfono la APK de tu modelo: `Brisa-4.0.0-A30.apk` o `Brisa-4.0.0-F8-Pro.apk`. Las dos
   contienen la misma app; solo cambia el perfil visual con el que arranca.
2. Ábrela y permite instalar desde esa fuente si Android lo pide.
3. Aparece como **Brisa**, al lado de tu «Brisa Local» 3.0.2. No se pisan: puedes conservar la
   antigua hasta comprobar que la nueva te convence y luego desinstalarla.
4. Pulsa + para añadir tu música. La biblioteca de la versión anterior no se traslada sola.
5. Para Drive, sigue `CONFIGURAR_GOOGLE_DRIVE.md` una vez.

Para que el sistema no corte la música con la pantalla apagada:

- **F8 Pro (HyperOS)**: Ajustes → Apps → Brisa → Ahorro de batería → Sin restricciones, y activa
  «Inicio automático».
- **Galaxy A30 (One UI)**: Ajustes → Aplicaciones → Brisa → Batería → Sin restricciones.

Esto no gasta más: solo evita que el sistema cierre el servicio mientras suena. En pausa, Brisa lo
libera sola a los diez minutos.

## Windows 11

1. Extrae **todo** `Brisa-4.0.0-Windows-x64.zip` en una carpeta.
2. Abre `ABRIR-BRISA.cmd`. La primera vez descarga el motor de descargas (yt-dlp, unos 24 MB) desde
   su publicación oficial y comprueba su SHA-256. Después puedes abrir `Brisa Local.exe` directamente.
3. Conserva junto al ejecutable las DLL y la carpeta `resources`.
4. Si tenías la 3.0.2, la biblioteca del PC se conserva: usa la misma carpeta de datos.

Requiere WebView2, que Windows 11 ya incluye.

## Actualizaciones futuras

Guarda la carpeta `clave/`. Una APK nueva firmada con esa misma clave se instala encima de la 4.0.0
sin perder nada. Sin la clave habría que desinstalar antes.
