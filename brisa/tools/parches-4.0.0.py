#!/usr/bin/env python3
"""Enganches de Brisa 4.0.0 en el código smali recuperado de la APK.

android/decoded ya incluye estos cambios aplicados. Este script documenta cada enganche,
comprueba que sigue presente y permite reaplicarlo sobre una copia 3.0.2 sin modificar.
Es idempotente: cada parche se aplica una sola vez y falla si no encuentra el texto exacto.

Uso:  python3 tools/parches-4.0.0.py            aplica lo que falte
      python3 tools/parches-4.0.0.py --comprobar  solo verifica; sale con error si falta algo
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1] / 'android' / 'decoded'
LOCAL = 'smali/com/brisa/local/'
URI = '(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;'

# (archivo, texto original, texto nuevo, veces que debe aparecer, motivo)
PATCHES = [
    # --- Reproducir desde Drive sin copia local -------------------------------------------------
    (LOCAL + 'PlaybackService.smali',
     'invoke-static {p0, v0}, Lcom/brisa/local/v;->u' + URI,
     'invoke-static {p0, v0}, Lcom/brisa/local/DriveStream;->audio' + URI, 1,
     'Al cargar una canción se usa el archivo local y, si no existe, la reproducción desde Drive.'),
    (LOCAL + 'PlaybackService.smali',
     'invoke-static {p0, v2}, Lcom/brisa/local/v;->u' + URI,
     'invoke-static {p0, v2}, Lcom/brisa/local/DriveStream;->queued' + URI, 1,
     'La cola nativa admite canciones que solo están en Drive.'),
    (LOCAL + 'VideoPlaybackService.smali',
     'invoke-static {v0, v3}, Lcom/brisa/local/d0;->s' + URI,
     'invoke-static {v0, v3}, Lcom/brisa/local/DriveStream;->video' + URI, 1,
     'El servicio de vídeo reproduce desde Drive cuando no hay copia local.'),
    (LOCAL + 'VideoActivity.smali',
     'invoke-static {p0, p1}, Lcom/brisa/local/d0;->s' + URI,
     'invoke-static {p0, p1}, Lcom/brisa/local/DriveStream;->video' + URI, 1,
     'La pantalla de vídeo acepta un vídeo que solo está en Drive.'),
    # --- Inicio de sesión en Drive con token --------------------------------------------------------
    (LOCAL + 'u.smali',
     '.method public static c(Landroid/content/Context;Ljava/lang/String;)LC2/b;\n    .locals 7\n\n    new-instance v0, LC2/b;\n',
     '.method public static c(Landroid/content/Context;Ljava/lang/String;)LC2/b;\n    .locals 7\n\n    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->ensure(Landroid/content/Context;)V\n\n    new-instance v0, LC2/b;\n', 1,
     'Toda petición a Drive usa primero la sesión por token, si existe, y la renueva cuando caduca.'),
    # --- Ahorro de batería ----------------------------------------------------------------------
    (LOCAL + 'PlaybackService.smali',
     '.method public final k()V\n    .locals 3\n\n    const/4 v0, 0x0\n',
     '.method public final k()V\n    .locals 3\n\n    invoke-static {p0}, Lcom/brisa/local/Idle;->paused(Landroid/app/Service;)V\n\n    const/4 v0, 0x0\n', 1,
     'Toda pausa programa la liberación del servicio tras diez minutos fuera de pantalla.'),
    (LOCAL + 'PlaybackService.smali', 'const-wide/16 v2, 0x1f4', 'const-wide/16 v2, 0x3e8', 1,
     'El aviso de posición a la interfaz pasa de dos veces por segundo a una.'),
    (LOCAL + 'MainActivity.smali', 'const-wide/16 v3, 0x1f4', 'const-wide/16 v3, 0x3e8', 1,
     'Igual, al volver a primer plano.'),
    (LOCAL + 'Q.smali', 'const-wide/16 v1, 0x1f4', 'const-wide/16 v1, 0x3e8', 1,
     'Igual, en el ciclo que solo corre con la app visible y sonando.'),
    # --- Música en calidad original -------------------------------------------------------------
    (LOCAL + 'o.smali',
     'invoke-static {v15, v0, v1, v3, v6}, Lcom/brisa/local/Mp3Encoder;->a(Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/brisa/local/p;)V',
     'invoke-static {v15, v0, v1, v3, v6}, Lcom/brisa/local/AudioExport;->a(Ljava/io/File;Ljava/io/File;ILjava/lang/String;Ljava/util/function/BooleanSupplier;)V', 1,
     'La música se guarda con el audio original sin recomprimir; MP3 queda como opción.'),
    (LOCAL + 'o.smali', 'const-string v0, "Convirtiendo a MP3\\u2026"', 'const-string v0, "Preparando el audio\\u2026"', 1,
     'El aviso ya no afirma una conversión que puede no ocurrir.'),
    (LOCAL + 'DownloadService.smali', 'const-string p1, "Convirtiendo a MP3\\u2026"', 'const-string p1, "Preparando el audio\\u2026"', 1,
     'Igual, en la notificación.'),
    (LOCAL + 'DownloadService.smali',
     '    if-eqz v3, :cond_0\n\n    const-string v3, "mp3"\n',
     '    if-eqz v3, :cond_0\n\n    invoke-static {p1}, Lcom/brisa/local/AudioExport;->ext(Ljava/io/File;)Ljava/lang/String;\n\n    move-result-object v3\n', 1,
     'La extensión del archivo de música es la de su contenido real (m4a o mp3).'),
    (LOCAL + 'DownloadService.smali',
     '    const-string p2, "audio/mpeg"\n',
     '    invoke-static {v4}, Lcom/brisa/local/AudioExport;->mime(Ljava/lang/String;)Ljava/lang/String;\n\n    move-result-object p2\n', 1,
     'El tipo del documento creado en la carpeta coincide con el archivo.'),
    (LOCAL + 'u.smali',
     '    const-string v5, "audio/mpeg"\n',
     '    const-string v5, "name"\n\n    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;\n\n    move-result-object v5\n\n'
     '    invoke-static {v5}, Lcom/brisa/local/AudioExport;->mime(Ljava/lang/String;)Ljava/lang/String;\n\n    move-result-object v5\n', 1,
     'Drive recibe el tipo correcto del archivo de música subido.'),
]


def main():
    check_only = '--comprobar' in sys.argv
    missing = applied = present = 0
    for name, old, new, count, why in PATCHES:
        path = ROOT / name
        text = path.read_text(encoding='utf-8')
        if text.count(new) == count and (old not in text or old in new):
            present += 1
            continue
        if text.count(old) != count:
            print(f'ERROR {name}: se esperaban {count} coincidencias y hay {text.count(old)}.\n      {why}')
            missing += 1
            continue
        if check_only:
            print(f'FALTA {name}: {why}')
            missing += 1
            continue
        path.write_text(text.replace(old, new), encoding='utf-8')
        applied += 1
        print(f'aplicado {name}: {why}')
    print(f'{present} enganches ya presentes, {applied} aplicados, {missing} con problemas')
    sys.exit(1 if missing else 0)


if __name__ == '__main__':
    main()
