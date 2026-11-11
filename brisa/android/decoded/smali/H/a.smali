.class public final synthetic LH/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LN/F;I)V
    .locals 0

    .line 1
    const/4 p2, 0x6

    iput p2, p0, LH/a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/a;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LN/F;LN/b0;)V
    .locals 0

    .line 2
    const/4 p1, 0x7

    iput p1, p0, LH/a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LH/a;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p2, p0, LH/a;->e:I

    iput-object p1, p0, LH/a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, LH/a;->e:I

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, Lb/i;

    invoke-static {v0}, Lb/i;->b(Lb/i;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :pswitch_1
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, La0/l;

    iget-object v1, v0, La0/l;->h:Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-object v2, v0, La0/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN/s;

    iget-object v3, v3, LN/s;->a:LN/x;

    invoke-virtual {v3, v4}, LN/x;->x1(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, La0/l;->g:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_2
    iput-object v4, v0, La0/l;->g:Landroid/graphics/SurfaceTexture;

    iput-object v4, v0, La0/l;->h:Landroid/view/Surface;

    return-void

    :pswitch_2
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LZ/C;

    iget-object v1, v0, LZ/A;->a:Landroid/view/Choreographer;

    invoke-static {v1, v0}, LP/a;->j(Landroid/view/Choreographer;Landroid/view/Choreographer$VsyncCallback;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LZ/u;

    iget v1, v0, LZ/u;->m:I

    sub-int/2addr v1, v6

    iput v1, v0, LZ/u;->m:I

    return-void

    :pswitch_4
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LZ/e;

    iget-object v0, v0, LZ/e;->i:LZ/I;

    invoke-interface {v0}, LZ/I;->d()V

    return-void

    :pswitch_5
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LW/o;

    iget-object v1, v0, LW/o;->f:LW/j;

    iget-boolean v1, v1, LW/j;->A0:Z

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_3

    iget-object v1, v0, LW/o;->h:LH/c;

    if-eqz v1, :cond_3

    iget-boolean v1, v1, LH/c;->e:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, LW/s;->a:LN/F;

    if-eqz v0, :cond_3

    iget-object v0, v0, LN/F;->k:LJ/O;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object v0

    invoke-virtual {v0}, LJ/N;->b()V

    :cond_3
    return-void

    :pswitch_6
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LS/f;

    iget-object v1, v0, LS/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v4, v0, LS/f;->m:Z

    if-eqz v4, :cond_4

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    iget-wide v4, v0, LS/f;->l:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, v0, LS/f;->l:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_5

    monitor-exit v1

    goto :goto_1

    :cond_5
    if-gez v2, :cond_6

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    iget-object v3, v0, LS/f;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v2, v0, LS/f;->n:Ljava/lang/IllegalStateException;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_6
    invoke-virtual {v0}, LS/f;->a()V

    monitor-exit v1

    :goto_1
    return-void

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :pswitch_7
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LQ/c;

    invoke-virtual {v0, v4}, LQ/c;->e(LQ/k;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LQ/e;

    iget-boolean v1, v0, LQ/e;->g:Z

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, v0, LQ/e;->f:LQ/h;

    if-eqz v1, :cond_8

    iget-object v2, v0, LQ/e;->e:LQ/k;

    invoke-interface {v1, v2}, LQ/h;->e(LQ/k;)V

    :cond_8
    iget-object v1, v0, LQ/e;->h:LQ/f;

    iget-object v1, v1, LQ/f;->n:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iput-boolean v6, v0, LQ/e;->g:Z

    :goto_3
    return-void

    :pswitch_9
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LP/O;

    iget-wide v4, v0, LP/O;->d0:J

    const-wide/32 v7, 0x493e0

    cmp-long v1, v4, v7

    if-ltz v1, :cond_9

    iget-object v1, v0, LP/O;->n:La1/g;

    iget-object v1, v1, La1/g;->e:Ljava/lang/Object;

    check-cast v1, LP/S;

    iput-boolean v6, v1, LP/S;->Z0:Z

    iput-wide v2, v0, LP/O;->d0:J

    :cond_9
    return-void

    :pswitch_a
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LJ/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, v0, LJ/t;->a:Ljava/lang/Thread;

    if-ne v2, v3, :cond_a

    new-instance v2, LP/B;

    invoke-direct {v2, v6}, LP/B;-><init>(I)V

    invoke-virtual {v0, v1, v2}, LJ/t;->f(ILJ/q;)V

    :cond_a
    return-void

    :pswitch_b
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LP/f;

    invoke-virtual {v0}, LP/f;->c()V

    return-void

    :pswitch_c
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LO0/F;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_d
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LO0/u;

    invoke-virtual {v0}, LO0/u;->s()V

    return-void

    :pswitch_e
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LO0/f;

    invoke-virtual {v0, v5}, LO0/f;->d(Z)V

    return-void

    :pswitch_f
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LO/d;

    invoke-virtual {v0}, LO/d;->V()LO/a;

    move-result-object v1

    new-instance v2, LO/b;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, LO/b;-><init>(I)V

    const/16 v3, 0x404

    invoke-virtual {v0, v1, v3, v2}, LO/d;->a0(LO/a;ILJ/q;)V

    iget-object v0, v0, LO/d;->j:LJ/t;

    invoke-virtual {v0}, LJ/t;->d()V

    return-void

    :pswitch_10
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LN/b0;

    :try_start_5
    monitor-enter v1

    monitor-exit v1
    :try_end_5
    .catch LN/k; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v0, v1, LN/b0;->a:LN/a0;

    iget v2, v1, LN/b0;->c:I

    iget-object v3, v1, LN/b0;->d:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, LN/a0;->b(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v1, v6}, LN/b0;->a(Z)V

    return-void

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v6}, LN/b0;->a(Z)V

    throw v0
    :try_end_7
    .catch LN/k; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Unexpected error delivering message on external thread."

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_11
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LN/F;

    iget-object v0, v0, LN/F;->A:LO/d;

    invoke-virtual {v0}, LO/d;->V()LO/a;

    move-result-object v1

    new-instance v2, LO/b;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, LO/b;-><init>(I)V

    const/16 v3, 0x40a

    invoke-virtual {v0, v1, v3, v2}, LO/d;->a0(LO/a;ILJ/q;)V

    return-void

    :pswitch_12
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LN/x;

    iget-object v2, v0, LN/x;->C:LJ/c;

    iget-object v3, v0, LN/x;->e:Landroid/content/Context;

    sget-object v4, LJ/W;->a:Ljava/lang/String;

    invoke-static {v3}, Le/a;->d(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v3

    if-eq v3, v1, :cond_b

    goto :goto_4

    :cond_b
    move v3, v5

    :goto_4
    invoke-virtual {v2}, LJ/c;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, LJ/c;->f:Ljava/lang/Object;

    new-instance v4, LJ/b;

    invoke-direct {v4, v2, v1, v5}, LJ/b;-><init>(LJ/c;Ljava/lang/Object;I)V

    iget-object v1, v2, LJ/c;->c:Ljava/lang/Object;

    check-cast v1, LJ/O;

    iget-object v2, v1, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v1, v4}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :goto_5
    iget-object v0, v0, LN/x;->l:LN/F;

    iget-object v0, v0, LN/F;->k:LJ/O;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, v3, v5}, LJ/O;->b(III)LJ/N;

    move-result-object v1

    iget-object v0, v0, LJ/O;->a:Landroid/os/Handler;

    iget-object v2, v1, LJ/N;->a:Landroid/os/Message;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-virtual {v1}, LJ/N;->a()V

    :cond_d
    return-void

    :pswitch_13
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LM0/h2;

    invoke-virtual {v0}, LM0/h2;->a()V

    return-void

    :pswitch_14
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LM0/z;

    invoke-virtual {v0}, LM0/z;->p()V

    return-void

    :pswitch_15
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LJ/y;

    iget-object v4, v0, LJ/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX/f;

    if-eqz v4, :cond_15

    iget-object v0, v0, LJ/y;->c:LJ/A;

    invoke-virtual {v0}, LJ/A;->b()I

    move-result v0

    iget-object v7, v4, LX/f;->a:LX/g;

    monitor-enter v7

    :try_start_8
    iget v4, v7, LX/g;->n:I

    if-eqz v4, :cond_e

    iget-boolean v8, v7, LX/g;->e:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v8, :cond_e

    monitor-exit v7

    goto/16 :goto_a

    :catchall_3
    move-exception v0

    goto/16 :goto_9

    :cond_e
    if-ne v4, v0, :cond_f

    :try_start_9
    iget-object v4, v7, LX/g;->o:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v4, :cond_f

    monitor-exit v7

    goto/16 :goto_a

    :cond_f
    :try_start_a
    iput v0, v7, LX/g;->n:I

    if-eq v0, v6, :cond_14

    if-eqz v0, :cond_14

    const/16 v4, 0x8

    if-ne v0, v4, :cond_10

    goto :goto_8

    :cond_10
    iget-object v4, v7, LX/g;->o:Ljava/lang/String;

    if-nez v4, :cond_12

    iget-object v4, v7, LX/g;->a:Landroid/content/Context;

    sget-object v6, LJ/W;->a:Ljava/lang/String;

    if-eqz v4, :cond_11

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    invoke-static {v4}, Lcom/brisa/local/d0;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/brisa/local/d0;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    iput-object v4, v7, LX/g;->o:Ljava/lang/String;

    :cond_12
    invoke-virtual {v7, v0}, LX/g;->d(I)J

    move-result-wide v8

    iput-wide v8, v7, LX/g;->l:J

    iget-object v0, v7, LX/g;->d:LJ/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget v0, v7, LX/g;->g:I

    if-lez v0, :cond_13

    iget-wide v8, v7, LX/g;->h:J

    sub-long v8, v13, v8

    long-to-int v0, v8

    move v12, v0

    goto :goto_7

    :cond_13
    move v12, v5

    :goto_7
    iget-wide v8, v7, LX/g;->i:J

    iget-wide v10, v7, LX/g;->l:J

    invoke-virtual/range {v7 .. v12}, LX/g;->e(JJI)V

    iput-wide v13, v7, LX/g;->h:J

    iput-wide v2, v7, LX/g;->i:J

    iput-wide v2, v7, LX/g;->k:J

    iput-wide v2, v7, LX/g;->j:J

    iget-object v0, v7, LX/g;->f:LX/o;

    iget-object v2, v0, LX/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v1, v0, LX/o;->c:I

    iput v5, v0, LX/o;->d:I

    iput v5, v0, LX/o;->e:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit v7

    goto :goto_a

    :cond_14
    :goto_8
    monitor-exit v7

    goto :goto_a

    :goto_9
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :cond_15
    :goto_a
    return-void

    :pswitch_16
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LH/b;

    iget-object v1, v0, LH/b;->c:LH/c;

    iget-boolean v1, v1, LH/c;->e:Z

    if-eqz v1, :cond_16

    iget-object v0, v0, LH/b;->a:LN/s;

    iget-object v0, v0, LN/s;->a:LN/x;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, LN/x;->A1(IZ)V

    :cond_16
    return-void

    :pswitch_17
    iget-object v0, p0, LH/a;->f:Ljava/lang/Object;

    check-cast v0, LH/c;

    iget-object v1, v0, LH/c;->f:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v0, v0, LH/c;->g:Ljava/lang/Object;

    check-cast v0, LH/b;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
