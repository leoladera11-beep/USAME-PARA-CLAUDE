.class public final Lcom/brisa/local/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;I)V
    .locals 0

    iput p4, p0, Lcom/brisa/local/c;->e:I

    iput-object p1, p0, Lcom/brisa/local/c;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/brisa/local/c;->g:Ljava/lang/Object;

    iput-object p3, p0, Lcom/brisa/local/c;->h:Ljava/lang/Comparable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/brisa/local/c;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/brisa/local/c;->f:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/K;

    iget-object v1, p0, Lcom/brisa/local/c;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/brisa/local/c;->h:Ljava/lang/Comparable;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    iput-object v1, v0, Lcom/brisa/local/MainActivity;->d:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TITLE"

    const-string v4, "[\\\\/<>:\"|?*]"

    const-string v5, "_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xc

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/brisa/local/MainActivity;->d:Ljava/lang/String;

    const-string v1, "No se pudo abrir el selector para guardar."

    invoke-virtual {v0, v1}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/brisa/local/c;->f:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/MainActivity;

    iget-object v1, p0, Lcom/brisa/local/c;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/brisa/local/c;->h:Ljava/lang/Comparable;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/brisa/local/PlaybackService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "play"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/brisa/local/c;->f:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/MainActivity;

    iget-object v1, p0, Lcom/brisa/local/c;->g:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/brisa/local/c;->h:Ljava/lang/Comparable;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    :try_start_2
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "Letra guardada."

    invoke-virtual {v0, v2}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    const-string v1, "No se pudo guardar la letra. Elige otra ubicaci\u00f3n."

    invoke-virtual {v0, v1}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/brisa/local/c;->f:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/e;

    iget-object v1, p0, Lcom/brisa/local/c;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/brisa/local/c;->h:Ljava/lang/Comparable;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_7
    const-string v6, ""

    invoke-virtual {v0, v6, v5, v5}, Lcom/brisa/local/e;->c(Ljava/lang/String;ZZ)V

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iget-boolean v7, v0, Lcom/brisa/local/e;->g:Z

    if-eqz v7, :cond_3

    goto :goto_7

    :cond_3
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_5

    :cond_4
    iget v7, v0, Lcom/brisa/local/e;->j:I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    const/16 v8, 0x1388

    if-lt v7, v8, :cond_5

    move v1, v4

    goto :goto_8

    :cond_5
    :try_start_8
    iget-object v7, v0, Lcom/brisa/local/e;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    invoke-virtual {v0, v6}, Lcom/brisa/local/e;->a(Landroid/net/Uri;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    :try_start_9
    iget v6, v0, Lcom/brisa/local/e;->j:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/brisa/local/e;->j:I

    iget v6, v0, Lcom/brisa/local/e;->k:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/brisa/local/e;->k:I

    goto :goto_5

    :goto_6
    throw v1

    :cond_6
    invoke-static {v2}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/brisa/local/b;

    invoke-direct {v6, v0, v2}, Lcom/brisa/local/b;-><init>(Lcom/brisa/local/e;Landroid/net/Uri;)V

    new-instance v7, Lcom/brisa/local/b;

    invoke-direct {v7, v0, v2}, Lcom/brisa/local/b;-><init>(Lcom/brisa/local/e;Landroid/net/Uri;)V

    invoke-static {v1, v6, v7}, Lj1/a;->i(Ljava/lang/String;Lcom/brisa/local/b;Lcom/brisa/local/b;)Lcom/brisa/local/L;

    move-result-object v1

    iget v2, v0, Lcom/brisa/local/e;->k:I

    iget v6, v1, Lcom/brisa/local/L;->b:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/brisa/local/e;->k:I

    iget-boolean v1, v1, Lcom/brisa/local/L;->c:Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    const-string v3, "No se pudo terminar de leer la selecci\u00f3n. Puedes volver a elegirla."

    :cond_7
    :goto_7
    move v1, v5

    goto :goto_8

    :catch_5
    iput-boolean v4, v0, Lcom/brisa/local/e;->g:Z

    goto :goto_7

    :goto_8
    const/4 v2, 0x0

    :try_start_a
    iget-boolean v6, v0, Lcom/brisa/local/e;->g:Z

    if-nez v6, :cond_8

    invoke-virtual {v0, v3, v4, v1}, Lcom/brisa/local/e;->c(Ljava/lang/String;ZZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v1

    goto :goto_a

    :cond_8
    :goto_9
    iput-boolean v5, v0, Lcom/brisa/local/e;->h:Z

    monitor-enter v0

    :try_start_b
    iput-object v2, v0, Lcom/brisa/local/e;->c:Lorg/json/JSONObject;

    iput-object v2, v0, Lcom/brisa/local/e;->a:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v0

    goto :goto_b

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    :goto_a
    iput-boolean v5, v0, Lcom/brisa/local/e;->h:Z

    monitor-enter v0

    :try_start_c
    iput-object v2, v0, Lcom/brisa/local/e;->c:Lorg/json/JSONObject;

    iput-object v2, v0, Lcom/brisa/local/e;->a:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v1

    :catchall_4
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v1

    :catch_6
    iput-boolean v5, v0, Lcom/brisa/local/e;->h:Z

    monitor-enter v0

    :try_start_e
    iput-object v2, v0, Lcom/brisa/local/e;->c:Lorg/json/JSONObject;

    iput-object v2, v0, Lcom/brisa/local/e;->a:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v0

    :goto_b
    return-void

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
