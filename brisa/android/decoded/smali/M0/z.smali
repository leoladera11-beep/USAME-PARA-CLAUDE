.class public final LM0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/g0;


# instance fields
.field public final a:LG/p0;

.field public b:Z

.field public final c:LM0/y;

.field public final d:LM0/x;

.field public final e:Landroid/os/Handler;

.field public final f:J

.field public g:Z

.field public final h:LM0/B;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;LM0/o2;Landroid/os/Bundle;LM0/x;Landroid/os/Looper;LM0/B;LN0/O;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "token must not be null"

    invoke-static {p2, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [AndroidXMedia3/1.11.1] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaController"

    invoke-static {v1, v0}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LG/p0;

    invoke-direct {v0}, LG/p0;-><init>()V

    iput-object v0, p0, LM0/z;->a:LG/p0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LM0/z;->f:J

    iput-object p4, p0, LM0/z;->d:LM0/x;

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, LM0/z;->e:Landroid/os/Handler;

    iput-object p6, p0, LM0/z;->h:LM0/B;

    iget-object p4, p2, LM0/o2;->a:LM0/n2;

    invoke-interface {p4}, LM0/n2;->d()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance v0, LM0/t0;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, LM0/t0;-><init>(Landroid/content/ContextWrapper;LM0/z;LM0/o2;Landroid/os/Bundle;Landroid/os/Looper;LJ/d;)V

    move-object p3, p0

    goto :goto_0

    :cond_0
    move-object p4, p2

    move-object p6, p5

    move-object p2, p1

    move-object p5, p3

    new-instance p1, LM0/l0;

    move-object p3, p0

    invoke-direct/range {p1 .. p6}, LM0/l0;-><init>(Landroid/content/ContextWrapper;LM0/z;LM0/o2;Landroid/os/Bundle;Landroid/os/Looper;)V

    move-object v0, p1

    :goto_0
    iput-object v0, p3, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->T0()V

    return-void
.end method

.method public static W0(LM0/B;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz1/p;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/brisa/local/v;->i(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LM0/z;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, LM0/z;->p()V

    return-void

    :catch_0
    move-exception p0

    const-string v0, "MediaController"

    const-string v1, "MediaController future failed (so we couldn\'t release it)"

    invoke-static {v0, v1, p0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring clearMediaItems()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->A()V

    return-void
.end method

.method public final A0(II)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring removeMediaItems()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, LM0/y;->A0(II)V

    return-void
.end method

.method public final B(Z)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setShuffleMode()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->B(Z)V

    return-void
.end method

.method public final B0(I)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setDeviceVolume()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->B0(I)V

    return-void
.end method

.method public final C()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekToNextMediaItem()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->C()V

    return-void
.end method

.method public final C0()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekToNext()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->C0()V

    return-void
.end method

.method public final D(I)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring decreaseDeviceVolume()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->D(I)V

    return-void
.end method

.method public final D0(LG/e;Z)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring setAudioAttributes()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, LM0/y;->D0(LG/e;Z)V

    return-void
.end method

.method public final E()LG/y0;
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->E()LG/y0;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, LG/y0;->b:LG/y0;

    return-object v0
.end method

.method public final E0()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekForward()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->E0()V

    return-void
.end method

.method public final F()I
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->F()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final F0(Landroid/view/TextureView;)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setVideoTextureView()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->F0(Landroid/view/TextureView;)V

    return-void
.end method

.method public final G()J
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->G()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final G0(LG/P;)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    const-string v0, "mediaItems must not be null"

    invoke-static {p1, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setMediaItem()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->G0(LG/P;)V

    return-void
.end method

.method public final H()LG/T;
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->H()LG/T;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, LG/T;->M:LG/T;

    return-object v0
.end method

.method public final H0()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekBack()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->H0()V

    return-void
.end method

.method public final I()Z
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I0(Landroid/view/SurfaceHolder;)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setVideoSurfaceHolder()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->I0(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final J()J
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->J()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final J0(F)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "volume must be between 0 and 1"

    invoke-static {v1, v0}, LF1/i;->f(Ljava/lang/String;Z)V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setVolume()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v0, p1}, LM0/y;->J0(F)V

    return-void
.end method

.method public final K()I
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->K()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final K0()LG/T;
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->K0()LG/T;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, LG/T;->M:LG/T;

    return-object v0
.end method

.method public final L()LI/c;
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->L()LI/c;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, LI/c;->d:LI/c;

    return-object v0
.end method

.method public final L0(Ljava/util/List;)V
    .locals 4

    invoke-virtual {p0}, LM0/z;->Y0()V

    const-string v0, "mediaItems must not be null"

    invoke-static {p1, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    const-string v3, "items must not contain null, index=%s"

    invoke-static {v1, v3, v2}, LF1/i;->d(ILjava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setMediaItems()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v0, p1}, LM0/y;->L0(Ljava/util/List;)V

    return-void
.end method

.method public final M(Landroid/view/TextureView;)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring clearVideoTextureView()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->M(Landroid/view/TextureView;)V

    return-void
.end method

.method public final M0()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekToPrevious()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->M0()V

    return-void
.end method

.method public final N()LG/C0;
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->N()LG/C0;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, LG/C0;->d:LG/C0;

    return-object v0
.end method

.method public final N0(LG/P;)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    const-string v0, "mediaItems must not be null"

    invoke-static {p1, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setMediaItems()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->N0(LG/P;)V

    return-void
.end method

.method public final O(LG/e0;)V
    .locals 1

    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0, p1}, LM0/y;->O(LG/e0;)V

    return-void
.end method

.method public final O0()J
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->O0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final P()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekToPreviousMediaItem()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->P()V

    return-void
.end method

.method public final P0()J
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->P0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final Q()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring play()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->Q()V

    return-void
.end method

.method public final Q0()Z
    .locals 5

    invoke-virtual {p0}, LM0/z;->Y0()V

    invoke-virtual {p0}, LM0/z;->p0()LG/q0;

    move-result-object v0

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, LM0/z;->V()I

    move-result v1

    iget-object v2, p0, LM0/z;->a:LG/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-boolean v0, v0, LG/p0;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final R()F
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->R()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final R0()LG/P;
    .locals 5

    invoke-virtual {p0}, LM0/z;->p0()LG/q0;

    move-result-object v0

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LM0/z;->V()I

    move-result v1

    iget-object v2, p0, LM0/z;->a:LG/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-object v0, v0, LG/p0;->c:LG/P;

    return-object v0
.end method

.method public final S()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekTo()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->S()V

    return-void
.end method

.method public final S0(I)Z
    .locals 1

    invoke-virtual {p0}, LM0/z;->w()LG/c0;

    move-result-object v0

    invoke-virtual {v0, p1}, LG/c0;->a(I)Z

    move-result p1

    return p1
.end method

.method public final T()LG/e;
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, LG/e;->i:LG/e;

    return-object v0

    :cond_0
    invoke-interface {v0}, LM0/y;->T()LG/e;

    move-result-object v0

    return-object v0
.end method

.method public final T0()Z
    .locals 5

    invoke-virtual {p0}, LM0/z;->Y0()V

    invoke-virtual {p0}, LM0/z;->p0()LG/q0;

    move-result-object v0

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, LM0/z;->V()I

    move-result v1

    iget-object v2, p0, LM0/z;->a:LG/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-boolean v0, v0, LG/p0;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final U()I
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->U()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final U0()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final V()I
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->V()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final V0()Z
    .locals 5

    invoke-virtual {p0}, LM0/z;->Y0()V

    invoke-virtual {p0}, LM0/z;->p0()LG/q0;

    move-result-object v0

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, LM0/z;->V()I

    move-result v1

    iget-object v2, p0, LM0/z;->a:LG/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    invoke-virtual {v0}, LG/p0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final W(IZ)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring setDeviceMuted()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, LM0/y;->W(IZ)V

    return-void
.end method

.method public final X(LG/T;)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    const-string v0, "playlistMetadata must not be null"

    invoke-static {p1, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setPlaylistMetadata()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->X(LG/T;)V

    return-void
.end method

.method public final X0(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, LM0/z;->e:Landroid/os/Handler;

    invoke-static {v0, p1}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Y()LG/p;
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, LG/p;->e:LG/p;

    return-object v0

    :cond_0
    invoke-interface {v0}, LM0/y;->Y()LG/p;

    move-result-object v0

    return-object v0
.end method

.method public final Y0()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MediaController method is called from a wrong thread. See javadoc of MediaController for details."

    invoke-static {v1, v0}, LF1/i;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public final Z(LG/P;J)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    const-string v0, "mediaItems must not be null"

    invoke-static {p1, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring setMediaItem()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, LM0/y;->Z(LG/P;J)V

    return-void
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-boolean v0, p0, LM0/z;->g:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, LF1/i;->o(Z)V

    iput-boolean v2, p0, LM0/z;->g:Z

    iget-object v0, p0, LM0/z;->h:LM0/B;

    iput-boolean v2, v0, LM0/B;->n:Z

    iget-object v1, v0, LM0/B;->m:LM0/z;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lz1/p;->k(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final a0()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring decreaseDeviceVolume()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->a0()V

    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b0(I)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setRepeatMode()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->b0(I)V

    return-void
.end method

.method public final c()I
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->c()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c0(II)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring setDeviceVolume()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, LM0/y;->c0(II)V

    return-void
.end method

.method public final d(LG/a0;)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setPlaybackParameters()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->d(LG/a0;)V

    return-void
.end method

.method public final d0(Z)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setDeviceMuted()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->d0(Z)V

    return-void
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring prepare()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->e()V

    return-void
.end method

.method public final e0(I)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring increaseDeviceVolume()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->e0(I)V

    return-void
.end method

.method public final f()I
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->f()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f0()I
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->f0()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final g()LG/a0;
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->g()LG/a0;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, LG/a0;->d:LG/a0;

    return-object v0
.end method

.method public final g0(Landroid/view/SurfaceView;)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setVideoSurfaceView()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->g0(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final getDuration()J
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final h(F)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setPlaybackSpeed()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->h(F)V

    return-void
.end method

.method public final h0()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring pause()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->h0()V

    return-void
.end method

.method public final i(Ljava/util/List;IJ)V
    .locals 4

    invoke-virtual {p0}, LM0/z;->Y0()V

    const-string v0, "mediaItems must not be null"

    invoke-static {p1, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    const-string v3, "items must not contain null, index=%s"

    invoke-static {v1, v3, v2}, LF1/i;->d(ILjava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring setMediaItems()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v0, p1, p2, p3, p4}, LM0/y;->i(Ljava/util/List;IJ)V

    return-void
.end method

.method public final i0(Landroid/view/SurfaceView;)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring clearVideoSurfaceView()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->i0(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final j()LG/Z;
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->j()LG/Z;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j0(II)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring moveMediaItem()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, LM0/y;->j0(II)V

    return-void
.end method

.method public final k()I
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, LM0/y;->k()I

    move-result v0

    return v0
.end method

.method public final k0(III)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring moveMediaItems()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, LM0/y;->k0(III)V

    return-void
.end method

.method public final l(Z)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, LM0/y;->l(Z)V

    :cond_0
    return-void
.end method

.method public final l0()I
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->l0()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m0(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring addMediaItems()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->m0(Ljava/util/List;)V

    return-void
.end method

.method public final n(I)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring seekTo()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->n(I)V

    return-void
.end method

.method public final n0(LG/w0;)V
    .locals 3

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MediaController"

    const-string v2, "The controller is not connected. Ignoring setTrackSelectionParameters()."

    invoke-static {v1, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->n0(LG/w0;)V

    return-void
.end method

.method public final o()J
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->o()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final o0(LG/e0;)V
    .locals 1

    invoke-virtual {p0}, LM0/z;->Y0()V

    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0, p1}, LM0/y;->o0(LG/e0;)V

    return-void
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, LM0/z;->e:Landroid/os/Handler;

    const-string v1, "MediaController"

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-boolean v2, p0, LM0/z;->b:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Release "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [AndroidXMedia3/1.11.1] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, LG/Q;->a:Ljava/util/HashSet;

    const-class v3, LG/Q;

    monitor-enter v3

    :try_start_0
    sget-object v4, LG/Q;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, LM0/z;->b:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_1
    iget-object v3, p0, LM0/z;->c:LM0/y;

    invoke-interface {v3}, LM0/y;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Exception while releasing impl"

    invoke-static {v1, v4, v3}, LJ/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    iget-boolean v1, p0, LM0/z;->g:Z

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, LF1/i;->o(Z)V

    iget-object v0, p0, LM0/z;->d:LM0/x;

    invoke-interface {v0}, LM0/x;->b()V

    goto :goto_2

    :cond_2
    iput-boolean v2, p0, LM0/z;->g:Z

    iget-object v0, p0, LM0/z;->h:LM0/B;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Session rejected the connection request."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lz1/p;->l(Ljava/lang/Throwable;)Z

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final p0()LG/q0;
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->p0()LG/q0;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, LG/q0;->a:LG/m0;

    return-object v0
.end method

.method public final q()J
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->q()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final q0(ILjava/util/List;I)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring replaceMediaItems()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, LM0/y;->q0(ILjava/util/List;I)V

    return-void
.end method

.method public final r()J
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->r()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final r0()Z
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, LM0/y;->r0()Z

    move-result v0

    return v0
.end method

.method public final s()J
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->s()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final s0(I)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring removeMediaItem()."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, LM0/y;->s0(I)V

    return-void
.end method

.method public final t(IJ)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring seekTo()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, LM0/y;->t(IJ)V

    return-void
.end method

.method public final t0()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring mute()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->t0()V

    return-void
.end method

.method public final u()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring stop()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->u()V

    return-void
.end method

.method public final u0(ILG/P;)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring replaceMediaItem()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, LM0/y;->u0(ILG/P;)V

    return-void
.end method

.method public final v(ILjava/util/List;)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring addMediaItems()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, LM0/y;->v(ILjava/util/List;)V

    return-void
.end method

.method public final v0()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring increaseDeviceVolume()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->v0()V

    return-void
.end method

.method public final w()LG/c0;
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, LG/c0;->b:LG/c0;

    return-object v0

    :cond_0
    invoke-interface {v0}, LM0/y;->w()LG/c0;

    move-result-object v0

    return-object v0
.end method

.method public final w0()Z
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->w0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring unmute()."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, LM0/y;->x()V

    return-void
.end method

.method public final x0()LG/w0;
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, LG/w0;->J:LG/w0;

    return-object v0

    :cond_0
    invoke-interface {v0}, LM0/y;->x0()LG/w0;

    move-result-object v0

    return-object v0
.end method

.method public final y()J
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->y()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final y0(J)V
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring seekTo()."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, LM0/y;->y0(J)V

    return-void
.end method

.method public final z()Z
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z0()J
    .locals 2

    invoke-virtual {p0}, LM0/z;->Y0()V

    iget-object v0, p0, LM0/z;->c:LM0/y;

    invoke-interface {v0}, LM0/y;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LM0/y;->z0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
