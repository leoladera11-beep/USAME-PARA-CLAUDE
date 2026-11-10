.class public final synthetic LH/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LM0/X0;LM0/N0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    const/16 p2, 0xc

    iput p2, p0, LH/i;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/i;->f:Ljava/lang/Object;

    iput-object p3, p0, LH/i;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Context;I)V
    .locals 0

    .line 2
    iput p3, p0, LH/i;->e:I

    iput-object p1, p0, LH/i;->g:Ljava/lang/Object;

    iput-object p2, p0, LH/i;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p3, p0, LH/i;->e:I

    iput-object p1, p0, LH/i;->f:Ljava/lang/Object;

    iput-object p2, p0, LH/i;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 46

    move-object/from16 v1, p0

    iget v0, v1, LH/i;->e:I

    const/4 v2, 0x6

    const/16 v3, 0x8

    const/4 v4, -0x1

    const/16 v5, 0x1c

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LU/T;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Lb0/z;

    invoke-virtual {v0, v2}, LU/T;->D(Lb0/z;)V

    return-void

    :pswitch_0
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LJ/k;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    invoke-interface {v0, v2}, LJ/k;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LQ/e;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, LG/x;

    iget-object v3, v0, LQ/e;->h:LQ/f;

    iget v4, v3, LQ/f;->p:I

    if-eqz v4, :cond_1

    iget-boolean v4, v0, LQ/e;->g:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v3, LQ/f;->t:Landroid/os/Looper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, LQ/e;->e:LQ/k;

    invoke-virtual {v3, v4, v5, v2, v8}, LQ/f;->g(Landroid/os/Looper;LQ/k;LG/x;Z)LQ/h;

    move-result-object v2

    iput-object v2, v0, LQ/e;->f:LQ/h;

    iget-object v2, v3, LQ/f;->n:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_2
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LB0/b;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioDeviceInfo;

    iget-object v3, v0, LB0/b;->h:Ljava/lang/Object;

    check-cast v3, LP/C;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, LB0/b;->f:Ljava/lang/Object;

    check-cast v0, LZ0/i;

    iget-object v0, v0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, LP/G;

    iget-object v0, v0, LP/G;->i:LP/f;

    if-eqz v0, :cond_4

    iget-object v3, v0, LP/f;->i:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iput-object v2, v0, LP/f;->i:Landroid/media/AudioDeviceInfo;

    iget-object v3, v0, LP/f;->a:Landroid/content/Context;

    iget-object v4, v0, LP/f;->j:LG/e;

    invoke-virtual {v0}, LP/f;->a()Ljava/util/List;

    move-result-object v5

    sget-object v7, LP/c;->e:Lu1/C0;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {v3, v6, v4, v2, v5}, LP/c;->b(Landroid/content/Context;Landroid/content/Intent;LG/e;Landroid/media/AudioDeviceInfo;Ljava/util/List;)LP/c;

    move-result-object v2

    invoke-virtual {v0, v2}, LP/f;->b(LP/c;)V

    :cond_4
    :goto_1
    return-void

    :pswitch_3
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LB0/b;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioRouting;

    invoke-interface {v2}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, v0, LB0/b;->g:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    new-instance v4, LH/i;

    const/16 v5, 0x1a

    invoke-direct {v4, v0, v2, v5}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

    :pswitch_4
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LP/t;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, LN/c;

    monitor-enter v2

    monitor-exit v2

    iget-object v0, v0, LP/t;->b:LN/s;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    iget-object v0, v0, LN/s;->a:LN/x;

    iget-object v0, v0, LN/x;->s:LO/d;

    iget-object v2, v0, LO/d;->h:LM0/r0;

    iget-object v2, v2, LM0/r0;->f:Ljava/lang/Object;

    check-cast v2, LU/A;

    invoke-virtual {v0, v2}, LO/d;->X(LU/A;)LO/a;

    move-result-object v2

    new-instance v3, LO/b;

    invoke-direct {v3, v5}, LO/b;-><init>(I)V

    const/16 v4, 0x3f5

    invoke-virtual {v0, v2, v4, v3}, LO/d;->a0(LO/a;ILJ/q;)V

    return-void

    :pswitch_5
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LP/t;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, LN/b;

    iget-object v0, v0, LP/t;->b:LN/s;

    sget-object v3, LJ/W;->a:Ljava/lang/String;

    iget-object v0, v0, LN/s;->a:LN/x;

    iget-object v0, v0, LN/x;->F:LN0/O;

    invoke-static {v0, v2}, LN0/O;->E(LN0/O;LN/b;)V

    return-void

    :pswitch_6
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LO0/F;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, LO0/F;->a(LO0/F;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_7
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LO/i;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Landroid/media/metrics/PlaybackStateEvent;

    iget-object v0, v0, LO/i;->d:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, v2}, LO/g;->q(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    return-void

    :pswitch_8
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LO/i;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Landroid/media/metrics/PlaybackMetrics;

    iget-object v0, v0, LO/i;->d:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, v2}, LO/g;->p(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    return-void

    :pswitch_9
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LO/i;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Landroid/media/metrics/PlaybackErrorEvent;

    iget-object v0, v0, LO/i;->d:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, v2}, LO/g;->o(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    return-void

    :pswitch_a
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LO/i;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Landroid/media/metrics/NetworkEvent;

    iget-object v0, v0, LO/i;->d:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, v2}, LO/g;->n(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    return-void

    :pswitch_b
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LO/i;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Landroid/media/metrics/TrackChangeEvent;

    iget-object v0, v0, LO/i;->d:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, v2}, LO/g;->r(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    return-void

    :pswitch_c
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, LN/x;

    iget-object v0, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v0, LI0/w;

    iget v2, v9, LN/x;->J:I

    iget v3, v0, LI0/w;->c:I

    sub-int/2addr v2, v3

    iput v2, v9, LN/x;->J:I

    iget-boolean v3, v0, LI0/w;->d:Z

    if-eqz v3, :cond_6

    iget v3, v0, LI0/w;->e:I

    iput v3, v9, LN/x;->K:I

    iput-boolean v7, v9, LN/x;->L:Z

    :cond_6
    if-nez v2, :cond_12

    iget-object v2, v0, LI0/w;->f:Ljava/lang/Object;

    check-cast v2, LN/X;

    iget-object v2, v2, LN/X;->a:LG/q0;

    iget-object v3, v9, LN/x;->q0:LN/X;

    iget-object v3, v3, LN/X;->a:LG/q0;

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v3

    if-eqz v3, :cond_7

    iput v4, v9, LN/x;->r0:I

    const-wide/16 v5, 0x0

    iput-wide v5, v9, LN/x;->s0:J

    :cond_7
    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v3

    if-nez v3, :cond_9

    move-object v3, v2

    check-cast v3, LN/d0;

    iget-object v3, v3, LN/d0;->k:[LG/q0;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v9, LN/x;->p:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_8

    move v5, v7

    goto :goto_2

    :cond_8
    move v5, v8

    :goto_2
    invoke-static {v5}, LF1/i;->o(Z)V

    move v5, v8

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    iget-object v6, v9, LN/x;->p:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LN/u;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LG/q0;

    iput-object v10, v6, LN/u;->c:LG/q0;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    iget-boolean v3, v9, LN/x;->L:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_11

    iget-object v3, v0, LI0/w;->f:Ljava/lang/Object;

    check-cast v3, LN/X;

    iget-object v3, v3, LN/X;->a:LG/q0;

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v9, LN/x;->q0:LN/X;

    iget-object v3, v3, LN/X;->a:LG/q0;

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v7

    goto :goto_4

    :cond_a
    move v3, v8

    :goto_4
    iget-object v10, v0, LI0/w;->f:Ljava/lang/Object;

    check-cast v10, LN/X;

    iget-object v10, v10, LN/X;->b:LU/A;

    iget-object v11, v9, LN/x;->q0:LN/X;

    iget-object v11, v11, LN/X;->b:LU/A;

    invoke-virtual {v10, v11}, LU/A;->b(LU/A;)Z

    move-result v10

    iget-object v11, v0, LI0/w;->f:Ljava/lang/Object;

    check-cast v11, LN/X;

    iget-wide v11, v11, LN/X;->d:J

    iget-object v13, v9, LN/x;->q0:LN/X;

    iget-wide v13, v13, LN/X;->s:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_b

    move v11, v7

    goto :goto_5

    :cond_b
    move v11, v8

    :goto_5
    if-nez v3, :cond_c

    if-eqz v10, :cond_d

    if-nez v11, :cond_c

    goto :goto_6

    :cond_c
    move v7, v8

    :cond_d
    :goto_6
    if-eqz v7, :cond_10

    invoke-virtual {v9}, LN/x;->V()I

    move-result v4

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v0, LI0/w;->f:Ljava/lang/Object;

    check-cast v3, LN/X;

    iget-object v3, v3, LN/X;->b:LU/A;

    invoke-virtual {v3}, LU/A;->c()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_7

    :cond_e
    iget-object v3, v0, LI0/w;->f:Ljava/lang/Object;

    check-cast v3, LN/X;

    iget-object v5, v3, LN/X;->b:LU/A;

    iget-wide v10, v3, LN/X;->d:J

    iget-object v3, v5, LU/A;->a:Ljava/lang/Object;

    iget-object v5, v9, LN/x;->o:LG/n0;

    invoke-virtual {v2, v3, v5}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget-wide v2, v5, LG/n0;->e:J

    add-long/2addr v10, v2

    move-wide v5, v10

    goto :goto_8

    :cond_f
    :goto_7
    iget-object v2, v0, LI0/w;->f:Ljava/lang/Object;

    check-cast v2, LN/X;

    iget-wide v2, v2, LN/X;->d:J

    move-wide v5, v2

    :cond_10
    :goto_8
    move/from16 v16, v4

    move-wide v14, v5

    move v12, v7

    goto :goto_9

    :cond_11
    move/from16 v16, v4

    move-wide v14, v5

    move v12, v8

    :goto_9
    iput-boolean v8, v9, LN/x;->L:Z

    iget-object v0, v0, LI0/w;->f:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, LN/X;

    iget v13, v9, LN/x;->K:I

    const/16 v17, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v9 .. v17}, LN/x;->B1(LN/X;IZIJIZ)V

    :cond_12
    return-void

    :pswitch_d
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LM0/X0;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    sget-object v3, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v0}, LM0/X0;->g()LM0/N0;

    move-result-object v3

    if-nez v3, :cond_13

    invoke-static {v2}, Lcom/brisa/local/VideoPlaybackService;->d(Landroid/content/Intent;)LM0/N0;

    move-result-object v3

    :cond_13
    invoke-virtual {v0, v3, v2}, LM0/X0;->q(LM0/N0;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "MSessionService"

    const-string v2, "Ignored unrecognized media button intent."

    invoke-static {v0, v2}, LJ/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void

    :pswitch_e
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, Lz1/x;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Landroid/os/ResultReceiver;

    const-string v3, "MediaSessionLegacyStub"

    :try_start_0
    iget-object v0, v0, Lz1/x;->e:Ljava/lang/Object;

    check-cast v0, LM0/m2;

    const-string v5, "SessionResult must not be null"

    invoke-static {v0, v5}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_b

    :goto_a
    const-string v5, "Custom command failed"

    invoke-static {v3, v5, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, LM0/m2;

    invoke-direct {v0, v4}, LM0/m2;-><init>(I)V

    goto :goto_c

    :goto_b
    const-string v4, "Custom command cancelled"

    invoke-static {v3, v4, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, LM0/m2;

    invoke-direct {v0, v7}, LM0/m2;-><init>(I)V

    :goto_c
    iget v3, v0, LM0/m2;->a:I

    iget-object v0, v0, LM0/m2;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :pswitch_f
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LM0/X0;

    iget-object v0, v1, LH/i;->g:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, LM0/d2;

    iget-object v4, v2, LM0/X0;->h:LM0/t1;

    iput-object v3, v2, LM0/X0;->t:LM0/d2;

    new-instance v0, LM0/V0;

    invoke-direct {v0, v2, v3}, LM0/V0;-><init>(LM0/X0;LM0/d2;)V

    invoke-virtual {v3, v0}, LM0/d2;->O(LG/e0;)V

    iput-object v0, v2, LM0/X0;->u:LM0/V0;

    :try_start_1
    iget-object v0, v4, LM0/t1;->k:LM0/r1;

    invoke-virtual {v0, v8, v3}, LM0/r1;->n(ILM0/d2;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    const-string v6, "MediaSessionImpl"

    const-string v9, "Exception in using media1 API"

    invoke-static {v6, v9, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    iget-object v0, v4, LM0/t1;->o:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    iget-object v0, v0, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v7}, Landroid/media/session/MediaSession;->setActive(Z)V

    new-instance v9, LM0/b2;

    invoke-virtual {v3}, LM0/d2;->j()LG/Z;

    move-result-object v10

    invoke-virtual {v3}, LM0/d2;->p()LM0/l2;

    move-result-object v12

    invoke-virtual {v3}, LM0/d2;->a()LG/f0;

    move-result-object v13

    invoke-virtual {v3}, LM0/d2;->a()LG/f0;

    move-result-object v14

    invoke-virtual {v3}, LM0/d2;->g()LG/a0;

    move-result-object v16

    invoke-virtual {v3}, LM0/d2;->f()I

    move-result v17

    invoke-virtual {v3}, LM0/d2;->w0()Z

    move-result v18

    invoke-virtual {v3}, LM0/d2;->N()LG/C0;

    move-result-object v19

    invoke-virtual {v3}, LM0/d2;->X0()LG/q0;

    move-result-object v20

    const/16 v0, 0x12

    invoke-virtual {v3, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v3}, LM0/d2;->H()LG/T;

    move-result-object v0

    :goto_e
    move-object/from16 v22, v0

    goto :goto_f

    :cond_15
    sget-object v0, LG/T;->M:LG/T;

    goto :goto_e

    :goto_f
    const/16 v0, 0x16

    invoke-virtual {v3, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v3}, LM0/d2;->R()F

    move-result v0

    :goto_10
    move/from16 v23, v0

    goto :goto_11

    :cond_16
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_10

    :goto_11
    const/16 v0, 0x15

    invoke-virtual {v3, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v3}, LM0/d2;->T()LG/e;

    move-result-object v0

    :goto_12
    move-object/from16 v25, v0

    goto :goto_13

    :cond_17
    sget-object v0, LG/e;->i:LG/e;

    goto :goto_12

    :goto_13
    invoke-virtual {v3, v5}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v3}, LM0/d2;->L()LI/c;

    move-result-object v0

    :goto_14
    move-object/from16 v27, v0

    goto :goto_15

    :cond_18
    sget-object v0, LI/c;->d:LI/c;

    goto :goto_14

    :goto_15
    invoke-virtual {v3}, LM0/d2;->Y()LG/p;

    move-result-object v28

    const/16 v0, 0x17

    invoke-virtual {v3, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v3}, LM0/d2;->k()I

    move-result v8

    :cond_19
    move/from16 v29, v8

    invoke-virtual {v3}, LM0/d2;->Z0()Z

    move-result v30

    invoke-virtual {v3}, LM0/d2;->z()Z

    move-result v31

    invoke-virtual {v3}, LM0/d2;->l0()I

    move-result v33

    invoke-virtual {v3}, LM0/d2;->c()I

    move-result v34

    invoke-virtual {v3}, LM0/d2;->I()Z

    move-result v35

    invoke-virtual {v3}, LM0/d2;->b()Z

    move-result v36

    invoke-virtual {v3}, LM0/d2;->Y0()LG/T;

    move-result-object v37

    invoke-virtual {v3}, LM0/d2;->P0()J

    move-result-wide v38

    invoke-virtual {v3}, LM0/d2;->o()J

    move-result-wide v40

    invoke-virtual {v3}, LM0/d2;->G()J

    move-result-wide v42

    const/16 v0, 0x1e

    invoke-virtual {v3, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v3}, LM0/d2;->E()LG/y0;

    move-result-object v0

    :goto_16
    move-object/from16 v44, v0

    goto :goto_17

    :cond_1a
    sget-object v0, LG/y0;->b:LG/y0;

    goto :goto_16

    :goto_17
    invoke-virtual {v3}, LM0/d2;->x0()LG/w0;

    move-result-object v45

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    const/16 v32, 0x1

    invoke-direct/range {v9 .. v45}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v9, v2, LM0/X0;->s:LM0/b2;

    invoke-virtual {v3}, LM0/d2;->w()LG/c0;

    move-result-object v0

    invoke-virtual {v2, v0}, LM0/X0;->h(LG/c0;)V

    return-void

    :pswitch_10
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LM0/X0;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_11
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, LM0/x0;

    iget-boolean v3, v0, LM0/l0;->p:Z

    if-eqz v3, :cond_1b

    goto :goto_18

    :cond_1b
    invoke-interface {v2, v0}, LM0/x0;->b(LM0/l0;)V

    :goto_18
    return-void

    :pswitch_12
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LM0/t0;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, LN0/N;

    new-instance v3, LN0/O;

    iget-object v4, v0, LM0/t0;->a:Landroid/content/ContextWrapper;

    invoke-direct {v3, v4, v2}, LN0/O;-><init>(Landroid/content/Context;LN0/N;)V

    iput-object v3, v0, LM0/t0;->i:LN0/O;

    iget-object v2, v0, LM0/t0;->e:LM0/q0;

    iget-object v0, v0, LM0/t0;->b:LM0/z;

    iget-object v0, v0, LM0/z;->e:Landroid/os/Handler;

    iget-object v4, v3, LN0/O;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v0, "MediaControllerCompat"

    const-string v2, "the callback has already been registered"

    invoke-static {v0, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_1c
    if-nez v0, :cond_1d

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :cond_1d
    invoke-virtual {v2, v0}, LM0/q0;->d(Landroid/os/Handler;)V

    iget-object v3, v3, LN0/O;->f:Ljava/lang/Object;

    check-cast v3, LN0/y;

    iget-object v4, v3, LN0/y;->a:Landroid/media/session/MediaController;

    iget-object v5, v2, LM0/q0;->a:LN0/v;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v5, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    iget-object v4, v3, LN0/y;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-object v0, v3, LN0/y;->e:LN0/N;

    invoke-virtual {v0}, LN0/N;->a()LN0/d;

    move-result-object v0

    if-eqz v0, :cond_1e

    new-instance v5, LN0/u;

    invoke-direct {v5, v2}, LN0/u;-><init>(LM0/q0;)V

    iget-object v3, v3, LN0/y;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v2, LM0/q0;->c:LN0/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0, v5}, LN0/d;->k(LN0/b;)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0, v6}, LM0/q0;->c(ILjava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1a

    :catchall_0
    move-exception v0

    goto :goto_1c

    :catch_4
    move-exception v0

    goto :goto_19

    :catch_5
    move-exception v0

    :goto_19
    :try_start_4
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in registerCallback."

    invoke-static {v2, v3, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_1e
    iput-object v6, v2, LM0/q0;->c:LN0/u;

    iget-object v0, v3, LN0/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1a
    monitor-exit v4

    :goto_1b
    return-void

    :goto_1c
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :pswitch_13
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LB/A;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, LM0/g;

    invoke-virtual {v0, v2}, LB/A;->v(LM0/g;)V

    return-void

    :pswitch_14
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LN0/O;

    iget-object v0, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :try_start_5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v2, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1d

    :catchall_1
    move-exception v0

    goto :goto_1e

    :cond_1f
    :goto_1d
    monitor-exit v2

    return-void

    :goto_1e
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :pswitch_15
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LJ/Z;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, v0, LJ/Z;->f:Ljava/lang/Object;

    check-cast v0, LN0/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_20

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, LH/i;

    invoke-direct {v5, v0, v2, v3}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v0, "ExoPlayer:WifiLockManager"

    invoke-direct {v4, v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_20
    return-void

    :pswitch_16
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, LN0/O;

    iget-object v0, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    :try_start_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v3, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1f

    :catchall_2
    move-exception v0

    goto :goto_20

    :cond_21
    :goto_1f
    monitor-exit v3

    return-void

    :goto_20
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :pswitch_17
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LJ/Z;

    iget-object v3, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, v0, LJ/Z;->f:Ljava/lang/Object;

    check-cast v0, LN0/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_22

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, LH/i;

    invoke-direct {v5, v0, v3, v2}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v0, "ExoPlayer:WakeLockManager"

    invoke-direct {v4, v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_22
    return-void

    :pswitch_18
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, Lz1/H;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, Lz1/B;

    iget-object v0, v0, Lz1/p;->e:Ljava/lang/Object;

    instance-of v0, v0, Lz1/b;

    if-eqz v0, :cond_23

    invoke-interface {v2, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_23
    return-void

    :pswitch_19
    iget-object v0, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v0, LJ/z;

    iget-object v4, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    iget-object v0, v0, LJ/z;->b:Ljava/lang/Object;

    check-cast v0, LJ/A;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    const/4 v6, 0x5

    if-nez v5, :cond_25

    :catch_6
    :cond_24
    move v2, v8

    goto :goto_22

    :cond_25
    :try_start_9
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_6

    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_26

    goto :goto_21

    :cond_26
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    const/4 v10, 0x2

    const/16 v11, 0x9

    const/4 v12, 0x4

    if-eqz v9, :cond_2a

    if-eq v9, v7, :cond_29

    if-eq v9, v12, :cond_2a

    if-eq v9, v6, :cond_2a

    if-eq v9, v2, :cond_28

    if-eq v9, v11, :cond_27

    move v2, v3

    goto :goto_22

    :cond_27
    const/4 v2, 0x7

    goto :goto_22

    :cond_28
    :pswitch_1a
    move v2, v6

    goto :goto_22

    :cond_29
    :pswitch_1b
    move v2, v10

    goto :goto_22

    :cond_2a
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_1c
    goto :goto_22

    :pswitch_1d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_24

    move v2, v11

    goto :goto_22

    :pswitch_1e
    move v2, v12

    goto :goto_22

    :pswitch_1f
    const/4 v2, 0x3

    goto :goto_22

    :cond_2b
    :goto_21
    move v2, v7

    :goto_22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v3, v5, :cond_2c

    if-ne v2, v6, :cond_2c

    :try_start_a
    const-string v2, "phone"

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LJ/x;

    invoke-direct {v3, v0}, LJ/x;-><init>(LJ/A;)V

    iget-object v4, v0, LJ/A;->a:Ljava/util/concurrent/Executor;

    invoke-static {v2, v4, v3}, LJ/w;->s(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;LJ/x;)V

    invoke-static {v2, v3}, LJ/w;->r(Landroid/telephony/TelephonyManager;LJ/x;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_23

    :catch_7
    invoke-virtual {v0, v6}, LJ/A;->c(I)V

    goto :goto_23

    :cond_2c
    invoke-virtual {v0, v2}, LJ/A;->c(I)V

    :goto_23
    return-void

    :pswitch_20
    iget-object v0, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v0, LJ/A;

    iget-object v2, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v4, LJ/z;

    invoke-direct {v4, v0, v8}, LJ/z;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :pswitch_21
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, LJ/c;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, LG/l0;

    iget-object v3, v0, LJ/c;->f:Ljava/lang/Object;

    invoke-virtual {v2, v3}, LG/l0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, LJ/c;->f:Ljava/lang/Object;

    new-instance v3, LJ/b;

    invoke-direct {v3, v0, v2, v7}, LJ/b;-><init>(LJ/c;Ljava/lang/Object;I)V

    iget-object v0, v0, LJ/c;->c:Ljava/lang/Object;

    check-cast v0, LJ/O;

    iget-object v2, v0, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_24

    :cond_2d
    invoke-virtual {v0, v3}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :goto_24
    return-void

    :pswitch_22
    iget-object v0, v1, LH/i;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, v1, LH/i;->g:Ljava/lang/Object;

    check-cast v2, LJ/j;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Le/a;->b:Landroid/media/AudioManager;

    invoke-virtual {v2}, LJ/j;->d()Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_19
        :pswitch_18
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1a
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1e
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method
