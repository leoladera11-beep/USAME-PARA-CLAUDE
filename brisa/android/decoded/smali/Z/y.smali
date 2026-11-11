.class public final LZ/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LZ/m;

.field public final b:LZ/D;

.field public final c:J

.field public d:Z

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public j:F

.field public k:LJ/M;

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;LZ/m;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LZ/y;->a:LZ/m;

    iput-wide p3, p0, LZ/y;->c:J

    new-instance p2, LZ/D;

    invoke-direct {p2, p1}, LZ/D;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, LZ/y;->b:LZ/D;

    const/4 p1, 0x0

    iput p1, p0, LZ/y;->e:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LZ/y;->f:J

    iput-wide p1, p0, LZ/y;->h:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, LZ/y;->j:F

    sget-object p1, LJ/M;->a:LJ/M;

    iput-object p1, p0, LZ/y;->k:LJ/M;

    return-void
.end method


# virtual methods
.method public final a(JJJJZZJJLZ/x;)I
    .locals 29

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p13

    move-object/from16 v8, p15

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v9, v8, LZ/x;->a:J

    iput-wide v9, v8, LZ/x;->b:J

    iget-boolean v3, v0, LZ/y;->d:Z

    if-eqz v3, :cond_0

    iget-wide v11, v0, LZ/y;->f:J

    cmp-long v11, v11, v9

    if-nez v11, :cond_0

    iput-wide v4, v0, LZ/y;->f:J

    :cond_0
    sub-long v11, v1, v4

    long-to-double v11, v11

    iget v13, v0, LZ/y;->j:F

    float-to-double v13, v13

    div-double/2addr v11, v13

    double-to-long v11, v11

    if-eqz v3, :cond_1

    iget-object v3, v0, LZ/y;->k:LJ/M;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v13, v14}, LJ/W;->G(J)J

    move-result-wide v13

    sub-long v13, v13, p5

    sub-long/2addr v11, v13

    :cond_1
    iput-wide v11, v8, LZ/x;->a:J

    const/4 v13, 0x3

    if-eqz p9, :cond_2

    if-nez p10, :cond_2

    :goto_0
    move/from16 p6, v13

    goto/16 :goto_d

    :cond_2
    iget-boolean v3, v0, LZ/y;->l:Z

    const/4 v14, 0x5

    const/4 v15, 0x1

    if-nez v3, :cond_5

    iget-object v1, v0, LZ/y;->a:LZ/m;

    const/4 v7, 0x1

    move/from16 v6, p10

    move-wide v2, v11

    invoke-virtual/range {v1 .. v7}, LZ/m;->R0(JJZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_c

    :cond_3
    iget-boolean v1, v0, LZ/y;->d:Z

    if-eqz v1, :cond_4

    iget-wide v1, v8, LZ/x;->a:J

    const-wide/16 v3, 0x7530

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v15, v0, LZ/y;->m:Z

    return v14

    :cond_5
    iget-wide v3, v0, LZ/y;->h:J

    cmp-long v3, v3, v9

    const-wide/16 v16, -0x7530

    const/4 v4, 0x2

    const/16 v18, 0x0

    if-eqz v3, :cond_7

    iget-boolean v3, v0, LZ/y;->i:Z

    if-nez v3, :cond_7

    :cond_6
    move/from16 v3, v18

    goto :goto_2

    :cond_7
    iget v3, v0, LZ/y;->e:I

    if-eqz v3, :cond_b

    if-eq v3, v15, :cond_8

    if-eq v3, v4, :cond_a

    if-ne v3, v13, :cond_9

    iget-object v3, v0, LZ/y;->k:LJ/M;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, LJ/W;->G(J)J

    move-result-wide v19

    iget-wide v4, v0, LZ/y;->g:J

    sub-long v19, v19, v4

    iget-boolean v3, v0, LZ/y;->d:Z

    if-eqz v3, :cond_6

    iget-wide v3, v0, LZ/y;->f:J

    cmp-long v5, v3, v9

    if-eqz v5, :cond_6

    cmp-long v3, v3, p3

    if-eqz v3, :cond_6

    cmp-long v3, v11, v16

    if-gez v3, :cond_6

    const-wide/32 v3, 0x186a0

    cmp-long v3, v19, v3

    if-lez v3, :cond_6

    :cond_8
    :goto_1
    move v3, v15

    goto :goto_2

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_a
    cmp-long v3, p3, p7

    if-ltz v3, :cond_6

    goto :goto_1

    :cond_b
    iget-boolean v3, v0, LZ/y;->d:Z

    :goto_2
    if-eqz v3, :cond_c

    return v18

    :cond_c
    iget-boolean v3, v0, LZ/y;->d:Z

    if-eqz v3, :cond_d

    iget-wide v3, v0, LZ/y;->f:J

    cmp-long v3, p3, v3

    if-nez v3, :cond_e

    :cond_d
    move/from16 p9, v14

    goto/16 :goto_e

    :cond_e
    iget-object v3, v0, LZ/y;->k:LJ/M;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-object v5, v0, LZ/y;->b:LZ/D;

    iget-wide v11, v8, LZ/x;->a:J

    const-wide/16 v19, 0x3e8

    mul-long v11, v11, v19

    add-long/2addr v11, v3

    move-wide/from16 v21, v9

    iget-wide v9, v5, LZ/D;->n:J

    cmp-long v23, v1, v9

    move/from16 p6, v13

    move/from16 p9, v14

    if-eqz v23, :cond_f

    iget-wide v13, v5, LZ/D;->l:J

    iput-wide v13, v5, LZ/D;->o:J

    iget-wide v13, v5, LZ/D;->m:J

    iput-wide v13, v5, LZ/D;->p:J

    iput-wide v9, v5, LZ/D;->q:J

    iget-wide v9, v5, LZ/D;->k:J

    iput-wide v9, v5, LZ/D;->j:J

    :cond_f
    iget-wide v9, v5, LZ/D;->o:J

    const-wide/16 v13, -0x1

    cmp-long v13, v9, v13

    if-eqz v13, :cond_12

    cmp-long v13, p11, v21

    if-eqz v13, :cond_10

    sub-long v9, v6, v9

    mul-long v9, v9, p11

    long-to-float v9, v9

    iget v10, v5, LZ/D;->h:F

    :goto_3
    div-float/2addr v9, v10

    float-to-long v9, v9

    goto :goto_4

    :cond_10
    iget-wide v9, v5, LZ/D;->q:J

    sub-long v9, v1, v9

    mul-long v9, v9, v19

    long-to-float v9, v9

    iget v10, v5, LZ/D;->h:F

    goto :goto_3

    :goto_4
    iget-wide v13, v5, LZ/D;->p:J

    add-long/2addr v13, v9

    sub-long v9, v11, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v23, 0x1312d00

    cmp-long v9, v9, v23

    if-gtz v9, :cond_11

    move-wide v11, v13

    goto :goto_5

    :cond_11
    invoke-virtual {v5}, LZ/D;->b()V

    :cond_12
    :goto_5
    iput-wide v6, v5, LZ/D;->l:J

    iput-wide v11, v5, LZ/D;->m:J

    iput-wide v1, v5, LZ/D;->n:J

    iget-object v1, v5, LZ/D;->c:LZ/A;

    if-nez v1, :cond_14

    :cond_13
    :goto_6
    move-wide/from16 p7, v3

    goto/16 :goto_a

    :cond_14
    iget-wide v1, v1, LZ/A;->c:J

    iget-object v6, v5, LZ/D;->c:LZ/A;

    iget-wide v6, v6, LZ/A;->d:J

    cmp-long v9, v1, v21

    if-eqz v9, :cond_13

    cmp-long v9, v6, v21

    if-nez v9, :cond_15

    goto :goto_6

    :cond_15
    sub-long v9, v11, v1

    div-long/2addr v9, v6

    mul-long/2addr v9, v6

    add-long/2addr v9, v1

    cmp-long v1, v11, v9

    if-gtz v1, :cond_16

    sub-long v1, v9, v6

    goto :goto_7

    :cond_16
    add-long v1, v9, v6

    move-wide/from16 v27, v9

    move-wide v9, v1

    move-wide/from16 v1, v27

    :goto_7
    sub-long v13, v9, v11

    sub-long/2addr v11, v1

    sub-long v23, v13, v11

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(J)J

    move-result-wide v23

    const-wide/16 v25, 0x2

    div-long v25, v6, v25

    cmp-long v25, v23, v25

    if-gez v25, :cond_1a

    const-wide/16 v25, 0x4

    move-wide/from16 p1, v1

    div-long v1, v6, v25

    cmp-long v23, v23, v1

    move-wide/from16 p7, v3

    if-gez v23, :cond_19

    const-wide/16 p11, 0x0

    iget-wide v3, v5, LZ/D;->j:J

    cmp-long v23, v3, p11

    if-eqz v23, :cond_17

    iput-wide v3, v5, LZ/D;->k:J

    goto :goto_8

    :cond_17
    cmp-long v3, v13, v11

    if-gez v3, :cond_18

    neg-long v1, v1

    :cond_18
    iput-wide v1, v5, LZ/D;->k:J

    goto :goto_8

    :cond_19
    const-wide/16 v1, 0x0

    iput-wide v1, v5, LZ/D;->k:J

    goto :goto_8

    :cond_1a
    move-wide/from16 p1, v1

    move-wide/from16 p7, v3

    iget-wide v1, v5, LZ/D;->j:J

    iput-wide v1, v5, LZ/D;->k:J

    :goto_8
    iget-wide v1, v5, LZ/D;->k:J

    add-long/2addr v13, v1

    cmp-long v1, v13, v11

    if-gez v1, :cond_1b

    goto :goto_9

    :cond_1b
    move-wide/from16 v9, p1

    :goto_9
    const-wide/16 v1, 0x50

    mul-long/2addr v6, v1

    const-wide/16 v1, 0x64

    div-long/2addr v6, v1

    sub-long v11, v9, v6

    :goto_a
    iput-wide v11, v8, LZ/x;->b:J

    sub-long v11, v11, p7

    div-long v2, v11, v19

    iput-wide v2, v8, LZ/x;->a:J

    iget-wide v4, v0, LZ/y;->h:J

    cmp-long v1, v4, v21

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, LZ/y;->i:Z

    if-nez v1, :cond_1c

    move v7, v15

    goto :goto_b

    :cond_1c
    move/from16 v7, v18

    :goto_b
    iget-object v1, v0, LZ/y;->a:LZ/m;

    move-wide/from16 v4, p3

    move/from16 v6, p10

    const/4 v9, 0x2

    invoke-virtual/range {v1 .. v7}, LZ/m;->R0(JJZZ)Z

    move-result v1

    if-eqz v1, :cond_1d

    :goto_c
    const/4 v1, 0x4

    return v1

    :cond_1d
    iget-wide v1, v8, LZ/x;->a:J

    cmp-long v3, v1, v16

    if-gez v3, :cond_1e

    if-nez p10, :cond_1e

    move/from16 v18, v15

    :cond_1e
    if-eqz v18, :cond_20

    if-eqz v7, :cond_1f

    :goto_d
    return p6

    :cond_1f
    return v9

    :cond_20
    const-wide/32 v3, 0xc350

    cmp-long v1, v1, v3

    if-lez v1, :cond_21

    goto :goto_e

    :cond_21
    return v15

    :goto_e
    return p9
.end method

.method public final b(Z)Z
    .locals 8

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_1

    iget p1, p0, LZ/y;->e:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    iget-boolean p1, p0, LZ/y;->m:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, LZ/y;->l:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v1, p0, LZ/y;->h:J

    return v0

    :cond_1
    :goto_0
    iget-wide v3, p0, LZ/y;->h:J

    cmp-long p1, v3, v1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    return v3

    :cond_2
    iget-object p1, p0, LZ/y;->k:LJ/M;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, LZ/y;->h:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_3

    return v0

    :cond_3
    iput-wide v1, p0, LZ/y;->h:J

    return v3
.end method

.method public final c(Z)V
    .locals 4

    iput-boolean p1, p0, LZ/y;->i:Z

    const-wide/16 v0, 0x0

    iget-wide v2, p0, LZ/y;->c:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    iget-object p1, p0, LZ/y;->k:LJ/M;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, LZ/y;->h:J

    return-void
.end method

.method public final d()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, LZ/y;->d:Z

    iget-object v1, p0, LZ/y;->k:LJ/M;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, LJ/W;->G(J)J

    move-result-wide v1

    iput-wide v1, p0, LZ/y;->g:J

    iget-object v1, p0, LZ/y;->b:LZ/D;

    iput-boolean v0, v1, LZ/D;->d:Z

    invoke-virtual {v1}, LZ/D;->b()V

    iget-boolean v2, v1, LZ/D;->b:Z

    if-nez v2, :cond_2

    iget-object v2, v1, LZ/D;->a:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v4, v5, :cond_1

    new-instance v4, LZ/C;

    invoke-direct {v4, v3, v2}, LZ/C;-><init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;)V

    :goto_0
    move-object v3, v4

    goto :goto_1

    :cond_1
    new-instance v4, LZ/B;

    invoke-direct {v4, v3, v2}, LZ/A;-><init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "VideoFrameReleaseHelper"

    const-string v5, "Vsync sampling disabled due to platform error"

    invoke-static {v4, v5, v2}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iput-object v3, v1, LZ/D;->c:LZ/A;

    iput-boolean v0, v1, LZ/D;->b:Z

    :cond_2
    iget-object v0, v1, LZ/D;->c:LZ/A;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LZ/A;->a()V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, LZ/D;->c(Z)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, LZ/y;->e:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, LZ/y;->e:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, LZ/y;->e:I

    goto :goto_0

    :cond_2
    iput v0, p0, LZ/y;->e:I

    :goto_0
    iget-object p1, p0, LZ/y;->b:LZ/D;

    invoke-virtual {p1}, LZ/D;->b()V

    return-void
.end method

.method public final f(Landroid/view/Surface;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, LZ/y;->l:Z

    iput-boolean v0, p0, LZ/y;->m:Z

    iget-object v0, p0, LZ/y;->b:LZ/D;

    iget-object v2, v0, LZ/D;->e:Landroid/view/Surface;

    if-ne v2, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, LZ/D;->a()V

    iput-object p1, v0, LZ/D;->e:Landroid/view/Surface;

    invoke-virtual {v0, v1}, LZ/D;->c(Z)V

    :goto_1
    iget p1, p0, LZ/y;->e:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, LZ/y;->e:I

    return-void
.end method

.method public final g(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    iget v0, p0, LZ/y;->j:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, LZ/y;->j:F

    iget-object v0, p0, LZ/y;->b:LZ/D;

    iput p1, v0, LZ/D;->h:F

    invoke-virtual {v0, v1}, LZ/D;->c(Z)V

    return-void
.end method
