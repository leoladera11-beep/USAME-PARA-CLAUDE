.class public final Lcom/brisa/local/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final f:Lcom/brisa/local/K;

.field public final g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/K;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/brisa/local/H;->e:I

    iput-object p1, p0, Lcom/brisa/local/H;->f:Lcom/brisa/local/K;

    iput-object p2, p0, Lcom/brisa/local/H;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/brisa/local/H;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/brisa/local/H;->f:Lcom/brisa/local/K;

    iget-object v1, p0, Lcom/brisa/local/H;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    const-string v2, "Brisa-"

    invoke-static {v1}, Lcom/brisa/local/MainActivity;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v5, "youtu.be"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".youtu.be"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "youtube.com"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".youtube.com"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "youtube-nocookie.com"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".youtube-nocookie.com"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    const-string v3, "(?i).*\\.(mp4|m4v|webm|mov|mkv|3gp)$"

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-ge v3, v5, :cond_2

    invoke-virtual {v0, v1}, Lcom/brisa/local/MainActivity;->h(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_2
    const-string v3, "[^a-zA-Z0-9._-]"

    const-string v5, "_"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x78

    if-le v4, v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    :try_start_0
    const-string v4, "download"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/DownloadManager;

    new-instance v5, Landroid/app/DownloadManager$Request;

    invoke-direct {v5, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    const-string v6, "Video original \u00b7 Brisa"

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v5

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    const-string v2, "Descarga iniciada. Al terminar, a\u00f1ade el archivo desde Descargas."

    invoke-virtual {v0, v2}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "No se pudo iniciar la descarga. Abriendo el enlace."

    invoke-virtual {v0, v2}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/brisa/local/MainActivity;->h(Landroid/net/Uri;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "Usa un enlace directo a un archivo de video."

    invoke-virtual {v0, v1}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/brisa/local/H;->f:Lcom/brisa/local/K;

    iget-object v1, p0, Lcom/brisa/local/H;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-static {v1}, Lcom/brisa/local/MainActivity;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/brisa/local/MainActivity;->h(Landroid/net/Uri;)V

    :cond_5
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/brisa/local/H;->f:Lcom/brisa/local/K;

    iget-object v1, p0, Lcom/brisa/local/H;->g:Ljava/lang/String;

    iget-object v2, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-static {v2, v1}, Lcom/brisa/local/d0;->s(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v0, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    const-string v1, "Vuelve a seleccionar el video original."

    invoke-virtual {v0, v1}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    const-string v3, "pause"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v2, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v0, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    const-class v4, Lcom/brisa/local/VideoActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "videoId"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
