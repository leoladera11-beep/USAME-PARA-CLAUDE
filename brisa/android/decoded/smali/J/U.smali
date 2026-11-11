.class public final synthetic LJ/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LJ/U;->e:I

    iput-object p2, p0, LJ/U;->g:Ljava/lang/Object;

    iput-object p3, p0, LJ/U;->f:Ljava/lang/Object;

    iput-object p4, p0, LJ/U;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LM0/I0;LM0/z;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    const/4 p1, 0x3

    iput p1, p0, LJ/U;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LJ/U;->g:Ljava/lang/Object;

    iput-object p3, p0, LJ/U;->f:Ljava/lang/Object;

    iput-object p4, p0, LJ/U;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lz1/H;LH/i;LM0/m2;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, LJ/U;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/U;->f:Ljava/lang/Object;

    iput-object p2, p0, LJ/U;->g:Ljava/lang/Object;

    iput-object p3, p0, LJ/U;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, LJ/U;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, LQ/k;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, Lcom/brisa/local/j;

    iget v3, v0, LQ/k;->a:I

    iget-object v0, v0, LQ/k;->b:LU/A;

    invoke-interface {v1, v3, v0, v2}, LQ/l;->c(ILU/A;Lcom/brisa/local/j;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, LQ/k;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    iget v3, v0, LQ/k;->a:I

    iget-object v0, v0, LQ/k;->b:LU/A;

    invoke-interface {v1, v3, v0, v2}, LQ/l;->s(ILU/A;Ljava/lang/Exception;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, LJ/t;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LH/a;

    const/16 v4, 0xd

    invoke-direct {v0, v2, v4}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object v0, LP/E;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget v1, LP/E;->s:I

    add-int/lit8 v1, v1, -0x1

    sput v1, LP/E;->s:I

    if-nez v1, :cond_1

    sget-object v1, LP/E;->r:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v3, LP/E;->r:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, LH/a;

    const/16 v5, 0xd

    invoke-direct {v4, v2, v5}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object v1, LP/E;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sget v2, LP/E;->s:I

    add-int/lit8 v2, v2, -0x1

    sput v2, LP/E;->s:I

    if-nez v2, :cond_3

    sget-object v2, LP/E;->r:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v3, LP/E;->r:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :pswitch_2
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, La1/g;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceView;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, LH/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LO/h;->l(Landroid/view/SurfaceView;)Landroid/view/AttachedSurfaceControl;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, LN/v;->d()Landroid/window/SurfaceSyncGroup;

    move-result-object v3

    iput-object v3, v0, La1/g;->e:Ljava/lang/Object;

    new-instance v0, LO0/E;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, LO0/E;-><init>(I)V

    invoke-static {v3, v1, v0}, LN/v;->j(Landroid/window/SurfaceSyncGroup;Landroid/view/AttachedSurfaceControl;LO0/E;)Z

    move-result v0

    invoke-static {v0}, LF1/i;->o(Z)V

    invoke-virtual {v2}, LH/a;->run()V

    invoke-static {}, LB/r;->g()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-static {v1, v0}, LO/h;->v(Landroid/view/AttachedSurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    :goto_4
    return-void

    :pswitch_3
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, LN/T;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, Lcom/brisa/local/j;

    iget-object v0, v0, LN/T;->f:LN/W;

    iget-object v0, v0, LN/W;->i:LO/d;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, LU/A;

    invoke-virtual {v0, v3, v1, v2}, LO/d;->c(ILU/A;Lcom/brisa/local/j;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, LN/T;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    iget-object v0, v0, LN/T;->f:LN/W;

    iget-object v0, v0, LN/W;->i:LO/d;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, LU/A;

    invoke-virtual {v0, v3, v1, v2}, LO/d;->s(ILU/A;Ljava/lang/Exception;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, LN/T;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, LU/w;

    iget-object v0, v0, LN/T;->f:LN/W;

    iget-object v0, v0, LN/W;->i:LO/d;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, LU/A;

    invoke-virtual {v0, v3, v1, v2}, LO/d;->R(ILU/A;LU/w;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, LN/N;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v1, Lu1/M;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, LU/A;

    iget-object v0, v0, LN/N;->c:LO/d;

    invoke-virtual {v1}, Lu1/M;->f()Lu1/C0;

    move-result-object v1

    iget-object v3, v0, LO/d;->h:LM0/r0;

    iget-object v0, v0, LO/d;->k:LG/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v4

    iput-object v4, v3, LM0/r0;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/A;

    iput-object v1, v3, LM0/r0;->f:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, LM0/r0;->g:Ljava/lang/Object;

    :cond_5
    iget-object v1, v3, LM0/r0;->e:Ljava/lang/Object;

    check-cast v1, LU/A;

    if-nez v1, :cond_6

    iget-object v1, v3, LM0/r0;->b:Ljava/lang/Object;

    check-cast v1, Lu1/P;

    iget-object v2, v3, LM0/r0;->f:Ljava/lang/Object;

    check-cast v2, LU/A;

    iget-object v4, v3, LM0/r0;->c:Ljava/lang/Object;

    check-cast v4, LG/n0;

    invoke-static {v0, v1, v2, v4}, LM0/r0;->b(LG/g0;Lu1/P;LU/A;LG/n0;)LU/A;

    move-result-object v1

    iput-object v1, v3, LM0/r0;->e:Ljava/lang/Object;

    :cond_6
    invoke-interface {v0}, LG/g0;->p0()LG/q0;

    move-result-object v0

    invoke-virtual {v3, v0}, LM0/r0;->e(LG/q0;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, LM0/X0;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v1, LM0/E1;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, LM0/O0;

    invoke-virtual {v0}, LM0/X0;->l()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v0, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, LM0/Y1;->n(LG/g0;LM0/O0;)V

    :cond_7
    return-void

    :pswitch_8
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, LM0/T0;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v1, LM0/N0;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    iget-object v3, v0, LM0/T0;->c:Ljava/lang/Object;

    check-cast v3, LM0/X0;

    invoke-virtual {v3, v1}, LM0/X0;->k(LM0/N0;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v1, v1}, LM0/X0;->b(Landroid/view/KeyEvent;ZZ)Z

    goto :goto_5

    :cond_8
    iget-object v2, v3, LM0/X0;->h:LM0/t1;

    iget-object v1, v1, LM0/N0;->a:LN0/P;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LM0/b1;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, LM0/b1;-><init>(LM0/t1;I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3, v1, v4}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    :goto_5
    const/4 v1, 0x0

    iput-object v1, v0, LM0/T0;->b:Ljava/lang/Object;

    return-void

    :pswitch_9
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, LM0/X0;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    iget-object v3, v0, LM0/X0;->u:LM0/V0;

    if-eqz v3, :cond_9

    iget-object v4, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {v4, v3}, LM0/d2;->o0(LG/e0;)V

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, LM0/X0;->h:LM0/t1;

    invoke-virtual {v1}, LM0/t1;->N()V

    iget-object v0, v0, LM0/X0;->g:LM0/W1;

    invoke-virtual {v0}, LM0/W1;->N0()V

    :cond_a
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_a
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, LM0/z;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0}, LM0/z;->Y0()V

    iget-object v3, v0, LM0/z;->c:LM0/y;

    invoke-interface {v3}, LM0/y;->p()Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, LM0/j2;->b:LM0/j2;

    goto :goto_6

    :cond_b
    invoke-interface {v3}, LM0/y;->Q0()LM0/j2;

    move-result-object v4

    :goto_6
    iget-object v4, v4, LM0/j2;->a:Lu1/b0;

    invoke-virtual {v4}, Lu1/K;->h()Lu1/R0;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LM0/i2;

    iget v6, v5, LM0/i2;->a:I

    if-nez v6, :cond_c

    iget-object v6, v5, LM0/i2;->b:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_e

    invoke-static {v1}, LM0/c;->n(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_e
    new-instance v4, LM0/i2;

    invoke-direct {v4, v1, v2}, LM0/i2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, LM0/z;->Y0()V

    invoke-interface {v3}, LM0/y;->p()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3, v4, v2}, LM0/y;->U0(LM0/i2;Landroid/os/Bundle;)Lz1/B;

    move-result-object v0

    goto :goto_8

    :cond_f
    new-instance v0, LM0/m2;

    const/16 v2, -0x64

    invoke-direct {v0, v2}, LM0/m2;-><init>(I)V

    invoke-static {v0}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object v0

    :goto_8
    new-instance v2, LK/a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, LK/a;-><init>(Ljava/lang/String;Z)V

    sget-object v1, Lz1/s;->e:Lz1/s;

    new-instance v3, Lz1/v;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v4}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v3, v1}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_10
    return-void

    :pswitch_b
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, LB/A;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v1, LM0/X0;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, LM0/g;

    iget-object v1, v1, LM0/X0;->l:Landroid/os/Handler;

    new-instance v3, LH/i;

    const/16 v4, 0x9

    invoke-direct {v3, v0, v2, v4}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v3}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void

    :pswitch_c
    iget-object v0, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v0, Lz1/H;

    iget-object v1, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v1, LH/i;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, LM0/m2;

    :try_start_4
    iget-object v3, v0, Lz1/p;->e:Ljava/lang/Object;

    instance-of v3, v3, Lz1/b;

    if-eqz v3, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {v1}, LH/i;->run()V

    invoke-virtual {v0, v2}, Lz1/p;->k(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v1

    invoke-virtual {v0, v1}, Lz1/p;->l(Ljava/lang/Throwable;)Z

    :goto_9
    return-void

    :pswitch_d
    iget-object v0, p0, LJ/U;->g:Ljava/lang/Object;

    check-cast v0, Lz1/B;

    iget-object v1, p0, LJ/U;->f:Ljava/lang/Object;

    check-cast v1, Lz1/H;

    iget-object v2, p0, LJ/U;->h:Ljava/lang/Object;

    check-cast v2, Lz1/r;

    :try_start_5
    invoke-static {v0}, Lcom/brisa/local/v;->i(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-interface {v2, v0}, Lz1/r;->apply(Ljava/lang/Object;)Lz1/B;

    move-result-object v0

    invoke-virtual {v1, v0}, Lz1/p;->m(Lz1/B;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    invoke-virtual {v1, v0}, Lz1/p;->l(Ljava/lang/Throwable;)Z

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    :goto_a
    invoke-virtual {v1, v0}, Lz1/p;->l(Ljava/lang/Throwable;)Z

    goto :goto_c

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_12

    goto :goto_b

    :cond_12
    move-object v0, v2

    :goto_b
    invoke-virtual {v1, v0}, Lz1/p;->l(Ljava/lang/Throwable;)Z

    goto :goto_c

    :catch_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lz1/p;->cancel(Z)Z

    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
