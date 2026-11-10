.class public final LN0/w;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LM0/q0;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LN0/w;->a:I

    .line 3
    iput-object p1, p0, LN0/w;->c:Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, LN0/w;->b:Z

    return-void
.end method

.method public constructor <init>(LQ/c;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LN0/w;->a:I

    .line 1
    iput-object p1, p0, LN0/w;->c:Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    iget v0, p0, LN0/w;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LQ/a;

    const/4 v2, 0x1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, LN0/w;->c:Ljava/lang/Object;

    check-cast v0, LQ/c;

    iget-object v3, v0, LQ/c;->k:LH/c;

    iget-object v0, v0, LQ/c;->l:Ljava/util/UUID;

    iget-object v4, v1, LQ/a;->d:Ljava/lang/Object;

    check-cast v4, LQ/q;

    invoke-virtual {v3, v0, v4}, LH/c;->b(Ljava/util/UUID;LQ/q;)LQ/x;

    move-result-object v0

    iget-object v3, p0, LN0/w;->c:Ljava/lang/Object;

    check-cast v3, LQ/c;

    iget-object v3, v3, LQ/c;->o:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch LQ/y; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, LN0/w;->c:Ljava/lang/Object;

    check-cast v4, LQ/c;

    iget-object v4, v4, LQ/c;->y:La1/g;

    if-eqz v4, :cond_0

    iget-object v5, v0, LQ/x;->b:LU/r;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, LU/r;->a()LU/q;

    move-result-object v5

    iget-wide v6, v1, LQ/a;->a:J

    iput-wide v6, v5, LU/q;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v1, LQ/a;->c:J

    sub-long/2addr v6, v8

    iput-wide v6, v5, LU/q;->f:J

    new-instance v6, LU/r;

    invoke-direct {v6, v5}, LU/r;-><init>(LU/q;)V

    iget-object v4, v4, La1/g;->e:Ljava/lang/Object;

    check-cast v4, Lu1/M;

    invoke-virtual {v4, v6}, Lu1/I;->c(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3

    goto/16 :goto_8

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, LN0/w;->c:Ljava/lang/Object;

    check-cast v0, LQ/c;

    iget-object v0, v0, LQ/c;->k:LH/c;

    iget-object v3, v1, LQ/a;->d:Ljava/lang/Object;

    check-cast v3, LQ/r;

    invoke-virtual {v0, v3}, LH/c;->d(LQ/r;)LQ/x;

    move-result-object v0
    :try_end_2
    .catch LQ/y; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    :goto_2
    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    invoke-static {v2, v3, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :goto_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, LQ/a;

    iget-boolean v4, v3, LQ/a;->b:Z

    if-nez v4, :cond_3

    goto/16 :goto_8

    :cond_3
    iget v4, v3, LQ/a;->e:I

    add-int/2addr v4, v2

    iput v4, v3, LQ/a;->e:I

    iget-object v5, p0, LN0/w;->c:Ljava/lang/Object;

    check-cast v5, LQ/c;

    iget-object v5, v5, LQ/c;->i:Lcom/brisa/local/j;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    goto/16 :goto_8

    :cond_4
    new-instance v6, LU/q;

    iget-wide v7, v3, LQ/a;->a:J

    iget-object v9, v0, LQ/y;->e:LL/n;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-direct/range {v6 .. v11}, LU/q;-><init>(JLL/n;J)V

    iget-object v4, v0, LQ/y;->f:Landroid/net/Uri;

    iput-object v4, v6, LU/q;->d:Landroid/net/Uri;

    iget-object v4, v0, LQ/y;->g:Ljava/util/Map;

    iput-object v4, v6, LU/q;->e:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v7, v3, LQ/a;->c:J

    sub-long/2addr v4, v7

    iput-wide v4, v6, LU/q;->f:J

    iget-wide v4, v0, LQ/y;->h:J

    iput-wide v4, v6, LU/q;->g:J

    new-instance v4, LU/r;

    invoke-direct {v4, v6}, LU/r;-><init>(LU/q;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/io/IOException;

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/io/IOException;

    goto :goto_4

    :cond_5
    new-instance v5, LQ/b;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    iget-object v6, p0, LN0/w;->c:Ljava/lang/Object;

    check-cast v6, LQ/c;

    iget-object v6, v6, LQ/c;->i:Lcom/brisa/local/j;

    iget v3, v3, LQ/a;->e:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_8

    instance-of v8, v5, LG/X;

    if-nez v8, :cond_7

    instance-of v8, v5, Ljava/io/FileNotFoundException;

    if-nez v8, :cond_7

    instance-of v8, v5, LL/v;

    if-nez v8, :cond_7

    instance-of v8, v5, LX/l;

    if-nez v8, :cond_7

    instance-of v8, v5, LL/l;

    if-eqz v8, :cond_6

    move-object v8, v5

    check-cast v8, LL/l;

    iget v8, v8, LL/l;->e:I

    const/16 v9, 0x7d8

    if-ne v8, v9, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_5

    :cond_7
    :goto_6
    move-wide v2, v6

    goto :goto_7

    :cond_8
    sub-int/2addr v3, v2

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v2, 0x1388

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    :goto_7
    cmp-long v5, v2, v6

    if-nez v5, :cond_9

    goto :goto_8

    :cond_9
    iget-object v5, p0, LN0/w;->c:Ljava/lang/Object;

    check-cast v5, LQ/c;

    iget-object v5, v5, LQ/c;->o:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v6, p0, LN0/w;->c:Ljava/lang/Object;

    check-cast v6, LQ/c;

    iget-object v6, v6, LQ/c;->y:La1/g;

    if-eqz v6, :cond_a

    iget-object v6, v6, La1/g;->e:Ljava/lang/Object;

    check-cast v6, Lu1/M;

    invoke-virtual {v6, v4}, Lu1/I;->c(Ljava/lang/Object;)V

    :cond_a
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-enter p0

    :try_start_4
    iget-boolean v4, p0, LN0/w;->b:Z

    if-nez v4, :cond_b

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_c

    :cond_b
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_8
    iget-object v2, p0, LN0/w;->c:Ljava/lang/Object;

    check-cast v2, LQ/c;

    iget-object v2, v2, LQ/c;->i:Lcom/brisa/local/j;

    iget-wide v3, v1, LQ/a;->a:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_5
    iget-boolean v2, p0, LN0/w;->b:Z

    if-nez v2, :cond_c

    iget-object v2, p0, LN0/w;->c:Ljava/lang/Object;

    check-cast v2, LQ/c;

    iget-object v2, v2, LQ/c;->n:LM0/p1;

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v1, v1, LQ/a;->d:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_b

    :cond_c
    :goto_9
    monitor-exit p0

    :goto_a
    return-void

    :goto_b
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :goto_c
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :pswitch_0
    const-string v1, "MediaControllerCompat"

    iget-object v0, p0, LN0/w;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LM0/q0;

    iget-object v3, v2, LM0/q0;->e:LM0/t0;

    iget-boolean v0, p0, LN0/w;->b:Z

    if-nez v0, :cond_d

    goto/16 :goto_15

    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_14

    const/16 v4, 0x8

    if-eq v0, v4, :cond_13

    const/16 v4, 0x9

    if-eq v0, v4, :cond_12

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_15

    :pswitch_1
    iget-boolean p1, v3, LM0/t0;->l:Z

    if-nez p1, :cond_e

    invoke-virtual {v3}, LM0/t0;->c1()V

    goto/16 :goto_15

    :cond_e
    iget-object p1, v3, LM0/t0;->n:LM0/s0;

    iget-object v0, v3, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->R()LN0/U;

    move-result-object v0

    invoke-static {v0}, LM0/t0;->Y0(LN0/U;)LN0/U;

    move-result-object v6

    iget-object v0, v3, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->e:LN0/N;

    invoke-virtual {v0}, LN0/N;->a()LN0/d;

    move-result-object v0

    const/4 v4, -0x1

    if-eqz v0, :cond_f

    :try_start_8
    invoke-interface {v0}, LN0/d;->f()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_2

    move v10, v0

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    :goto_d
    const-string v5, "Dead object in getRepeatMode."

    invoke-static {v1, v5, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    move v10, v4

    :goto_e
    iget-object v0, v3, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->e:LN0/N;

    invoke-virtual {v0}, LN0/N;->a()LN0/d;

    move-result-object v0

    if-eqz v0, :cond_10

    :try_start_9
    invoke-interface {v0}, LN0/d;->z()I

    move-result v4
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_10
    :goto_f
    move v11, v4

    goto :goto_11

    :catch_4
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    :goto_10
    const-string v5, "Dead object in getShuffleMode."

    invoke-static {v1, v5, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :goto_11
    new-instance v4, LM0/s0;

    iget-object v0, p1, LM0/s0;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LN0/A;

    iget-object v0, p1, LM0/s0;->e:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, LN0/D;

    iget-object v0, p1, LM0/s0;->f:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    iget-object v0, p1, LM0/s0;->g:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    iget-object p1, p1, LM0/s0;->h:Ljava/lang/Object;

    move-object v12, p1

    check-cast v12, Landroid/os/Bundle;

    invoke-direct/range {v4 .. v12}, LM0/s0;-><init>(LN0/A;LN0/U;LN0/D;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v4, v3, LM0/t0;->n:LM0/s0;

    iget-object p1, v3, LM0/t0;->i:LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/y;

    iget-object p1, p1, LN0/y;->e:LN0/N;

    invoke-virtual {p1}, LN0/N;->a()LN0/d;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_11

    :try_start_a
    invoke-interface {p1}, LN0/d;->D()Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_14

    :catch_6
    move-exception v0

    :goto_12
    move-object p1, v0

    goto :goto_13

    :catch_7
    move-exception v0

    goto :goto_12

    :goto_13
    const-string v0, "Dead object in isCaptioningEnabled."

    invoke-static {v1, v0, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    move p1, v4

    :goto_14
    invoke-virtual {v2, p1}, LM0/q0;->a(Z)V

    iget-object p1, v2, LM0/q0;->d:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, v3, LM0/t0;->n:LM0/s0;

    invoke-virtual {v3, v4, p1}, LM0/t0;->a1(ZLM0/s0;)V

    goto/16 :goto_15

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object p1, v3, LM0/t0;->n:LM0/s0;

    new-instance v4, LM0/s0;

    iget-object v0, p1, LM0/s0;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LN0/A;

    iget-object v0, p1, LM0/s0;->d:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, LN0/U;

    iget-object v0, p1, LM0/s0;->e:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, LN0/D;

    iget-object v0, p1, LM0/s0;->f:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    iget-object v0, p1, LM0/s0;->g:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    iget v10, p1, LM0/s0;->a:I

    iget-object p1, p1, LM0/s0;->h:Ljava/lang/Object;

    move-object v12, p1

    check-cast v12, Landroid/os/Bundle;

    invoke-direct/range {v4 .. v12}, LM0/s0;-><init>(LN0/A;LN0/U;LN0/D;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v4, v3, LM0/t0;->n:LM0/s0;

    invoke-virtual {v2}, LM0/q0;->e()V

    goto :goto_15

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v2, p1}, LM0/q0;->a(Z)V

    goto :goto_15

    :cond_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object p1, v3, LM0/t0;->n:LM0/s0;

    new-instance v4, LM0/s0;

    iget-object v0, p1, LM0/s0;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LN0/A;

    iget-object v0, p1, LM0/s0;->d:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, LN0/U;

    iget-object v0, p1, LM0/s0;->e:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, LN0/D;

    iget-object v0, p1, LM0/s0;->f:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    iget-object v0, p1, LM0/s0;->g:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    iget v11, p1, LM0/s0;->b:I

    iget-object p1, p1, LM0/s0;->h:Ljava/lang/Object;

    move-object v12, p1

    check-cast v12, Landroid/os/Bundle;

    invoke-direct/range {v4 .. v12}, LM0/s0;-><init>(LN0/A;LN0/U;LN0/D;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v4, v3, LM0/t0;->n:LM0/s0;

    invoke-virtual {v2}, LM0/q0;->e()V

    goto :goto_15

    :cond_13
    iget-object p1, v3, LM0/t0;->b:LM0/z;

    invoke-virtual {p1}, LM0/z;->p()V

    goto :goto_15

    :cond_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LN0/U;

    invoke-virtual {v2, p1}, LM0/q0;->b(LN0/U;)V

    :goto_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
