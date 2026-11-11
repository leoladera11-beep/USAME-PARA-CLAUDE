.class public final LI0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/h;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:J

.field public d:I

.field public e:I

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, LI0/g;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, LJ/D;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LJ/D;-><init>(I)V

    iput-object v0, p0, LI0/g;->f:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, LI0/g;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LI0/g;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LI0/g;->f:Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lb0/G;

    iput-object p1, p0, LI0/g;->g:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, LI0/g;->c:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, LI0/g;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LI0/g;->b:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LI0/g;->c:J

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LI0/g;->b:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LI0/g;->c:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(LJ/D;)V
    .locals 8

    iget v0, p0, LI0/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LI0/g;->f:Ljava/lang/Object;

    check-cast v0, LJ/D;

    iget-object v1, p0, LI0/g;->g:Ljava/lang/Object;

    check-cast v1, Lb0/G;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, p0, LI0/g;->b:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, LJ/D;->a()I

    move-result v1

    iget v2, p0, LI0/g;->e:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    rsub-int/lit8 v2, v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p1, LJ/D;->a:[B

    iget v5, p1, LJ/D;->b:I

    iget-object v6, v0, LJ/D;->a:[B

    iget v7, p0, LI0/g;->e:I

    invoke-static {v4, v5, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, LI0/g;->e:I

    add-int/2addr v4, v2

    if-ne v4, v3, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LJ/D;->N(I)V

    const/16 v4, 0x49

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v5

    if-ne v4, v5, :cond_2

    const/16 v4, 0x44

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v5

    if-ne v4, v5, :cond_2

    const/16 v4, 0x33

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->z()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, LI0/g;->d:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, LI0/g;->b:Z

    goto :goto_2

    :cond_3
    :goto_1
    iget v0, p0, LI0/g;->d:I

    iget v2, p0, LI0/g;->e:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, LI0/g;->g:Ljava/lang/Object;

    check-cast v1, Lb0/G;

    invoke-interface {v1, v0, p1}, Lb0/G;->a(ILJ/D;)V

    iget p1, p0, LI0/g;->e:I

    add-int/2addr p1, v0

    iput p1, p0, LI0/g;->e:I

    :goto_2
    return-void

    :pswitch_0
    iget-boolean v0, p0, LI0/g;->b:Z

    if-eqz v0, :cond_b

    iget v0, p0, LI0/g;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, LJ/D;->a()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, LJ/D;->A()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    iput-boolean v2, p0, LI0/g;->b:Z

    :cond_5
    iget v0, p0, LI0/g;->d:I

    sub-int/2addr v0, v3

    iput v0, p0, LI0/g;->d:I

    iget-boolean v0, p0, LI0/g;->b:Z

    :goto_3
    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    iget v0, p0, LI0/g;->d:I

    if-ne v0, v3, :cond_9

    invoke-virtual {p1}, LJ/D;->a()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, LJ/D;->A()I

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v2, p0, LI0/g;->b:Z

    :cond_8
    iget v0, p0, LI0/g;->d:I

    sub-int/2addr v0, v3

    iput v0, p0, LI0/g;->d:I

    iget-boolean v0, p0, LI0/g;->b:Z

    :goto_4
    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    iget v0, p1, LJ/D;->b:I

    invoke-virtual {p1}, LJ/D;->a()I

    move-result v1

    iget-object v3, p0, LI0/g;->g:Ljava/lang/Object;

    check-cast v3, [Lb0/G;

    array-length v4, v3

    :goto_5
    if-ge v2, v4, :cond_a

    aget-object v5, v3, v2

    invoke-virtual {p1, v0}, LJ/D;->N(I)V

    invoke-interface {v5, v1, p1}, Lb0/G;->a(ILJ/D;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    iget p1, p0, LI0/g;->e:I

    add-int/2addr p1, v1

    iput p1, p0, LI0/g;->e:I

    :cond_b
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(IJ)V
    .locals 1

    iget v0, p0, LI0/g;->a:I

    packed-switch v0, :pswitch_data_0

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LI0/g;->b:Z

    iput-wide p2, p0, LI0/g;->c:J

    const/4 p1, 0x0

    iput p1, p0, LI0/g;->d:I

    iput p1, p0, LI0/g;->e:I

    :goto_0
    return-void

    :pswitch_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, LI0/g;->b:Z

    iput-wide p2, p0, LI0/g;->c:J

    const/4 p1, 0x0

    iput p1, p0, LI0/g;->e:I

    const/4 p1, 0x2

    iput p1, p0, LI0/g;->d:I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()V
    .locals 11

    iget v0, p0, LI0/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LI0/g;->g:Ljava/lang/Object;

    check-cast v0, Lb0/G;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, LI0/g;->b:Z

    if-eqz v0, :cond_2

    iget v0, p0, LI0/g;->d:I

    if-eqz v0, :cond_2

    iget v1, p0, LI0/g;->e:I

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, LI0/g;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p0, LI0/g;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lb0/G;

    iget-wide v3, p0, LI0/g;->c:J

    iget v6, p0, LI0/g;->d:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v8}, Lb0/G;->f(JIIILb0/F;)V

    iput-boolean v1, p0, LI0/g;->b:Z

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-boolean v0, p0, LI0/g;->b:Z

    if-eqz v0, :cond_5

    iget-wide v0, p0, LI0/g;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p0, LI0/g;->g:Ljava/lang/Object;

    check-cast v0, [Lb0/G;

    array-length v2, v0

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    iget-wide v5, p0, LI0/g;->c:J

    iget v8, p0, LI0/g;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lb0/G;->f(JIIILb0/F;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iput-boolean v1, p0, LI0/g;->b:Z

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lb0/p;LI0/J;)V
    .locals 6

    iget v0, p0, LI0/g;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, LI0/J;->a()V

    invoke-virtual {p2}, LI0/J;->b()V

    iget v0, p2, LI0/J;->d:I

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lb0/p;->v(II)Lb0/G;

    move-result-object p1

    iput-object p1, p0, LI0/g;->g:Ljava/lang/Object;

    new-instance v0, LG/w;

    invoke-direct {v0}, LG/w;-><init>()V

    invoke-virtual {p2}, LI0/J;->b()V

    iget-object p2, p2, LI0/J;->e:Ljava/lang/String;

    iput-object p2, v0, LG/w;->a:Ljava/lang/String;

    const-string p2, "video/mp2t"

    invoke-static {p2}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, LG/w;->n:Ljava/lang/String;

    const-string p2, "application/id3"

    invoke-static {p2}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, LG/w;->o:Ljava/lang/String;

    new-instance p2, LG/x;

    invoke-direct {p2, v0}, LG/x;-><init>(LG/w;)V

    invoke-interface {p1, p2}, Lb0/G;->b(LG/x;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LI0/g;->g:Ljava/lang/Object;

    check-cast v0, [Lb0/G;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LI0/g;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LI0/I;

    invoke-virtual {p2}, LI0/J;->a()V

    invoke-virtual {p2}, LI0/J;->b()V

    iget v3, p2, LI0/J;->d:I

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Lb0/p;->v(II)Lb0/G;

    move-result-object v3

    new-instance v4, LG/w;

    invoke-direct {v4}, LG/w;-><init>()V

    invoke-virtual {p2}, LI0/J;->b()V

    iget-object v5, p2, LI0/J;->e:Ljava/lang/String;

    iput-object v5, v4, LG/w;->a:Ljava/lang/String;

    const-string v5, "video/mp2t"

    invoke-static {v5}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, LG/w;->n:Ljava/lang/String;

    const-string v5, "application/dvbsubs"

    invoke-static {v5}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, LG/w;->o:Ljava/lang/String;

    iget-object v5, v2, LI0/I;->b:[B

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, LG/w;->r:Ljava/util/List;

    iget-object v2, v2, LI0/I;->a:Ljava/lang/String;

    iput-object v2, v4, LG/w;->d:Ljava/lang/String;

    new-instance v2, LG/x;

    invoke-direct {v2, v4}, LG/x;-><init>(LG/w;)V

    invoke-interface {v3, v2}, Lb0/G;->b(LG/x;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
