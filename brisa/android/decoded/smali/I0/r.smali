.class public final LI0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/h;


# instance fields
.field public final a:LI0/F;

.field public b:Ljava/lang/String;

.field public c:Lb0/G;

.field public d:LI0/q;

.field public e:Z

.field public final f:[Z

.field public final g:LI0/w;

.field public final h:LI0/w;

.field public final i:LI0/w;

.field public final j:LI0/w;

.field public final k:LI0/w;

.field public l:J

.field public m:J

.field public final n:LJ/D;


# direct methods
.method public constructor <init>(LI0/F;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/r;->a:LI0/F;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, LI0/r;->f:[Z

    new-instance p1, LI0/w;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, LI0/w;-><init>(I)V

    iput-object p1, p0, LI0/r;->g:LI0/w;

    new-instance p1, LI0/w;

    const/16 v0, 0x21

    invoke-direct {p1, v0}, LI0/w;-><init>(I)V

    iput-object p1, p0, LI0/r;->h:LI0/w;

    new-instance p1, LI0/w;

    const/16 v0, 0x22

    invoke-direct {p1, v0}, LI0/w;-><init>(I)V

    iput-object p1, p0, LI0/r;->i:LI0/w;

    new-instance p1, LI0/w;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, LI0/w;-><init>(I)V

    iput-object p1, p0, LI0/r;->j:LI0/w;

    new-instance p1, LI0/w;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, LI0/w;-><init>(I)V

    iput-object p1, p0, LI0/r;->k:LI0/w;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LI0/r;->m:J

    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, LI0/r;->n:LJ/D;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LI0/r;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LI0/r;->m:J

    iget-object v0, p0, LI0/r;->f:[Z

    invoke-static {v0}, LK/t;->b([Z)V

    iget-object v0, p0, LI0/r;->g:LI0/w;

    invoke-virtual {v0}, LI0/w;->g()V

    iget-object v0, p0, LI0/r;->h:LI0/w;

    invoke-virtual {v0}, LI0/w;->g()V

    iget-object v0, p0, LI0/r;->i:LI0/w;

    invoke-virtual {v0}, LI0/w;->g()V

    iget-object v0, p0, LI0/r;->j:LI0/w;

    invoke-virtual {v0}, LI0/w;->g()V

    iget-object v0, p0, LI0/r;->k:LI0/w;

    invoke-virtual {v0}, LI0/w;->g()V

    iget-object v0, p0, LI0/r;->a:LI0/F;

    iget-object v0, v0, LI0/F;->d:LJ/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LJ/c;->b(I)V

    iget-object v0, p0, LI0/r;->d:LI0/q;

    if-eqz v0, :cond_0

    iput-boolean v1, v0, LI0/q;->f:Z

    iput-boolean v1, v0, LI0/q;->g:Z

    iput-boolean v1, v0, LI0/q;->h:Z

    iput-boolean v1, v0, LI0/q;->i:Z

    iput-boolean v1, v0, LI0/q;->j:Z

    :cond_0
    return-void
.end method

.method public final b(IIJJ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p5

    iget-object v4, v0, LI0/r;->a:LI0/F;

    iget-object v4, v4, LI0/F;->d:LJ/c;

    iget-object v5, v0, LI0/r;->d:LI0/q;

    iget-boolean v6, v0, LI0/r;->e:Z

    iget-boolean v7, v5, LI0/q;->j:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    iget-boolean v7, v5, LI0/q;->g:Z

    if-eqz v7, :cond_0

    iget-boolean v6, v5, LI0/q;->c:Z

    iput-boolean v6, v5, LI0/q;->m:Z

    iput-boolean v8, v5, LI0/q;->j:Z

    goto :goto_0

    :cond_0
    iget-boolean v7, v5, LI0/q;->h:Z

    if-nez v7, :cond_1

    iget-boolean v7, v5, LI0/q;->g:Z

    if-eqz v7, :cond_3

    :cond_1
    if-eqz v6, :cond_2

    iget-boolean v6, v5, LI0/q;->i:Z

    if-eqz v6, :cond_2

    iget-wide v6, v5, LI0/q;->b:J

    sub-long v6, p3, v6

    long-to-int v6, v6

    add-int v6, p1, v6

    invoke-virtual {v5, v6}, LI0/q;->a(I)V

    :cond_2
    iget-wide v6, v5, LI0/q;->b:J

    iput-wide v6, v5, LI0/q;->k:J

    iget-wide v6, v5, LI0/q;->e:J

    iput-wide v6, v5, LI0/q;->l:J

    iget-boolean v6, v5, LI0/q;->c:Z

    iput-boolean v6, v5, LI0/q;->m:Z

    iput-boolean v9, v5, LI0/q;->i:Z

    :cond_3
    :goto_0
    iget-boolean v5, v0, LI0/r;->e:Z

    if-nez v5, :cond_6

    iget-object v5, v0, LI0/r;->g:LI0/w;

    invoke-virtual {v5, v1}, LI0/w;->e(I)Z

    iget-object v6, v0, LI0/r;->h:LI0/w;

    invoke-virtual {v6, v1}, LI0/w;->e(I)Z

    iget-object v7, v0, LI0/r;->i:LI0/w;

    invoke-virtual {v7, v1}, LI0/w;->e(I)Z

    iget-boolean v10, v5, LI0/w;->d:Z

    if-eqz v10, :cond_6

    iget-boolean v10, v6, LI0/w;->d:Z

    if-eqz v10, :cond_6

    iget-boolean v10, v7, LI0/w;->d:Z

    if-eqz v10, :cond_6

    iget-object v10, v0, LI0/r;->b:Ljava/lang/String;

    iget v11, v5, LI0/w;->e:I

    iget v12, v6, LI0/w;->e:I

    add-int/2addr v12, v11

    iget v13, v7, LI0/w;->e:I

    add-int/2addr v12, v13

    new-array v12, v12, [B

    iget-object v13, v5, LI0/w;->f:Ljava/lang/Object;

    check-cast v13, [B

    invoke-static {v13, v8, v12, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v6, LI0/w;->f:Ljava/lang/Object;

    check-cast v11, [B

    iget v13, v5, LI0/w;->e:I

    iget v14, v6, LI0/w;->e:I

    invoke-static {v11, v8, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v7, LI0/w;->f:Ljava/lang/Object;

    check-cast v11, [B

    iget v5, v5, LI0/w;->e:I

    iget v13, v6, LI0/w;->e:I

    add-int/2addr v5, v13

    iget v7, v7, LI0/w;->e:I

    invoke-static {v11, v8, v12, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v6, LI0/w;->f:Ljava/lang/Object;

    check-cast v5, [B

    iget v6, v6, LI0/w;->e:I

    const/4 v7, 0x3

    const/4 v11, 0x0

    invoke-static {v5, v7, v6, v11}, LK/t;->m([BIILB0/b;)LK/p;

    move-result-object v5

    iget-object v6, v5, LK/p;->b:LK/l;

    if-eqz v6, :cond_4

    iget v13, v6, LK/l;->a:I

    iget-boolean v14, v6, LK/l;->b:Z

    iget v15, v6, LK/l;->c:I

    iget v7, v6, LK/l;->d:I

    iget-object v11, v6, LK/l;->e:[I

    iget v6, v6, LK/l;->f:I

    move/from16 v18, v6

    move/from16 v16, v7

    move-object/from16 v17, v11

    invoke-static/range {v13 .. v18}, LJ/h;->a(IZII[II)Ljava/lang/String;

    move-result-object v11

    :cond_4
    new-instance v6, LG/w;

    invoke-direct {v6}, LG/w;-><init>()V

    iput-object v10, v6, LG/w;->a:Ljava/lang/String;

    const-string v7, "video/mp2t"

    invoke-static {v7}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, LG/w;->n:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-static {v7}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, LG/w;->o:Ljava/lang/String;

    iput-object v11, v6, LG/w;->k:Ljava/lang/String;

    iget v7, v5, LK/p;->f:I

    iput v7, v6, LG/w;->v:I

    iget v7, v5, LK/p;->g:I

    iput v7, v6, LG/w;->w:I

    iget v7, v5, LK/p;->h:I

    iput v7, v6, LG/w;->y:I

    iget v7, v5, LK/p;->i:I

    iput v7, v6, LG/w;->z:I

    iget v14, v5, LK/p;->l:I

    iget v15, v5, LK/p;->m:I

    iget v7, v5, LK/p;->n:I

    iget v10, v5, LK/p;->d:I

    add-int/lit8 v18, v10, 0x8

    iget v10, v5, LK/p;->e:I

    add-int/lit8 v19, v10, 0x8

    new-instance v13, LG/n;

    const/16 v17, 0x0

    move/from16 v16, v7

    invoke-direct/range {v13 .. v19}, LG/n;-><init>(III[BII)V

    iput-object v13, v6, LG/w;->G:LG/n;

    iget v7, v5, LK/p;->j:F

    iput v7, v6, LG/w;->D:F

    iget v7, v5, LK/p;->k:I

    iput v7, v6, LG/w;->q:I

    iget v5, v5, LK/p;->a:I

    add-int/2addr v5, v9

    iput v5, v6, LG/w;->H:I

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v6, LG/w;->r:Ljava/util/List;

    new-instance v5, LG/x;

    invoke-direct {v5, v6}, LG/x;-><init>(LG/w;)V

    iget-object v6, v0, LI0/r;->c:Lb0/G;

    invoke-interface {v6, v5}, Lb0/G;->b(LG/x;)V

    const/4 v6, -0x1

    iget v5, v5, LG/x;->r:I

    if-eq v5, v6, :cond_5

    move v8, v9

    :cond_5
    invoke-static {v8}, LF1/i;->o(Z)V

    invoke-virtual {v4, v5}, LJ/c;->f(I)V

    iput-boolean v9, v0, LI0/r;->e:Z

    :cond_6
    iget-object v5, v0, LI0/r;->j:LI0/w;

    invoke-virtual {v5, v1}, LI0/w;->e(I)Z

    move-result v6

    const/4 v7, 0x5

    iget-object v8, v0, LI0/r;->n:LJ/D;

    if-eqz v6, :cond_7

    iget-object v6, v5, LI0/w;->f:Ljava/lang/Object;

    check-cast v6, [B

    iget v9, v5, LI0/w;->e:I

    invoke-static {v6, v9}, LK/t;->s([BI)I

    move-result v6

    iget-object v5, v5, LI0/w;->f:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v8, v5, v6}, LJ/D;->L([BI)V

    invoke-virtual {v8, v7}, LJ/D;->O(I)V

    invoke-virtual {v4, v2, v3, v8}, LJ/c;->a(JLJ/D;)V

    :cond_7
    iget-object v5, v0, LI0/r;->k:LI0/w;

    invoke-virtual {v5, v1}, LI0/w;->e(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v5, LI0/w;->f:Ljava/lang/Object;

    check-cast v1, [B

    iget v6, v5, LI0/w;->e:I

    invoke-static {v1, v6}, LK/t;->s([BI)I

    move-result v1

    iget-object v5, v5, LI0/w;->f:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v8, v5, v1}, LJ/D;->L([BI)V

    invoke-virtual {v8, v7}, LJ/D;->O(I)V

    invoke-virtual {v4, v2, v3, v8}, LJ/c;->a(JLJ/D;)V

    :cond_8
    return-void
.end method

.method public final c(I[BI)V
    .locals 3

    iget-object v0, p0, LI0/r;->d:LI0/q;

    iget-boolean v1, v0, LI0/q;->f:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, 0x2

    iget v2, v0, LI0/q;->d:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, LI0/q;->g:Z

    iput-boolean v2, v0, LI0/q;->f:Z

    goto :goto_1

    :cond_1
    sub-int v1, p3, p1

    add-int/2addr v1, v2

    iput v1, v0, LI0/q;->d:I

    :cond_2
    :goto_1
    iget-boolean v0, p0, LI0/r;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, LI0/r;->g:LI0/w;

    invoke-virtual {v0, p1, p2, p3}, LI0/w;->a(I[BI)V

    iget-object v0, p0, LI0/r;->h:LI0/w;

    invoke-virtual {v0, p1, p2, p3}, LI0/w;->a(I[BI)V

    iget-object v0, p0, LI0/r;->i:LI0/w;

    invoke-virtual {v0, p1, p2, p3}, LI0/w;->a(I[BI)V

    :cond_3
    iget-object v0, p0, LI0/r;->j:LI0/w;

    invoke-virtual {v0, p1, p2, p3}, LI0/w;->a(I[BI)V

    iget-object v0, p0, LI0/r;->k:LI0/w;

    invoke-virtual {v0, p1, p2, p3}, LI0/w;->a(I[BI)V

    return-void
.end method

.method public final d(IIJJ)V
    .locals 3

    iget-object v0, p0, LI0/r;->d:LI0/q;

    iget-boolean v1, p0, LI0/r;->e:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, LI0/q;->g:Z

    iput-boolean v2, v0, LI0/q;->h:Z

    iput-wide p5, v0, LI0/q;->e:J

    iput v2, v0, LI0/q;->d:I

    iput-wide p3, v0, LI0/q;->b:J

    const/4 p3, 0x1

    const/16 p4, 0x20

    if-lt p2, p4, :cond_5

    const/16 p5, 0x28

    if-ne p2, p5, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p5, v0, LI0/q;->i:Z

    if-eqz p5, :cond_2

    iget-boolean p5, v0, LI0/q;->j:Z

    if-nez p5, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, LI0/q;->a(I)V

    :cond_1
    iput-boolean v2, v0, LI0/q;->i:Z

    :cond_2
    if-gt p4, p2, :cond_3

    const/16 p1, 0x23

    if-le p2, p1, :cond_4

    :cond_3
    const/16 p1, 0x27

    if-ne p2, p1, :cond_5

    :cond_4
    iget-boolean p1, v0, LI0/q;->j:Z

    xor-int/2addr p1, p3

    iput-boolean p1, v0, LI0/q;->h:Z

    iput-boolean p3, v0, LI0/q;->j:Z

    :cond_5
    :goto_0
    const/16 p1, 0x10

    if-lt p2, p1, :cond_6

    const/16 p1, 0x15

    if-gt p2, p1, :cond_6

    move p1, p3

    goto :goto_1

    :cond_6
    move p1, v2

    :goto_1
    iput-boolean p1, v0, LI0/q;->c:Z

    if-nez p1, :cond_7

    const/16 p1, 0x9

    if-gt p2, p1, :cond_8

    :cond_7
    move v2, p3

    :cond_8
    iput-boolean v2, v0, LI0/q;->f:Z

    iget-boolean p1, p0, LI0/r;->e:Z

    if-nez p1, :cond_9

    iget-object p1, p0, LI0/r;->g:LI0/w;

    invoke-virtual {p1, p2}, LI0/w;->h(I)V

    iget-object p1, p0, LI0/r;->h:LI0/w;

    invoke-virtual {p1, p2}, LI0/w;->h(I)V

    iget-object p1, p0, LI0/r;->i:LI0/w;

    invoke-virtual {p1, p2}, LI0/w;->h(I)V

    :cond_9
    iget-object p1, p0, LI0/r;->j:LI0/w;

    invoke-virtual {p1, p2}, LI0/w;->h(I)V

    iget-object p1, p0, LI0/r;->k:LI0/w;

    invoke-virtual {p1, p2}, LI0/w;->h(I)V

    return-void
.end method

.method public final f(LJ/D;)V
    .locals 12

    iget-object v1, p0, LI0/r;->c:Lb0/G;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, LJ/D;->a()I

    move-result v1

    if-lez v1, :cond_5

    iget v1, p1, LJ/D;->b:I

    iget v7, p1, LJ/D;->c:I

    iget-object v8, p1, LJ/D;->a:[B

    iget-wide v2, p0, LI0/r;->l:J

    invoke-virtual {p1}, LJ/D;->a()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, LI0/r;->l:J

    iget-object v2, p0, LI0/r;->c:Lb0/G;

    invoke-virtual {p1}, LJ/D;->a()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lb0/G;->a(ILJ/D;)V

    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v2, p0, LI0/r;->f:[Z

    invoke-static {v8, v1, v7, v2}, LK/t;->c([BII[Z)I

    move-result v2

    if-ne v2, v7, :cond_1

    invoke-virtual {p0, v1, v8, v7}, LI0/r;->c(I[BI)V

    return-void

    :cond_1
    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v8, v3

    and-int/lit8 v3, v3, 0x7e

    shr-int/lit8 v9, v3, 0x1

    if-lez v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v8, v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x4

    :goto_1
    move v10, v2

    move v11, v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    :goto_2
    sub-int v2, v10, v1

    if-lez v2, :cond_3

    invoke-virtual {p0, v1, v8, v10}, LI0/r;->c(I[BI)V

    :cond_3
    sub-int v1, v7, v10

    iget-wide v3, p0, LI0/r;->l:J

    int-to-long v5, v1

    sub-long/2addr v3, v5

    if-gez v2, :cond_4

    neg-int v2, v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iget-wide v5, p0, LI0/r;->m:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, LI0/r;->b(IIJJ)V

    iget-wide v5, p0, LI0/r;->m:J

    move v2, v9

    invoke-virtual/range {v0 .. v6}, LI0/r;->d(IIJJ)V

    add-int v1, v10, v11

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final g(IJ)V
    .locals 0

    iput-wide p2, p0, LI0/r;->m:J

    return-void
.end method

.method public final i()V
    .locals 7

    iget-object v1, p0, LI0/r;->c:Lb0/G;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    iget-object v1, p0, LI0/r;->a:LI0/F;

    iget-object v1, v1, LI0/F;->d:LJ/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LJ/c;->b(I)V

    iget-wide v3, p0, LI0/r;->l:J

    iget-wide v5, p0, LI0/r;->m:J

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, LI0/r;->b(IIJJ)V

    iget-wide v3, p0, LI0/r;->l:J

    const/16 v2, 0x30

    iget-wide v5, p0, LI0/r;->m:J

    invoke-virtual/range {v0 .. v6}, LI0/r;->d(IIJJ)V

    return-void
.end method

.method public final j(Lb0/p;LI0/J;)V
    .locals 2

    invoke-virtual {p2}, LI0/J;->a()V

    invoke-virtual {p2}, LI0/J;->b()V

    iget-object v0, p2, LI0/J;->e:Ljava/lang/String;

    iput-object v0, p0, LI0/r;->b:Ljava/lang/String;

    invoke-virtual {p2}, LI0/J;->b()V

    iget v0, p2, LI0/J;->d:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lb0/p;->v(II)Lb0/G;

    move-result-object v0

    iput-object v0, p0, LI0/r;->c:Lb0/G;

    new-instance v1, LI0/q;

    invoke-direct {v1, v0}, LI0/q;-><init>(Lb0/G;)V

    iput-object v1, p0, LI0/r;->d:LI0/q;

    iget-object v0, p0, LI0/r;->a:LI0/F;

    invoke-virtual {v0, p1, p2}, LI0/F;->b(Lb0/p;LI0/J;)V

    return-void
.end method
