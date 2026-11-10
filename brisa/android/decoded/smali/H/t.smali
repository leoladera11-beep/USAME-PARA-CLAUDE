.class public final LH/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:LH/r;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:D


# direct methods
.method public constructor <init>(IIFFIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LH/t;->a:I

    iput p2, p0, LH/t;->b:I

    iput p3, p0, LH/t;->c:F

    iput p4, p0, LH/t;->d:F

    int-to-float p2, p1

    int-to-float p3, p5

    div-float/2addr p2, p3

    iput p2, p0, LH/t;->e:F

    div-int/lit16 p2, p1, 0x190

    iput p2, p0, LH/t;->f:I

    div-int/lit8 p1, p1, 0x41

    iput p1, p0, LH/t;->g:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, LH/t;->h:I

    if-eqz p6, :cond_0

    new-instance p1, LH/q;

    invoke-direct {p1, p0}, LH/q;-><init>(LH/t;)V

    goto :goto_0

    :cond_0
    new-instance p1, LH/s;

    invoke-direct {p1, p0}, LH/s;-><init>(LH/t;)V

    :goto_0
    iput-object p1, p0, LH/t;->i:LH/r;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 4

    iget-object v0, p0, LH/t;->i:LH/r;

    invoke-interface {v0, p2}, LH/r;->c(I)V

    invoke-interface {v0}, LH/r;->o()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, LH/t;->b:I

    mul-int/2addr p1, v2

    invoke-interface {v0}, LH/r;->p()Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, LH/t;->k:I

    mul-int/2addr v3, v2

    mul-int/2addr v2, p2

    invoke-static {v1, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LH/t;->k:I

    add-int/2addr p1, p2

    iput p1, p0, LH/t;->k:I

    return-void
.end method

.method public final b()V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, LH/t;->k:I

    iget v2, v0, LH/t;->c:F

    iget v3, v0, LH/t;->d:F

    div-float/2addr v2, v3

    float-to-double v4, v2

    iget v2, v0, LH/t;->e:F

    mul-float/2addr v2, v3

    const-wide v6, 0x3ff0000a80000000L    # 1.0000100135803223

    cmpl-double v3, v4, v6

    iget v6, v0, LH/t;->a:I

    const/4 v7, 0x1

    iget-object v8, v0, LH/t;->i:LH/r;

    iget v14, v0, LH/t;->b:I

    const/4 v15, 0x0

    if-gtz v3, :cond_1

    const-wide v9, 0x3fefffeb00000000L    # 0.9999899864196777

    cmpg-double v3, v4, v9

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    iget v3, v0, LH/t;->j:I

    invoke-virtual {v0, v15, v3}, LH/t;->a(II)V

    iput v15, v0, LH/t;->j:I

    :goto_0
    move/from16 v17, v2

    move/from16 v18, v7

    goto/16 :goto_b

    :cond_1
    :goto_1
    iget v3, v0, LH/t;->j:I

    iget v9, v0, LH/t;->h:I

    if-ge v3, v9, :cond_2

    goto :goto_0

    :cond_2
    move v12, v15

    :goto_2
    iget v10, v0, LH/t;->o:I

    if-lez v10, :cond_3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v0, v12, v10}, LH/t;->a(II)V

    iget v11, v0, LH/t;->o:I

    sub-int/2addr v11, v10

    iput v11, v0, LH/t;->o:I

    add-int/2addr v12, v10

    move/from16 v17, v2

    move-wide/from16 v22, v4

    move/from16 v18, v7

    move v7, v9

    goto/16 :goto_a

    :cond_3
    const/16 v10, 0xfa0

    if-le v6, v10, :cond_4

    div-int/lit16 v10, v6, 0xfa0

    goto :goto_3

    :cond_4
    move v10, v7

    :goto_3
    iget v11, v0, LH/t;->g:I

    iget v13, v0, LH/t;->f:I

    if-ne v14, v7, :cond_5

    if-ne v10, v7, :cond_5

    invoke-interface {v8, v12, v13, v11}, LH/r;->j(III)I

    move-result v10

    move/from16 v17, v2

    goto :goto_6

    :cond_5
    invoke-interface {v8, v12, v10}, LH/r;->i(II)V

    div-int v15, v13, v10

    move/from16 v17, v2

    div-int v2, v11, v10

    invoke-interface {v8, v15, v2}, LH/r;->q(II)I

    move-result v2

    if-eq v10, v7, :cond_9

    mul-int/2addr v2, v10

    mul-int/lit8 v10, v10, 0x4

    sub-int v15, v2, v10

    add-int/2addr v2, v10

    if-ge v15, v13, :cond_6

    goto :goto_4

    :cond_6
    move v13, v15

    :goto_4
    if-le v2, v11, :cond_7

    goto :goto_5

    :cond_7
    move v11, v2

    :goto_5
    if-ne v14, v7, :cond_8

    invoke-interface {v8, v12, v13, v11}, LH/r;->j(III)I

    move-result v10

    goto :goto_6

    :cond_8
    invoke-interface {v8, v12, v7}, LH/r;->i(II)V

    invoke-interface {v8, v13, v11}, LH/r;->q(II)I

    move-result v10

    goto :goto_6

    :cond_9
    move v10, v2

    :goto_6
    invoke-interface {v8}, LH/r;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v0, LH/t;->p:I

    goto :goto_7

    :cond_a
    move v2, v10

    :goto_7
    invoke-interface {v8}, LH/r;->n()V

    iput v10, v0, LH/t;->p:I

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, v4, v10

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    if-lez v13, :cond_c

    cmpl-double v13, v4, v18

    if-ltz v13, :cond_b

    move-wide/from16 v20, v10

    int-to-double v10, v2

    sub-double v18, v4, v20

    div-double v10, v10, v18

    move v15, v7

    move-object v13, v8

    iget-wide v7, v0, LH/t;->q:D

    add-double/2addr v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    move-wide/from16 v22, v4

    int-to-double v4, v7

    sub-double/2addr v10, v4

    iput-wide v10, v0, LH/t;->q:D

    move-object v8, v13

    goto :goto_8

    :cond_b
    move-wide/from16 v22, v4

    move v15, v7

    move-object v13, v8

    move-wide/from16 v20, v10

    int-to-double v4, v2

    sub-double v18, v18, v22

    mul-double v18, v18, v4

    sub-double v4, v22, v20

    div-double v18, v18, v4

    iget-wide v4, v0, LH/t;->q:D

    add-double v18, v18, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v0, LH/t;->o:I

    int-to-double v4, v4

    sub-double v4, v18, v4

    iput-wide v4, v0, LH/t;->q:D

    move v7, v2

    :goto_8
    invoke-interface {v8, v7}, LH/r;->c(I)V

    iget v11, v0, LH/t;->k:I

    add-int v13, v12, v2

    iget v10, v0, LH/t;->b:I

    move v4, v9

    move v9, v7

    invoke-interface/range {v8 .. v13}, LH/r;->h(IIIII)V

    iget v5, v0, LH/t;->k:I

    add-int/2addr v5, v9

    iput v5, v0, LH/t;->k:I

    add-int/2addr v2, v9

    add-int/2addr v2, v12

    move v12, v2

    move v7, v4

    move/from16 v18, v15

    goto/16 :goto_a

    :cond_c
    move-wide/from16 v22, v4

    move v15, v7

    move v4, v9

    move-wide/from16 v20, v10

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v22, v9

    if-gez v5, :cond_d

    int-to-double v9, v2

    mul-double v9, v9, v22

    sub-double v18, v20, v22

    div-double v9, v9, v18

    move v7, v4

    iget-wide v4, v0, LH/t;->q:D

    add-double/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    move-wide/from16 v18, v9

    int-to-double v9, v4

    sub-double v9, v18, v9

    iput-wide v9, v0, LH/t;->q:D

    move v9, v4

    goto :goto_9

    :cond_d
    move v7, v4

    int-to-double v4, v2

    mul-double v9, v22, v18

    sub-double v9, v9, v20

    mul-double/2addr v9, v4

    sub-double v4, v20, v22

    div-double/2addr v9, v4

    iget-wide v4, v0, LH/t;->q:D

    add-double/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v0, LH/t;->o:I

    int-to-double v4, v4

    sub-double/2addr v9, v4

    iput-wide v9, v0, LH/t;->q:D

    move v9, v2

    :goto_9
    add-int v4, v2, v9

    invoke-interface {v8, v4}, LH/r;->c(I)V

    invoke-interface {v8}, LH/r;->o()Ljava/lang/Object;

    move-result-object v5

    mul-int v10, v12, v14

    invoke-interface {v8}, LH/r;->p()Ljava/lang/Object;

    move-result-object v11

    iget v13, v0, LH/t;->k:I

    mul-int/2addr v13, v14

    move/from16 v18, v15

    mul-int v15, v2, v14

    invoke-static {v5, v10, v11, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, v0, LH/t;->k:I

    add-int v11, v5, v2

    add-int/2addr v2, v12

    iget v10, v0, LH/t;->b:I

    move v13, v12

    move v12, v2

    invoke-interface/range {v8 .. v13}, LH/r;->h(IIIII)V

    move v12, v13

    iget v2, v0, LH/t;->k:I

    add-int/2addr v2, v4

    iput v2, v0, LH/t;->k:I

    add-int/2addr v12, v9

    :goto_a
    add-int v9, v12, v7

    if-le v9, v3, :cond_16

    iget v2, v0, LH/t;->j:I

    sub-int/2addr v2, v12

    invoke-interface {v8}, LH/r;->o()Ljava/lang/Object;

    move-result-object v3

    mul-int/2addr v12, v14

    invoke-interface {v8}, LH/r;->o()Ljava/lang/Object;

    move-result-object v4

    mul-int v5, v2, v14

    const/4 v7, 0x0

    invoke-static {v3, v12, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, v0, LH/t;->j:I

    :goto_b
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_15

    iget v2, v0, LH/t;->k:I

    if-ne v2, v1, :cond_e

    goto/16 :goto_10

    :cond_e
    int-to-float v2, v6

    div-float v2, v2, v17

    float-to-long v2, v2

    int-to-long v4, v6

    move-wide v11, v2

    move-wide v9, v4

    :goto_c
    const-wide/16 v2, 0x0

    cmp-long v4, v11, v2

    if-eqz v4, :cond_f

    cmp-long v4, v9, v2

    if-eqz v4, :cond_f

    const-wide/16 v4, 0x2

    rem-long v6, v11, v4

    cmp-long v6, v6, v2

    if-nez v6, :cond_f

    rem-long v6, v9, v4

    cmp-long v2, v6, v2

    if-nez v2, :cond_f

    div-long/2addr v11, v4

    div-long/2addr v9, v4

    goto :goto_c

    :cond_f
    iget v2, v0, LH/t;->k:I

    sub-int/2addr v2, v1

    invoke-interface {v8, v2}, LH/r;->k(I)V

    invoke-interface {v8}, LH/r;->p()Ljava/lang/Object;

    move-result-object v3

    mul-int v4, v1, v14

    invoke-interface {v8}, LH/r;->g()Ljava/lang/Object;

    move-result-object v5

    iget v6, v0, LH/t;->l:I

    mul-int/2addr v6, v14

    mul-int v7, v2, v14

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, LH/t;->k:I

    iget v1, v0, LH/t;->l:I

    add-int/2addr v1, v2

    iput v1, v0, LH/t;->l:I

    const/4 v13, 0x0

    :goto_d
    iget v1, v0, LH/t;->l:I

    add-int/lit8 v1, v1, -0x1

    if-ge v13, v1, :cond_13

    :goto_e
    iget v1, v0, LH/t;->m:I

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    mul-long v4, v2, v11

    iget v6, v0, LH/t;->n:I

    int-to-long v6, v6

    mul-long v19, v6, v9

    cmp-long v4, v4, v19

    if-lez v4, :cond_10

    move/from16 v15, v18

    invoke-interface {v8, v15}, LH/r;->c(I)V

    invoke-interface/range {v8 .. v13}, LH/r;->a(JJI)V

    iget v1, v0, LH/t;->n:I

    add-int/2addr v1, v15

    iput v1, v0, LH/t;->n:I

    iget v1, v0, LH/t;->k:I

    add-int/2addr v1, v15

    iput v1, v0, LH/t;->k:I

    goto :goto_e

    :cond_10
    move/from16 v15, v18

    iput v1, v0, LH/t;->m:I

    cmp-long v1, v2, v9

    if-nez v1, :cond_12

    const/4 v1, 0x0

    iput v1, v0, LH/t;->m:I

    cmp-long v2, v6, v11

    if-nez v2, :cond_11

    move/from16 v16, v15

    goto :goto_f

    :cond_11
    move/from16 v16, v1

    :goto_f
    invoke-static/range {v16 .. v16}, LF1/i;->o(Z)V

    iput v1, v0, LH/t;->n:I

    :cond_12
    add-int/lit8 v13, v13, 0x1

    move/from16 v18, v15

    goto :goto_d

    :cond_13
    if-nez v1, :cond_14

    goto :goto_10

    :cond_14
    invoke-interface {v8}, LH/r;->g()Ljava/lang/Object;

    move-result-object v2

    mul-int v3, v1, v14

    invoke-interface {v8}, LH/r;->g()Ljava/lang/Object;

    move-result-object v4

    iget v5, v0, LH/t;->l:I

    sub-int/2addr v5, v1

    mul-int/2addr v5, v14

    const/4 v9, 0x0

    invoke-static {v2, v3, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, LH/t;->l:I

    sub-int/2addr v2, v1

    iput v2, v0, LH/t;->l:I

    :cond_15
    :goto_10
    return-void

    :cond_16
    move v9, v7

    move/from16 v2, v17

    move/from16 v7, v18

    move-wide/from16 v4, v22

    const/4 v15, 0x0

    goto/16 :goto_2
.end method
