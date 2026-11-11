.class public final LN0/v;
.super Landroid/media/session/MediaController$Callback;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(LM0/q0;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LN0/v;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, LN0/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/q0;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, LG/l;->k(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    const/4 v2, 0x1

    if-ne v3, v2, :cond_2

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_2
    invoke-static {v2}, LF1/i;->g(Z)V

    new-instance v2, LN0/A;

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-static {v4}, LG/e;->b(Landroid/media/AudioAttributes;)LG/e;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v7

    invoke-direct/range {v2 .. v8}, LN0/A;-><init>(ILG/e;IIILjava/lang/String;)V

    iget-object v3, v1, LM0/q0;->e:LM0/t0;

    iget-object v4, v3, LM0/t0;->n:LM0/s0;

    new-instance v9, LM0/s0;

    iget-object v5, v4, LM0/s0;->d:Ljava/lang/Object;

    move-object v11, v5

    check-cast v11, LN0/U;

    iget-object v5, v4, LM0/s0;->e:Ljava/lang/Object;

    move-object v12, v5

    check-cast v12, LN0/D;

    iget-object v5, v4, LM0/s0;->f:Ljava/lang/Object;

    move-object v13, v5

    check-cast v13, Ljava/util/List;

    iget-object v5, v4, LM0/s0;->g:Ljava/lang/Object;

    move-object v14, v5

    check-cast v14, Ljava/lang/CharSequence;

    iget v15, v4, LM0/s0;->a:I

    iget v5, v4, LM0/s0;->b:I

    iget-object v4, v4, LM0/s0;->h:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Landroid/os/Bundle;

    move-object v10, v2

    move/from16 v16, v5

    invoke-direct/range {v9 .. v17}, LM0/s0;-><init>(LN0/A;LN0/U;LN0/D;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v9, v3, LM0/t0;->n:LM0/s0;

    invoke-virtual {v1}, LM0/q0;->e()V

    :cond_3
    return-void
.end method

.method public final onExtrasChanged(Landroid/os/Bundle;)V
    .locals 11

    invoke-static {p1}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, LN0/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/q0;

    if-eqz v0, :cond_1

    iget-object v1, v0, LM0/q0;->e:LM0/t0;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    move-object v10, p1

    iget-object p1, v1, LM0/t0;->n:LM0/s0;

    new-instance v2, LM0/s0;

    iget-object v3, p1, LM0/s0;->c:Ljava/lang/Object;

    check-cast v3, LN0/A;

    iget-object v4, p1, LM0/s0;->d:Ljava/lang/Object;

    check-cast v4, LN0/U;

    iget-object v5, p1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v5, LN0/D;

    iget-object v6, p1, LM0/s0;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, p1, LM0/s0;->g:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    iget v8, p1, LM0/s0;->a:I

    iget v9, p1, LM0/s0;->b:I

    invoke-direct/range {v2 .. v10}, LM0/s0;-><init>(LN0/A;LN0/U;LN0/D;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v2, v1, LM0/t0;->n:LM0/s0;

    const/4 p1, 0x1

    iput-boolean p1, v1, LM0/t0;->o:Z

    invoke-virtual {v0}, LM0/q0;->e()V

    :cond_1
    return-void
.end method

.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 12

    iget-object v0, p0, LN0/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/q0;

    if-eqz v0, :cond_1

    sget-object v1, LN0/D;->h:Lh/e;

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v2, LN0/D;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN0/D;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iput-object p1, v2, LN0/D;->f:Landroid/media/MediaMetadata;

    :goto_0
    move-object v6, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, v0, LM0/q0;->e:LM0/t0;

    iget-object v1, p1, LM0/t0;->n:LM0/s0;

    new-instance v3, LM0/s0;

    iget-object v2, v1, LM0/s0;->c:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, LN0/A;

    iget-object v2, v1, LM0/s0;->d:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, LN0/U;

    iget-object v2, v1, LM0/s0;->f:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Ljava/util/List;

    iget-object v2, v1, LM0/s0;->g:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;

    iget v9, v1, LM0/s0;->a:I

    iget v10, v1, LM0/s0;->b:I

    iget-object v1, v1, LM0/s0;->h:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Landroid/os/Bundle;

    invoke-direct/range {v3 .. v11}, LM0/s0;-><init>(LN0/A;LN0/U;LN0/D;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v3, p1, LM0/t0;->n:LM0/s0;

    invoke-virtual {v0}, LM0/q0;->e()V

    :cond_1
    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    iget-object v0, p0, LN0/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/q0;

    if-eqz v0, :cond_1

    iget-object v1, v0, LM0/q0;->c:LN0/u;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, LN0/U;->a(Landroid/media/session/PlaybackState;)LN0/U;

    move-result-object p1

    invoke-virtual {v0, p1}, LM0/q0;->b(LN0/U;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onQueueChanged(Ljava/util/List;)V
    .locals 12

    iget-object v0, p0, LN0/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/q0;

    if-eqz v0, :cond_0

    invoke-static {p1}, LN0/M;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, v0, LM0/q0;->e:LM0/t0;

    iget-object v2, v1, LM0/t0;->n:LM0/s0;

    invoke-static {p1}, LM0/t0;->X0(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    new-instance v3, LM0/s0;

    iget-object p1, v2, LM0/s0;->c:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, LN0/A;

    iget-object p1, v2, LM0/s0;->d:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, LN0/U;

    iget-object p1, v2, LM0/s0;->e:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, LN0/D;

    iget-object p1, v2, LM0/s0;->g:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/lang/CharSequence;

    iget v9, v2, LM0/s0;->a:I

    iget v10, v2, LM0/s0;->b:I

    iget-object p1, v2, LM0/s0;->h:Ljava/lang/Object;

    move-object v11, p1

    check-cast v11, Landroid/os/Bundle;

    invoke-direct/range {v3 .. v11}, LM0/s0;-><init>(LN0/A;LN0/U;LN0/D;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v3, v1, LM0/t0;->n:LM0/s0;

    invoke-virtual {v0}, LM0/q0;->e()V

    :cond_0
    return-void
.end method

.method public final onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 12

    iget-object v0, p0, LN0/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/q0;

    if-eqz v0, :cond_0

    iget-object v1, v0, LM0/q0;->e:LM0/t0;

    iget-object v2, v1, LM0/t0;->n:LM0/s0;

    new-instance v3, LM0/s0;

    iget-object v4, v2, LM0/s0;->c:Ljava/lang/Object;

    check-cast v4, LN0/A;

    iget-object v5, v2, LM0/s0;->d:Ljava/lang/Object;

    check-cast v5, LN0/U;

    iget-object v6, v2, LM0/s0;->e:Ljava/lang/Object;

    check-cast v6, LN0/D;

    iget-object v7, v2, LM0/s0;->f:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget v9, v2, LM0/s0;->a:I

    iget v10, v2, LM0/s0;->b:I

    iget-object v2, v2, LM0/s0;->h:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Landroid/os/Bundle;

    move-object v8, p1

    invoke-direct/range {v3 .. v11}, LM0/s0;-><init>(LN0/A;LN0/U;LN0/D;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v3, v1, LM0/t0;->n:LM0/s0;

    invoke-virtual {v0}, LM0/q0;->e()V

    :cond_0
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 1

    iget-object v0, p0, LN0/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/q0;

    if-eqz v0, :cond_0

    iget-object v0, v0, LM0/q0;->e:LM0/t0;

    iget-object v0, v0, LM0/t0;->b:LM0/z;

    invoke-virtual {v0}, LM0/z;->p()V

    :cond_0
    return-void
.end method

.method public final onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v0, p0, LN0/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/q0;

    if-eqz v0, :cond_3

    iget-object v0, v0, LM0/q0;->e:LM0/t0;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_1
    iget-object v0, v0, LM0/t0;->b:LM0/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v0, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LF1/i;->o(Z)V

    iget-object v0, v0, LM0/z;->d:LM0/x;

    new-instance v1, LM0/i2;

    invoke-direct {v1, p1, p2}, LM0/i2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, LM0/x;->H(LM0/i2;)Lz1/x;

    :cond_3
    :goto_1
    return-void
.end method
