.class public final Lw0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public a:Lb0/p;

.field public b:Lw0/i;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 0

    iput-object p1, p0, Lw0/d;->a:Lb0/p;

    return-void
.end method

.method public final c(JJ)V
    .locals 6

    iget-object v0, p0, Lw0/d;->b:Lw0/i;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lw0/i;->a:Lw0/e;

    iget-object v2, v1, Lw0/e;->a:Lw0/f;

    const/4 v3, 0x0

    iput v3, v2, Lw0/f;->a:I

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lw0/f;->b:J

    iput v3, v2, Lw0/f;->c:I

    iput v3, v2, Lw0/f;->d:I

    iput v3, v2, Lw0/f;->e:I

    iget-object v2, v1, Lw0/e;->b:LJ/D;

    invoke-virtual {v2, v3}, LJ/D;->K(I)V

    const/4 v2, -0x1

    iput v2, v1, Lw0/e;->c:I

    iput-boolean v3, v1, Lw0/e;->e:Z

    cmp-long p1, p1, v4

    if-nez p1, :cond_0

    iget-boolean p1, v0, Lw0/i;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lw0/i;->d(Z)V

    return-void

    :cond_0
    iget p1, v0, Lw0/i;->h:I

    if-eqz p1, :cond_1

    iget p1, v0, Lw0/i;->i:I

    int-to-long p1, p1

    mul-long/2addr p1, p3

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    iput-wide p1, v0, Lw0/i;->e:J

    iget-object p3, v0, Lw0/i;->d:Lw0/g;

    sget-object p4, LJ/W;->a:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lw0/g;->e(J)V

    const/4 p1, 0x2

    iput p1, v0, Lw0/i;->h:I

    :cond_1
    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lw0/d;->g(Lb0/o;)Z

    move-result p1
    :try_end_0
    .catch LG/X; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lw0/d;->a:Lb0/p;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lw0/d;->b:Lw0/i;

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p1}, Lw0/d;->g(Lb0/o;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lb0/o;->o()V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to determine bitstream type"

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_1
    :goto_0
    iget-boolean v2, v0, Lw0/d;->c:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, v0, Lw0/d;->a:Lb0/p;

    invoke-interface {v2, v3, v4}, Lb0/p;->v(II)Lb0/G;

    move-result-object v2

    iget-object v5, v0, Lw0/d;->a:Lb0/p;

    invoke-interface {v5}, Lb0/p;->e()V

    iget-object v5, v0, Lw0/d;->b:Lw0/i;

    iget-object v6, v0, Lw0/d;->a:Lb0/p;

    iput-object v6, v5, Lw0/i;->c:Lb0/p;

    iput-object v2, v5, Lw0/i;->b:Lb0/G;

    invoke-virtual {v5, v4}, Lw0/i;->d(Z)V

    iput-boolean v4, v0, Lw0/d;->c:Z

    :cond_2
    iget-object v8, v0, Lw0/d;->b:Lw0/i;

    iget-object v2, v8, Lw0/i;->a:Lw0/e;

    iget-object v5, v8, Lw0/i;->b:Lb0/G;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, LJ/W;->a:Ljava/lang/String;

    iget v5, v8, Lw0/i;->h:I

    const-wide/16 v6, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v5, :cond_c

    if-eq v5, v4, :cond_b

    if-eq v5, v11, :cond_4

    if-ne v5, v10, :cond_3

    return v9

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_4
    iget-object v5, v8, Lw0/i;->d:Lw0/g;

    invoke-interface {v5, v1}, Lw0/g;->d(Lb0/o;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-ltz v5, :cond_5

    move-object/from16 v5, p2

    iput-wide v11, v5, Lb0/r;->a:J

    return v4

    :cond_5
    cmp-long v5, v11, v6

    if-gez v5, :cond_6

    const-wide/16 v15, 0x2

    add-long/2addr v11, v15

    neg-long v11, v11

    invoke-virtual {v8, v11, v12}, Lw0/i;->a(J)V

    :cond_6
    iget-boolean v5, v8, Lw0/i;->l:Z

    if-nez v5, :cond_7

    iget-object v5, v8, Lw0/i;->d:Lw0/g;

    invoke-interface {v5}, Lw0/g;->b()Lb0/z;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v8, Lw0/i;->c:Lb0/p;

    invoke-interface {v11, v5}, Lb0/p;->c(Lb0/z;)V

    iget-object v11, v8, Lw0/i;->b:Lb0/G;

    invoke-interface {v5}, Lb0/z;->g()J

    move-result-wide v6

    invoke-interface {v11, v6, v7}, Lb0/G;->d(J)V

    iput-boolean v4, v8, Lw0/i;->l:Z

    :cond_7
    iget-wide v4, v8, Lw0/i;->k:J

    cmp-long v4, v4, v13

    if-gtz v4, :cond_9

    invoke-virtual {v2, v1}, Lw0/e;->b(Lb0/o;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    iput v10, v8, Lw0/i;->h:I

    return v9

    :cond_9
    :goto_1
    iput-wide v13, v8, Lw0/i;->k:J

    iget-object v1, v2, Lw0/e;->b:LJ/D;

    invoke-virtual {v8, v1}, Lw0/i;->b(LJ/D;)J

    move-result-wide v4

    cmp-long v2, v4, v13

    if-ltz v2, :cond_a

    iget-wide v6, v8, Lw0/i;->g:J

    add-long v9, v6, v4

    iget-wide v11, v8, Lw0/i;->e:J

    cmp-long v2, v9, v11

    if-ltz v2, :cond_a

    const-wide/32 v9, 0xf4240

    mul-long/2addr v6, v9

    iget v2, v8, Lw0/i;->i:I

    int-to-long v9, v2

    div-long v18, v6, v9

    iget-object v2, v8, Lw0/i;->b:Lb0/G;

    iget v6, v1, LJ/D;->c:I

    invoke-interface {v2, v6, v1}, Lb0/G;->a(ILJ/D;)V

    iget-object v2, v8, Lw0/i;->b:Lb0/G;

    iget v1, v1, LJ/D;->c:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x1

    move/from16 v21, v1

    move-object/from16 v17, v2

    invoke-interface/range {v17 .. v23}, Lb0/G;->f(JIIILb0/F;)V

    const-wide/16 v1, -0x1

    iput-wide v1, v8, Lw0/i;->e:J

    :cond_a
    iget-wide v1, v8, Lw0/i;->g:J

    add-long/2addr v1, v4

    iput-wide v1, v8, Lw0/i;->g:J

    return v3

    :cond_b
    iget-wide v4, v8, Lw0/i;->f:J

    long-to-int v2, v4

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    iput v11, v8, Lw0/i;->h:I

    return v3

    :cond_c
    :goto_2
    invoke-virtual {v2, v1}, Lw0/e;->b(Lb0/o;)Z

    move-result v5

    iget-object v6, v2, Lw0/e;->b:LJ/D;

    if-nez v5, :cond_d

    iput v10, v8, Lw0/i;->h:I

    return v9

    :cond_d
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v12

    iget-wide v9, v8, Lw0/i;->f:J

    sub-long/2addr v12, v9

    iput-wide v12, v8, Lw0/i;->k:J

    iget-object v12, v8, Lw0/i;->j:LW0/c;

    invoke-virtual {v8, v6, v9, v10, v12}, Lw0/i;->c(LJ/D;JLW0/c;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v9

    iput-wide v9, v8, Lw0/i;->f:J

    const/4 v9, -0x1

    const/4 v10, 0x3

    goto :goto_2

    :cond_e
    iget-object v5, v8, Lw0/i;->j:LW0/c;

    iget-object v5, v5, LW0/c;->f:Ljava/lang/Object;

    check-cast v5, LG/x;

    iget v7, v5, LG/x;->L:I

    iput v7, v8, Lw0/i;->i:I

    iget-boolean v7, v8, Lw0/i;->m:Z

    if-nez v7, :cond_f

    iget-object v7, v8, Lw0/i;->b:Lb0/G;

    invoke-interface {v7, v5}, Lb0/G;->b(LG/x;)V

    iput-boolean v4, v8, Lw0/i;->m:Z

    :cond_f
    iget-object v5, v8, Lw0/i;->j:LW0/c;

    iget-object v5, v5, LW0/c;->g:Ljava/lang/Object;

    check-cast v5, LP/N;

    if-eqz v5, :cond_10

    iput-object v5, v8, Lw0/i;->d:Lw0/g;

    :goto_3
    move v1, v11

    goto :goto_5

    :cond_10
    invoke-interface {v1}, Lb0/o;->getLength()J

    move-result-wide v9

    const-wide/16 v15, -0x1

    cmp-long v5, v9, v15

    if-nez v5, :cond_11

    new-instance v1, Ld1/m;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ld1/m;-><init>(I)V

    iput-object v1, v8, Lw0/i;->d:Lw0/g;

    goto :goto_3

    :cond_11
    iget-object v2, v2, Lw0/e;->a:Lw0/f;

    iget v5, v2, Lw0/f;->a:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_12

    move/from16 v17, v4

    goto :goto_4

    :cond_12
    move/from16 v17, v3

    :goto_4
    new-instance v7, Lw0/b;

    iget-wide v9, v8, Lw0/i;->f:J

    invoke-interface {v1}, Lb0/o;->getLength()J

    move-result-wide v4

    iget v1, v2, Lw0/f;->d:I

    iget v12, v2, Lw0/f;->e:I

    add-int/2addr v1, v12

    int-to-long v13, v1

    iget-wide v1, v2, Lw0/f;->b:J

    move-wide v15, v1

    move v1, v11

    move-wide v11, v4

    invoke-direct/range {v7 .. v17}, Lw0/b;-><init>(Lw0/i;JJJJZ)V

    iput-object v7, v8, Lw0/i;->d:Lw0/g;

    :goto_5
    iput v1, v8, Lw0/i;->h:I

    iget-object v1, v6, LJ/D;->a:[B

    array-length v2, v1

    const v4, 0xfe01

    if-ne v2, v4, :cond_13

    return v3

    :cond_13
    iget v2, v6, LJ/D;->c:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget v2, v6, LJ/D;->c:I

    invoke-virtual {v6, v1, v2}, LJ/D;->L([BI)V

    return v3
.end method

.method public final g(Lb0/o;)Z
    .locals 8

    new-instance v0, Lw0/f;

    invoke-direct {v0}, Lw0/f;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lw0/f;->a(Lb0/o;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lw0/f;->a:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_2

    :cond_0
    iget v0, v0, Lw0/f;->e:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, LJ/D;

    invoke-direct {v2, v0}, LJ/D;-><init>(I)V

    iget-object v4, v2, LJ/D;->a:[B

    invoke-interface {p1, v3, v4, v0}, Lb0/o;->l(I[BI)V

    invoke-virtual {v2, v3}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->a()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    invoke-virtual {v2}, LJ/D;->A()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    invoke-virtual {v2}, LJ/D;->C()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    new-instance p1, Lw0/c;

    invoke-direct {p1}, Lw0/i;-><init>()V

    iput-object p1, p0, Lw0/d;->b:Lw0/i;

    return v1

    :cond_1
    invoke-virtual {v2, v3}, LJ/D;->N(I)V

    :try_start_0
    invoke-static {v1, v2, v1}, LK/t;->t(ILJ/D;Z)Z

    move-result p1
    :try_end_0
    .catch LG/X; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_2

    new-instance p1, Lw0/j;

    invoke-direct {p1}, Lw0/i;-><init>()V

    iput-object p1, p0, Lw0/d;->b:Lw0/i;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, LJ/D;->N(I)V

    sget-object p1, Lw0/h;->o:[B

    invoke-static {v2, p1}, Lw0/h;->e(LJ/D;[B)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lw0/h;

    invoke-direct {p1}, Lw0/i;-><init>()V

    iput-object p1, p0, Lw0/d;->b:Lw0/i;

    :goto_1
    return v1

    :cond_3
    :goto_2
    return v3
.end method
