.class public final LP/S;
.super LS/r;
.source "SourceFile"

# interfaces
.implements LN/K;


# instance fields
.field public final N0:Landroid/content/Context;

.field public final O0:LP/t;

.field public final P0:LP/O;

.field public final Q0:LB/A;

.field public final R0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public S0:I

.field public T0:Z

.field public U0:LG/x;

.field public V0:LG/x;

.field public W0:J

.field public X0:Z

.field public Y0:Z

.field public Z0:Z

.field public a1:Z

.field public b1:I

.field public c1:Z

.field public d1:J

.field public e1:J

.field public f1:Z


# direct methods
.method public constructor <init>(Lcom/brisa/local/VideoPlaybackService;LS/j;Landroid/os/Handler;LN/s;LP/O;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, LB/A;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LB/A;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p2}, LS/r;-><init>(Landroid/content/Context;ILS/j;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LP/S;->N0:Landroid/content/Context;

    iput-object p5, p0, LP/S;->P0:LP/O;

    iput-object v0, p0, LP/S;->Q0:LB/A;

    const/16 p1, -0x3e8

    iput p1, p0, LP/S;->b1:I

    new-instance p1, LP/t;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p4, p2}, LP/t;-><init>(Landroid/os/Handler;LN/s;I)V

    iput-object p1, p0, LP/S;->O0:LP/t;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LP/S;->R0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LP/S;->d1:J

    iput-wide p1, p0, LP/S;->e1:J

    const/4 p1, 0x0

    iput-boolean p1, p0, LP/S;->f1:Z

    return-void
.end method


# virtual methods
.method public final B0(LG/x;)Z
    .locals 4

    iget-object v0, p0, LN/a;->h:LN/e0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, LN/e0;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, LP/S;->G0(LG/x;)I

    move-result v0

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_1

    iget-object v2, p0, LN/a;->h:LN/e0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, LN/e0;->a:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    iget v0, p1, LG/x;->N:I

    if-nez v0, :cond_1

    iget v0, p1, LG/x;->O:I

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, LP/S;->P0:LP/O;

    invoke-virtual {v0, p1}, LP/O;->h(LG/x;)I

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final C0(LS/i;LG/x;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, LN/a;->e(IIII)I

    move-result v4

    iget-object v5, v1, LG/x;->p:Ljava/lang/String;

    iget-object v6, v1, LG/x;->p:Ljava/lang/String;

    invoke-static {v5}, LG/W;->h(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3, v3, v3, v3}, LN/a;->e(IIII)I

    move-result v1

    return v1

    :cond_0
    iget v5, v1, LG/x;->T:I

    if-eqz v5, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_0
    const/4 v8, 0x2

    if-eqz v5, :cond_3

    if-ne v5, v8, :cond_2

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v2

    :goto_2
    const/16 v9, 0x20

    const-string v11, "audio/raw"

    const/16 v12, 0x8

    const/4 v13, 0x4

    iget-object v14, v0, LP/S;->P0:LP/O;

    if-eqz v5, :cond_6

    if-eqz v7, :cond_5

    invoke-static {v11, v3, v3}, LS/w;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LS/o;

    :goto_3
    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {v0, v1}, LP/S;->G0(LG/x;)I

    move-result v7

    invoke-virtual {v14, v1}, LP/O;->h(LG/x;)I

    move-result v15

    if-eqz v15, :cond_7

    invoke-static {v13, v12, v9, v7}, LN/a;->e(IIII)I

    move-result v1

    return v1

    :cond_6
    move v7, v3

    :cond_7
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v14, v1}, LP/O;->h(LG/x;)I

    move-result v15

    if-eqz v15, :cond_14

    :cond_8
    iget v15, v1, LG/x;->J:I

    iget v2, v1, LG/x;->L:I

    move/from16 v17, v9

    new-instance v9, LG/w;

    invoke-direct {v9}, LG/w;-><init>()V

    invoke-static {v11}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, LG/w;->o:Ljava/lang/String;

    iput v15, v9, LG/w;->I:I

    iput v2, v9, LG/w;->K:I

    iput v8, v9, LG/w;->L:I

    new-instance v2, LG/x;

    invoke-direct {v2, v9}, LG/x;-><init>(LG/w;)V

    invoke-virtual {v14, v2}, LP/O;->h(LG/x;)I

    move-result v2

    if-eqz v2, :cond_14

    if-nez v6, :cond_9

    sget-object v2, Lu1/C0;->i:Lu1/C0;

    goto :goto_5

    :cond_9
    invoke-virtual {v14, v1}, LP/O;->h(LG/x;)I

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v11, v3, v3}, LS/w;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v10, 0x0

    goto :goto_4

    :cond_a
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, LS/o;

    :goto_4
    if-eqz v10, :cond_b

    invoke-static {v10}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v2

    goto :goto_5

    :cond_b
    move-object/from16 v2, p1

    invoke-static {v2, v1, v3, v3}, LS/w;->g(LS/i;LG/x;ZZ)Lu1/C0;

    move-result-object v2

    :goto_5
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_a

    :cond_c
    if-nez v5, :cond_d

    invoke-static {v8, v3, v3, v3}, LN/a;->e(IIII)I

    move-result v1

    return v1

    :cond_d
    invoke-virtual {v2, v3}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LS/o;

    iget-object v5, v0, LP/S;->N0:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, LS/o;->e(Landroid/content/Context;LG/x;)Z

    move-result v6

    if-nez v6, :cond_f

    const/4 v8, 0x1

    :goto_6
    iget v9, v2, Lu1/C0;->h:I

    if-ge v8, v9, :cond_f

    invoke-virtual {v2, v8}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LS/o;

    invoke-virtual {v9, v5, v1}, LS/o;->e(Landroid/content/Context;LG/x;)Z

    move-result v10

    if-eqz v10, :cond_e

    move/from16 v16, v3

    move-object v4, v9

    const/4 v2, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_f
    move v2, v6

    const/16 v16, 0x1

    :goto_7
    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    const/4 v13, 0x3

    :goto_8
    if-eqz v2, :cond_11

    invoke-virtual {v4, v1}, LS/o;->f(LG/x;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v12, 0x10

    :cond_11
    iget-boolean v1, v4, LS/o;->g:Z

    if-eqz v1, :cond_12

    const/16 v1, 0x40

    goto :goto_9

    :cond_12
    move v1, v3

    :goto_9
    if-eqz v16, :cond_13

    const/16 v3, 0x80

    :cond_13
    or-int v2, v13, v12

    or-int/lit8 v2, v2, 0x20

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    or-int/2addr v1, v7

    return v1

    :cond_14
    :goto_a
    return v4
.end method

.method public final G0(LG/x;)I
    .locals 2

    iget-object v0, p0, LP/S;->P0:LP/O;

    iget-boolean v1, v0, LP/O;->a0:Z

    if-eqz v1, :cond_0

    sget-object p1, LP/h;->d:LP/h;

    goto :goto_0

    :cond_0
    iget-object v1, v0, LP/O;->r:LP/q;

    invoke-virtual {v0, p1}, LP/O;->g(LG/x;)LP/k;

    move-result-object p1

    check-cast v1, LP/G;

    invoke-virtual {v1, p1}, LP/G;->b(LP/k;)LP/m;

    move-result-object p1

    new-instance v0, LP/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-boolean v1, p1, LP/m;->a:Z

    iput-boolean v1, v0, LP/g;->a:Z

    iget-boolean v1, p1, LP/m;->b:Z

    iput-boolean v1, v0, LP/g;->b:Z

    iget-boolean p1, p1, LP/m;->c:Z

    iput-boolean p1, v0, LP/g;->c:Z

    invoke-virtual {v0}, LP/g;->a()LP/h;

    move-result-object p1

    :goto_0
    iget-boolean v0, p1, LP/h;->a:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-boolean v0, p1, LP/h;->b:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x600

    goto :goto_1

    :cond_2
    const/16 v0, 0x200

    :goto_1
    iget-boolean p1, p1, LP/h;->c:Z

    if-eqz p1, :cond_3

    or-int/lit16 p1, v0, 0x800

    return p1

    :cond_3
    return v0
.end method

.method public final H0()V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual {v0}, LP/S;->m()Z

    iget-object v1, v0, LP/S;->P0:LP/O;

    iget-object v2, v1, LP/O;->b:LB/A;

    invoke-virtual {v1}, LP/O;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v1, LP/O;->H:Z

    if-eqz v3, :cond_1

    :cond_0
    const-wide/high16 v18, -0x8000000000000000L

    goto/16 :goto_3

    :cond_1
    iget-object v3, v1, LP/O;->t:LP/E;

    invoke-virtual {v3}, LP/E;->a()J

    move-result-wide v6

    iget-object v3, v1, LP/O;->p:LM0/s0;

    invoke-virtual {v1}, LP/O;->j()J

    move-result-wide v8

    iget-object v3, v3, LM0/s0;->e:Ljava/lang/Object;

    check-cast v3, LP/p;

    iget v3, v3, LP/p;->b:I

    invoke-static {v3, v8, v9}, LJ/W;->L(IJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-object v3, v1, LP/O;->h:Ljava/util/ArrayDeque;

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LP/M;

    iget-wide v8, v8, LP/M;->c:J

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LP/M;

    iput-object v8, v1, LP/O;->w:LP/M;

    goto :goto_0

    :cond_2
    iget-object v8, v1, LP/O;->w:LP/M;

    iget-wide v9, v8, LP/M;->c:J

    sub-long v11, v6, v9

    iget-object v6, v8, LP/M;->a:LG/a0;

    iget v6, v6, LG/a0;->a:F

    invoke-static {v11, v12, v6}, LJ/W;->u(JF)J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, LB/A;->h:Ljava/lang/Object;

    check-cast v3, LH/u;

    invoke-virtual {v3}, LH/u;->e()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-wide v8, v3, LH/u;->n:J

    const-wide/16 v13, 0x400

    cmp-long v8, v8, v13

    if-ltz v8, :cond_5

    iget-wide v8, v3, LH/u;->m:J

    iget-object v10, v3, LH/u;->j:LH/t;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v10, LH/t;->j:I

    iget v14, v10, LH/t;->b:I

    mul-int/2addr v13, v14

    iget-object v10, v10, LH/t;->i:LH/r;

    invoke-interface {v10}, LH/r;->l()I

    move-result v10

    mul-int/2addr v10, v13

    int-to-long v13, v10

    sub-long v13, v8, v13

    iget-object v8, v3, LH/u;->h:LH/k;

    iget v8, v8, LH/k;->a:I

    iget-object v9, v3, LH/u;->g:LH/k;

    iget v9, v9, LH/k;->a:I

    if-ne v8, v9, :cond_4

    iget-wide v8, v3, LH/u;->n:J

    sget-object v17, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v15, v8

    invoke-static/range {v11 .. v17}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v11

    :cond_3
    const-wide/high16 v18, -0x8000000000000000L

    goto :goto_1

    :cond_4
    const-wide/high16 v18, -0x8000000000000000L

    int-to-long v4, v8

    mul-long/2addr v13, v4

    iget-wide v3, v3, LH/u;->n:J

    int-to-long v8, v9

    mul-long v15, v3, v8

    sget-object v17, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v11 .. v17}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v11

    goto :goto_1

    :cond_5
    const-wide/high16 v18, -0x8000000000000000L

    iget v3, v3, LH/u;->c:F

    float-to-double v3, v3

    long-to-double v8, v11

    mul-double/2addr v3, v8

    double-to-long v11, v3

    :goto_1
    iget-object v3, v1, LP/O;->w:LP/M;

    iget-wide v4, v3, LP/M;->b:J

    add-long/2addr v4, v11

    sub-long/2addr v11, v6

    iput-wide v11, v3, LP/M;->d:J

    goto :goto_2

    :cond_6
    const-wide/high16 v18, -0x8000000000000000L

    iget-object v3, v1, LP/O;->w:LP/M;

    iget-wide v4, v3, LP/M;->b:J

    add-long/2addr v4, v6

    iget-wide v6, v3, LP/M;->d:J

    add-long/2addr v4, v6

    :goto_2
    iget-object v2, v2, LB/A;->g:Ljava/lang/Object;

    check-cast v2, LP/U;

    iget-wide v2, v2, LP/U;->q:J

    iget-object v6, v1, LP/O;->p:LM0/s0;

    iget-object v6, v6, LM0/s0;->e:Ljava/lang/Object;

    check-cast v6, LP/p;

    iget v6, v6, LP/p;->b:I

    invoke-static {v6, v2, v3}, LJ/W;->L(IJ)J

    move-result-wide v6

    add-long/2addr v6, v4

    iget-wide v4, v1, LP/O;->c0:J

    cmp-long v8, v2, v4

    if-lez v8, :cond_8

    iget-object v8, v1, LP/O;->p:LM0/s0;

    sub-long v4, v2, v4

    iget-object v8, v8, LM0/s0;->e:Ljava/lang/Object;

    check-cast v8, LP/p;

    iget v8, v8, LP/p;->b:I

    invoke-static {v8, v4, v5}, LJ/W;->L(IJ)J

    move-result-wide v4

    iput-wide v2, v1, LP/O;->c0:J

    iget-wide v2, v1, LP/O;->d0:J

    add-long/2addr v2, v4

    iput-wide v2, v1, LP/O;->d0:J

    iget-object v2, v1, LP/O;->e0:Landroid/os/Handler;

    if-nez v2, :cond_7

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v1, LP/O;->e0:Landroid/os/Handler;

    :cond_7
    iget-object v2, v1, LP/O;->e0:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, v1, LP/O;->e0:Landroid/os/Handler;

    new-instance v3, LH/a;

    const/16 v4, 0xe

    invoke-direct {v3, v1, v4}, LH/a;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :goto_3
    move-wide/from16 v6, v18

    :cond_8
    :goto_4
    cmp-long v1, v6, v18

    if-eqz v1, :cond_a

    iget-boolean v1, v0, LP/S;->X0:Z

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    iget-wide v1, v0, LP/S;->W0:J

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_5
    iput-wide v6, v0, LP/S;->W0:J

    const/4 v1, 0x0

    iput-boolean v1, v0, LP/S;->X0:Z

    :cond_a
    return-void
.end method

.method public final J(LS/o;LG/x;LG/x;Z)LN/d;
    .locals 7

    invoke-virtual {p1, p2, p3}, LS/o;->b(LG/x;LG/x;)LN/d;

    move-result-object p4

    iget v0, p4, LN/d;->e:I

    iget-object v1, p0, LS/r;->L:LQ/h;

    if-nez v1, :cond_0

    invoke-virtual {p0, p3}, LP/S;->B0(LG/x;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_0
    const-string v1, "OMX.google.raw.decoder"

    iget-object v2, p1, LS/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget v1, p3, LG/x;->q:I

    iget v2, p0, LP/S;->S0:I

    if-le v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x40

    :cond_1
    move v6, v0

    new-instance v1, LN/d;

    iget-object v2, p1, LS/o;->a:Ljava/lang/String;

    if-eqz v6, :cond_2

    const/4 p1, 0x0

    :goto_0
    move v5, p1

    move-object v3, p2

    move-object v4, p3

    goto :goto_1

    :cond_2
    iget p1, p4, LN/d;->d:I

    goto :goto_0

    :goto_1
    invoke-direct/range {v1 .. v6}, LN/d;-><init>(Ljava/lang/String;LG/x;LG/x;II)V

    return-object v1
.end method

.method public final S(FLG/x;[LG/x;)F
    .locals 4

    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    iget v3, v3, LG/x;->L:I

    if-eq v3, v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    iget-object p2, p0, LS/r;->T:Landroid/media/MediaFormat;

    if-eqz p2, :cond_2

    const-string p3, "sample-rate"

    invoke-virtual {p2, p3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    :cond_2
    if-ne v2, v0, :cond_3

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_3
    int-to-float p2, v2

    mul-float/2addr p2, p1

    return p2
.end method

.method public final T(LS/i;LG/x;Z)Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p2, LG/x;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    goto :goto_1

    :cond_0
    iget-object v0, p0, LP/S;->P0:LP/O;

    invoke-virtual {v0, p2}, LP/O;->h(LG/x;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "audio/raw"

    invoke-static {v0, v1, v1}, LS/w;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/o;

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p1, p2, p3, v1}, LS/w;->g(LS/i;LG/x;ZZ)Lu1/C0;

    move-result-object p1

    :goto_1
    sget-object p3, LS/w;->a:Ljava/util/HashMap;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, LM0/K;

    const/16 v0, 0x12

    iget-object v1, p0, LP/S;->N0:Landroid/content/Context;

    invoke-direct {p1, v1, p2, v0}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p2, LS/s;

    invoke-direct {p2, p1}, LS/s;-><init>(LS/v;)V

    invoke-static {p3, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p3
.end method

.method public final U(JJZ)J
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, LP/S;->P0:LP/O;

    invoke-virtual {v1}, LP/O;->k()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v7, v0, LP/S;->d1:J

    cmp-long v2, v7, v5

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-boolean v7, v0, LP/S;->c1:Z

    const-wide/16 v8, 0x2710

    if-nez v7, :cond_2

    if-nez v2, :cond_1

    iget-boolean v1, v0, LS/r;->x0:Z

    if-eqz v1, :cond_8

    :cond_1
    const-wide/32 v1, 0xf4240

    return-wide v1

    :cond_2
    invoke-virtual {v1}, LP/O;->m()Z

    move-result v7

    if-nez v7, :cond_3

    move-wide v3, v5

    goto :goto_1

    :cond_3
    iget-object v7, v1, LP/O;->p:LM0/s0;

    invoke-static {v7}, LM0/s0;->b(LM0/s0;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v3, v1, LP/O;->p:LM0/s0;

    iget-object v4, v1, LP/O;->t:LP/E;

    iget-object v4, v4, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v4

    int-to-long v10, v4

    iget-object v3, v3, LM0/s0;->e:Ljava/lang/Object;

    check-cast v3, LP/p;

    iget v3, v3, LP/p;->b:I

    invoke-static {v3, v10, v11}, LJ/W;->L(IJ)J

    move-result-wide v3

    goto :goto_1

    :cond_4
    iget-object v7, v1, LP/O;->t:LP/E;

    iget-object v7, v7, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v7

    int-to-long v10, v7

    iget-object v7, v1, LP/O;->p:LM0/s0;

    iget-object v7, v7, LM0/s0;->e:Ljava/lang/Object;

    check-cast v7, LP/p;

    iget v7, v7, LP/p;->a:I

    invoke-static {v7}, Lb0/a;->j(I)I

    move-result v7

    const v12, -0x7fffffff

    if-eq v7, v12, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v3}, LF1/i;->o(Z)V

    int-to-long v14, v7

    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v12, 0xf4240

    invoke-static/range {v10 .. v16}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    :goto_1
    iget-boolean v7, v0, LP/S;->a1:Z

    if-eqz v7, :cond_8

    if-eqz v2, :cond_8

    cmp-long v2, v3, v5

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    iget-wide v5, v0, LP/S;->d1:J

    sub-long v5, v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-float v2, v2

    iget-object v1, v1, LP/O;->x:LG/a0;

    if-eqz v1, :cond_7

    iget v1, v1, LG/a0;->a:F

    goto :goto_2

    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    div-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    float-to-long v1, v2

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    return-wide v1

    :cond_8
    :goto_3
    return-wide v8
.end method

.method public final W(LS/o;LG/x;Landroid/media/MediaCrypto;F)LM0/r0;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v1, p4

    iget-object v3, v0, LN/a;->n:[LG/x;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, LS/o;->a:Ljava/lang/String;

    const-string v6, "OMX.google.raw.decoder"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget v7, v4, LG/x;->q:I

    iget-object v8, v4, LG/x;->p:Ljava/lang/String;

    iget v9, v4, LG/x;->J:I

    array-length v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v10, v12, :cond_0

    goto :goto_1

    :cond_0
    array-length v10, v3

    move v13, v11

    :goto_0
    if-ge v13, v10, :cond_2

    aget-object v14, v3, v13

    invoke-virtual {v2, v4, v14}, LS/o;->b(LG/x;LG/x;)LN/d;

    move-result-object v15

    iget v15, v15, LN/d;->d:I

    if-eqz v15, :cond_1

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget v14, v14, LG/x;->q:I

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v7, v0, LP/S;->S0:I

    sget-object v3, LG/Q;->a:Ljava/util/HashSet;

    const-string v3, "OMX.google.opus.decoder"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "c2.android.opus.decoder"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "OMX.google.vorbis.decoder"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "c2.android.vorbis.decoder"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v11

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v12

    :goto_3
    iput-boolean v3, v0, LP/S;->T0:Z

    iget-object v3, v2, LS/o;->c:Ljava/lang/String;

    iget v5, v0, LP/S;->S0:I

    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    const-string v7, "mime"

    invoke-virtual {v6, v7, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "channel-count"

    invoke-virtual {v6, v3, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v3, v4, LG/x;->L:I

    const-string v7, "sample-rate"

    invoke-virtual {v6, v7, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v7, v4, LG/x;->s:Ljava/util/List;

    invoke-static {v6, v7}, LJ/a;->i(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string v7, "max-input-size"

    invoke-static {v6, v7, v5}, LJ/a;->h(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v5, "priority"

    invoke-virtual {v6, v5, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_5

    const-string v5, "operating-rate"

    invoke-virtual {v6, v5, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_5
    const-string v1, "audio/ac4"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v4}, LJ/h;->c(LG/x;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v7, "profile"

    invoke-static {v6, v7, v5}, LJ/a;->h(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v5, "level"

    invoke-static {v6, v5, v1}, LJ/a;->h(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-gt v1, v5, :cond_7

    const-string v1, "ac4-is-sync"

    invoke-virtual {v6, v1, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v5, LG/w;

    invoke-direct {v5}, LG/w;-><init>()V

    const-string v7, "audio/raw"

    invoke-static {v7}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, LG/w;->o:Ljava/lang/String;

    iput v9, v5, LG/w;->I:I

    iput v3, v5, LG/w;->K:I

    const/4 v3, 0x4

    iput v3, v5, LG/w;->L:I

    new-instance v9, LG/x;

    invoke-direct {v9, v5}, LG/x;-><init>(LG/w;)V

    iget-object v5, v0, LP/S;->P0:LP/O;

    invoke-virtual {v5, v9}, LP/O;->h(LG/x;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    const-string v9, "pcm-encoding"

    invoke-virtual {v6, v9, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8
    const/16 v3, 0x20

    const-string v9, "max-output-channel-count"

    if-lt v1, v3, :cond_9

    const/16 v3, 0x63

    invoke-virtual {v6, v9, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_9
    const/16 v3, 0x23

    if-lt v1, v3, :cond_a

    iget v1, v0, LP/S;->b1:I

    neg-int v1, v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v3, "importance"

    invoke-virtual {v6, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    const-string v1, "audio/iamf"

    invoke-static {v8, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    iget-object v1, v5, LP/O;->r:LP/q;

    instance-of v5, v1, LP/G;

    if-eqz v5, :cond_b

    check-cast v1, LP/G;

    iget-object v1, v1, LP/G;->h:LP/c;

    goto :goto_4

    :cond_b
    move-object v1, v3

    :goto_4
    const/16 v5, 0xc

    const-string v12, "channel-mask"

    if-nez v1, :cond_c

    const-string v1, "MediaCodecAudioRenderer"

    const-string v11, "AudioCapabilities from the AudioSink are null, using default stereo output layout."

    invoke-static {v1, v11}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v12, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v6, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_7

    :cond_c
    sget-object v10, LP/Q;->a:Lu1/b0;

    iget-object v10, v1, LP/c;->d:Lu1/P;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget-object v15, LP/Q;->a:Lu1/b0;

    invoke-virtual {v15, v13}, Lu1/K;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    goto :goto_5

    :cond_e
    move v14, v11

    :goto_5
    if-eqz v14, :cond_f

    move v5, v14

    goto :goto_6

    :cond_f
    iget-object v1, v1, LP/c;->c:Lu1/P;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sget-object v14, LP/Q;->a:Lu1/b0;

    invoke-virtual {v14, v10}, Lu1/K;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    move v11, v13

    :cond_11
    if-eqz v11, :cond_12

    move v5, v11

    :cond_12
    :goto_6
    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v6, v12, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v6, v9, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_13
    :goto_7
    invoke-virtual {v0, v6}, LS/r;->H(Landroid/media/MediaFormat;)V

    iget-object v1, v2, LS/o;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    move-object v3, v4

    :cond_14
    iput-object v3, v0, LP/S;->V0:LG/x;

    new-instance v1, LM0/r0;

    const/4 v5, 0x0

    iget-object v7, v0, LP/S;->Q0:LB/A;

    move-object v3, v6

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, LM0/r0;-><init>(LS/o;Landroid/media/MediaFormat;LG/x;Landroid/view/Surface;Landroid/media/MediaCrypto;LB/A;)V

    return-object v1
.end method

.method public final X(LM/f;)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget-object v2, p1, LM/f;->g:LG/x;

    if-eqz v2, :cond_1

    iget-object v2, v2, LG/x;->p:Ljava/lang/String;

    const-string v3, "audio/opus"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, LS/r;->k0:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, LM/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LM/f;->g:LG/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, LG/x;->N:I

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    const-wide/32 v4, 0xbb80

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, LP/S;->P0:LP/O;

    iget-object v4, v3, LP/O;->t:LP/E;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, LP/E;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, LP/O;->p:LM0/s0;

    if-eqz v4, :cond_1

    iget-object v4, v4, LM0/s0;->e:Ljava/lang/Object;

    check-cast v4, LP/p;

    iget-boolean v4, v4, LP/p;->k:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, LP/O;->t:LP/E;

    if-ge v0, v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object v0, v3, LP/E;->a:Landroid/media/AudioTrack;

    invoke-static {v0, p1, v2}, LB/r;->q(Landroid/media/AudioTrack;II)V

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 2

    iget-boolean v0, p0, LP/S;->Z0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, LP/S;->Z0:Z

    return v0
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 8

    const/4 v0, 0x2

    iget-object v1, p0, LP/S;->P0:LP/O;

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_14

    const/4 v0, 0x6

    if-eq p1, v0, :cond_11

    const/16 v0, 0xc

    if-eq p1, v0, :cond_10

    const/16 v0, 0x10

    const/4 v2, 0x0

    const/16 v3, 0x23

    if-eq p1, v0, :cond_e

    const/16 v0, 0x9

    if-eq p1, v0, :cond_b

    const/16 v0, 0xa

    if-eq p1, v0, :cond_7

    const/16 v0, 0x13

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, LS/r;->b(ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, LP/q;

    iget-object p1, v1, LP/O;->r:LP/q;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object p1, v1, LP/O;->r:LP/q;

    check-cast p1, LP/G;

    invoke-virtual {p1}, LP/G;->d()V

    iput-object p2, v1, LP/O;->r:LP/q;

    iget-object p1, v1, LP/O;->s:LP/J;

    if-eqz p1, :cond_3

    check-cast p2, LP/G;

    invoke-virtual {p2}, LP/G;->f()V

    iget-object v0, p2, LP/G;->f:LJ/t;

    if-nez v0, :cond_2

    new-instance v0, LJ/t;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v2}, LJ/t;-><init>(Ljava/lang/Thread;)V

    iput-object v0, p2, LP/G;->f:LJ/t;

    :cond_2
    iget-object p2, p2, LP/G;->f:LJ/t;

    invoke-virtual {p2, p1}, LJ/t;->a(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, LP/O;->q()V

    return-void

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_5

    if-eq p1, p2, :cond_5

    goto :goto_0

    :cond_5
    move p1, p2

    :goto_0
    iget p2, v1, LP/O;->X:I

    if-ne p2, p1, :cond_6

    goto/16 :goto_3

    :cond_6
    iput p1, v1, LP/O;->X:I

    invoke-virtual {v1}, LP/O;->q()V

    return-void

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-boolean p2, v1, LP/O;->U:Z

    if-eqz p2, :cond_8

    iget p2, v1, LP/O;->T:I

    if-ne p2, p1, :cond_a

    iput-boolean v2, v1, LP/O;->U:Z

    :cond_8
    iget p2, v1, LP/O;->T:I

    if-eq p2, p1, :cond_a

    iput p1, v1, LP/O;->T:I

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    :cond_9
    iput-boolean v2, v1, LP/O;->S:Z

    invoke-virtual {v1}, LP/O;->q()V

    :cond_a
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_18

    iget-object p2, p0, LP/S;->Q0:LB/A;

    if-eqz p2, :cond_18

    invoke-virtual {p2, p1}, LB/A;->S(I)V

    return-void

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v1, LP/O;->y:Z

    invoke-virtual {v1}, LP/O;->v()Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, LG/a0;->d:LG/a0;

    :goto_1
    move-object v3, p1

    goto :goto_2

    :cond_c
    iget-object p1, v1, LP/O;->x:LG/a0;

    goto :goto_1

    :goto_2
    new-instance v2, LP/M;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v7}, LP/M;-><init>(LG/a0;JJ)V

    invoke-virtual {v1}, LP/O;->m()Z

    move-result p1

    if-eqz p1, :cond_d

    iput-object v2, v1, LP/O;->v:LP/M;

    return-void

    :cond_d
    iput-object v2, v1, LP/O;->w:LP/M;

    return-void

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LP/S;->b1:I

    iget-object p1, p0, LS/r;->R:LS/k;

    if-nez p1, :cond_f

    goto/16 :goto_3

    :cond_f
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_18

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, LP/S;->b1:I

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "importance"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, LS/k;->e(Landroid/os/Bundle;)V

    return-void

    :cond_10
    check-cast p2, Landroid/media/AudioDeviceInfo;

    iput-object p2, v1, LP/O;->W:Landroid/media/AudioDeviceInfo;

    iget-object p1, v1, LP/O;->t:LP/E;

    if-eqz p1, :cond_18

    iget-object p1, p1, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void

    :cond_11
    check-cast p2, LG/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, LP/O;->V:LG/f;

    invoke-virtual {p1, p2}, LG/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_3

    :cond_12
    iget-object p1, v1, LP/O;->t:LP/E;

    if-eqz p1, :cond_13

    iget-object p1, v1, LP/O;->V:LG/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_13
    iput-object p2, v1, LP/O;->V:LG/f;

    return-void

    :cond_14
    check-cast p2, LG/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, LP/O;->u:LG/e;

    invoke-virtual {p1, p2}, LG/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_3

    :cond_15
    iput-object p2, v1, LP/O;->u:LG/e;

    iget-boolean p1, v1, LP/O;->Y:Z

    if-eqz p1, :cond_16

    goto :goto_3

    :cond_16
    invoke-virtual {v1}, LP/O;->q()V

    return-void

    :cond_17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget p2, v1, LP/O;->K:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_18

    iput p1, v1, LP/O;->K:F

    invoke-virtual {v1}, LP/O;->m()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, v1, LP/O;->t:LP/E;

    iget p2, v1, LP/O;->K:F

    iget-object p1, p1, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_18
    :goto_3
    return-void
.end method

.method public final c()J
    .locals 2

    iget v0, p0, LN/a;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LP/S;->H0()V

    :cond_0
    iget-wide v0, p0, LP/S;->W0:J

    return-wide v0
.end method

.method public final d(LG/a0;)V
    .locals 8

    iget-object v0, p0, LP/S;->P0:LP/O;

    invoke-virtual {v0}, LP/O;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, v0, LP/O;->x:LG/a0;

    invoke-virtual {v0}, LP/O;->s()V

    return-void

    :cond_0
    new-instance v3, LG/a0;

    iget v1, p1, LG/a0;->a:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v1, v2, v4}, LJ/W;->f(FFF)F

    move-result v1

    iget p1, p1, LG/a0;->b:F

    invoke-static {p1, v2, v4}, LJ/W;->f(FFF)F

    move-result p1

    invoke-direct {v3, v1, p1}, LG/a0;-><init>(FF)V

    iput-object v3, v0, LP/O;->x:LG/a0;

    new-instance v2, LP/M;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v7}, LP/M;-><init>(LG/a0;JJ)V

    invoke-virtual {v0}, LP/O;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v2, v0, LP/O;->v:LP/M;

    return-void

    :cond_1
    iput-object v2, v0, LP/O;->w:LP/M;

    return-void
.end method

.method public final d0(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, LP/S;->O0:LP/t;

    iget-object v1, v0, LP/t;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, LP/r;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, LP/r;-><init>(LP/t;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final e0(JJLjava/lang/String;)V
    .locals 8

    iget-object v1, p0, LP/S;->O0:LP/t;

    iget-object v7, v1, LP/t;->a:Landroid/os/Handler;

    if-eqz v7, :cond_0

    new-instance v0, LP/r;

    move-wide v3, p1

    move-wide v5, p3

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, LP/r;-><init>(LP/t;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final f0(LN/b;)V
    .locals 4

    iget-object v0, p0, LP/S;->O0:LP/t;

    iget-object v1, v0, LP/t;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, LH/i;

    const/16 v3, 0x17

    invoke-direct {v2, v0, p1, v3}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final g()LG/a0;
    .locals 1

    iget-object v0, p0, LP/S;->P0:LP/O;

    iget-object v0, v0, LP/O;->x:LG/a0;

    return-object v0
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, LP/S;->O0:LP/t;

    iget-object v1, v0, LP/t;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, LP/r;

    const/4 v3, 0x5

    invoke-direct {v2, v0, p1, v3}, LP/r;-><init>(LP/t;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final h0(LN0/O;)LN/d;
    .locals 4

    iget-object v0, p1, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LG/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, LP/S;->U0:LG/x;

    invoke-super {p0, p1}, LS/r;->h0(LN0/O;)LN/d;

    move-result-object p1

    iget-object v1, p0, LP/S;->O0:LP/t;

    iget-object v2, v1, LP/t;->a:Landroid/os/Handler;

    if-eqz v2, :cond_0

    new-instance v3, LP/r;

    invoke-direct {v3, v1, v0, p1}, LP/r;-><init>(LP/t;LG/x;LN/d;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method public final i0(LG/x;Landroid/media/MediaFormat;)V
    .locals 8

    iget-object v0, p0, LP/S;->V0:LG/x;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_0
    :goto_0
    move-object p2, v2

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, LS/r;->R:LS/k;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, LG/x;->p:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, LG/x;->M:I

    goto :goto_1

    :cond_3
    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_4
    const-string v0, "v-bits-per-sample"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v4}, LJ/W;->v(ILjava/nio/ByteOrder;)I

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    :goto_1
    const-string v4, "channel-count"

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iget v5, p1, LG/x;->K:I

    if-eq v5, v1, :cond_6

    iget v6, p1, LG/x;->J:I

    if-ne v6, v4, :cond_6

    goto :goto_2

    :cond_6
    move v5, v1

    :goto_2
    const-string v6, "channel-mask"

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v7

    if-ne v7, v4, :cond_7

    move v5, v6

    :cond_7
    new-instance v6, LG/w;

    invoke-direct {v6}, LG/w;-><init>()V

    invoke-static {v3}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, LG/w;->o:Ljava/lang/String;

    iput v0, v6, LG/w;->L:I

    iget v0, p1, LG/x;->N:I

    iput v0, v6, LG/w;->M:I

    iget v0, p1, LG/x;->O:I

    iput v0, v6, LG/w;->N:I

    iget-object v0, p1, LG/x;->m:LG/V;

    iput-object v0, v6, LG/w;->l:LG/V;

    iget-object v0, p1, LG/x;->a:Ljava/lang/String;

    iput-object v0, v6, LG/w;->a:Ljava/lang/String;

    iget-object v0, p1, LG/x;->b:Ljava/lang/String;

    iput-object v0, v6, LG/w;->b:Ljava/lang/String;

    iget-object v0, p1, LG/x;->c:Lu1/P;

    invoke-static {v0}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v0

    iput-object v0, v6, LG/w;->c:Lu1/P;

    iget-object v0, p1, LG/x;->d:Ljava/lang/String;

    iput-object v0, v6, LG/w;->d:Ljava/lang/String;

    iget v0, p1, LG/x;->e:I

    iput v0, v6, LG/w;->e:I

    iget p1, p1, LG/x;->f:I

    iput p1, v6, LG/w;->f:I

    iput v4, v6, LG/w;->I:I

    iput v5, v6, LG/w;->J:I

    const-string p1, "sample-rate"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, v6, LG/w;->K:I

    new-instance p1, LG/x;

    invoke-direct {p1, v6}, LG/x;-><init>(LG/w;)V

    iget-boolean p2, p0, LP/S;->T0:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    iget v0, p1, LG/x;->J:I

    if-eq v0, p2, :cond_c

    const/4 p2, 0x5

    if-eq v0, p2, :cond_b

    const/4 p2, 0x6

    if-eq v0, p2, :cond_a

    const/4 p2, 0x7

    if-eq v0, p2, :cond_9

    const/16 p2, 0x8

    if-eq v0, p2, :cond_8

    sget-object p2, Lb0/I;->a:Ly1/a;

    goto/16 :goto_0

    :cond_8
    sget-object p2, Lb0/I;->e:Ly1/a;

    goto :goto_3

    :cond_9
    sget-object p2, Lb0/I;->d:Ly1/a;

    goto :goto_3

    :cond_a
    sget-object p2, Lb0/I;->c:Ly1/a;

    goto :goto_3

    :cond_b
    sget-object p2, Lb0/I;->b:Ly1/a;

    goto :goto_3

    :cond_c
    sget-object p2, Lb0/I;->a:Ly1/a;

    :goto_3
    const/4 v0, 0x0

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch LP/v; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const/16 v5, 0x1d

    iget-object v6, p0, LP/S;->P0:LP/O;

    if-lt v3, v5, :cond_10

    :try_start_1
    iget-boolean v7, p0, LS/r;->k0:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, LN/a;->h:LN/e0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v7, LN/e0;->a:I

    if-eqz v7, :cond_e

    iget-object v7, p0, LN/a;->h:LN/e0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v7, LN/e0;->a:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v3, v5, :cond_d

    move v3, v4

    goto :goto_4

    :cond_d
    move v3, v0

    :goto_4
    invoke-static {v3}, LF1/i;->o(Z)V

    iput v7, v6, LP/O;->i:I

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_8

    :cond_e
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v3, v5, :cond_f

    move v3, v4

    goto :goto_5

    :cond_f
    move v3, v0

    :goto_5
    invoke-static {v3}, LF1/i;->o(Z)V

    iput v0, v6, LP/O;->i:I

    :cond_10
    :goto_6
    new-instance v3, LB0/b;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p1, v3, LB0/b;->e:Ljava/lang/Object;

    iput-object v2, v3, LB0/b;->f:Ljava/lang/Object;

    sget-object p1, LG/q0;->a:LG/m0;

    iput-object p1, v3, LB0/b;->g:Ljava/lang/Object;

    iput-object v2, v3, LB0/b;->h:Ljava/lang/Object;

    iput-object p2, v3, LB0/b;->f:Ljava/lang/Object;

    iget-object p1, p0, LN/a;->t:LG/q0;

    iput-object p1, v3, LB0/b;->g:Ljava/lang/Object;

    iget-object p2, p0, LN/a;->u:LU/A;

    iput-object p2, v3, LB0/b;->h:Ljava/lang/Object;

    invoke-virtual {p1}, LG/q0;->p()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, v3, LB0/b;->h:Ljava/lang/Object;

    check-cast p1, LU/A;

    if-eqz p1, :cond_12

    iget-object p2, v3, LB0/b;->g:Ljava/lang/Object;

    check-cast p2, LG/q0;

    iget-object p1, p1, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {p2, p1}, LG/q0;->b(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v1, :cond_11

    goto :goto_7

    :cond_11
    move v4, v0

    :goto_7
    invoke-static {v4}, LF1/i;->g(Z)V

    :cond_12
    new-instance p1, LP/u;

    invoke-direct {p1, v3}, LP/u;-><init>(LB0/b;)V

    invoke-virtual {v6, p1}, LP/O;->c(LP/u;)V
    :try_end_1
    .catch LP/v; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p1, p0, LS/r;->S:LG/x;

    invoke-virtual {p0, p1}, LS/r;->D0(LG/x;)V

    return-void

    :goto_8
    iget-object p2, p1, LP/v;->e:LG/x;

    const/16 v1, 0x1389

    invoke-virtual {p0, p1, p2, v0, v1}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object p1

    throw p1
.end method

.method public final j()LN/K;
    .locals 0

    return-object p0
.end method

.method public final j0(J)V
    .locals 1

    iget-object v0, p0, LP/S;->P0:LP/O;

    iput-wide p1, v0, LP/O;->J:J

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public final l0()V
    .locals 2

    iget-object v0, p0, LP/S;->P0:LP/O;

    const/4 v1, 0x1

    iput-boolean v1, v0, LP/O;->G:Z

    return-void
.end method

.method public final m()Z
    .locals 2

    iget-boolean v0, p0, LS/r;->x0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LP/S;->P0:LP/O;

    invoke-virtual {v0}, LP/O;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, LP/O;->O:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LP/O;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 8

    iget-object v0, p0, LP/S;->P0:LP/O;

    invoke-virtual {v0}, LP/O;->k()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iput-wide v1, p0, LP/S;->e1:J

    iput-boolean v3, p0, LP/S;->f1:Z

    return v3

    :cond_0
    iget-boolean v0, p0, LP/S;->f1:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, LP/S;->c1:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LN/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LN/a;->r:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, LN/a;->m:LU/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LU/a0;->o()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, LN/a;->l()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LN/a;->k:LJ/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, LP/S;->e1:J

    cmp-long v0, v6, v1

    if-nez v0, :cond_2

    iput-wide v4, p0, LP/S;->e1:J

    return v3

    :cond_2
    sub-long/2addr v4, v6

    const-wide/16 v0, 0x64

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    return v3

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final o0(JJLS/k;Ljava/nio/ByteBuffer;IIIJZZLG/x;)Z
    .locals 1

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LP/S;->d1:J

    iget-object p1, p0, LP/S;->V0:LG/x;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p5, p7}, LS/k;->i(I)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5, p7}, LS/k;->i(I)V

    :cond_1
    iget-object p1, p0, LS/r;->B0:LN/c;

    iget p3, p1, LN/c;->f:I

    add-int/2addr p3, p9

    iput p3, p1, LN/c;->f:I

    iget-object p1, p0, LP/S;->P0:LP/O;

    iput-boolean p2, p1, LP/O;->G:Z

    return p2

    :cond_2
    :try_start_0
    new-instance p8, LM0/g0;
    :try_end_0
    .catch LP/w; {:try_start_0 .. :try_end_0} :catch_7
    .catch LP/y; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move p13, p9

    move-wide p11, p10

    move-object p9, p0

    move-object p10, p6

    :try_start_1
    invoke-direct/range {p8 .. p13}, LM0/g0;-><init>(LP/S;Ljava/nio/ByteBuffer;JI)V

    if-eqz p5, :cond_3

    invoke-interface {p5, p8}, LS/k;->p(LJ/P;)V

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_7

    :catch_3
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_9

    :cond_3
    invoke-virtual {p8}, LM0/g0;->run()V
    :try_end_1
    .catch LP/w; {:try_start_1 .. :try_end_1} :catch_3
    .catch LP/y; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    iget-object p1, p9, LP/S;->R0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p5, :cond_4

    invoke-interface {p5, p7}, LS/k;->i(I)V

    :cond_4
    iget-object p1, p9, LS/r;->B0:LN/c;

    iget p3, p1, LN/c;->e:I

    add-int/2addr p3, p13

    iput p3, p1, LN/c;->e:I

    return p2

    :cond_5
    iput-wide p11, p9, LP/S;->d1:J

    const/4 p1, 0x0

    return p1

    :catch_4
    move-exception v0

    move-object p9, p0

    goto :goto_0

    :goto_5
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_5
    move-exception v0

    move-object p9, p0

    goto :goto_1

    :goto_6
    throw p1

    :catch_6
    move-exception v0

    move-object p9, p0

    goto :goto_2

    :goto_7
    iget-boolean p2, p9, LS/r;->k0:Z

    if-eqz p2, :cond_6

    iget-object p2, p9, LN/a;->h:LN/e0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p2, LN/e0;->a:I

    if-eqz p2, :cond_6

    const/16 p2, 0x138b

    goto :goto_8

    :cond_6
    const/16 p2, 0x138a

    :goto_8
    iget-boolean p3, p1, LP/y;->f:Z

    invoke-virtual {p0, p1, p14, p3, p2}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object p1

    throw p1

    :catch_7
    move-exception v0

    move-object p9, p0

    goto :goto_3

    :goto_9
    iget-object p2, p9, LP/S;->U0:LG/x;

    iget-boolean p3, p9, LS/r;->k0:Z

    if-eqz p3, :cond_7

    iget-object p3, p9, LN/a;->h:LN/e0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p3, LN/e0;->a:I

    if-eqz p3, :cond_7

    const/16 p3, 0x138c

    goto :goto_a

    :cond_7
    const/16 p3, 0x1389

    :goto_a
    iget-boolean p4, p1, LP/w;->e:Z

    invoke-virtual {p0, p1, p2, p4, p3}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object p1

    throw p1
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, LP/S;->O0:LP/t;

    const/4 v1, 0x1

    iput-boolean v1, p0, LP/S;->Y0:Z

    const/4 v1, 0x0

    iput-object v1, p0, LP/S;->U0:LG/x;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, LP/S;->d1:J

    const/4 v1, 0x0

    iput-boolean v1, p0, LP/S;->a1:Z

    :try_start_0
    iget-object v1, p0, LP/S;->P0:LP/O;

    invoke-virtual {v1}, LP/O;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, LS/r;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, LS/r;->B0:LN/c;

    invoke-virtual {v0, v1}, LP/t;->a(LN/c;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, LS/r;->B0:LN/c;

    invoke-virtual {v0, v2}, LP/t;->a(LN/c;)V

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-super {p0}, LS/r;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v2, p0, LS/r;->B0:LN/c;

    invoke-virtual {v0, v2}, LP/t;->a(LN/c;)V

    throw v1

    :catchall_2
    move-exception v1

    iget-object v2, p0, LS/r;->B0:LN/c;

    invoke-virtual {v0, v2}, LP/t;->a(LN/c;)V

    throw v1
.end method

.method public final q(ZZ)V
    .locals 3

    new-instance p1, LN/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/r;->B0:LN/c;

    iget-object p2, p0, LP/S;->O0:LP/t;

    iget-object v0, p2, LP/t;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, LP/r;

    const/4 v2, 0x6

    invoke-direct {v1, p2, p1, v2}, LP/r;-><init>(LP/t;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, LN/a;->h:LN/e0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p1, LN/e0;->b:Z

    iget-object p2, p0, LP/S;->P0:LP/O;

    if-eqz p1, :cond_1

    iget-boolean p1, p2, LP/O;->S:Z

    invoke-static {p1}, LF1/i;->o(Z)V

    iget-boolean p1, p2, LP/O;->Y:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p2, LP/O;->Y:Z

    invoke-virtual {p2}, LP/O;->q()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p2, LP/O;->Y:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p2, LP/O;->Y:Z

    invoke-virtual {p2}, LP/O;->q()V

    :cond_2
    :goto_0
    iget-object p1, p0, LN/a;->j:LO/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, LP/O;->m:LO/j;

    iget-object p1, p0, LN/a;->k:LJ/M;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, LP/O;->r:LP/q;

    check-cast v0, LP/G;

    iput-object p1, v0, LP/G;->g:LJ/M;

    new-instance p1, La1/g;

    invoke-direct {p1, p0}, La1/g;-><init>(Ljava/lang/Object;)V

    iput-object p1, p2, LP/O;->n:La1/g;

    return-void
.end method

.method public final r(JZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, LS/r;->r(JZZ)V

    iget-object p3, p0, LP/S;->P0:LP/O;

    invoke-virtual {p3}, LP/O;->f()V

    iput-wide p1, p0, LP/S;->W0:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LP/S;->d1:J

    iput-wide p1, p0, LP/S;->e1:J

    const/4 p1, 0x0

    iput-boolean p1, p0, LP/S;->f1:Z

    iput-boolean p1, p0, LP/S;->Z0:Z

    iput-boolean p1, p0, LP/S;->a1:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, LP/S;->X0:Z

    return-void
.end method

.method public final r0()V
    .locals 4

    :try_start_0
    iget-object v0, p0, LP/S;->P0:LP/O;

    iget-boolean v1, v0, LP/O;->O:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, LP/O;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LP/O;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LP/O;->o()V

    const/4 v1, 0x1

    iput-boolean v1, v0, LP/O;->O:Z

    :cond_0
    iget-object v0, p0, LS/r;->C0:LS/q;

    iget-wide v0, v0, LS/q;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iput-wide v0, p0, LP/S;->d1:J
    :try_end_0
    .catch LP/y; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-void

    :goto_0
    iget-boolean v1, p0, LS/r;->k0:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x138b

    goto :goto_1

    :cond_2
    const/16 v1, 0x138a

    :goto_1
    iget-object v2, v0, LP/y;->g:LG/x;

    iget-boolean v3, v0, LP/y;->f:Z

    invoke-virtual {p0, v0, v2, v3, v1}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object v0

    throw v0
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, LP/S;->P0:LP/O;

    iget-object v0, v0, LP/O;->r:LP/q;

    check-cast v0, LP/G;

    invoke-virtual {v0}, LP/G;->d()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-object v0, p0, LP/S;->Q0:LB/A;

    if-eqz v0, :cond_0

    iget-object v1, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v0, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-static {v0}, LS/a;->b(Landroid/media/LoudnessCodecController;)V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 5

    iget-object v0, p0, LP/S;->P0:LP/O;

    const/4 v1, 0x0

    iput-boolean v1, p0, LP/S;->Z0:Z

    iput-boolean v1, p0, LP/S;->a1:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, LP/S;->d1:J

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, LS/r;->k0:Z

    invoke-virtual {p0}, LS/r;->s0()V

    invoke-virtual {p0}, LS/r;->q0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, LS/r;->L:LQ/h;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3, v2}, LQ/h;->e(LQ/k;)V

    :goto_0
    iput-object v2, p0, LS/r;->L:LQ/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v2, p0, LP/S;->Y0:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, LP/S;->Y0:Z

    invoke-virtual {v0}, LP/O;->r()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_2
    iget-object v4, p0, LS/r;->L:LQ/h;

    if-eqz v4, :cond_2

    invoke-interface {v4, v2}, LQ/h;->e(LQ/k;)V

    :cond_2
    iput-object v2, p0, LS/r;->L:LQ/h;

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-boolean v3, p0, LP/S;->Y0:Z

    if-eqz v3, :cond_3

    iput-boolean v1, p0, LP/S;->Y0:Z

    invoke-virtual {v0}, LP/O;->r()V

    :cond_3
    throw v2
.end method

.method public final u()V
    .locals 1

    iget-object v0, p0, LP/S;->P0:LP/O;

    invoke-virtual {v0}, LP/O;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LP/S;->c1:Z

    return-void
.end method

.method public final v()V
    .locals 7

    invoke-virtual {p0}, LP/S;->H0()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LP/S;->c1:Z

    iget-object v1, p0, LP/S;->P0:LP/O;

    iput-boolean v0, v1, LP/O;->R:Z

    invoke-virtual {v1}, LP/O;->m()Z

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2

    iget-object v1, v1, LP/O;->t:LP/E;

    iget-object v2, v1, LP/E;->f:LP/H;

    invoke-virtual {v2}, LP/H;->e()V

    iget-wide v5, v2, LP/H;->u:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_0

    iget-object v5, v2, LP/H;->h:LP/A;

    invoke-virtual {v5, v0}, LP/A;->a(I)V

    :cond_0
    invoke-virtual {v2}, LP/H;->a()J

    move-result-wide v5

    iput-wide v5, v2, LP/H;->w:J

    iget-boolean v2, v1, LP/E;->k:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LP/E;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v1, v1, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    :cond_2
    iput-boolean v0, p0, LP/S;->a1:Z

    iput-wide v3, p0, LP/S;->e1:J

    iput-boolean v0, p0, LP/S;->f1:Z

    return-void
.end method
