#!/usr/bin/env python3
"""Enganches de las descargas rápidas y de los nombres de la música. También comprueba los parches de la versión anterior."""
from pathlib import Path
import runpy

LOCAL = 'smali/com/brisa/local/'
PATCHES = [
    # --- Descargas con rangos, reanudación y caché de consulta -------------------------------------
    (LOCAL + 'o.smali',
     """    :goto_4
    invoke-virtual {v7}, LN/Y;->b()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v6, Lcom/brisa/local/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v9, v14}, Lcom/brisa/local/DownloadService;->h(Ljava/lang/String;Ljava/io/File;)V

    :cond_4
    iget-object v9, v7, LN/Y;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, LN/Y;->b()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v6, Lcom/brisa/local/k;->c:Ljava/lang/String;

    if-eqz v9, :cond_8

    :cond_5
    iget-boolean v9, v5, Lcom/brisa/local/l;->h:Z

    if-eqz v9, :cond_7

    invoke-virtual {v7}, LN/Y;->b()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v2, v1, v14}, Lcom/brisa/local/DownloadService;->h(Ljava/lang/String;Ljava/io/File;)V

    :cond_6
    move-object v15, v14

    goto :goto_5

    :cond_7
    invoke-virtual {v2, v1, v15}, Lcom/brisa/local/DownloadService;->h(Ljava/lang/String;Ljava/io/File;)V

    :cond_8
    :goto_5
""",
     '    :goto_4\n    invoke-static {v2, v5, v6, v7, v14}, Lcom/brisa/local/AndroidDownloads;->fetch(Lcom/brisa/local/DownloadService;Lcom/brisa/local/l;Lcom/brisa/local/k;LN/Y;Ljava/io/File;)Ljava/io/File;\n\n    move-result-object v15\n', 1,
     'La transferencia prepara las pistas juntas y conserva el servicio de exportación existente.'),
    ('smali/Z/d.smali',
     '    invoke-static {v2}, Lcom/brisa/local/m;->b(Ljava/lang/String;)Lcom/brisa/local/l;\n\n    move-result-object v2\n\n    invoke-virtual {v2}, Lcom/brisa/local/l;->a()Lorg/json/JSONObject;\n',
     '    invoke-static {v2}, Lcom/brisa/local/AndroidDownloads;->inspect(Ljava/lang/String;)Lorg/json/JSONObject;\n', 1,
     'Se reutiliza una consulta vigente y se informa si hay audio independiente.'),
    (LOCAL + 'h.smali',
     '    iput-boolean v2, v0, Lcom/brisa/local/DownloadService;->b:Z\n\n    iget-object v2, v0, Lcom/brisa/local/DownloadService;->c:La2/h;',
     '    iput-boolean v2, v0, Lcom/brisa/local/DownloadService;->b:Z\n\n    invoke-static {v0}, Lcom/brisa/local/AndroidDownloads;->cancel(Lcom/brisa/local/DownloadService;)V\n\n    iget-object v2, v0, Lcom/brisa/local/DownloadService;->c:La2/h;', 1,
     'La cancelación cierra las peticiones activas de todas las pistas.'),
    (LOCAL + 'DownloadService.smali',
     '    iput-boolean v0, p0, Lcom/brisa/local/DownloadService;->b:Z\n\n    iget-object v0, p0, Lcom/brisa/local/DownloadService;->c:La2/h;',
     '    iput-boolean v0, p0, Lcom/brisa/local/DownloadService;->b:Z\n\n    invoke-static {p0}, Lcom/brisa/local/AndroidDownloads;->cancel(Lcom/brisa/local/DownloadService;)V\n\n    iget-object v0, p0, Lcom/brisa/local/DownloadService;->c:La2/h;', 1,
     'La cancelación cierra las peticiones activas de todas las pistas.'),
    (LOCAL + 'DownloadService.smali',
     '    iput-boolean p3, p1, Lcom/brisa/local/DownloadService;->b:Z\n\n    iget-object p3, p1, Lcom/brisa/local/DownloadService;->c:La2/h;',
     '    iput-boolean p3, p1, Lcom/brisa/local/DownloadService;->b:Z\n\n    invoke-static {p1}, Lcom/brisa/local/AndroidDownloads;->cancel(Lcom/brisa/local/DownloadService;)V\n\n    iget-object p3, p1, Lcom/brisa/local/DownloadService;->c:La2/h;', 1,
     'La cancelación cierra las peticiones activas de todas las pistas.'),
    # --- Nombre y artista de la música ---------------------------------------------------------------
    (LOCAL + 'r.smali',
     'invoke-static {v2, v4}, Lcom/brisa/local/a;->c(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;',
     'invoke-static {v2, v4}, Lcom/brisa/local/TrackNames;->entry(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;', 1,
     'La música que solo está en Drive se muestra sin extensión (también M4A) y con el título y artista guardados al descargar.'),
    (LOCAL + 'DownloadService.smali',
     'invoke-static {p0, v5}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V',
     'invoke-static {p0, v5}, Lcom/brisa/local/TrackNames;->save(Landroid/content/Context;Lorg/json/JSONObject;)V', 2,
     'Al registrar una descarga se guardan título y artista en el registro de Brisa; el archivo no se modifica.'),
    (LOCAL + 'm.smali',
     '    iput-object v1, v2, Lcom/brisa/local/l;->d:Ljava/lang/String;\n\n    iget-wide v3, v0, LG2/h;->l:J\n',
     '    iput-object v1, v2, Lcom/brisa/local/l;->d:Ljava/lang/String;\n\n    invoke-static {v1, v10}, Lcom/brisa/local/TrackNames;->channel(Ljava/lang/String;Ljava/lang/Object;)V\n\n    iget-wide v3, v0, LG2/h;->l:J\n', 1,
     'Se recuerda el canal del vídeo consultado para usarlo como artista cuando el título no lo trae.'),
]

if __name__ == '__main__':
    base = runpy.run_path(str(Path(__file__).with_name('parches-4.0.0.py')))
    base['PATCHES'].extend(PATCHES)
    base['main']()
