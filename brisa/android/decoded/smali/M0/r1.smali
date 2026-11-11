.class public final LM0/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u;
.implements LM0/M0;


# instance fields
.field public e:LG/T;

.field public f:Ljava/lang/String;

.field public g:Landroid/net/Uri;

.field public h:J

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LM0/r1;LG/T;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/r1;->i:Ljava/lang/Object;

    iput-object p2, p0, LM0/r1;->e:LG/T;

    iput-object p3, p0, LM0/r1;->f:Ljava/lang/String;

    iput-object p4, p0, LM0/r1;->g:Landroid/net/Uri;

    iput-wide p5, p0, LM0/r1;->h:J

    return-void
.end method

.method public constructor <init>(LM0/t1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/r1;->i:Ljava/lang/Object;

    .line 2
    sget-object p1, LG/T;->M:LG/T;

    iput-object p1, p0, LM0/r1;->e:LG/T;

    .line 3
    const-string p1, ""

    iput-object p1, p0, LM0/r1;->f:Ljava/lang/String;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, LM0/r1;->h:J

    return-void
.end method


# virtual methods
.method public a(ILM0/i2;)V
    .locals 2

    iget-object p1, p2, LM0/i2;->c:Landroid/os/Bundle;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object p1, v1

    :goto_0
    iget-object v0, p0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v0, v0, LM0/t1;->o:LN0/O;

    iget-object p2, p2, LM0/i2;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    iget-object v0, v0, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p2, p1}, Landroid/media/session/MediaSession;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(ILM0/l2;ZZI)V
    .locals 0

    iget-object p1, p0, LM0/r1;->i:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    iget-object p2, p1, LM0/t1;->i:LM0/X0;

    invoke-virtual {p2}, LM0/X0;->x()V

    iget-object p2, p2, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1, p2}, LM0/t1;->Q(LM0/d2;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 7

    move-object v5, p1

    check-cast v5, Landroid/graphics/Bitmap;

    iget-object p1, p0, LM0/r1;->i:Ljava/lang/Object;

    check-cast p1, LM0/r1;

    iget-object p1, p1, LM0/r1;->i:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    iget-object v0, p1, LM0/t1;->u:LM0/r1;

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    iget-object v6, p1, LM0/t1;->o:LN0/O;

    iget-object v0, p0, LM0/r1;->e:LG/T;

    iget-object v1, p0, LM0/r1;->f:Ljava/lang/String;

    iget-object v2, p0, LM0/r1;->g:Landroid/net/Uri;

    iget-wide v3, p0, LM0/r1;->h:J

    invoke-static/range {v0 .. v5}, LM0/u;->k(LG/T;Ljava/lang/String;Landroid/net/Uri;JLandroid/graphics/Bitmap;)LN0/D;

    move-result-object v0

    invoke-static {v6, v0}, LM0/t1;->D(LN0/O;LN0/D;)V

    iget-object p1, p1, LM0/t1;->i:LM0/X0;

    iget-object v0, p1, LM0/X0;->o:Landroid/os/Handler;

    new-instance v1, LM0/R0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, LM0/R0;-><init>(LM0/X0;I)V

    invoke-static {v0, v1}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(ILG/c0;)V
    .locals 2

    iget-object p1, p0, LM0/r1;->i:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    iget-object p2, p1, LM0/t1;->i:LM0/X0;

    invoke-virtual {p2}, LM0/X0;->x()V

    iget-object p2, p2, LM0/X0;->t:LM0/d2;

    const/16 v0, 0x14

    invoke-virtual {p2, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, LM0/t1;->v:I

    if-eq v1, v0, :cond_1

    iput v0, p1, LM0/t1;->v:I

    iget-object v1, p1, LM0/t1;->o:LN0/O;

    iget-object v1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    iget-object v1, v1, LN0/I;->a:Landroid/media/session/MediaSession;

    or-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setFlags(I)V

    :cond_1
    invoke-virtual {p1, p2}, LM0/t1;->Q(LM0/d2;)V

    return-void
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/r1;

    iget-object v0, v0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v0, v0, LM0/t1;->u:LM0/r1;

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load bitmap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionLegacyStub"

    invoke-static {v0, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 10

    iget-object v0, p0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v1, v0, LM0/t1;->o:LN0/O;

    iget-object v2, v0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v2}, LM0/X0;->x()V

    iget-object v9, v2, LM0/X0;->t:LM0/d2;

    invoke-virtual {v9}, LM0/d2;->Y()LG/p;

    move-result-object v2

    iget v2, v2, LG/p;->a:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, LM0/d2;->w()LG/c0;

    move-result-object v2

    const/16 v3, 0x1a

    const/16 v4, 0x22

    filled-new-array {v3, v4}, [I

    move-result-object v3

    iget-object v4, v2, LG/c0;->a:LG/u;

    invoke-virtual {v4, v3}, LG/u;->a([I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/16 v3, 0x19

    const/16 v5, 0x21

    filled-new-array {v3, v5}, [I

    move-result-object v3

    iget-object v2, v2, LG/c0;->a:LG/u;

    invoke-virtual {v2, v3}, LG/u;->a([I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    new-instance v8, Landroid/os/Handler;

    iget-object v3, v9, LM0/d2;->a:LG/g0;

    invoke-interface {v3}, LG/g0;->U0()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v3, 0x17

    invoke-virtual {v9, v3}, LM0/d2;->S0(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v9}, LM0/d2;->k()I

    move-result v4

    :cond_3
    move v6, v4

    invoke-virtual {v9}, LM0/d2;->Y()LG/p;

    move-result-object v3

    move-object v4, v3

    new-instance v3, LM0/o1;

    iget v5, v4, LG/p;->c:I

    iget-object v7, v4, LG/p;->d:Ljava/lang/String;

    move v4, v2

    invoke-direct/range {v3 .. v9}, LM0/o1;-><init>(IIILjava/lang/String;Landroid/os/Handler;LM0/d2;)V

    move-object v2, v3

    :goto_1
    iput-object v2, v0, LM0/t1;->r:LM0/o1;

    if-nez v2, :cond_5

    const/16 v0, 0x15

    invoke-virtual {v9, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9}, LM0/d2;->T()LG/e;

    move-result-object v0

    goto :goto_2

    :cond_4
    sget-object v0, LG/e;->i:LG/e;

    :goto_2
    iget-object v1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    iget-object v1, v1, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, LG/e;->c()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    return-void

    :cond_5
    iget-object v0, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    iget-object v0, v0, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v2}, LM0/o1;->a()Landroid/media/VolumeProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    return-void
.end method

.method public m(LG/P;)V
    .locals 2

    iget-object v0, p0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v1, v0, LM0/t1;->o:LN0/O;

    invoke-virtual {p0}, LM0/r1;->s()V

    if-nez p1, :cond_0

    iget-object p1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/I;

    iget-object p1, p1, LN0/I;->a:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/media/session/MediaSession;->setRatingType(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, LG/P;->d:LG/T;

    iget-object p1, p1, LG/T;->i:LG/h0;

    invoke-static {p1}, LM0/u;->t(LG/h0;)I

    move-result p1

    iget-object v1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    iget-object v1, v1, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v1, p1}, Landroid/media/session/MediaSession;->setRatingType(I)V

    :goto_0
    iget-object p1, v0, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {v0, p1}, LM0/t1;->Q(LM0/d2;)V

    return-void
.end method

.method public n(ILM0/d2;)V
    .locals 2

    iget-object p1, p0, LM0/r1;->i:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    invoke-virtual {p2}, LM0/d2;->X0()LG/q0;

    move-result-object v0

    invoke-virtual {p0, v0}, LM0/r1;->r(LG/q0;)V

    const/16 v0, 0x12

    invoke-virtual {p2, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, LM0/d2;->H()LG/T;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, LG/T;->M:LG/T;

    :goto_0
    invoke-virtual {p0, v0}, LM0/r1;->o(LG/T;)V

    invoke-virtual {p2}, LM0/d2;->Y0()LG/T;

    invoke-virtual {p0}, LM0/r1;->s()V

    invoke-virtual {p2}, LM0/d2;->w0()Z

    move-result v0

    invoke-virtual {p0, v0}, LM0/r1;->q(Z)V

    invoke-virtual {p2}, LM0/d2;->f()I

    move-result v0

    invoke-virtual {p0, v0}, LM0/r1;->p(I)V

    invoke-virtual {p2}, LM0/d2;->Y()LG/p;

    invoke-virtual {p0}, LM0/r1;->l()V

    const/16 v0, 0x14

    invoke-virtual {p2, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p1, LM0/t1;->v:I

    if-eq v1, v0, :cond_2

    iput v0, p1, LM0/t1;->v:I

    iget-object p1, p1, LM0/t1;->o:LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/I;

    iget-object p1, p1, LN0/I;->a:Landroid/media/session/MediaSession;

    or-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setFlags(I)V

    :cond_2
    invoke-virtual {p2}, LM0/d2;->W0()LG/P;

    move-result-object p1

    invoke-virtual {p0, p1}, LM0/r1;->m(LG/P;)V

    return-void
.end method

.method public o(LG/T;)V
    .locals 3

    iget-object v0, p0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v1, v0, LM0/t1;->o:LN0/O;

    iget-object v2, v1, LN0/O;->g:Ljava/lang/Object;

    check-cast v2, LN0/O;

    iget-object v2, v2, LN0/O;->f:Ljava/lang/Object;

    check-cast v2, LN0/y;

    iget-object v2, v2, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object p1, p1, LG/T;->a:Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, LM0/t1;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    iget-object v0, v0, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public p(I)V
    .locals 6

    iget-object v0, p0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v0, v0, LM0/t1;->o:LN0/O;

    invoke-static {p1}, LM0/u;->m(I)I

    move-result p1

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    iget v1, v0, LN0/I;->j:I

    if-eq v1, p1, :cond_1

    iput p1, v0, LN0/I;->j:I

    iget-object v1, v0, LN0/I;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, LN0/I;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, v0, LN0/I;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, LN0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3, p1}, LN0/b;->d(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    :try_start_2
    const-string v4, "MediaSessionCompat"

    const-string v5, "Dead object in setRepeatMode."

    invoke-static {v4, v5, v3}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, v0, LN0/I;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_4
    return-void
.end method

.method public q(Z)V
    .locals 6

    iget-object v0, p0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v0, v0, LM0/t1;->o:LN0/O;

    sget-object v1, LM0/u;->a:Lu1/b0;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    iget v1, v0, LN0/I;->k:I

    if-eq v1, p1, :cond_1

    iput p1, v0, LN0/I;->k:I

    iget-object v1, v0, LN0/I;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, LN0/I;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, v0, LN0/I;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, LN0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3, p1}, LN0/b;->H(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    :try_start_2
    const-string v4, "MediaSessionCompat"

    const-string v5, "Dead object in setShuffleMode."

    invoke-static {v4, v5, v3}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, v0, LN0/I;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_4
    return-void
.end method

.method public r(LG/q0;)V
    .locals 0

    invoke-virtual {p0, p1}, LM0/r1;->t(LG/q0;)V

    invoke-virtual {p0}, LM0/r1;->s()V

    return-void
.end method

.method public s()V
    .locals 12

    iget-object v0, p0, LM0/r1;->i:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LM0/t1;

    iget-object v0, v1, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v2, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {v2}, LM0/d2;->W0()LG/P;

    move-result-object v3

    invoke-virtual {v2}, LM0/d2;->Y0()LG/T;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, LM0/d2;->S0(I)Z

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v6, :cond_0

    invoke-virtual {v2}, LM0/d2;->V0()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v5}, LM0/d2;->S0(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, LM0/d2;->getDuration()J

    move-result-wide v7

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v2, v3, LG/P;->a:Ljava/lang/String;

    :goto_1
    move-object v5, v2

    goto :goto_2

    :cond_2
    const-string v2, ""

    goto :goto_1

    :goto_2
    const/4 v2, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v3, LG/P;->f:LG/L;

    iget-object v3, v3, LG/L;->a:Landroid/net/Uri;

    if-eqz v3, :cond_3

    move-object v6, v3

    goto :goto_3

    :cond_3
    move-object v6, v2

    :goto_3
    iget-object v3, p0, LM0/r1;->e:LG/T;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, LM0/r1;->f:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, LM0/r1;->g:Landroid/net/Uri;

    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v9, p0, LM0/r1;->h:J

    cmp-long v3, v9, v7

    if-nez v3, :cond_4

    return-void

    :cond_4
    iput-object v5, p0, LM0/r1;->f:Ljava/lang/String;

    iput-object v6, p0, LM0/r1;->g:Landroid/net/Uri;

    iput-object v4, p0, LM0/r1;->e:LG/T;

    iput-wide v7, p0, LM0/r1;->h:J

    iget-object v3, v0, LM0/X0;->m:LJ/d;

    invoke-interface {v3, v4}, LJ/d;->m(LG/T;)Lz1/B;

    move-result-object v3

    if-eqz v3, :cond_5

    iput-object v2, v1, LM0/t1;->u:LM0/r1;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v9

    if-eqz v9, :cond_6

    :try_start_0
    invoke-static {v3}, Lcom/brisa/local/v;->i(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :cond_5
    :goto_4
    move-wide v9, v7

    move-object v8, v6

    move-object v6, v4

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Failed to load bitmap: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MediaSessionLegacyStub"

    invoke-static {v3, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-wide v9, v7

    move-object v8, v6

    move-object v6, v4

    new-instance v4, LM0/r1;

    move-object v7, v5

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, LM0/r1;-><init>(LM0/r1;LG/T;Ljava/lang/String;Landroid/net/Uri;J)V

    move-object v5, v7

    iput-object v4, v1, LM0/t1;->u:LM0/r1;

    iget-object v0, v0, LM0/X0;->l:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, LM0/A;

    const/4 v11, 0x6

    invoke-direct {v7, v0, v11}, LM0/A;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lz1/v;

    const/4 v11, 0x0

    invoke-direct {v0, v3, v4, v11}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v0, v7}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_6
    iget-object v0, v1, LM0/t1;->o:LN0/O;

    move-object v4, v6

    move-object v6, v8

    move-wide v7, v9

    move-object v9, v2

    invoke-static/range {v4 .. v9}, LM0/u;->k(LG/T;Ljava/lang/String;Landroid/net/Uri;JLandroid/graphics/Bitmap;)LN0/D;

    move-result-object v1

    invoke-static {v0, v1}, LM0/t1;->D(LN0/O;LN0/D;)V

    return-void
.end method

.method public t(LG/q0;)V
    .locals 10

    iget-object v0, p0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v1, v0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/t1;->L()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p1}, LG/q0;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, LM0/u;->a:Lu1/b0;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, LG/p0;

    invoke-direct {v0}, LG/p0;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    invoke-virtual {p1}, LG/q0;->o()I

    move-result v5

    if-ge v4, v5, :cond_1

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v0, v5, v6}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v5

    iget-object v5, v5, LG/p0;->c:LG/P;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v4, LM0/B0;

    const/4 v9, 0x3

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, LM0/B0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG/P;

    iget-object p1, p1, LG/P;->d:LG/T;

    iget-object p1, p1, LG/T;->k:[B

    if-nez p1, :cond_2

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, LM0/B0;->run()V

    goto :goto_2

    :cond_2
    iget-object v0, v1, LM0/X0;->m:LJ/d;

    invoke-interface {v0, p1}, LJ/d;->s([B)Lz1/B;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, LM0/X0;->l:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, LM0/A;

    const/4 v6, 0x6

    invoke-direct {v5, v0, v6}, LM0/A;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v4, v5}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_3
    iget-object p1, v0, LM0/t1;->o:LN0/O;

    invoke-static {p1, v3}, LM0/t1;->C(LN0/O;Ljava/util/ArrayList;)V

    return-void
.end method
