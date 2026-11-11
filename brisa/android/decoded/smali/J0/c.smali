.class public final LJ0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ0/b;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:I

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb0/p;Lb0/G;LJ0/e;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ0/c;->e:Ljava/lang/Object;

    iput-object p2, p0, LJ0/c;->f:Ljava/lang/Object;

    iput-object p3, p0, LJ0/c;->g:Ljava/lang/Object;

    iget p1, p3, LJ0/e;->a:I

    iget p2, p3, LJ0/e;->b:I

    iget v0, p3, LJ0/e;->d:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x8

    iget v1, p3, LJ0/e;->c:I

    if-ne v1, v0, :cond_1

    mul-int v1, p2, v0

    mul-int/lit8 v2, v1, 0x8

    div-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LJ0/c;->a:I

    new-instance v1, LG/w;

    invoke-direct {v1}, LG/w;-><init>()V

    const-string v3, "audio/wav"

    invoke-static {v3}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, LG/w;->n:Ljava/lang/String;

    invoke-static {p4}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, LG/w;->o:Ljava/lang/String;

    iput v2, v1, LG/w;->i:I

    iput v2, v1, LG/w;->j:I

    iput v0, v1, LG/w;->p:I

    iput p1, v1, LG/w;->I:I

    iget p1, p3, LJ0/e;->f:I

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x2

    :goto_0
    iput p1, v1, LG/w;->J:I

    iput p2, v1, LG/w;->K:I

    iput p5, v1, LG/w;->L:I

    new-instance p1, LG/x;

    invoke-direct {p1, v1}, LG/x;-><init>(LG/w;)V

    iput-object p1, p0, LJ0/c;->h:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected block size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; got: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(Lb0/o;J)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    iget v7, v0, LJ0/c;->d:I

    iget v8, v0, LJ0/c;->a:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v7, v8

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    iget-object v7, v0, LJ0/c;->f:Ljava/lang/Object;

    check-cast v7, Lb0/G;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v5, v6}, Lb0/G;->g(LG/o;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget v3, v0, LJ0/c;->d:I

    add-int/2addr v3, v5

    iput v3, v0, LJ0/c;->d:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v0, LJ0/c;->g:Ljava/lang/Object;

    check-cast v1, LJ0/e;

    iget v2, v1, LJ0/e;->c:I

    iget v3, v0, LJ0/c;->d:I

    div-int/2addr v3, v2

    if-lez v3, :cond_2

    iget-wide v7, v0, LJ0/c;->b:J

    iget-wide v9, v0, LJ0/c;->c:J

    iget v1, v1, LJ0/e;->b:I

    int-to-long v13, v1

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v15}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v3, v2

    iget v1, v0, LJ0/c;->d:I

    sub-int v16, v1, v15

    iget-object v1, v0, LJ0/c;->f:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Lb0/G;

    const/4 v14, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v11 .. v17}, Lb0/G;->f(JIIILb0/F;)V

    move/from16 v1, v16

    iget-wide v7, v0, LJ0/c;->c:J

    int-to-long v2, v3

    add-long/2addr v7, v2

    iput-wide v7, v0, LJ0/c;->c:J

    iput v1, v0, LJ0/c;->d:I

    :cond_2
    if-gtz v5, :cond_3

    return v6

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public b(IJ)V
    .locals 7

    new-instance v0, LJ0/h;

    iget-object v1, p0, LJ0/c;->g:Ljava/lang/Object;

    check-cast v1, LJ0/e;

    const/4 v2, 0x1

    int-to-long v3, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, LJ0/h;-><init>(LJ0/e;IJJ)V

    iget-object p1, p0, LJ0/c;->e:Ljava/lang/Object;

    check-cast p1, Lb0/p;

    invoke-interface {p1, v0}, Lb0/p;->c(Lb0/z;)V

    iget-object p1, p0, LJ0/c;->f:Ljava/lang/Object;

    check-cast p1, Lb0/G;

    iget-object p2, p0, LJ0/c;->h:Ljava/lang/Object;

    check-cast p2, LG/x;

    invoke-interface {p1, p2}, Lb0/G;->b(LG/x;)V

    iget-wide p2, v0, LJ0/h;->e:J

    invoke-interface {p1, p2, p3}, Lb0/G;->d(J)V

    return-void
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, LJ0/c;->b:J

    const/4 p1, 0x0

    iput p1, p0, LJ0/c;->d:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, LJ0/c;->c:J

    return-void
.end method
