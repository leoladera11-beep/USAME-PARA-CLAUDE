.class public final LN/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ/w;
.implements La0/a;
.implements LN/a0;


# instance fields
.field public e:LZ/w;

.field public f:La0/a;

.field public g:LZ/w;

.field public h:La0/a;


# virtual methods
.method public final a(J[F)V
    .locals 1

    iget-object v0, p0, LN/t;->h:La0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, La0/a;->a(J[F)V

    :cond_0
    iget-object v0, p0, LN/t;->f:La0/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, La0/a;->a(J[F)V

    :cond_1
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, La0/l;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, LN/t;->g:LZ/w;

    iput-object p1, p0, LN/t;->h:La0/a;

    return-void

    :cond_1
    invoke-virtual {p2}, La0/l;->getVideoFrameMetadataListener()LZ/w;

    move-result-object p1

    iput-object p1, p0, LN/t;->g:LZ/w;

    invoke-virtual {p2}, La0/l;->getCameraMotionListener()La0/a;

    move-result-object p1

    iput-object p1, p0, LN/t;->h:La0/a;

    return-void

    :cond_2
    check-cast p2, La0/a;

    iput-object p2, p0, LN/t;->f:La0/a;

    return-void

    :cond_3
    check-cast p2, LZ/w;

    iput-object p2, p0, LN/t;->e:LZ/w;

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, LN/t;->h:La0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La0/a;->c()V

    :cond_0
    iget-object v0, p0, LN/t;->f:La0/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, La0/a;->c()V

    :cond_1
    return-void
.end method

.method public final d(JJLG/x;Landroid/media/MediaFormat;)V
    .locals 8

    iget-object v0, p0, LN/t;->g:LZ/w;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, LZ/w;->d(JJLG/x;Landroid/media/MediaFormat;)V

    move-object v7, v6

    move-object v6, v5

    move-wide v4, v3

    move-wide v2, v1

    goto :goto_0

    :cond_0
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    :goto_0
    iget-object v1, p0, LN/t;->e:LZ/w;

    if-eqz v1, :cond_1

    invoke-interface/range {v1 .. v7}, LZ/w;->d(JJLG/x;Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method
