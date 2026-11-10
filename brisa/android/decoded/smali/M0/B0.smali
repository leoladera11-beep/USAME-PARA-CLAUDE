.class public final synthetic LM0/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LM0/I0;LM0/P0;Ljava/lang/String;Landroid/os/Bundle;LM0/z;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    iput p2, p0, LM0/B0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/B0;->f:Ljava/lang/Object;

    iput-object p3, p0, LM0/B0;->g:Ljava/lang/Object;

    iput-object p4, p0, LM0/B0;->h:Ljava/lang/Object;

    iput-object p5, p0, LM0/B0;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, LM0/B0;->e:I

    iput-object p1, p0, LM0/B0;->f:Ljava/lang/Object;

    iput-object p2, p0, LM0/B0;->g:Ljava/lang/Object;

    iput-object p3, p0, LM0/B0;->h:Ljava/lang/Object;

    iput-object p4, p0, LM0/B0;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, LM0/B0;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/B0;->f:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/r;

    iget-object v1, p0, LM0/B0;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LM0/B0;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, LM0/B0;->i:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v0, v0, Lcom/brisa/local/r;->a:Lcom/brisa/local/MainActivity;

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/brisa/local/u;->c:Ljava/lang/String;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    invoke-static {v0, v1}, Lcom/brisa/local/a;->m(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/brisa/local/DownloadService;->d()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/brisa/local/DownloadService;

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "asset"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v0, v4}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Espera a que termine la descarga actual."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Archivo no encontrado."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Termina de conectar Google Drive antes de iniciar otra tarea."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v3, v4, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, LM0/B0;->f:Ljava/lang/Object;

    check-cast v0, LM0/X0;

    iget-object v1, p0, LM0/B0;->g:Ljava/lang/Object;

    check-cast v1, Lz1/H;

    iget-object v2, p0, LM0/B0;->h:Ljava/lang/Object;

    check-cast v2, LJ/k;

    iget-object v3, p0, LM0/B0;->i:Ljava/lang/Object;

    check-cast v3, Lz1/B;

    invoke-virtual {v0}, LM0/X0;->l()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v4}, Lz1/p;->k(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    :try_start_1
    invoke-interface {v2, v3}, LJ/k;->accept(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lz1/p;->k(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v0}, Lz1/p;->l(Ljava/lang/Throwable;)Z

    :goto_3
    return-void

    :pswitch_1
    iget-object v0, p0, LM0/B0;->f:Ljava/lang/Object;

    check-cast v0, LM0/W1;

    iget-object v1, p0, LM0/B0;->g:Ljava/lang/Object;

    check-cast v1, LM0/X0;

    iget-object v2, p0, LM0/B0;->h:Ljava/lang/Object;

    check-cast v2, LM0/N0;

    iget-object v3, p0, LM0/B0;->i:Ljava/lang/Object;

    check-cast v3, LM0/o;

    invoke-virtual {v1}, LM0/X0;->l()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, v0, LM0/W1;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    invoke-static {v3}, LM0/Y1;->i(LM0/o;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v2}, LM0/X0;->o(LM0/N0;)Lz1/B;

    move-result-object v4

    new-instance v5, LB0/b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v0, v5, LB0/b;->h:Ljava/lang/Object;

    iput-object v2, v5, LB0/b;->e:Ljava/lang/Object;

    iput-object v1, v5, LB0/b;->f:Ljava/lang/Object;

    iput-object v3, v5, LB0/b;->g:Ljava/lang/Object;

    new-instance v1, LM0/A;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, LM0/A;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lz1/v;

    const/4 v2, 0x0

    invoke-direct {v0, v4, v5, v2}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v0, v1}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_4
    return-void

    :pswitch_2
    iget-object v0, p0, LM0/B0;->f:Ljava/lang/Object;

    check-cast v0, LM0/X0;

    iget-object v1, p0, LM0/B0;->g:Ljava/lang/Object;

    check-cast v1, LM0/R1;

    iget-object v2, p0, LM0/B0;->h:Ljava/lang/Object;

    check-cast v2, LM0/N0;

    iget-object v3, p0, LM0/B0;->i:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0}, LM0/X0;->l()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v0, v0, LM0/X0;->t:LM0/d2;

    invoke-interface {v1, v0, v2, v3}, LM0/R1;->a(LM0/d2;LM0/N0;Ljava/util/List;)V

    :cond_6
    return-void

    :pswitch_3
    iget-object v0, p0, LM0/B0;->f:Ljava/lang/Object;

    check-cast v0, LM0/y1;

    iget-object v1, p0, LM0/B0;->g:Ljava/lang/Object;

    check-cast v1, LN0/P;

    iget-object v2, p0, LM0/B0;->h:Ljava/lang/Object;

    check-cast v2, LM0/N0;

    iget-object v3, p0, LM0/B0;->i:Ljava/lang/Object;

    check-cast v3, LM0/L0;

    iget-object v4, v0, LM0/y1;->j:LM0/X0;

    invoke-virtual {v4}, LM0/X0;->l()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, v0, LM0/y1;->k:LB/A;

    iget-object v4, v3, LM0/L0;->b:LM0/j2;

    iget-object v3, v3, LM0/L0;->c:LG/c0;

    invoke-virtual {v0, v1, v2, v4, v3}, LB/A;->i(Ljava/lang/Object;LM0/N0;LM0/j2;LG/c0;)V

    :goto_5
    return-void

    :pswitch_4
    iget-object v0, p0, LM0/B0;->f:Ljava/lang/Object;

    check-cast v0, LM0/y1;

    iget-object v1, p0, LM0/B0;->g:Ljava/lang/Object;

    check-cast v1, LM0/N0;

    iget-object v2, p0, LM0/B0;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, LM0/B0;->i:Ljava/lang/Object;

    check-cast v3, LJ/j;

    iget-object v0, v0, LM0/y1;->j:LM0/X0;

    invoke-virtual {v0, v1}, LM0/X0;->o(LM0/N0;)Lz1/B;

    move-result-object v0

    new-instance v1, LN0/O;

    const/16 v4, 0xd

    invoke-direct {v1, v2, v3, v4}, LN0/O;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v2, Lz1/s;->e:Lz1/s;

    new-instance v3, Lz1/v;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v3, v2}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LM0/B0;->f:Ljava/lang/Object;

    check-cast v0, LM0/r1;

    iget-object v1, p0, LM0/B0;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, LM0/B0;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, LM0/B0;->i:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v1, v4, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz1/B;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    :try_start_2
    invoke-static {v5}, Lcom/brisa/local/v;->i(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v5

    goto :goto_7

    :catch_2
    move-exception v5

    :goto_7
    const-string v7, "MediaSessionLegacyStub"

    const-string v8, "Failed to get bitmap"

    invoke-static {v7, v8, v5}, LJ/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_8
    move-object v5, v6

    :goto_8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LG/P;

    invoke-static {v7, v5}, LM0/u;->f(LG/P;Landroid/graphics/Bitmap;)LN0/C;

    move-result-object v5

    const/4 v7, -0x1

    if-ne v4, v7, :cond_9

    const-wide/16 v7, -0x1

    goto :goto_9

    :cond_9
    int-to-long v7, v4

    :goto_9
    new-instance v9, LN0/M;

    invoke-direct {v9, v6, v5, v7, v8}, LN0/M;-><init>(Landroid/media/session/MediaSession$QueueItem;LN0/C;J)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    iget-object v0, v0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v0, v0, LM0/t1;->o:LN0/O;

    invoke-static {v0, v1}, LM0/t1;->C(LN0/O;Ljava/util/ArrayList;)V

    :cond_b
    return-void

    :pswitch_6
    iget-object v0, p0, LM0/B0;->f:Ljava/lang/Object;

    check-cast v0, LM0/X0;

    iget-object v1, p0, LM0/B0;->g:Ljava/lang/Object;

    check-cast v1, Li/n;

    iget-object v2, p0, LM0/B0;->h:Ljava/lang/Object;

    check-cast v2, LM0/N0;

    iget-object v3, p0, LM0/B0;->i:Ljava/lang/Object;

    check-cast v3, LI0/E;

    :try_start_3
    invoke-virtual {v0, v2, v3}, LM0/X0;->d(LM0/N0;LI0/E;)Lz1/B;

    move-result-object v0

    invoke-virtual {v1, v0}, Li/n;->k(Lz1/B;)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    invoke-virtual {v1, v0}, Li/i;->i(Ljava/lang/Throwable;)Z

    :goto_a
    return-void

    :pswitch_7
    iget-object v0, p0, LM0/B0;->f:Ljava/lang/Object;

    check-cast v0, LM0/I0;

    iget-object v1, p0, LM0/B0;->g:Ljava/lang/Object;

    check-cast v1, LM0/B;

    iget-object v2, p0, LM0/B0;->h:Ljava/lang/Object;

    check-cast v2, LM0/H0;

    iget-object v3, p0, LM0/B0;->i:Ljava/lang/Object;

    check-cast v3, LM0/P0;

    :try_start_4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v4}, Lz1/p;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/z;

    invoke-virtual {v0, v3}, LM0/I0;->e(LM0/P0;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v2, LM0/H0;->e:Lcom/brisa/local/VideoPlaybackService;

    iget-object v5, v2, LM0/H0;->f:LM0/P0;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/brisa/local/VideoPlaybackService;->o(LM0/P0;Z)Lz1/a;

    :cond_c
    invoke-virtual {v1, v2}, LM0/z;->O(LG/e0;)V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    iget-object v0, v0, LM0/I0;->e:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v0, v3}, Lcom/brisa/local/VideoPlaybackService;->p(LM0/P0;)V

    :goto_b
    return-void

    :pswitch_8
    iget-object v0, p0, LM0/B0;->f:Ljava/lang/Object;

    check-cast v0, LM0/I0;

    iget-object v1, p0, LM0/B0;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LM0/B0;->h:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v3, p0, LM0/B0;->i:Ljava/lang/Object;

    check-cast v3, LM0/z;

    iget-object v4, v0, LM0/I0;->i:LM0/A;

    new-instance v5, LJ/U;

    invoke-direct {v5, v0, v3, v1, v2}, LJ/U;-><init>(LM0/I0;LM0/z;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, LM0/A;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
