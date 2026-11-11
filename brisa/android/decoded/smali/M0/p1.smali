.class public final LM0/p1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LM0/p1;->a:I

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;LB/A;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LM0/p1;->a:I

    .line 3
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    iput-object p2, p0, LM0/p1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    .line 2
    iput p3, p0, LM0/p1;->a:I

    iput-object p1, p0, LM0/p1;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private final a(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p1, p0, LM0/p1;->b:Ljava/lang/Object;

    check-cast p1, LQ/c;

    iget-object v4, p1, LQ/c;->x:LQ/q;

    if-ne v1, v4, :cond_9

    invoke-virtual {p1}, LQ/c;->j()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    iput-object v3, p1, LQ/c;->x:LQ/q;

    iget-object v1, p1, LQ/c;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v4, p1, LQ/c;->y:La1/g;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/brisa/local/j;

    const/16 v7, 0x11

    invoke-direct {v6, v7}, Lcom/brisa/local/j;-><init>(I)V

    iget-object v4, v4, La1/g;->e:Ljava/lang/Object;

    check-cast v4, Lu1/M;

    invoke-virtual {v4}, Lu1/M;->f()Lu1/C0;

    iput-object v3, p1, LQ/c;->y:La1/g;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    instance-of v1, v0, Ljava/lang/Exception;

    if-nez v1, :cond_4

    instance-of v1, v0, Ljava/lang/NoSuchMethodError;

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    :try_start_1
    check-cast v0, LQ/x;

    iget-object v0, v0, LQ/x;->a:[B

    iget-object v1, p1, LQ/c;->b:LQ/s;

    iget-object v2, p1, LQ/c;->v:[B

    invoke-interface {v1, v2, v0}, LQ/s;->i([B[B)[B

    move-result-object v0

    iget-object v1, p1, LQ/c;->w:[B

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    array-length v1, v0

    if-eqz v1, :cond_3

    iput-object v0, p1, LQ/c;->w:[B

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v0, 0x4

    iput v0, p1, LQ/c;->p:I

    iget-object v0, p1, LQ/c;->h:LJ/l;

    iget-object v1, v0, LJ/l;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, v0, LJ/l;->g:Ljava/util/Set;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/k;

    invoke-virtual {v1, v6}, LQ/k;->a(Lcom/brisa/local/j;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    invoke-virtual {p1, v0, v5}, LQ/c;->l(Ljava/lang/Throwable;Z)V

    goto :goto_5

    :cond_4
    :goto_3
    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v2}, LQ/c;->l(Ljava/lang/Throwable;Z)V

    goto :goto_5

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :cond_5
    iget-object p1, p0, LM0/p1;->b:Ljava/lang/Object;

    check-cast p1, LQ/c;

    iget-object v6, p1, LQ/c;->c:LN0/O;

    iget-object v7, p1, LQ/c;->z:LQ/r;

    if-ne v1, v7, :cond_9

    iget v1, p1, LQ/c;->p:I

    if-eq v1, v4, :cond_6

    invoke-virtual {p1}, LQ/c;->j()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    iput-object v3, p1, LQ/c;->z:LQ/r;

    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_7

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v6, v0, v2}, LN0/O;->b0(Ljava/lang/Exception;Z)V

    goto :goto_5

    :cond_7
    :try_start_7
    iget-object p1, p1, LQ/c;->b:LQ/s;

    check-cast v0, LQ/x;

    iget-object v0, v0, LQ/x;->a:[B

    invoke-interface {p1, v0}, LQ/s;->m([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    iput-object v3, v6, LN0/O;->g:Ljava/lang/Object;

    iget-object p1, v6, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    invoke-static {p1}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v0, v2}, Lu1/P;->m(I)Lu1/N;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-virtual {p1}, Lu1/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lu1/a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ/c;

    invoke-virtual {v0}, LQ/c;->m()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v5}, LQ/c;->i(Z)V

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-virtual {v6, p1, v5}, LN0/O;->b0(Ljava/lang/Exception;Z)V

    :cond_9
    :goto_5
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v0, p0, LM0/p1;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/p1;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LS/e;

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_2

    iget-object v0, v1, LS/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/lang/IllegalStateException;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    :try_start_0
    iget-object v0, v1, LS/e;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-object v0, v1, LS/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_3
    invoke-virtual {v0, v6, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    :cond_5
    iget-object p1, v1, LS/e;->i:LJ/j;

    invoke-virtual {p1}, LJ/j;->d()Z

    goto :goto_3

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, LS/d;

    iget v8, v2, LS/d;->a:I

    iget-object v10, v2, LS/d;->c:Landroid/media/MediaCodec$CryptoInfo;

    iget-wide v11, v2, LS/d;->d:J

    iget v13, v2, LS/d;->e:I

    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    const/4 v9, 0x0

    if-lt p1, v0, :cond_7

    iget-object v7, v1, LS/e;->e:Landroid/media/MediaCodec;

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_7
    sget-object p1, LS/e;->l:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v7, v1, LS/e;->e:Landroid/media/MediaCodec;

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    iget-object v3, v1, LS/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_8
    invoke-virtual {v3, v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    :goto_1
    move-object v6, v2

    goto :goto_3

    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, LS/d;

    iget v8, v3, LS/d;->a:I

    iget v10, v3, LS/d;->b:I

    iget-wide v11, v3, LS/d;->d:J

    iget v13, v3, LS/d;->e:I

    :try_start_4
    iget-object v7, v1, LS/e;->e:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p1, v0

    iget-object v5, v1, LS/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_b
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    :goto_2
    move-object v6, v3

    :goto_3
    if-eqz v6, :cond_d

    sget-object p1, LS/e;->k:Ljava/util/ArrayDeque;

    monitor-enter p1

    :try_start_5
    invoke-virtual {p1, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_d
    :goto_4
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    iget-object v3, p0, LM0/p1;->b:Ljava/lang/Object;

    check-cast v3, LQ/f;

    iget-object v3, v3, LQ/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LQ/c;

    invoke-virtual {v5}, LQ/c;->o()V

    iget-object v6, v5, LQ/c;->v:[B

    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_f

    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v4, :cond_10

    goto :goto_5

    :cond_10
    iget p1, v5, LQ/c;->p:I

    if-ne p1, v2, :cond_11

    sget-object p1, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, LQ/c;->i(Z)V

    :cond_11
    :goto_5
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, LM0/p1;->a(Landroid/os/Message;)V

    return-void

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_13

    iget-object v0, p0, LM0/p1;->b:Ljava/lang/Object;

    check-cast v0, LN0/G;

    iget-object v1, v0, LN0/G;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, LM0/p1;->b:Ljava/lang/Object;

    check-cast v0, LN0/G;

    iget-object v0, v0, LN0/G;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/I;

    iget-object v2, p0, LM0/p1;->b:Ljava/lang/Object;

    check-cast v2, LN0/G;

    iget-object v3, v2, LN0/G;->e:LM0/p1;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_13

    iget-object v1, v0, LN0/I;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v4, v0, LN0/I;->l:LN0/G;

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-ne v2, v4, :cond_13

    if-nez v3, :cond_12

    goto :goto_6

    :cond_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LN0/P;

    invoke-virtual {v0, p1}, LN0/I;->c(LN0/P;)V

    iget-object p1, p0, LM0/p1;->b:Ljava/lang/Object;

    check-cast p1, LN0/G;

    invoke-virtual {p1, v0, v3}, LN0/G;->a(LN0/I;Landroid/os/Handler;)V

    invoke-virtual {v0, v6}, LN0/I;->c(LN0/P;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p1

    :cond_13
    :goto_6
    return-void

    :pswitch_3
    iget-object v0, p0, LM0/p1;->b:Ljava/lang/Object;

    check-cast v0, LM0/y1;

    if-eqz v0, :cond_17

    const-string v2, "data_callback_token"

    const-string v4, "MBServiceCompat"

    const-string v5, "data_media_item_id"

    const-string v6, "data_result_receiver"

    iget-object v8, v0, LM0/y1;->b:LN0/i;

    const-string v0, "\n  Service version: 2\n  Client version: "

    const-string v7, "Unhandled message: "

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    :try_start_a
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move-object p1, v0

    goto/16 :goto_7

    :pswitch_4
    const-string v0, "data_custom_action_extras"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    const-string v0, "data_custom_action"

    invoke-virtual {v9, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, La/d;

    new-instance v9, LN0/i;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v9, p1}, LN0/i;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    if-nez v12, :cond_14

    goto/16 :goto_8

    :cond_14
    iget-object p1, v8, LN0/i;->a:Ljava/lang/Object;

    check-cast p1, LM0/y1;

    iget-object p1, p1, LM0/y1;->g:LM0/p1;

    new-instance v7, LN0/q;

    invoke-direct/range {v7 .. v12}, LN0/q;-><init>(LN0/i;LN0/i;Ljava/lang/String;Landroid/os/Bundle;La/d;)V

    invoke-virtual {p1, v7}, LM0/p1;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :pswitch_5
    const-string v0, "data_search_extras"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    const-string v0, "data_search_query"

    invoke-virtual {v9, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, La/d;

    new-instance v9, LN0/i;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v9, p1}, LN0/i;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    if-nez v12, :cond_15

    goto/16 :goto_8

    :cond_15
    iget-object p1, v8, LN0/i;->a:Ljava/lang/Object;

    check-cast p1, LM0/y1;

    iget-object p1, p1, LM0/y1;->g:LM0/p1;

    new-instance v7, LN0/r;

    invoke-direct/range {v7 .. v12}, LN0/r;-><init>(LN0/i;LN0/i;Ljava/lang/String;Landroid/os/Bundle;La/d;)V

    invoke-virtual {p1, v7}, LM0/p1;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :pswitch_6
    new-instance v0, LN0/i;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v0, p1}, LN0/i;-><init>(Ljava/lang/Object;)V

    iget-object p1, v8, LN0/i;->a:Ljava/lang/Object;

    check-cast p1, LM0/y1;

    iget-object p1, p1, LM0/y1;->g:LM0/p1;

    new-instance v2, Lz1/v;

    invoke-direct {v2, v8, v0, v3, v1}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {p1, v2}, LM0/p1;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :pswitch_7
    const-string v0, "data_root_hints"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    move-object v0, v9

    new-instance v9, LN0/i;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v9, p1}, LN0/i;-><init>(Ljava/lang/Object;)V

    const-string p1, "data_package_name"

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string p1, "data_calling_pid"

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string p1, "data_calling_uid"

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iget-object p1, v8, LN0/i;->a:Ljava/lang/Object;

    check-cast p1, LM0/y1;

    iget-object p1, p1, LM0/y1;->g:LM0/p1;

    new-instance v7, LN0/s;

    invoke-direct/range {v7 .. v13}, LN0/s;-><init>(LN0/i;LN0/i;ILjava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {p1, v7}, LM0/p1;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :pswitch_8
    move-object v0, v9

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, La/d;

    new-instance v9, LN0/i;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v9, p1}, LN0/i;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    if-nez v11, :cond_16

    goto :goto_8

    :cond_16
    iget-object p1, v8, LN0/i;->a:Ljava/lang/Object;

    check-cast p1, LM0/y1;

    iget-object p1, p1, LM0/y1;->g:LM0/p1;

    new-instance v7, LN0/r;

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, LN0/r;-><init>(LN0/i;LN0/i;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {p1, v7}, LM0/p1;->b(Ljava/lang/Runnable;)V

    goto :goto_8

    :pswitch_9
    move-object v0, v9

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    new-instance v9, LN0/i;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v9, p1}, LN0/i;-><init>(Ljava/lang/Object;)V

    iget-object p1, v8, LN0/i;->a:Ljava/lang/Object;

    check-cast p1, LM0/y1;

    iget-object p1, p1, LM0/y1;->g:LM0/p1;

    new-instance v7, LN0/r;

    const/4 v12, 0x2

    invoke-direct/range {v7 .. v12}, LN0/r;-><init>(LN0/i;LN0/i;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {p1, v7}, LM0/p1;->b(Ljava/lang/Runnable;)V

    goto :goto_8

    :pswitch_a
    move-object v0, v9

    const-string v1, "data_options"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    new-instance v9, LN0/i;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v9, p1}, LN0/i;-><init>(Ljava/lang/Object;)V

    iget-object p1, v8, LN0/i;->a:Ljava/lang/Object;

    check-cast p1, LM0/y1;

    iget-object p1, p1, LM0/y1;->g:LM0/p1;

    new-instance v7, LN0/q;

    invoke-direct/range {v7 .. v12}, LN0/q;-><init>(LN0/i;LN0/i;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {p1, v7}, LM0/p1;->b(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_8

    :goto_7
    const-string v0, "Failed to handle message due to malformed Bundle"

    invoke-static {v4, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_17
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_18
    :goto_8
    return-void

    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LM0/N0;

    iget-object v0, p0, LM0/p1;->b:Ljava/lang/Object;

    check-cast v0, LB/A;

    invoke-virtual {v0, p1}, LB/A;->K(LM0/N0;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p1, LM0/N0;->e:LM0/M0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, LM0/M0;->b()V

    invoke-virtual {v0, p1}, LB/A;->Q(LM0/N0;)V

    :cond_19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 3

    iget v0, p0, LM0/p1;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, LN0/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "data_calling_uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data_calling_pid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
