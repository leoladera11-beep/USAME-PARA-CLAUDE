.class public final LR0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/o;
.implements Lb0/p;


# instance fields
.field public final synthetic e:I

.field public f:J

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LR0/b;->e:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, LR0/b;->f:J

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LR0/b;->e:I

    iput-wide p2, p0, LR0/b;->f:J

    iput-object p4, p0, LR0/b;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb0/o;J)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, LR0/b;->e:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, LR0/b;->g:Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Lb0/o;->getPosition()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, LF1/i;->g(Z)V

    .line 7
    iput-wide p2, p0, LR0/b;->f:J

    return-void
.end method

.method public constructor <init>(Lj2/i;)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, LR0/b;->e:I

    const-string v0, "source"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/b;->g:Ljava/lang/Object;

    const-wide/32 v0, 0x40000

    .line 3
    iput-wide v0, p0, LR0/b;->f:J

    return-void
.end method


# virtual methods
.method public A(I[BI)I
    .locals 1

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/o;

    invoke-interface {v0, p1, p2, p3}, Lb0/o;->A(I[BI)I

    move-result p1

    return p1
.end method

.method public a(I)I
    .locals 1

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/o;

    invoke-interface {v0, p1}, Lb0/o;->a(I)I

    move-result p1

    return p1
.end method

.method public b(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    iget-object v1, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v1, LR0/b;

    if-eqz v1, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, LR0/b;->b(I)V

    :cond_0
    return-void

    :cond_1
    iget-wide v0, p0, LR0/b;->f:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, LR0/b;->f:J

    return-void
.end method

.method public c(Lb0/z;)V
    .locals 2

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/p;

    new-instance v1, Lb0/E;

    invoke-direct {v1, p0, p1, p1}, Lb0/E;-><init>(LR0/b;Lb0/z;Lb0/z;)V

    invoke-interface {v0, v1}, Lb0/p;->c(Lb0/z;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/p;

    invoke-interface {v0}, Lb0/p;->e()V

    return-void
.end method

.method public f([BIIZ)Z
    .locals 1

    iget-object p2, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast p2, Lb0/o;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3, p4}, Lb0/o;->f([BIIZ)Z

    move-result p1

    return p1
.end method

.method public g(I)I
    .locals 6

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, LR0/b;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    iget-wide v0, p0, LR0/b;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, LR0/b;->f:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_1
    if-ge p1, v1, :cond_2

    iget-wide v0, p0, LR0/b;->f:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_2
    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, LR0/b;->g(I)I

    move-result p1

    iget-wide v0, p0, LR0/b;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getLength()J
    .locals 4

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/o;

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, LR0/b;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 4

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/o;

    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, LR0/b;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, LR0/b;

    if-nez v0, :cond_0

    new-instance v0, LR0/b;

    invoke-direct {v0}, LR0/b;-><init>()V

    iput-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public i(I)Z
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, LR0/b;->h()V

    iget-object v1, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v1, LR0/b;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, LR0/b;->i(I)Z

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, LR0/b;->f:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public j(IZ)V
    .locals 9

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, LR0/b;->h()V

    iget-object v1, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v1, LR0/b;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, LR0/b;->j(IZ)V

    return-void

    :cond_0
    iget-wide v0, p0, LR0/b;->f:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const-wide/16 v5, 0x1

    shl-long v7, v5, p1

    sub-long/2addr v7, v5

    and-long v5, v0, v7

    not-long v7, v7

    and-long/2addr v0, v7

    shl-long/2addr v0, v4

    or-long/2addr v0, v5

    iput-wide v0, p0, LR0/b;->f:J

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, LR0/b;->r(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, LR0/b;->b(I)V

    :goto_1
    if-nez v2, :cond_4

    iget-object p1, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast p1, LR0/b;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, LR0/b;->h()V

    iget-object p1, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast p1, LR0/b;

    invoke-virtual {p1, v3, v2}, LR0/b;->j(IZ)V

    return-void
.end method

.method public k()LW1/k;
    .locals 8

    new-instance v0, LZ0/i;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LZ0/i;-><init>(I)V

    :goto_0
    iget-object v1, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v1, Lj2/i;

    iget-wide v2, p0, LR0/b;->f:J

    invoke-interface {v1, v2, v3}, Lj2/i;->j(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, LR0/b;->f:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, LR0/b;->f:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, LZ0/i;->k()LW1/k;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x4

    const/16 v3, 0x3a

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, LS1/d;->F(Ljava/lang/CharSequence;CII)I

    move-result v2

    const/4 v5, -0x1

    const-string v6, "this as java.lang.String).substring(startIndex)"

    const/4 v7, 0x0

    if-eq v2, v5, :cond_1

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, LZ0/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v5, ""

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, LZ0/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5, v1}, LZ0/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public l(I[BI)V
    .locals 1

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/o;

    invoke-interface {v0, p1, p2, p3}, Lb0/o;->l(I[BI)V

    return-void
.end method

.method public n(I)Z
    .locals 10

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, LR0/b;->h()V

    iget-object v1, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v1, LR0/b;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, LR0/b;->n(I)Z

    move-result p1

    return p1

    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    iget-wide v4, p0, LR0/b;->f:J

    and-long v6, v4, v2

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    move p1, v6

    goto :goto_0

    :cond_1
    move p1, v7

    :goto_0
    not-long v8, v2

    and-long/2addr v4, v8

    iput-wide v4, p0, LR0/b;->f:J

    sub-long/2addr v2, v0

    and-long v0, v4, v2

    not-long v2, v2

    and-long/2addr v2, v4

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    or-long/2addr v0, v2

    iput-wide v0, p0, LR0/b;->f:J

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, LR0/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v7}, LR0/b;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, LR0/b;->r(I)V

    :cond_2
    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, LR0/b;

    invoke-virtual {v0, v7}, LR0/b;->n(I)Z

    :cond_3
    return p1
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/o;

    invoke-interface {v0}, Lb0/o;->o()V

    return-void
.end method

.method public p(I)V
    .locals 1

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/o;

    invoke-interface {v0, p1}, Lb0/o;->p(I)V

    return-void
.end method

.method public q()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LR0/b;->f:J

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, LR0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LR0/b;->q()V

    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, LR0/b;->h()V

    iget-object v1, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v1, LR0/b;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, LR0/b;->r(I)V

    return-void

    :cond_0
    iget-wide v0, p0, LR0/b;->f:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, LR0/b;->f:J

    return-void
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/o;

    invoke-interface {v0, p1, p2, p3}, LG/o;->read([BII)I

    move-result p1

    return p1
.end method

.method public readFully([BII)V
    .locals 1

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/o;

    invoke-interface {v0, p1, p2, p3}, Lb0/o;->readFully([BII)V

    return-void
.end method

.method public t(IZ)Z
    .locals 1

    iget-object p2, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast p2, Lb0/o;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lb0/o;->t(IZ)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LR0/b;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, LR0/b;

    if-nez v0, :cond_0

    iget-wide v0, p0, LR0/b;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v1, LR0/b;

    invoke-virtual {v1}, LR0/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LR0/b;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public v(II)Lb0/G;
    .locals 1

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/p;

    invoke-interface {v0, p1, p2}, Lb0/p;->v(II)Lb0/G;

    move-result-object p1

    return-object p1
.end method

.method public w([BIIZ)Z
    .locals 1

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/o;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/o;->w([BIIZ)Z

    move-result p1

    return p1
.end method

.method public x()J
    .locals 4

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/o;

    invoke-interface {v0}, Lb0/o;->x()J

    move-result-wide v0

    iget-wide v2, p0, LR0/b;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public z(I)V
    .locals 1

    iget-object v0, p0, LR0/b;->g:Ljava/lang/Object;

    check-cast v0, Lb0/o;

    invoke-interface {v0, p1}, Lb0/o;->z(I)V

    return-void
.end method
