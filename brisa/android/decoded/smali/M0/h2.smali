.class public final LM0/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/k;


# instance fields
.field public final synthetic e:I

.field public f:Z

.field public g:I

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LM0/h2;->e:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    .line 3
    new-instance v0, Lh/e;

    .line 4
    invoke-direct {v0}, Lh/j;-><init>()V

    .line 5
    iput-object v0, p0, LM0/h2;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;LS/l;LB/A;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LM0/h2;->e:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, LM0/h2;->h:Ljava/lang/Object;

    .line 8
    new-instance p1, LS/f;

    invoke-direct {p1, p2}, LS/f;-><init>(Landroid/os/HandlerThread;)V

    iput-object p1, p0, LM0/h2;->i:Ljava/lang/Object;

    .line 9
    iput-object p3, p0, LM0/h2;->j:Ljava/lang/Object;

    .line 10
    iput-object p4, p0, LM0/h2;->k:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, LM0/h2;->g:I

    return-void
.end method

.method public static b(LM0/h2;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 5

    iget-object v0, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast v0, LS/f;

    iget-object v1, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec;

    iget-object v2, v0, LS/f;->b:Landroid/os/HandlerThread;

    iget-object v3, v0, LS/f;->c:Landroid/os/Handler;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, LF1/i;->o(Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iput-object v3, v0, LS/f;->c:Landroid/os/Handler;

    const-string v0, "configureCodec"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, LM0/h2;->j:Ljava/lang/Object;

    check-cast p1, LS/l;

    invoke-interface {p1}, LS/l;->start()V

    const-string p1, "startCodec"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x23

    if-lt p1, p2, :cond_2

    iget-object p1, p0, LM0/h2;->k:Ljava/lang/Object;

    check-cast p1, LB/A;

    if-eqz p1, :cond_2

    iget-object p2, p1, LB/A;->h:Ljava/lang/Object;

    check-cast p2, Landroid/media/LoudnessCodecController;

    if-eqz p2, :cond_1

    invoke-static {p2, v1}, LS/a;->e(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, LB/A;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, LF1/i;->o(Z)V

    :cond_2
    :goto_1
    iput v4, p0, LM0/h2;->g:I

    return-void
.end method

.method public static f(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(LZ/l;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    new-instance v1, LS/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LS/b;-><init>(LS/k;LZ/l;I)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public C(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-static {v0, p1}, LO/h;->s(Landroid/media/MediaCodec;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final a()V
    .locals 7

    iget v0, p0, LM0/h2;->e:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x21

    const/16 v1, 0x1e

    const/16 v2, 0x23

    const/4 v3, 0x1

    :try_start_0
    iget v4, p0, LM0/h2;->g:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, LM0/h2;->j:Ljava/lang/Object;

    check-cast v4, LS/l;

    invoke-interface {v4}, LS/l;->shutdown()V

    iget-object v4, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast v4, LS/f;

    iget-object v5, v4, LS/f;->a:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean v3, v4, LS/f;->m:Z

    iget-object v6, v4, LS/f;->b:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->quit()Z

    invoke-virtual {v4}, LS/f;->a()V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    :catchall_1
    move-exception v4

    goto :goto_4

    :cond_0
    :goto_0
    const/4 v4, 0x2

    iput v4, p0, LM0/h2;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean v4, p0, LM0/h2;->f:Z

    if-nez v4, :cond_4

    :try_start_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_1

    if-ge v4, v0, :cond_1

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    if-lt v4, v2, :cond_2

    iget-object v0, p0, LM0/h2;->k:Ljava/lang/Object;

    check-cast v0, LB/A;

    if-eqz v0, :cond_2

    iget-object v1, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, LB/A;->R(Landroid/media/MediaCodec;)V

    :cond_2
    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, LM0/h2;->f:Z

    goto :goto_3

    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_3

    iget-object v1, p0, LM0/h2;->k:Ljava/lang/Object;

    check-cast v1, LB/A;

    if-eqz v1, :cond_3

    iget-object v2, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, LB/A;->R(Landroid/media/MediaCodec;)V

    :cond_3
    iget-object v1, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, LM0/h2;->f:Z

    throw v0

    :cond_4
    :goto_3
    return-void

    :goto_4
    iget-boolean v5, p0, LM0/h2;->f:Z

    if-nez v5, :cond_8

    :try_start_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v1, :cond_5

    if-ge v5, v0, :cond_5

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_5
    if-lt v5, v2, :cond_6

    iget-object v0, p0, LM0/h2;->k:Ljava/lang/Object;

    check-cast v0, LB/A;

    if-eqz v0, :cond_6

    iget-object v1, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, LB/A;->R(Landroid/media/MediaCodec;)V

    :cond_6
    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, LM0/h2;->f:Z

    goto :goto_7

    :goto_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_7

    iget-object v1, p0, LM0/h2;->k:Ljava/lang/Object;

    check-cast v1, LB/A;

    if-eqz v1, :cond_7

    iget-object v2, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, LB/A;->R(Landroid/media/MediaCodec;)V

    :cond_7
    iget-object v1, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, LM0/h2;->f:Z

    throw v0

    :cond_8
    :goto_7
    throw v4

    :pswitch_0
    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, LM0/h2;->f:Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast v2, Lh/e;

    invoke-virtual {v2}, Lh/e;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast v2, Lh/e;

    invoke-virtual {v2}, Lh/j;->clear()V

    iget-object v2, p0, LM0/h2;->j:Ljava/lang/Object;

    check-cast v2, LM0/V;

    if-eqz v2, :cond_9

    iget-object v2, p0, LM0/h2;->k:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, LM0/h2;->j:Ljava/lang/Object;

    check-cast v3, LM0/V;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    iput-object v2, p0, LM0/h2;->j:Ljava/lang/Object;

    iput-object v2, p0, LM0/h2;->k:Ljava/lang/Object;

    goto :goto_8

    :catchall_4
    move-exception v1

    goto :goto_a

    :cond_9
    :goto_8
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/g2;

    invoke-virtual {v1}, LM0/g2;->n()V

    goto :goto_9

    :cond_a
    return-void

    :goto_a
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(ILM/b;JI)V
    .locals 7

    iget-object v0, p0, LM0/h2;->j:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LS/l;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, LS/l;->c(ILM/b;JI)V

    return-void
.end method

.method public d(Ljava/lang/Object;)LM0/g2;
    .locals 3

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LM0/h2;->k()I

    move-result v1

    new-instance v2, LM0/g2;

    invoke-direct {v2, v1, p1}, LM0/g2;-><init>(ILjava/lang/Object;)V

    iget-boolean p1, p0, LM0/h2;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {v2}, LM0/g2;->n()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast p1, Lh/e;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, LM0/h2;->j:Ljava/lang/Object;

    check-cast v0, LS/l;

    invoke-interface {v0, p1}, LS/l;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public flush()V
    .locals 6

    iget-object v0, p0, LM0/h2;->j:Ljava/lang/Object;

    check-cast v0, LS/l;

    invoke-interface {v0}, LS/l;->flush()V

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iget-object v0, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast v0, LS/f;

    iget-object v1, v0, LS/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v0, LS/f;->l:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, LS/f;->l:J

    iget-object v2, v0, LS/f;->c:Landroid/os/Handler;

    sget-object v3, LJ/W;->a:Ljava/lang/String;

    new-instance v3, LH/a;

    const/16 v4, 0x11

    invoke-direct {v3, v0, v4}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g(IIJI)V
    .locals 7

    iget-object v0, p0, LM0/h2;->j:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LS/l;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, LS/l;->g(IIJI)V

    return-void
.end method

.method public h(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 10

    iget-object v0, p0, LM0/h2;->j:Ljava/lang/Object;

    check-cast v0, LS/l;

    invoke-interface {v0}, LS/l;->b()V

    iget-object v0, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast v0, LS/f;

    iget-object v1, v0, LS/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, LS/f;->b()V

    iget-wide v2, v0, LS/f;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    iget-boolean v2, v0, LS/f;->m:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    monitor-exit v1

    return v5

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_2
    iget-object v2, v0, LS/f;->e:LJ/f;

    iget v6, v2, LJ/f;->a:I

    iget v7, v2, LJ/f;->b:I

    if-ne v6, v7, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    monitor-exit v1

    return v5

    :cond_4
    if-eq v6, v7, :cond_7

    iget-object v3, v2, LJ/f;->c:[I

    aget v3, v3, v6

    add-int/2addr v6, v4

    iget v4, v2, LJ/f;->d:I

    and-int/2addr v4, v6

    iput v4, v2, LJ/f;->a:I

    if-ltz v3, :cond_5

    iget-object v2, v0, LS/f;->h:Landroid/media/MediaFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LS/f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_2

    :cond_5
    const/4 p1, -0x2

    if-ne v3, p1, :cond_6

    iget-object p1, v0, LS/f;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, v0, LS/f;->h:Landroid/media/MediaFormat;

    :cond_6
    :goto_2
    monitor-exit v1

    return v3

    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(I)V
    .locals 2

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public k()I
    .locals 3

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LM0/h2;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LM0/h2;->g:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()Landroid/media/MediaFormat;
    .locals 2

    iget-object v0, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast v0, LS/f;

    iget-object v1, v0, LS/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, LS/f;->h:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public m(ILjava/lang/Object;)V
    .locals 4

    const-string v0, "Type mismatch, expected "

    iget-object v1, p0, LM0/h2;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast v2, Lh/e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lh/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/g2;

    if-eqz p1, :cond_1

    iget-object v2, p1, LM0/g2;->m:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, p2}, Lz1/p;->k(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v2, "SequencedFutureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LM0/g2;->m:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, LM0/h2;->j:Ljava/lang/Object;

    check-cast p1, LM0/V;

    if-eqz p1, :cond_2

    iget-object p1, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast p1, Lh/e;

    invoke-virtual {p1}, Lh/j;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LM0/h2;->a()V

    :cond_2
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-static {v0}, LS/a;->d(Landroid/media/MediaCodec;)V

    return-void
.end method

.method public o(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public p(LJ/P;)V
    .locals 2

    iget-object v0, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast v0, LS/f;

    iget-object v1, v0, LS/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, LS/f;->b()V

    iget-object v0, p0, LM0/h2;->j:Ljava/lang/Object;

    check-cast v0, LS/l;

    invoke-interface {v0}, LS/l;->b()V

    invoke-interface {p1}, LJ/P;->run()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public u(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public v(IJ)V
    .locals 1

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public w()I
    .locals 7

    iget-object v0, p0, LM0/h2;->j:Ljava/lang/Object;

    check-cast v0, LS/l;

    invoke-interface {v0}, LS/l;->b()V

    iget-object v0, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast v0, LS/f;

    iget-object v1, v0, LS/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, LS/f;->b()V

    iget-wide v2, v0, LS/f;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    iget-boolean v2, v0, LS/f;->m:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    monitor-exit v1

    return v5

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    iget-object v0, v0, LS/f;->d:LJ/f;

    iget v2, v0, LJ/f;->a:I

    iget v6, v0, LJ/f;->b:I

    if-ne v2, v6, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    if-eq v2, v6, :cond_5

    iget-object v3, v0, LJ/f;->c:[I

    aget v5, v3, v2

    add-int/2addr v2, v4

    iget v3, v0, LJ/f;->d:I

    and-int/2addr v2, v3

    iput v2, v0, LJ/f;->a:I

    :goto_2
    monitor-exit v1

    return v5

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public x(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, LM0/h2;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-static {v0, p1}, LO/h;->C(Landroid/media/MediaCodec;Ljava/util/ArrayList;)V

    return-void
.end method

.method public y(La1/g;)Z
    .locals 2

    iget-object v0, p0, LM0/h2;->i:Ljava/lang/Object;

    check-cast v0, LS/f;

    iget-object v1, v0, LS/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, LS/f;->o:La1/g;

    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
