.class public final Lw0/j;
.super Lw0/i;
.source "SourceFile"


# instance fields
.field public n:LB0/b;

.field public o:I

.field public p:Z

.field public q:LK/A;

.field public r:LZ0/i;


# virtual methods
.method public final a(J)V
    .locals 2

    iput-wide p1, p0, Lw0/i;->g:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lw0/j;->p:Z

    iget-object p1, p0, Lw0/j;->q:LK/A;

    if-eqz p1, :cond_1

    iget p2, p1, LK/A;->e:I

    :cond_1
    iput p2, p0, Lw0/j;->o:I

    return-void
.end method

.method public final b(LJ/D;)J
    .locals 12

    iget-object v0, p1, LJ/D;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lw0/j;->n:LB0/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, LJ/D;->a:[B

    aget-byte v3, v3, v1

    iget-object v4, v0, LB0/b;->e:Ljava/lang/Object;

    check-cast v4, LK/A;

    iget-object v0, v0, LB0/b;->h:Ljava/lang/Object;

    check-cast v0, [LK/u;

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-static {v5}, LK/t;->f(I)I

    move-result v5

    shr-int/2addr v3, v2

    const/16 v6, 0xff

    const/16 v7, 0x8

    rsub-int/lit8 v5, v5, 0x8

    ushr-int v5, v6, v5

    and-int/2addr v3, v5

    aget-object v0, v0, v3

    iget-boolean v0, v0, LK/u;->a:Z

    if-eqz v0, :cond_1

    iget v0, v4, LK/A;->f:I

    goto :goto_0

    :cond_1
    iget v0, v4, LK/A;->e:I

    :goto_0
    iget v3, p0, Lw0/j;->o:I

    iget-boolean v4, p0, Lw0/j;->p:Z

    if-eqz v4, :cond_2

    add-int/2addr v3, v0

    div-int/lit8 v1, v3, 0x4

    :cond_2
    int-to-long v3, v1

    iget-object v1, p1, LJ/D;->a:[B

    array-length v5, v1

    iget v6, p1, LJ/D;->c:I

    add-int/lit8 v6, v6, 0x4

    if-ge v5, v6, :cond_3

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    array-length v5, v1

    invoke-virtual {p1, v1, v5}, LJ/D;->L([BI)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v6}, LJ/D;->M(I)V

    :goto_1
    iget-object v1, p1, LJ/D;->a:[B

    iget p1, p1, LJ/D;->c:I

    add-int/lit8 v5, p1, -0x4

    const-wide/16 v8, 0xff

    and-long v10, v3, v8

    long-to-int v6, v10

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v5, p1, -0x3

    ushr-long v6, v3, v7

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v5, p1, -0x2

    const/16 v6, 0x10

    ushr-long v6, v3, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    sub-int/2addr p1, v2

    const/16 v5, 0x18

    ushr-long v5, v3, v5

    and-long/2addr v5, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, p1

    iput-boolean v2, p0, Lw0/j;->p:Z

    iput v0, p0, Lw0/j;->o:I

    return-wide v3
.end method

.method public final c(LJ/D;JLW0/c;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lw0/j;->n:LB0/b;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v1, v2, LW0/c;->f:Ljava/lang/Object;

    check-cast v1, LG/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v4

    :cond_0
    iget-object v3, v0, Lw0/j;->q:LK/A;

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-nez v3, :cond_3

    invoke-static {v5, v1, v4}, LK/t;->t(ILJ/D;Z)Z

    invoke-virtual {v1}, LJ/D;->s()I

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v3

    invoke-virtual {v1}, LJ/D;->s()I

    move-result v4

    invoke-virtual {v1}, LJ/D;->o()I

    move-result v9

    if-gtz v9, :cond_1

    const/4 v9, -0x1

    :cond_1
    invoke-virtual {v1}, LJ/D;->o()I

    move-result v10

    if-gtz v10, :cond_2

    const/4 v7, -0x1

    goto :goto_0

    :cond_2
    move v7, v10

    :goto_0
    invoke-virtual {v1}, LJ/D;->o()I

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v10

    and-int/lit8 v11, v10, 0xf

    int-to-double v11, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v11, v11

    and-int/lit16 v10, v10, 0xf0

    shr-int/lit8 v6, v10, 0x4

    int-to-double v5, v6

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v1}, LJ/D;->A()I

    iget-object v6, v1, LJ/D;->a:[B

    iget v1, v1, LJ/D;->c:I

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    new-instance v6, LK/A;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v3, v6, LK/A;->a:I

    iput v4, v6, LK/A;->b:I

    iput v9, v6, LK/A;->c:I

    iput v7, v6, LK/A;->d:I

    iput v11, v6, LK/A;->e:I

    iput v5, v6, LK/A;->f:I

    iput-object v1, v6, LK/A;->g:Ljava/io/Serializable;

    iput-object v6, v0, Lw0/j;->q:LK/A;

    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_1b

    :cond_3
    iget-object v5, v0, Lw0/j;->r:LZ0/i;

    if-nez v5, :cond_4

    const/4 v9, 0x1

    invoke-static {v1, v9, v9}, LK/t;->p(LJ/D;ZZ)LZ0/i;

    move-result-object v1

    iput-object v1, v0, Lw0/j;->r:LZ0/i;

    goto :goto_1

    :cond_4
    const/4 v9, 0x1

    iget v10, v1, LJ/D;->c:I

    new-array v11, v10, [B

    iget-object v12, v1, LJ/D;->a:[B

    invoke-static {v12, v4, v11, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v10, v3, LK/A;->a:I

    const/4 v12, 0x5

    invoke-static {v12, v1, v4}, LK/t;->t(ILJ/D;Z)Z

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v13

    add-int/2addr v13, v9

    new-instance v9, LJ/B;

    iget-object v14, v1, LJ/D;->a:[B

    invoke-direct {v9, v14}, LJ/B;-><init>([B)V

    iget v1, v1, LJ/D;->b:I

    const/16 v14, 0x8

    mul-int/2addr v1, v14

    invoke-virtual {v9, v1}, LJ/B;->o(I)V

    move v1, v4

    :goto_2
    const/16 v15, 0x18

    const/4 v4, 0x2

    const/16 v7, 0x10

    if-ge v1, v13, :cond_f

    move/from16 p1, v14

    invoke-virtual {v9, v15}, LJ/B;->g(I)I

    move-result v14

    const v8, 0x564342

    if-ne v14, v8, :cond_e

    invoke-virtual {v9, v7}, LJ/B;->g(I)I

    move-result v7

    invoke-virtual {v9, v15}, LJ/B;->g(I)I

    move-result v8

    invoke-virtual {v9}, LJ/B;->f()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v9}, LJ/B;->f()Z

    move-result v14

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v8, :cond_8

    if-eqz v14, :cond_5

    invoke-virtual {v9}, LJ/B;->f()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v9, v12}, LJ/B;->o(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v9, v12}, LJ/B;->o(I)V

    :cond_6
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v9, v12}, LJ/B;->o(I)V

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v8, :cond_8

    sub-int v15, v8, v14

    invoke-static {v15}, LK/t;->f(I)I

    move-result v15

    invoke-virtual {v9, v15}, LJ/B;->g(I)I

    move-result v15

    add-int/2addr v14, v15

    goto :goto_5

    :cond_8
    invoke-virtual {v9, v6}, LJ/B;->g(I)I

    move-result v14

    if-gt v14, v4, :cond_d

    const/4 v15, 0x1

    if-eq v14, v15, :cond_9

    if-ne v14, v4, :cond_c

    :cond_9
    const/16 v4, 0x20

    invoke-virtual {v9, v4}, LJ/B;->o(I)V

    invoke-virtual {v9, v4}, LJ/B;->o(I)V

    invoke-virtual {v9, v6}, LJ/B;->g(I)I

    move-result v4

    add-int/2addr v4, v15

    invoke-virtual {v9, v15}, LJ/B;->o(I)V

    if-ne v14, v15, :cond_b

    if-eqz v7, :cond_a

    int-to-long v14, v8

    int-to-long v7, v7

    long-to-double v14, v14

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    long-to-double v7, v7

    div-double v7, v17, v7

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-long v7, v7

    goto :goto_6

    :cond_a
    const-wide/16 v7, 0x0

    goto :goto_6

    :cond_b
    int-to-long v14, v8

    int-to-long v7, v7

    mul-long/2addr v7, v14

    :goto_6
    int-to-long v14, v4

    mul-long/2addr v7, v14

    long-to-int v4, v7

    invoke-virtual {v9, v4}, LJ/B;->o(I)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    move/from16 v14, p1

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lookup type greater than 2 not decodable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_e
    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v9, LJ/B;->d:I

    mul-int/lit8 v3, v3, 0x8

    iget v4, v9, LJ/B;->e:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_f
    move/from16 p1, v14

    const/4 v1, 0x6

    invoke-virtual {v9, v1}, LJ/B;->g(I)I

    move-result v8

    const/4 v13, 0x1

    add-int/2addr v8, v13

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v8, :cond_11

    invoke-virtual {v9, v7}, LJ/B;->g(I)I

    move-result v14

    if-nez v14, :cond_10

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_10
    const-string v1, "placeholder of time domain transforms not zeroed out"

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_11
    invoke-virtual {v9, v1}, LJ/B;->g(I)I

    move-result v8

    const/4 v13, 0x1

    add-int/2addr v8, v13

    const/4 v14, 0x0

    :goto_8
    const/4 v15, 0x3

    if-ge v14, v8, :cond_1b

    invoke-virtual {v9, v7}, LJ/B;->g(I)I

    move-result v1

    if-eqz v1, :cond_19

    if-ne v1, v13, :cond_18

    invoke-virtual {v9, v12}, LJ/B;->g(I)I

    move-result v1

    new-array v13, v1, [I

    const/4 v7, -0x1

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v1, :cond_13

    invoke-virtual {v9, v6}, LJ/B;->g(I)I

    move-result v4

    aput v4, v13, v12

    if-le v4, v7, :cond_12

    move v7, v4

    :cond_12
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x2

    goto :goto_9

    :cond_13
    add-int/lit8 v7, v7, 0x1

    new-array v4, v7, [I

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v7, :cond_16

    invoke-virtual {v9, v15}, LJ/B;->g(I)I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aput v20, v4, v12

    const/4 v15, 0x2

    invoke-virtual {v9, v15}, LJ/B;->g(I)I

    move-result v22

    move/from16 v15, p1

    if-lez v22, :cond_14

    invoke-virtual {v9, v15}, LJ/B;->o(I)V

    :cond_14
    move-object/from16 v23, v4

    const/4 v6, 0x0

    :goto_b
    shl-int v4, v21, v22

    if-ge v6, v4, :cond_15

    invoke-virtual {v9, v15}, LJ/B;->o(I)V

    add-int/lit8 v6, v6, 0x1

    const/16 v15, 0x8

    const/16 v21, 0x1

    goto :goto_b

    :cond_15
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v23

    const/16 p1, 0x8

    const/4 v6, 0x4

    const/4 v15, 0x3

    goto :goto_a

    :cond_16
    move-object/from16 v23, v4

    const/4 v15, 0x2

    invoke-virtual {v9, v15}, LJ/B;->o(I)V

    const/4 v4, 0x4

    invoke-virtual {v9, v4}, LJ/B;->g(I)I

    move-result v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_c
    if-ge v4, v1, :cond_1a

    aget v15, v13, v4

    aget v15, v23, v15

    add-int/2addr v7, v15

    :goto_d
    if-ge v12, v7, :cond_17

    invoke-virtual {v9, v6}, LJ/B;->o(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "floor type greater than 1 not decodable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_19
    move/from16 v15, p1

    invoke-virtual {v9, v15}, LJ/B;->o(I)V

    const/16 v1, 0x10

    invoke-virtual {v9, v1}, LJ/B;->o(I)V

    invoke-virtual {v9, v1}, LJ/B;->o(I)V

    const/4 v1, 0x6

    invoke-virtual {v9, v1}, LJ/B;->o(I)V

    invoke-virtual {v9, v15}, LJ/B;->o(I)V

    const/4 v4, 0x4

    invoke-virtual {v9, v4}, LJ/B;->g(I)I

    move-result v1

    const/4 v13, 0x1

    add-int/2addr v1, v13

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v1, :cond_1a

    invoke-virtual {v9, v15}, LJ/B;->o(I)V

    add-int/lit8 v4, v4, 0x1

    const/16 v15, 0x8

    goto :goto_e

    :cond_1a
    add-int/lit8 v14, v14, 0x1

    const/16 p1, 0x8

    const/4 v1, 0x6

    const/4 v4, 0x2

    const/4 v6, 0x4

    const/16 v7, 0x10

    const/4 v12, 0x5

    const/4 v13, 0x1

    goto/16 :goto_8

    :cond_1b
    invoke-virtual {v9, v1}, LJ/B;->g(I)I

    move-result v4

    const/4 v13, 0x1

    add-int/2addr v4, v13

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v4, :cond_22

    const/16 v7, 0x10

    invoke-virtual {v9, v7}, LJ/B;->g(I)I

    move-result v8

    const/4 v15, 0x2

    if-gt v8, v15, :cond_21

    const/16 v7, 0x18

    invoke-virtual {v9, v7}, LJ/B;->o(I)V

    invoke-virtual {v9, v7}, LJ/B;->o(I)V

    invoke-virtual {v9, v7}, LJ/B;->o(I)V

    invoke-virtual {v9, v1}, LJ/B;->g(I)I

    move-result v8

    add-int/2addr v8, v13

    const/16 v15, 0x8

    invoke-virtual {v9, v15}, LJ/B;->o(I)V

    new-array v1, v8, [I

    const/4 v12, 0x0

    :goto_10
    if-ge v12, v8, :cond_1d

    const/4 v13, 0x3

    invoke-virtual {v9, v13}, LJ/B;->g(I)I

    move-result v14

    invoke-virtual {v9}, LJ/B;->f()Z

    move-result v16

    const/4 v7, 0x5

    if-eqz v16, :cond_1c

    invoke-virtual {v9, v7}, LJ/B;->g(I)I

    move-result v16

    goto :goto_11

    :cond_1c
    const/16 v16, 0x0

    :goto_11
    mul-int/lit8 v16, v16, 0x8

    add-int v16, v16, v14

    aput v16, v1, v12

    add-int/lit8 v12, v12, 0x1

    const/16 v7, 0x18

    goto :goto_10

    :cond_1d
    const/4 v7, 0x5

    const/4 v13, 0x3

    const/4 v12, 0x0

    :goto_12
    if-ge v12, v8, :cond_20

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v15, :cond_1f

    aget v16, v1, v12

    const/16 v21, 0x1

    shl-int v19, v21, v14

    and-int v16, v16, v19

    if-eqz v16, :cond_1e

    invoke-virtual {v9, v15}, LJ/B;->o(I)V

    :cond_1e
    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x8

    goto :goto_13

    :cond_1f
    add-int/lit8 v12, v12, 0x1

    const/16 v15, 0x8

    goto :goto_12

    :cond_20
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x6

    const/4 v13, 0x1

    goto :goto_f

    :cond_21
    const-string v1, "residueType greater than 2 is not decodable"

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_22
    invoke-virtual {v9, v1}, LJ/B;->g(I)I

    move-result v4

    const/4 v13, 0x1

    add-int/2addr v4, v13

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v4, :cond_29

    const/16 v7, 0x10

    invoke-virtual {v9, v7}, LJ/B;->g(I)I

    move-result v6

    if-eqz v6, :cond_23

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mapping type other than 0 not supported: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VorbisUtil"

    invoke-static {v7, v6}, LJ/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v15, 0x2

    goto :goto_19

    :cond_23
    invoke-virtual {v9}, LJ/B;->f()Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v6, 0x4

    invoke-virtual {v9, v6}, LJ/B;->g(I)I

    move-result v7

    const/4 v13, 0x1

    add-int/lit8 v6, v7, 0x1

    goto :goto_15

    :cond_24
    const/4 v13, 0x1

    move v6, v13

    :goto_15
    invoke-virtual {v9}, LJ/B;->f()Z

    move-result v7

    if-eqz v7, :cond_25

    const/16 v15, 0x8

    invoke-virtual {v9, v15}, LJ/B;->g(I)I

    move-result v7

    add-int/2addr v7, v13

    const/4 v8, 0x0

    :goto_16
    if-ge v8, v7, :cond_25

    add-int/lit8 v12, v10, -0x1

    invoke-static {v12}, LK/t;->f(I)I

    move-result v13

    invoke-virtual {v9, v13}, LJ/B;->o(I)V

    invoke-static {v12}, LK/t;->f(I)I

    move-result v12

    invoke-virtual {v9, v12}, LJ/B;->o(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_25
    const/4 v15, 0x2

    invoke-virtual {v9, v15}, LJ/B;->g(I)I

    move-result v7

    if-nez v7, :cond_28

    const/4 v13, 0x1

    if-le v6, v13, :cond_26

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v10, :cond_26

    const/4 v8, 0x4

    invoke-virtual {v9, v8}, LJ/B;->o(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_26
    const/4 v8, 0x4

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v6, :cond_27

    const/16 v12, 0x8

    invoke-virtual {v9, v12}, LJ/B;->o(I)V

    invoke-virtual {v9, v12}, LJ/B;->o(I)V

    invoke-virtual {v9, v12}, LJ/B;->o(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_27
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_28
    const-string v1, "to reserved bits must be zero after mapping coupling steps"

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_29
    const/4 v1, 0x6

    invoke-virtual {v9, v1}, LJ/B;->g(I)I

    move-result v1

    const/4 v13, 0x1

    add-int/2addr v1, v13

    new-array v4, v1, [LK/u;

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v1, :cond_2a

    invoke-virtual {v9}, LJ/B;->f()Z

    move-result v7

    const/16 v8, 0x10

    invoke-virtual {v9, v8}, LJ/B;->g(I)I

    invoke-virtual {v9, v8}, LJ/B;->g(I)I

    const/16 v15, 0x8

    invoke-virtual {v9, v15}, LJ/B;->g(I)I

    new-instance v10, LK/u;

    invoke-direct {v10, v7}, LK/u;-><init>(Z)V

    aput-object v10, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_2a
    invoke-virtual {v9}, LJ/B;->f()Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v8, LB0/b;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v3, v8, LB0/b;->e:Ljava/lang/Object;

    iput-object v5, v8, LB0/b;->f:Ljava/lang/Object;

    iput-object v11, v8, LB0/b;->g:Ljava/lang/Object;

    iput-object v4, v8, LB0/b;->h:Ljava/lang/Object;

    :goto_1b
    iput-object v8, v0, Lw0/j;->n:LB0/b;

    if-nez v8, :cond_2b

    const/4 v13, 0x1

    return v13

    :cond_2b
    iget-object v1, v8, LB0/b;->e:Ljava/lang/Object;

    check-cast v1, LK/A;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, LK/A;->g:Ljava/io/Serializable;

    check-cast v4, [B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v8, LB0/b;->g:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v8, LB0/b;->f:Ljava/lang/Object;

    check-cast v4, LZ0/i;

    iget-object v4, v4, LZ0/i;->e:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-static {v4}, Lu1/P;->l([Ljava/lang/Object;)Lu1/C0;

    move-result-object v4

    invoke-static {v4}, Lb0/I;->a(Ljava/util/List;)LG/V;

    move-result-object v4

    new-instance v5, LG/w;

    invoke-direct {v5}, LG/w;-><init>()V

    const-string v6, "audio/ogg"

    invoke-static {v6}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, LG/w;->n:Ljava/lang/String;

    const-string v6, "audio/vorbis"

    invoke-static {v6}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, LG/w;->o:Ljava/lang/String;

    iget v6, v1, LK/A;->d:I

    iput v6, v5, LG/w;->i:I

    iget v6, v1, LK/A;->c:I

    iput v6, v5, LG/w;->j:I

    iget v6, v1, LK/A;->a:I

    iput v6, v5, LG/w;->I:I

    iget v1, v1, LK/A;->b:I

    iput v1, v5, LG/w;->K:I

    iput-object v3, v5, LG/w;->r:Ljava/util/List;

    iput-object v4, v5, LG/w;->l:LG/V;

    new-instance v1, LG/x;

    invoke-direct {v1, v5}, LG/x;-><init>(LG/w;)V

    iput-object v1, v2, LW0/c;->f:Ljava/lang/Object;

    const/4 v13, 0x1

    return v13

    :cond_2c
    const-string v1, "framing bit after modes not set as expected"

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1
.end method

.method public final d(Z)V
    .locals 0

    invoke-super {p0, p1}, Lw0/i;->d(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lw0/j;->n:LB0/b;

    iput-object p1, p0, Lw0/j;->q:LK/A;

    iput-object p1, p0, Lw0/j;->r:LZ0/i;

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lw0/j;->o:I

    iput-boolean p1, p0, Lw0/j;->p:Z

    return-void
.end method
