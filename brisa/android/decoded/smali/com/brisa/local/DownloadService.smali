.class public final Lcom/brisa/local/DownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile l:Lcom/brisa/local/DownloadService;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public volatile b:Z

.field public volatile c:La2/h;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:J

.field public g:J

.field public volatile h:Z

.field public i:Landroid/net/Uri;

.field public j:Ljava/lang/String;

.field public k:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/brisa/local/DownloadService;->a:Ljava/util/concurrent/ExecutorService;

    const-string v0, "Descargando v\u00eddeo"

    iput-object v0, p0, Lcom/brisa/local/DownloadService;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/brisa/local/DownloadService;->j:Ljava/lang/String;

    return-void
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Lcom/brisa/local/DownloadService;->l:Lcom/brisa/local/DownloadService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/brisa/local/DownloadService;->l:Lcom/brisa/local/DownloadService;

    iget-boolean v0, v0, Lcom/brisa/local/DownloadService;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/File;)V
    .locals 7

    sget-object v0, Lcom/brisa/local/W;->a:LW1/q;

    new-instance v1, LC2/b;

    invoke-direct {v1}, LC2/b;-><init>()V

    invoke-virtual {v1, p1}, LC2/b;->s(Ljava/lang/String;)V

    invoke-virtual {v1}, LC2/b;->b()LM0/r0;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, La2/h;

    invoke-direct {v1, v0, p1}, La2/h;-><init>(LW1/q;LM0/r0;)V

    iput-object v1, p0, Lcom/brisa/local/DownloadService;->c:La2/h;

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/DownloadService;->c:La2/h;

    invoke-virtual {v0}, La2/h;->d()LW1/v;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, LW1/v;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, LW1/v;->k:LW1/x;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LW1/x;->c()J

    move-result-wide v1

    const-wide/32 v3, 0x400000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-object v1, v0, LW1/v;->k:LW1/x;

    invoke-virtual {v1}, LW1/x;->q()Lj2/i;

    move-result-object v1

    invoke-interface {v1}, Lj2/i;->p()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const p2, 0x8000

    :try_start_3
    new-array p2, p2, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/brisa/local/DownloadService;->b()V

    add-int/2addr v4, v5

    const/high16 v6, 0x400000

    if-gt v4, v6, :cond_0

    invoke-virtual {v2, p2, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string v3, "Subt\u00edtulos demasiado grandes."

    invoke-direct {p2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v0}, LW1/v;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iput-object p1, p0, Lcom/brisa/local/DownloadService;->c:La2/h;

    return-void

    :catchall_1
    move-exception p2

    goto :goto_7

    :catchall_2
    move-exception p2

    goto :goto_5

    :catchall_3
    move-exception p2

    goto :goto_3

    :goto_1
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v2

    :try_start_8
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_3
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p2

    :cond_2
    new-instance p2, Ljava/io/IOException;

    const-string v1, "Subt\u00edtulos no disponibles."

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_5
    :try_start_b
    invoke-virtual {v0}, LW1/v;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v0

    :try_start_c
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_7
    iput-object p1, p0, Lcom/brisa/local/DownloadService;->c:La2/h;

    throw p2
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/brisa/local/DownloadService;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Descarga cancelada."

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/brisa/local/DownloadService;->k:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brisa/local/DownloadService;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/DownloadService;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brisa/local/DownloadService;->c:La2/h;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final e(Ljava/lang/String;)Landroid/app/Notification;
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/brisa/local/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/brisa/local/DownloadService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "cancel"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v4, v3, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    const-string v5, "brisa-downloads"

    invoke-direct {v3, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x7f070069

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/brisa/local/DownloadService;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$Action$Builder;

    const/4 v3, 0x0

    const-string v5, "Cancelar"

    invoke-direct {v0, v3, v5, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-wide v2, p0, Lcom/brisa/local/DownloadService;->f:J

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-lez v0, :cond_0

    iget-wide v4, p0, Lcom/brisa/local/DownloadService;->e:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    div-long/2addr v4, v2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v2, 0x64

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v1, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    :goto_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "title"

    iget-object v2, p0, Lcom/brisa/local/DownloadService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "downloadedBytes"

    iget-wide v2, p0, Lcom/brisa/local/DownloadService;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "totalBytes"

    iget-wide v2, p0, Lcom/brisa/local/DownloadService;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object p2, p0, Lcom/brisa/local/DownloadService;->j:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "warning"

    iget-object v1, p0, Lcom/brisa/local/DownloadService;->j:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p2, "brisa-downloads"

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "state"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p2, "brisa-download"

    invoke-static {p2, v0}, Lcom/brisa/local/MainActivity;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-boolean p2, p0, Lcom/brisa/local/DownloadService;->h:Z

    if-eqz p2, :cond_8

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    const-string v0, "merging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Uniendo audio y v\u00eddeo\u2026"

    goto :goto_0

    :cond_2
    const-string v0, "converting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Preparando el audio\u2026"

    goto :goto_0

    :cond_3
    const-string v0, "uploading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "Subiendo a Drive\u2026"

    goto :goto_0

    :cond_4
    const-string v0, "preparing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "Preparando sin conexi\u00f3n\u2026"

    goto :goto_0

    :cond_5
    const-string v0, "subtitles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "Guardando subt\u00edtulos\u2026"

    goto :goto_0

    :cond_6
    const-string v0, "exporting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Guardando archivo\u2026"

    goto :goto_0

    :cond_7
    const-string p1, "Descargando\u2026"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/brisa/local/DownloadService;->e(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    const/16 v0, 0xa29

    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    return-void
.end method

.method public final g(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;LN/Y;)Lorg/json/JSONObject;
    .locals 10

    iget-object p4, p4, LN/Y;->c:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/brisa/local/DownloadService;->b()V

    const-string v0, "exporting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/brisa/local/AudioExport;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "mp4"

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/brisa/local/W;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v5, "(?i)\\.(mp4|webm|mkv|mov|3gp)$"

    const-string v6, ""

    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "id"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "name"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "kind"

    invoke-virtual {v5, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "storageMode"

    invoke-virtual {v5, v7, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "local"

    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    const-string v9, "pendingUpload"

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p0}, Lcom/brisa/local/u;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    const-string v8, "account"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "drive"

    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v7, "localUri"

    if-nez p4, :cond_7

    const-string p3, "brisa-downloads"

    const/4 p4, 0x0

    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v0, "folder"

    invoke-interface {p3, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {v4}, Lcom/brisa/local/AudioExport;->mime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    const-string p2, "video/mp4"

    :goto_2
    invoke-static {v0, p3, p2, v4}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/brisa/local/DownloadService;->i:Landroid/net/Uri;

    if-eqz p2, :cond_6

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/brisa/local/DownloadService;->i:Landroid/net/Uri;

    const-string v0, "w"

    invoke-virtual {p1, p3, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_4

    const/high16 p3, 0x10000

    :try_start_1
    new-array p3, p3, [B

    :goto_3
    invoke-virtual {p2, p3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/brisa/local/DownloadService;->b()V

    invoke-virtual {p1, p3, p4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p3

    goto :goto_4

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Lcom/brisa/local/DownloadService;->b()V

    iget-object p1, p0, Lcom/brisa/local/DownloadService;->i:Landroid/net/Uri;

    invoke-virtual {v5, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0, v5}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/brisa/local/DownloadService;->i:Landroid/net/Uri;

    return-object v5

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_4
    :try_start_3
    new-instance p3, Ljava/io/IOException;

    const-string p4, "No se puede escribir en la carpeta elegida."

    invoke-direct {p3, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-eqz p1, :cond_5

    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No se pudo crear el archivo en la carpeta elegida."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p2, Ljava/io/File;

    invoke-static {p0}, Lcom/brisa/local/a;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object p4

    invoke-static {v0, p3, v3}, LB1/e;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p4, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {p0, p2}, Lcom/brisa/local/a;->D(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v5, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "privateFile"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0, v5}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-object v5

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No se pudo conservar la copia sin conexi\u00f3n."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Ljava/lang/String;Ljava/io/File;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "La descarga fall\u00f3 (HTTP "

    invoke-virtual {v1}, Lcom/brisa/local/DownloadService;->b()V

    sget-object v2, Lcom/brisa/local/W;->a:LW1/q;

    new-instance v3, LC2/b;

    invoke-direct {v3}, LC2/b;-><init>()V

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, LC2/b;->s(Ljava/lang/String;)V

    const-string v4, "User-Agent"

    const-string v5, "Mozilla/5.0"

    invoke-virtual {v3, v4, v5}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, LC2/b;->b()LM0/r0;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, La2/h;

    invoke-direct {v4, v2, v3}, La2/h;-><init>(LW1/q;LM0/r0;)V

    iput-object v4, v1, Lcom/brisa/local/DownloadService;->c:La2/h;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v1, Lcom/brisa/local/DownloadService;->c:La2/h;

    invoke-virtual {v3}, La2/h;->d()LW1/v;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3}, LW1/v;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v3, LW1/v;->k:LW1/x;

    if-eqz v4, :cond_9

    const-string v0, "Content-Type"

    const-string v4, ""

    iget-object v5, v3, LW1/v;->j:LW1/k;

    invoke-virtual {v5, v0}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    const-string v0, "text/html"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "application/json"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v3, LW1/v;->k:LW1/x;

    invoke-virtual {v0}, LW1/x;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    mul-long/2addr v10, v4

    const-wide/32 v12, 0x1000000

    add-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Falta espacio libre para descargar y unir el v\u00eddeo."

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto/16 :goto_9

    :cond_2
    :goto_1
    iget-object v8, v3, LW1/v;->k:LW1/x;

    invoke-virtual {v8}, LW1/x;->q()Lj2/i;

    move-result-object v8

    invoke-interface {v8}, Lj2/i;->p()Ljava/io/InputStream;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v10, p2

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/high16 v10, 0x10000

    :try_start_3
    new-array v10, v10, [B

    move-wide v11, v6

    :goto_2
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-ltz v13, :cond_4

    invoke-virtual {v1}, Lcom/brisa/local/DownloadService;->b()V

    const/4 v14, 0x0

    invoke-virtual {v9, v10, v14, v13}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v14, v1, Lcom/brisa/local/DownloadService;->e:J

    move-wide/from16 v16, v6

    int-to-long v6, v13

    add-long/2addr v14, v6

    iput-wide v14, v1, Lcom/brisa/local/DownloadService;->e:J

    add-long/2addr v11, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v13, v1, Lcom/brisa/local/DownloadService;->g:J

    sub-long/2addr v6, v13

    const-wide/16 v13, 0x1f4

    cmp-long v6, v6, v13

    if-lez v6, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/brisa/local/DownloadService;->g:J

    const-string v6, "downloading"

    invoke-virtual {v1, v6, v2}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_5

    :cond_3
    :goto_3
    move-wide/from16 v6, v16

    goto :goto_2

    :cond_4
    move-wide/from16 v16, v6

    if-lez v0, :cond_6

    cmp-long v0, v11, v4

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v4, "La descarga qued\u00f3 incompleta. Vuelve a intentarlo."

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    :goto_4
    cmp-long v0, v11, v16

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v3}, LW1/v;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iput-object v2, v1, Lcom/brisa/local/DownloadService;->c:La2/h;

    return-void

    :catchall_2
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v4, v0

    goto :goto_7

    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v4, "El archivo descargado est\u00e1 vac\u00edo."

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    :try_start_8
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_7
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v4

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v4, "El enlace no devuelve un archivo de v\u00eddeo."

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v3, LW1/v;->h:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). Consulta el enlace de nuevo."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_9
    :try_start_c
    invoke-virtual {v3}, LW1/v;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    :try_start_d
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_b
    iput-object v2, v1, Lcom/brisa/local/DownloadService;->c:La2/h;

    throw v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/brisa/local/DownloadService;->l:Lcom/brisa/local/DownloadService;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "Descargas de v\u00eddeos"

    const/4 v3, 0x2

    const-string v4, "brisa-downloads"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brisa/local/DownloadService;->b:Z

    iget-object v0, p0, Lcom/brisa/local/DownloadService;->c:La2/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brisa/local/DownloadService;->c:La2/h;

    invoke-virtual {v0}, La2/h;->c()V

    :cond_0
    iget-object v0, p0, Lcom/brisa/local/DownloadService;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/brisa/local/DownloadService;->k:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brisa/local/DownloadService;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    sget-object v0, Lcom/brisa/local/DownloadService;->l:Lcom/brisa/local/DownloadService;

    if-ne v0, p0, :cond_2

    const/4 v0, 0x0

    sput-object v0, Lcom/brisa/local/DownloadService;->l:Lcom/brisa/local/DownloadService;

    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 11

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    const-string v1, "cancel"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/brisa/local/DownloadService;->l:Lcom/brisa/local/DownloadService;

    if-eqz p1, :cond_2

    iput-boolean p3, p1, Lcom/brisa/local/DownloadService;->b:Z

    iget-object p3, p1, Lcom/brisa/local/DownloadService;->c:La2/h;

    if-eqz p3, :cond_0

    iget-object p3, p1, Lcom/brisa/local/DownloadService;->c:La2/h;

    invoke-virtual {p3}, La2/h;->c()V

    :cond_0
    const-string p3, "cancelling"

    invoke-virtual {p1, p3, p2}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/brisa/local/DownloadService;->h:Z

    if-eqz v1, :cond_3

    :cond_2
    return v0

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v0

    :cond_4
    sget-object v1, Lcom/brisa/local/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "plan"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brisa/local/l;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v1, "asset"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/brisa/local/a;->m(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    :try_start_0
    new-instance v8, LN/Y;

    const-string v1, "options"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, LN/Y;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_5

    move-object v7, p2

    goto :goto_0

    :cond_5
    iget-object v1, v6, Lcom/brisa/local/l;->c:Ljava/util/LinkedHashMap;

    const-string v2, "format"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brisa/local/k;

    move-object v7, p1

    :goto_0
    const-string p1, "mp4"

    if-nez v4, :cond_8

    if-eqz v6, :cond_7

    invoke-virtual {v8}, LN/Y;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v7, :cond_7

    :cond_6
    iget-object v1, v8, LN/Y;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v6, Lcom/brisa/local/l;->e:Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v0

    :cond_8
    iput-boolean p3, p0, Lcom/brisa/local/DownloadService;->h:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/brisa/local/DownloadService;->b:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/brisa/local/DownloadService;->j:Ljava/lang/String;

    if-eqz v4, :cond_9

    const-string v1, "name"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    iget-object v1, v6, Lcom/brisa/local/l;->d:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/brisa/local/DownloadService;->d:Ljava/lang/String;

    iget-object v1, v8, LN/Y;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-nez p1, :cond_a

    :goto_2
    move-wide v9, v1

    goto :goto_3

    :cond_a
    if-nez v7, :cond_b

    goto :goto_2

    :cond_b
    iget-wide v9, v7, Lcom/brisa/local/k;->h:J

    :goto_3
    iput-wide v9, p0, Lcom/brisa/local/DownloadService;->f:J

    iput-wide v1, p0, Lcom/brisa/local/DownloadService;->e:J

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "Preparando\u2026"

    if-lt p1, v1, :cond_c

    invoke-virtual {p0, v2}, Lcom/brisa/local/DownloadService;->e(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/brisa/local/n;->i(Lcom/brisa/local/DownloadService;Landroid/app/Notification;)V

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v2}, Lcom/brisa/local/DownloadService;->e(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    const/16 v1, 0xa29

    invoke-virtual {p0, v1, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :goto_4
    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string v1, "Brisa:download"

    invoke-virtual {p1, p3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/brisa/local/DownloadService;->k:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x1499700

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-string p1, "starting"

    invoke-virtual {p0, p1, p2}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/brisa/local/DownloadService;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/brisa/local/o;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/brisa/local/o;-><init>(Lcom/brisa/local/DownloadService;Lorg/json/JSONObject;Ljava/lang/String;Lcom/brisa/local/l;Lcom/brisa/local/k;LN/Y;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v0

    :catch_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v0
.end method

.method public final onTimeout(II)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/brisa/local/DownloadService;->b:Z

    iget-object p2, p0, Lcom/brisa/local/DownloadService;->c:La2/h;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/brisa/local/DownloadService;->c:La2/h;

    invoke-virtual {p2}, La2/h;->c()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
