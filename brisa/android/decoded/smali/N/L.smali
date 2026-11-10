.class public final LN/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LU/s;

.field public final b:Ljava/lang/Object;

.field public final c:[LU/a0;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:LN/M;

.field public final h:[Z

.field public final i:[Z

.field public final j:[LN/a;

.field public final k:LW/s;

.field public final l:LN/W;

.field public m:LN/L;

.field public n:LU/l0;

.field public o:LW/t;

.field public p:J


# direct methods
.method public constructor <init>([LN/a;JLW/s;LB/A;LN/W;LN/M;LW/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/L;->j:[LN/a;

    iput-wide p2, p0, LN/L;->p:J

    iput-object p4, p0, LN/L;->k:LW/s;

    iput-object p6, p0, LN/L;->l:LN/W;

    iget-object p2, p7, LN/M;->a:LU/A;

    iget-object p3, p2, LU/A;->a:Ljava/lang/Object;

    iput-object p3, p0, LN/L;->b:Ljava/lang/Object;

    iput-object p7, p0, LN/L;->g:LN/M;

    sget-object p3, LU/l0;->d:LU/l0;

    iput-object p3, p0, LN/L;->n:LU/l0;

    iput-object p8, p0, LN/L;->o:LW/t;

    array-length p3, p1

    new-array p3, p3, [LU/a0;

    iput-object p3, p0, LN/L;->c:[LU/a0;

    array-length p3, p1

    new-array p3, p3, [Z

    iput-object p3, p0, LN/L;->h:[Z

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, LN/L;->i:[Z

    iget-wide p3, p7, LN/M;->b:J

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, LU/A;->a:Ljava/lang/Object;

    sget p7, LN/d0;->n:I

    check-cast p1, Landroid/util/Pair;

    iget-object p7, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, p1}, LU/A;->a(Ljava/lang/Object;)LU/A;

    move-result-object p1

    iget-object p2, p6, LN/W;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LN/V;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p7, p6, LN/W;->h:Ljava/util/HashSet;

    invoke-virtual {p7, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p7, p6, LN/W;->g:Ljava/util/HashMap;

    invoke-virtual {p7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, LN/U;

    if-eqz p7, :cond_0

    iget-object p8, p7, LN/U;->a:LU/a;

    iget-object p7, p7, LN/U;->b:LN/P;

    invoke-virtual {p8, p7}, LU/a;->e(LU/B;)V

    :cond_0
    iget-object p7, p2, LN/V;->c:Ljava/util/ArrayList;

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p7, p2, LN/V;->a:LU/v;

    invoke-virtual {p7, p1, p5, p3, p4}, LU/v;->C(LU/A;LB/A;J)LU/s;

    move-result-object p1

    iget-object p3, p6, LN/W;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6}, LN/W;->c()V

    iput-object p1, p0, LN/L;->a:LU/s;

    return-void
.end method


# virtual methods
.method public final a(LW/t;JZ[Z)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v1, LW/t;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    if-nez p4, :cond_0

    iget-object v4, v0, LN/L;->o:LW/t;

    invoke-virtual {v1, v4, v3}, LW/t;->a(LW/t;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    iget-object v4, v0, LN/L;->i:[Z

    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_2
    iget-object v4, v0, LN/L;->j:[LN/a;

    array-length v6, v4

    const/4 v7, -0x2

    iget-object v8, v0, LN/L;->c:[LU/a0;

    if-ge v3, v6, :cond_3

    aget-object v4, v4, v3

    iget v4, v4, LN/a;->f:I

    if-ne v4, v7, :cond_2

    const/4 v4, 0x0

    aput-object v4, v8, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, LN/L;->b()V

    iput-object v1, v0, LN/L;->o:LW/t;

    invoke-virtual {v0}, LN/L;->c()V

    iget-object v10, v1, LW/t;->c:[LW/q;

    iget-object v11, v0, LN/L;->i:[Z

    iget-object v12, v0, LN/L;->c:[LU/a0;

    iget-object v9, v0, LN/L;->a:LU/s;

    move-wide/from16 v14, p2

    move-object/from16 v13, p5

    invoke-virtual/range {v9 .. v15}, LU/s;->k([LW/q;[Z[LU/a0;[ZJ)J

    move-result-wide v9

    move v3, v2

    :goto_3
    array-length v6, v4

    if-ge v3, v6, :cond_5

    aget-object v6, v4, v3

    iget v6, v6, LN/a;->f:I

    if-ne v6, v7, :cond_4

    iget-object v6, v0, LN/L;->o:LW/t;

    invoke-virtual {v6, v3}, LW/t;->b(I)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/brisa/local/j;

    const/16 v11, 0x15

    invoke-direct {v6, v11}, Lcom/brisa/local/j;-><init>(I)V

    aput-object v6, v8, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iput-boolean v2, v0, LN/L;->f:Z

    move v3, v2

    :goto_4
    array-length v6, v8

    if-ge v3, v6, :cond_9

    aget-object v6, v8, v3

    if-eqz v6, :cond_6

    invoke-virtual {v1, v3}, LW/t;->b(I)Z

    move-result v6

    invoke-static {v6}, LF1/i;->o(Z)V

    aget-object v6, v4, v3

    iget v6, v6, LN/a;->f:I

    if-eq v6, v7, :cond_8

    iput-boolean v5, v0, LN/L;->f:Z

    goto :goto_6

    :cond_6
    iget-object v6, v1, LW/t;->c:[LW/q;

    aget-object v6, v6, v3

    if-nez v6, :cond_7

    move v6, v5

    goto :goto_5

    :cond_7
    move v6, v2

    :goto_5
    invoke-static {v6}, LF1/i;->o(Z)V

    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    return-wide v9
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, LN/L;->m:LN/L;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LN/L;->o:LW/t;

    iget v2, v1, LW/t;->a:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, LW/t;->b(I)Z

    move-result v1

    iget-object v2, p0, LN/L;->o:LW/t;

    iget-object v2, v2, LW/t;->c:[LW/q;

    aget-object v2, v2, v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, LW/q;->e()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, LN/L;->m:LN/L;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LN/L;->o:LW/t;

    iget v2, v1, LW/t;->a:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, LW/t;->b(I)Z

    move-result v1

    iget-object v2, p0, LN/L;->o:LW/t;

    iget-object v2, v2, LW/t;->c:[LW/q;

    aget-object v2, v2, v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, LW/q;->c()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d()J
    .locals 5

    iget-boolean v0, p0, LN/L;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LN/L;->g:LN/M;

    iget-wide v0, v0, LN/M;->b:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, LN/L;->f:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, LN/L;->a:LU/s;

    invoke-virtual {v0}, LU/s;->n()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, LN/L;->g:LN/M;

    iget-wide v0, v0, LN/M;->e:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final e()J
    .locals 4

    iget-object v0, p0, LN/L;->g:LN/M;

    iget-wide v0, v0, LN/M;->b:J

    iget-wide v2, p0, LN/L;->p:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final f(FLG/q0;Z)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, LN/L;->e:Z

    iget-object v0, p0, LN/L;->a:LU/s;

    invoke-virtual {v0}, LU/s;->m()LU/l0;

    move-result-object v0

    iput-object v0, p0, LN/L;->n:LU/l0;

    invoke-virtual {p0, p1, p2, p3}, LN/L;->j(FLG/q0;Z)LW/t;

    move-result-object v2

    iget-object p1, p0, LN/L;->g:LN/M;

    iget-wide p2, p1, LN/M;->b:J

    iget-wide v0, p1, LN/M;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_0
    move-wide v3, p2

    iget-object p1, p0, LN/L;->j:[LN/a;

    array-length p1, p1

    new-array v6, p1, [Z

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LN/L;->a(LW/t;JZ[Z)J

    move-result-wide p1

    iget-wide v2, v1, LN/L;->p:J

    iget-object p3, v1, LN/L;->g:LN/M;

    iget-wide v4, p3, LN/M;->b:J

    sub-long/2addr v4, p1

    add-long/2addr v4, v2

    iput-wide v4, v1, LN/L;->p:J

    iget-wide v2, p3, LN/M;->c:J

    invoke-virtual {p3, p1, p2, v2, v3}, LN/M;->b(JJ)LN/M;

    move-result-object p1

    iput-object p1, v1, LN/L;->g:LN/M;

    return-void
.end method

.method public final g()Z
    .locals 4

    iget-boolean v0, p0, LN/L;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LN/L;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LN/L;->a:LU/s;

    invoke-virtual {v0}, LU/s;->n()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 4

    iget-boolean v0, p0, LN/L;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LN/L;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LN/L;->d()J

    move-result-wide v0

    iget-object v2, p0, LN/L;->g:LN/M;

    iget-wide v2, v2, LN/M;->b:J

    sub-long/2addr v0, v2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 5

    invoke-virtual {p0}, LN/L;->b()V

    iget-object v0, p0, LN/L;->l:LN/W;

    iget-object v1, p0, LN/L;->a:LU/s;

    :try_start_0
    iget-object v2, v0, LN/W;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN/V;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, LN/V;->a:LU/v;

    invoke-virtual {v4, v1}, LU/v;->n(LU/y;)V

    iget-object v4, v3, LN/V;->c:Ljava/util/ArrayList;

    iget-object v1, v1, LU/s;->e:LU/A;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, LN/W;->c()V

    :cond_0
    invoke-virtual {v0, v3}, LN/W;->d(LN/V;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j(FLG/q0;Z)LW/t;
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, LN/L;->k:LW/s;

    iget-object v2, v0, LN/L;->j:[LN/a;

    iget-object v3, v0, LN/L;->n:LU/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v4, v4, [I

    array-length v6, v2

    add-int/2addr v6, v5

    new-array v7, v6, [[LG/r0;

    array-length v8, v2

    add-int/2addr v8, v5

    new-array v13, v8, [[[I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_0

    iget v10, v3, LU/l0;->a:I

    new-array v11, v10, [LG/r0;

    aput-object v11, v7, v9

    new-array v10, v10, [[I

    aput-object v10, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    array-length v6, v2

    new-array v12, v6, [I

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_1

    aget-object v10, v2, v9

    invoke-virtual {v10}, LN/a;->E()I

    move-result v10

    aput v10, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_2
    iget v9, v3, LU/l0;->a:I

    const/4 v15, 0x5

    if-ge v6, v9, :cond_a

    invoke-virtual {v3, v6}, LU/l0;->a(I)LG/r0;

    move-result-object v9

    iget v10, v9, LG/r0;->c:I

    if-ne v10, v15, :cond_2

    move v10, v5

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    array-length v11, v2

    move/from16 v16, v5

    const/16 p2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    array-length v8, v2

    if-ge v14, v8, :cond_7

    aget-object v8, v2, v14

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v17, v5

    move/from16 v1, p2

    move v5, v1

    :goto_5
    iget v3, v9, LG/r0;->a:I

    if-ge v5, v3, :cond_3

    iget-object v3, v9, LG/r0;->d:[LG/x;

    aget-object v3, v3, v5

    invoke-virtual {v8, v3}, LN/a;->D(LG/x;)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    aget v3, v4, v14

    if-nez v3, :cond_4

    move/from16 v3, v17

    goto :goto_6

    :cond_4
    move/from16 v3, p2

    :goto_6
    if-gt v1, v15, :cond_5

    if-ne v1, v15, :cond_6

    if-eqz v10, :cond_6

    if-nez v16, :cond_6

    if-eqz v3, :cond_6

    :cond_5
    move v15, v1

    move/from16 v16, v3

    move v11, v14

    :cond_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v17

    move-object/from16 v1, v18

    move-object/from16 v3, v19

    goto :goto_4

    :cond_7
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v17, v5

    array-length v1, v2

    if-ne v11, v1, :cond_8

    iget v1, v9, LG/r0;->a:I

    new-array v1, v1, [I

    goto :goto_8

    :cond_8
    aget-object v1, v2, v11

    iget v3, v9, LG/r0;->a:I

    new-array v3, v3, [I

    move/from16 v5, p2

    :goto_7
    iget v8, v9, LG/r0;->a:I

    if-ge v5, v8, :cond_9

    iget-object v8, v9, LG/r0;->d:[LG/x;

    aget-object v8, v8, v5

    invoke-virtual {v1, v8}, LN/a;->D(LG/x;)I

    move-result v8

    aput v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    move-object v1, v3

    :goto_8
    aget v3, v4, v11

    aget-object v5, v7, v11

    aput-object v9, v5, v3

    aget-object v5, v13, v11

    aput-object v1, v5, v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v4, v11

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v17

    move-object/from16 v1, v18

    move-object/from16 v3, v19

    goto/16 :goto_2

    :cond_a
    move-object/from16 v18, v1

    move/from16 v17, v5

    const/16 p2, 0x0

    array-length v1, v2

    new-array v11, v1, [LU/l0;

    array-length v1, v2

    new-array v1, v1, [Ljava/lang/String;

    array-length v3, v2

    new-array v10, v3, [I

    move/from16 v3, p2

    :goto_9
    array-length v5, v2

    if-ge v3, v5, :cond_b

    aget v5, v4, v3

    new-instance v6, LU/l0;

    aget-object v8, v7, v3

    invoke-static {v5, v8}, LJ/W;->I(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [LG/r0;

    invoke-direct {v6, v8}, LU/l0;-><init>([LG/r0;)V

    aput-object v6, v11, v3

    aget-object v6, v13, v3

    invoke-static {v5, v6}, LJ/W;->I(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    aput-object v5, v13, v3

    aget-object v5, v2, v3

    invoke-virtual {v5}, LN/a;->k()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    aget-object v5, v2, v3

    iget v5, v5, LN/a;->f:I

    aput v5, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    array-length v1, v2

    aget v1, v4, v1

    new-instance v14, LU/l0;

    array-length v2, v2

    aget-object v2, v7, v2

    invoke-static {v1, v2}, LJ/W;->I(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LG/r0;

    invoke-direct {v14, v1}, LU/l0;-><init>([LG/r0;)V

    new-instance v9, LW/r;

    invoke-direct/range {v9 .. v14}, LW/r;-><init>([I[LU/l0;[I[[[ILU/l0;)V

    move-object/from16 v1, v18

    check-cast v1, LW/o;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, v1, LW/o;->g:Ljava/lang/Thread;

    iget-object v2, v1, LW/o;->j:Ljava/lang/Boolean;

    if-nez v2, :cond_c

    iget-object v2, v1, LW/o;->c:Landroid/content/Context;

    if-eqz v2, :cond_c

    invoke-static {v2}, LJ/W;->E(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, LW/o;->j:Ljava/lang/Boolean;

    :cond_c
    iget-object v2, v1, LW/o;->f:LW/j;

    iget-boolean v2, v2, LW/j;->A0:Z

    if-eqz v2, :cond_d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_d

    iget-object v2, v1, LW/o;->h:LH/c;

    if-nez v2, :cond_d

    new-instance v2, LH/c;

    iget-object v3, v1, LW/o;->c:Landroid/content/Context;

    new-instance v4, LH/a;

    const/16 v5, 0x12

    invoke-direct {v4, v1, v5}, LH/a;-><init>(Ljava/lang/Object;I)V

    iget-object v5, v1, LW/o;->j:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4, v5}, LH/c;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    iput-object v2, v1, LW/o;->h:LH/c;

    :cond_d
    iget v2, v9, LW/r;->a:I

    new-array v3, v2, [LW/p;

    iget-object v4, v1, LW/o;->f:LW/j;

    invoke-static {v9, v4, v3}, LW/o;->e(LW/r;LW/j;[LW/p;)V

    iget-object v4, v1, LW/o;->f:LW/j;

    invoke-static {v9, v4, v3}, LW/o;->c(LW/r;LW/j;[LW/p;)V

    iget-object v4, v1, LW/o;->f:LW/j;

    invoke-static {v9, v4, v3}, LW/o;->d(LW/r;LW/j;[LW/p;)V

    iget-object v4, v1, LW/o;->f:LW/j;

    iget-object v5, v1, LW/o;->c:Landroid/content/Context;

    iget v6, v9, LW/r;->a:I

    move/from16 v7, v17

    invoke-static {v3, v7}, LW/o;->g([LW/p;I)Landroid/util/Pair;

    move-result-object v8

    const/4 v7, 0x2

    if-nez v8, :cond_10

    move/from16 v8, p2

    :goto_a
    if-ge v8, v6, :cond_f

    aget v14, v10, v8

    if-ne v7, v14, :cond_e

    aget-object v14, v11, v8

    iget v14, v14, LU/l0;->a:I

    if-lez v14, :cond_e

    const/4 v8, 0x1

    goto :goto_b

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_f
    move/from16 v8, p2

    :goto_b
    new-instance v14, LW/e;

    invoke-direct {v14, v1, v4, v8, v12}, LW/e;-><init>(LW/o;LW/j;Z[I)V

    new-instance v8, LH0/d;

    const/16 v15, 0xa

    invoke-direct {v8, v15}, LH0/d;-><init>(I)V

    const/4 v15, 0x1

    invoke-static {v15, v9, v13, v14, v8}, LW/o;->l(ILW/r;[[[ILW/l;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_10

    iget-object v14, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, LW/p;

    aput-object v15, v3, v14

    :cond_10
    if-nez v8, :cond_11

    const/4 v8, 0x0

    goto :goto_c

    :cond_11
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, LW/p;

    iget-object v15, v8, LW/p;->a:LG/r0;

    iget-object v8, v8, LW/p;->b:[I

    aget v8, v8, p2

    iget-object v15, v15, LG/r0;->d:[LG/x;

    aget-object v8, v15, v8

    iget-object v8, v8, LG/x;->d:Ljava/lang/String;

    :goto_c
    invoke-static {v3, v7}, LW/o;->g([LW/p;I)Landroid/util/Pair;

    move-result-object v15

    const/4 v14, 0x4

    invoke-static {v3, v14}, LW/o;->g([LW/p;I)Landroid/util/Pair;

    move-result-object v19

    if-nez v15, :cond_18

    if-nez v19, :cond_18

    iget-object v15, v4, LG/w0;->w:LG/u0;

    iget v15, v15, LG/u0;->a:I

    if-ne v15, v7, :cond_12

    const/4 v12, 0x0

    goto :goto_e

    :cond_12
    iget-boolean v15, v4, LG/w0;->k:Z

    if-eqz v15, :cond_13

    if-eqz v5, :cond_13

    invoke-static {v5}, LJ/W;->p(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v15

    goto :goto_d

    :cond_13
    const/4 v15, 0x0

    :goto_d
    new-instance v14, LW/d;

    invoke-direct {v14, v4, v8, v12, v15}, LW/d;-><init>(LW/j;Ljava/lang/String;[ILandroid/graphics/Point;)V

    new-instance v12, LH0/d;

    const/16 v15, 0x9

    invoke-direct {v12, v15}, LH0/d;-><init>(I)V

    invoke-static {v7, v9, v13, v14, v12}, LW/o;->l(ILW/r;[[[ILW/l;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v12

    :goto_e
    iget-boolean v14, v4, LG/w0;->E:Z

    if-nez v14, :cond_15

    if-nez v12, :cond_14

    goto :goto_10

    :cond_14
    :goto_f
    const/4 v14, 0x0

    goto :goto_11

    :cond_15
    :goto_10
    iget-object v14, v4, LG/w0;->w:LG/u0;

    iget v14, v14, LG/u0;->a:I

    if-ne v14, v7, :cond_16

    goto :goto_f

    :cond_16
    new-instance v14, LI0/E;

    const/16 v15, 0x16

    invoke-direct {v14, v4, v15}, LI0/E;-><init>(Ljava/lang/Object;I)V

    new-instance v15, LH0/d;

    const/16 v7, 0x8

    invoke-direct {v15, v7}, LH0/d;-><init>(I)V

    const/4 v7, 0x4

    invoke-static {v7, v9, v13, v14, v15}, LW/o;->l(ILW/r;[[[ILW/l;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v14

    :goto_11
    if-eqz v14, :cond_17

    iget-object v7, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, LW/p;

    aput-object v12, v3, v7

    goto :goto_12

    :cond_17
    if-eqz v12, :cond_18

    iget-object v7, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, LW/p;

    aput-object v12, v3, v7

    :cond_18
    :goto_12
    const/4 v7, 0x3

    invoke-static {v3, v7}, LW/o;->g([LW/p;I)Landroid/util/Pair;

    move-result-object v12

    if-nez v12, :cond_1e

    iget-object v12, v4, LG/w0;->w:LG/u0;

    iget v12, v12, LG/u0;->a:I

    const/4 v14, 0x2

    if-ne v12, v14, :cond_19

    const/4 v5, 0x0

    goto :goto_15

    :cond_19
    iget-boolean v12, v4, LG/w0;->B:Z

    if-eqz v12, :cond_1d

    if-nez v5, :cond_1a

    goto :goto_13

    :cond_1a
    const-string v12, "captioning"

    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/CaptioningManager;

    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_1b

    goto :goto_13

    :cond_1b
    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v5

    if-nez v5, :cond_1c

    goto :goto_13

    :cond_1c
    sget-object v12, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    goto :goto_14

    :cond_1d
    :goto_13
    const/4 v5, 0x0

    :goto_14
    new-instance v12, LM0/n0;

    invoke-direct {v12, v7, v4, v8, v5}, LM0/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LH0/d;

    const/16 v8, 0xb

    invoke-direct {v5, v8}, LH0/d;-><init>(I)V

    invoke-static {v7, v9, v13, v12, v5}, LW/o;->l(ILW/r;[[[ILW/l;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v5

    :goto_15
    if-eqz v5, :cond_1e

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, LW/p;

    aput-object v5, v3, v8

    :cond_1e
    move/from16 v5, p2

    invoke-static {v5, v5, v5, v5}, LN/a;->e(IIII)I

    move-result v8

    iget-object v5, v4, LG/w0;->w:LG/u0;

    iget v5, v5, LG/u0;->a:I

    const/4 v14, 0x2

    if-ne v5, v14, :cond_1f

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v25, v13

    goto/16 :goto_22

    :cond_1f
    sget v5, Lu1/b0;->g:I

    new-instance v5, Lu1/a0;

    const/4 v12, 0x4

    invoke-direct {v5, v12}, Lu1/I;-><init>(I)V

    const/4 v12, 0x0

    :goto_16
    if-ge v12, v2, :cond_24

    aget-object v14, v3, v12

    if-eqz v14, :cond_22

    iget-object v15, v14, LW/p;->a:LG/r0;

    iget-object v7, v4, LW/j;->E0:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_22

    iget-object v7, v4, LG/w0;->I:Lu1/b0;

    move-object/from16 v21, v10

    iget v10, v15, LG/r0;->c:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Lu1/K;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    iget-object v7, v15, LG/r0;->b:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lu1/a0;->f(Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_17
    iget-object v10, v14, LW/p;->b:[I

    move-object/from16 v22, v11

    array-length v11, v10

    if-ge v7, v11, :cond_23

    aget v10, v10, v7

    iget-object v11, v15, LG/r0;->d:[LG/x;

    aget-object v10, v11, v10

    iget-object v10, v10, LG/x;->n:Ljava/lang/String;

    if-eqz v10, :cond_20

    invoke-virtual {v5, v10}, Lu1/I;->c(Ljava/lang/Object;)V

    :cond_20
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v11, v22

    goto :goto_17

    :cond_21
    :goto_18
    move-object/from16 v22, v11

    goto :goto_19

    :cond_22
    move-object/from16 v21, v10

    goto :goto_18

    :cond_23
    :goto_19
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    const/4 v7, 0x3

    goto :goto_16

    :cond_24
    move-object/from16 v21, v10

    move-object/from16 v22, v11

    invoke-virtual {v5}, Lu1/a0;->g()Lu1/b0;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_1a
    if-ge v11, v6, :cond_29

    aget v12, v21, v11

    const/4 v14, 0x5

    if-eq v12, v14, :cond_26

    :cond_25
    move/from16 v24, v11

    move-object/from16 v25, v13

    goto :goto_1d

    :cond_26
    aget-object v12, v22, v11

    const/4 v14, 0x0

    :goto_1b
    iget v15, v12, LU/l0;->a:I

    if-ge v14, v15, :cond_25

    invoke-virtual {v12, v14}, LU/l0;->a(I)LG/r0;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v23, v13, v11

    aget-object v23, v23, v14

    invoke-virtual/range {v23 .. v23}, [I->clone()Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v11

    move-object/from16 v11, v23

    check-cast v11, [I

    move-object/from16 v23, v12

    move-object/from16 v25, v13

    const/4 v12, 0x0

    :goto_1c
    array-length v13, v11

    if-ge v12, v13, :cond_28

    iget-object v13, v15, LG/r0;->d:[LG/x;

    aget-object v13, v13, v12

    iget-object v13, v13, LG/x;->n:Ljava/lang/String;

    if-eqz v13, :cond_27

    invoke-virtual {v5, v13}, Lu1/K;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_27

    aput v8, v11, v12

    :cond_27
    add-int/lit8 v12, v12, 0x1

    goto :goto_1c

    :cond_28
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v23

    move/from16 v11, v24

    move-object/from16 v13, v25

    goto :goto_1b

    :goto_1d
    add-int/lit8 v11, v24, 0x1

    move-object/from16 v13, v25

    goto :goto_1a

    :cond_29
    move-object/from16 v25, v13

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v11, v5, [LG/r0;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_1e

    :cond_2a
    const/4 v5, 0x0

    :goto_1e
    invoke-static {v5}, LF1/i;->o(Z)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v5, LU/l0;

    invoke-direct {v5, v11}, LU/l0;-><init>([LG/r0;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v11, v7, [[I

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v7, :cond_2b

    const/4 v7, 0x1

    goto :goto_1f

    :cond_2b
    const/4 v7, 0x0

    :goto_1f
    invoke-static {v7}, LF1/i;->o(Z)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_20
    if-ge v7, v6, :cond_2d

    aget v10, v21, v7

    const/4 v14, 0x5

    if-eq v10, v14, :cond_2c

    goto :goto_21

    :cond_2c
    invoke-static {v5, v11, v4}, LW/o;->k(LU/l0;[[ILW/j;)LW/p;

    move-result-object v10

    aput-object v10, v3, v7

    if-eqz v10, :cond_2d

    iget-object v10, v10, LW/p;->a:LG/r0;

    invoke-virtual {v5, v10}, LU/l0;->b(LG/r0;)I

    move-result v10

    aget-object v10, v11, v10

    invoke-static {v10, v8}, Ljava/util/Arrays;->fill([II)V

    :goto_21
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_2d
    :goto_22
    const/4 v5, 0x0

    :goto_23
    if-ge v5, v6, :cond_31

    aget v7, v21, v5

    const/4 v14, 0x2

    if-eq v7, v14, :cond_2f

    const/4 v15, 0x1

    if-eq v7, v15, :cond_2f

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2e

    const/4 v12, 0x4

    if-eq v7, v12, :cond_2e

    const/4 v14, 0x5

    if-eq v7, v14, :cond_30

    aget-object v7, v3, v5

    if-nez v7, :cond_30

    aget-object v7, v22, v5

    aget-object v10, v25, v5

    invoke-static {v7, v10, v4}, LW/o;->k(LU/l0;[[ILW/j;)LW/p;

    move-result-object v7

    aput-object v7, v3, v5

    goto :goto_25

    :cond_2e
    :goto_24
    const/4 v14, 0x5

    goto :goto_25

    :cond_2f
    const/4 v8, 0x3

    goto :goto_24

    :cond_30
    :goto_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_31
    iget-object v4, v1, LW/o;->f:LW/j;

    invoke-static {v9, v4, v3}, LW/o;->e(LW/r;LW/j;[LW/p;)V

    iget-object v4, v1, LW/o;->f:LW/j;

    invoke-static {v9, v4, v3}, LW/o;->c(LW/r;LW/j;[LW/p;)V

    iget-object v4, v1, LW/o;->f:LW/j;

    invoke-static {v9, v4, v3}, LW/o;->d(LW/r;LW/j;[LW/p;)V

    iget-object v4, v1, LW/o;->d:Lcom/brisa/local/j;

    iget-object v5, v1, LW/s;->b:LX/d;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_26
    array-length v6, v3

    const-wide/16 v7, 0x0

    if-ge v5, v6, :cond_33

    aget-object v6, v3, v5

    if-eqz v6, :cond_32

    iget-object v6, v6, LW/p;->b:[I

    array-length v6, v6

    const/4 v15, 0x1

    if-le v6, v15, :cond_32

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v6

    new-instance v10, LW/a;

    invoke-direct {v10, v7, v8, v7, v8}, LW/a;-><init>(JJ)V

    invoke-virtual {v6, v10}, Lu1/I;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_27

    :cond_32
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_33
    const/4 v6, 0x0

    array-length v5, v3

    new-array v10, v5, [[J

    const/4 v11, 0x0

    :goto_28
    array-length v12, v3

    const-wide/16 v13, -0x1

    if-ge v11, v12, :cond_37

    aget-object v12, v3, v11

    if-nez v12, :cond_34

    const/4 v15, 0x0

    new-array v12, v15, [J

    aput-object v12, v10, v11

    goto :goto_2a

    :cond_34
    iget-object v15, v12, LW/p;->b:[I

    array-length v6, v15

    new-array v6, v6, [J

    aput-object v6, v10, v11

    const/4 v6, 0x0

    :goto_29
    array-length v7, v15

    if-ge v6, v7, :cond_36

    iget-object v7, v12, LW/p;->a:LG/r0;

    aget v8, v15, v6

    iget-object v7, v7, LG/r0;->d:[LG/x;

    aget-object v7, v7, v8

    iget v7, v7, LG/x;->k:I

    int-to-long v7, v7

    aget-object v16, v10, v11

    cmp-long v22, v7, v13

    if-nez v22, :cond_35

    const-wide/16 v7, 0x0

    :cond_35
    aput-wide v7, v16, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_36
    aget-object v6, v10, v11

    invoke-static {v6}, Ljava/util/Arrays;->sort([J)V

    :goto_2a
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    goto :goto_28

    :cond_37
    new-array v6, v5, [I

    new-array v7, v5, [J

    const/4 v8, 0x0

    :goto_2b
    if-ge v8, v5, :cond_39

    aget-object v11, v10, v8

    array-length v12, v11

    if-nez v12, :cond_38

    const-wide/16 v22, 0x0

    goto :goto_2c

    :cond_38
    const/4 v15, 0x0

    aget-wide v22, v11, v15

    :goto_2c
    aput-wide v22, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    :cond_39
    invoke-static {v4, v7}, LW/b;->m(Ljava/util/ArrayList;[J)V

    const-string v8, "expectedValuesPerKey"

    const/4 v11, 0x2

    invoke-static {v11, v8}, Lu1/s;->e(ILjava/lang/String;)V

    new-instance v8, Ljava/util/TreeMap;

    sget-object v12, Lu1/v0;->f:Lu1/v0;

    invoke-direct {v8, v12}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v12, Lu1/r0;

    invoke-direct {v12}, Lu1/r0;-><init>()V

    new-instance v15, Lu1/s0;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v16

    invoke-static/range {v16 .. v16}, LF1/i;->g(Z)V

    iput-object v8, v15, Lu1/s0;->i:Ljava/util/Map;

    iput-object v12, v15, Lu1/s0;->k:Lu1/r0;

    const/4 v8, 0x0

    :goto_2d
    if-ge v8, v5, :cond_42

    aget-object v12, v10, v8

    array-length v11, v12

    move-wide/from16 v20, v13

    const/4 v13, 0x1

    if-gt v11, v13, :cond_3b

    move/from16 v16, v5

    move-object/from16 v24, v6

    :cond_3a
    move/from16 v29, v8

    goto/16 :goto_33

    :cond_3b
    array-length v11, v12

    new-array v12, v11, [D

    const/4 v13, 0x0

    :goto_2e
    aget-object v14, v10, v8

    move/from16 v16, v5

    array-length v5, v14

    const-wide/16 v22, 0x0

    if-ge v13, v5, :cond_3d

    move-object/from16 v24, v6

    aget-wide v5, v14, v13

    cmp-long v14, v5, v20

    if-nez v14, :cond_3c

    goto :goto_2f

    :cond_3c
    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v22

    :goto_2f
    aput-wide v22, v12, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v16

    move-object/from16 v6, v24

    goto :goto_2e

    :cond_3d
    move-object/from16 v24, v6

    add-int/lit8 v11, v11, -0x1

    aget-wide v5, v12, v11

    const/4 v13, 0x0

    aget-wide v26, v12, v13

    sub-double v5, v5, v26

    const/4 v13, 0x0

    :goto_30
    if-ge v13, v11, :cond_3a

    aget-wide v26, v12, v13

    add-int/lit8 v13, v13, 0x1

    aget-wide v28, v12, v13

    add-double v26, v26, v28

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v28

    cmpl-double v14, v5, v22

    if-nez v14, :cond_3e

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    goto :goto_31

    :cond_3e
    const/4 v14, 0x0

    aget-wide v28, v12, v14

    sub-double v26, v26, v28

    div-double v26, v26, v5

    :goto_31
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-wide/from16 v26, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v15, Lu1/s0;->i:Ljava/util/Map;

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    move/from16 v29, v8

    move-object/from16 v8, v28

    check-cast v8, Ljava/util/Collection;

    if-nez v8, :cond_40

    iget-object v8, v15, Lu1/s0;->k:Lu1/r0;

    invoke-virtual {v8}, Lu1/r0;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    iget v5, v15, Lu1/s0;->j:I

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v15, Lu1/s0;->j:I

    invoke-interface {v6, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_3f
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "New Collection violated the Collection spec"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_40
    const/16 v17, 0x1

    invoke-interface {v8, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    iget v5, v15, Lu1/s0;->j:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v15, Lu1/s0;->j:I

    :cond_41
    :goto_32
    move-wide/from16 v5, v26

    move/from16 v8, v29

    goto :goto_30

    :goto_33
    add-int/lit8 v8, v29, 0x1

    move/from16 v5, v16

    move-wide/from16 v13, v20

    move-object/from16 v6, v24

    const/4 v11, 0x2

    goto/16 :goto_2d

    :cond_42
    move-object/from16 v24, v6

    iget-object v5, v15, Lu1/p;->g:Ljava/util/Collection;

    if-nez v5, :cond_43

    new-instance v5, Lu1/o;

    const/4 v13, 0x1

    invoke-direct {v5, v15, v13}, Lu1/o;-><init>(Ljava/lang/Object;I)V

    iput-object v5, v15, Lu1/p;->g:Ljava/util/Collection;

    :cond_43
    invoke-static {v5}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v5

    const/4 v6, 0x0

    :goto_34
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v6, v8, :cond_44

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v11, v24, v8

    const/16 v17, 0x1

    add-int/lit8 v11, v11, 0x1

    aput v11, v24, v8

    aget-object v12, v10, v8

    aget-wide v11, v12, v11

    aput-wide v11, v7, v8

    invoke-static {v4, v7}, LW/b;->m(Ljava/util/ArrayList;[J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :cond_44
    const/4 v5, 0x0

    :goto_35
    array-length v6, v3

    if-ge v5, v6, :cond_46

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_45

    aget-wide v10, v7, v5

    const-wide/16 v12, 0x2

    mul-long/2addr v10, v12

    aput-wide v10, v7, v5

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_46
    invoke-static {v4, v7}, LW/b;->m(Ljava/util/ArrayList;[J)V

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v5

    const/4 v6, 0x0

    :goto_36
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_48

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu1/M;

    if-nez v7, :cond_47

    sget-object v7, Lu1/C0;->i:Lu1/C0;

    goto :goto_37

    :cond_47
    invoke-virtual {v7}, Lu1/M;->f()Lu1/C0;

    move-result-object v7

    :goto_37
    invoke-virtual {v5, v7}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_48
    invoke-virtual {v5}, Lu1/M;->f()Lu1/C0;

    move-result-object v4

    array-length v5, v3

    new-array v5, v5, [LW/q;

    const/4 v6, 0x0

    :goto_38
    array-length v7, v3

    if-ge v6, v7, :cond_4d

    aget-object v7, v3, v6

    if-eqz v7, :cond_49

    iget-object v8, v7, LW/p;->a:LG/r0;

    iget-object v7, v7, LW/p;->b:[I

    array-length v10, v7

    if-nez v10, :cond_4a

    :cond_49
    move-object/from16 v16, v3

    move-object/from16 v20, v4

    goto :goto_3a

    :cond_4a
    array-length v10, v7

    const/4 v15, 0x1

    if-ne v10, v15, :cond_4b

    new-instance v10, LW/b;

    const/4 v13, 0x0

    aget v7, v7, v13

    filled-new-array {v7}, [I

    move-result-object v7

    invoke-direct {v10, v15, v8, v7}, LW/b;-><init>(ILG/r0;[I)V

    move-object/from16 v16, v3

    move-object/from16 v20, v4

    goto :goto_39

    :cond_4b
    const/4 v13, 0x0

    invoke-virtual {v4, v6}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lu1/P;

    new-instance v11, LW/b;

    const/16 v12, 0x2710

    int-to-long v14, v12

    const/16 v12, 0x61a8

    move-object/from16 v16, v3

    move-object/from16 v20, v4

    int-to-long v3, v12

    invoke-direct {v11, v13, v8, v7}, LW/b;-><init>(ILG/r0;[I)V

    cmp-long v3, v3, v14

    if-gez v3, :cond_4c

    const-string v3, "AdaptiveTrackSelection"

    const-string v4, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    invoke-static {v3, v4}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    invoke-static {v10}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-object v10, v11

    :goto_39
    aput-object v10, v5, v6

    :goto_3a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v20

    goto :goto_38

    :cond_4d
    new-array v3, v2, [LN/e0;

    const/4 v4, 0x0

    :goto_3b
    const/4 v6, -0x2

    if-ge v4, v2, :cond_51

    iget-object v7, v9, LW/r;->b:[I

    aget v7, v7, v4

    iget-object v8, v1, LW/o;->f:LW/j;

    iget-object v8, v8, LW/j;->E0:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_50

    iget-object v8, v1, LW/o;->f:LW/j;

    iget-object v8, v8, LG/w0;->I:Lu1/b0;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lu1/K;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    goto :goto_3c

    :cond_4e
    iget-object v7, v9, LW/r;->b:[I

    aget v7, v7, v4

    if-eq v7, v6, :cond_4f

    aget-object v6, v5, v4

    if-eqz v6, :cond_50

    :cond_4f
    sget-object v6, LN/e0;->c:LN/e0;

    goto :goto_3d

    :cond_50
    :goto_3c
    const/4 v6, 0x0

    :goto_3d
    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_51
    iget-object v2, v1, LW/o;->f:LW/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, LW/o;->f:LW/j;

    iget-object v2, v1, LG/w0;->w:LG/u0;

    iget v2, v2, LG/u0;->a:I

    if-eqz v2, :cond_57

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_3e
    iget v10, v9, LW/r;->a:I

    if-ge v2, v10, :cond_54

    iget-object v10, v9, LW/r;->b:[I

    aget v10, v10, v2

    aget-object v11, v5, v2

    const/4 v15, 0x1

    if-eq v10, v15, :cond_52

    if-eqz v11, :cond_52

    goto :goto_41

    :cond_52
    if-ne v10, v15, :cond_53

    if-eqz v11, :cond_53

    invoke-interface {v11}, LW/q;->length()I

    move-result v10

    if-ne v10, v15, :cond_53

    iget-object v10, v9, LW/r;->c:[LU/l0;

    aget-object v10, v10, v2

    invoke-interface {v11}, LW/q;->g()LG/r0;

    move-result-object v12

    invoke-virtual {v10, v12}, LU/l0;->b(LG/r0;)I

    move-result v10

    aget-object v12, v25, v2

    aget-object v10, v12, v10

    const/4 v13, 0x0

    invoke-interface {v11, v13}, LW/q;->d(I)I

    move-result v12

    aget v10, v10, v12

    invoke-interface {v11}, LW/q;->h()LG/x;

    move-result-object v11

    invoke-static {v1, v10, v11}, LW/o;->j(LW/j;ILG/x;)Z

    move-result v10

    if-eqz v10, :cond_53

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_54
    const/4 v15, 0x1

    if-ne v7, v15, :cond_57

    new-instance v2, LN/e0;

    iget-object v1, v1, LG/w0;->w:LG/u0;

    iget-boolean v1, v1, LG/u0;->b:Z

    if-eqz v1, :cond_55

    const/4 v7, 0x1

    goto :goto_3f

    :cond_55
    const/4 v7, 0x2

    :goto_3f
    aget-object v1, v3, v8

    if-eqz v1, :cond_56

    iget-boolean v1, v1, LN/e0;->b:Z

    if-eqz v1, :cond_56

    const/4 v1, 0x1

    goto :goto_40

    :cond_56
    const/4 v1, 0x0

    :goto_40
    invoke-direct {v2, v7, v1}, LN/e0;-><init>(IZ)V

    aput-object v2, v3, v8

    :cond_57
    :goto_41
    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [LW/q;

    array-length v3, v2

    new-array v5, v3, [Ljava/util/List;

    const/4 v7, 0x0

    :goto_42
    array-length v8, v2

    if-ge v7, v8, :cond_59

    aget-object v8, v2, v7

    if-eqz v8, :cond_58

    invoke-static {v8}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v8

    goto :goto_43

    :cond_58
    sget-object v8, Lu1/P;->f:Lu1/N;

    sget-object v8, Lu1/C0;->i:Lu1/C0;

    :goto_43
    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    :cond_59
    new-instance v2, Lu1/M;

    const/4 v12, 0x4

    invoke-direct {v2, v12}, Lu1/I;-><init>(I)V

    const/4 v7, 0x0

    :goto_44
    iget v8, v9, LW/r;->a:I

    iget-object v10, v9, LW/r;->c:[LU/l0;

    if-ge v7, v8, :cond_66

    aget-object v8, v10, v7

    const/4 v11, 0x0

    :goto_45
    iget v12, v8, LU/l0;->a:I

    if-ge v11, v12, :cond_65

    invoke-virtual {v8, v11}, LU/l0;->a(I)LG/r0;

    move-result-object v12

    aget-object v13, v10, v7

    invoke-virtual {v13, v11}, LU/l0;->a(I)LG/r0;

    move-result-object v13

    iget v13, v13, LG/r0;->a:I

    new-array v14, v13, [I

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_46
    if-ge v15, v13, :cond_5b

    iget-object v4, v9, LW/r;->e:[[[I

    aget-object v4, v4, v7

    aget-object v4, v4, v11

    aget v4, v4, v15

    and-int/lit8 v4, v4, 0x7

    move-object/from16 v20, v5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5a

    goto :goto_47

    :cond_5a
    add-int/lit8 v4, v6, 0x1

    aput v15, v14, v6

    move v6, v4

    :goto_47
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v20

    goto :goto_46

    :cond_5b
    move-object/from16 v20, v5

    const/4 v5, 0x4

    invoke-static {v14, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    const/16 v6, 0x10

    move v15, v6

    move/from16 v21, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_48
    array-length v7, v4

    if-ge v6, v7, :cond_5d

    aget v7, v4, v6

    move-object/from16 v22, v4

    aget-object v4, v10, v21

    invoke-virtual {v4, v11}, LU/l0;->a(I)LG/r0;

    move-result-object v4

    iget-object v4, v4, LG/r0;->d:[LG/x;

    aget-object v4, v4, v7

    iget-object v4, v4, LG/x;->p:Ljava/lang/String;

    add-int/lit8 v7, v14, 0x1

    if-nez v14, :cond_5c

    move-object v5, v4

    const/16 v17, 0x1

    goto :goto_49

    :cond_5c
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/16 v17, 0x1

    xor-int/lit8 v4, v4, 0x1

    or-int/2addr v4, v13

    move v13, v4

    :goto_49
    iget-object v4, v9, LW/r;->e:[[[I

    aget-object v4, v4, v21

    aget-object v4, v4, v11

    aget v4, v4, v6

    and-int/lit8 v4, v4, 0x18

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    add-int/lit8 v6, v6, 0x1

    move v14, v7

    move-object/from16 v4, v22

    goto :goto_48

    :cond_5d
    const/16 v17, 0x1

    if-eqz v13, :cond_5e

    iget-object v4, v9, LW/r;->d:[I

    aget v4, v4, v21

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_5e
    if-eqz v15, :cond_5f

    move/from16 v7, v17

    goto :goto_4a

    :cond_5f
    const/4 v7, 0x0

    :goto_4a
    iget v4, v12, LG/r0;->a:I

    new-array v5, v4, [I

    new-array v4, v4, [Z

    const/4 v6, 0x0

    :goto_4b
    iget v13, v12, LG/r0;->a:I

    if-ge v6, v13, :cond_64

    iget-object v13, v9, LW/r;->e:[[[I

    aget-object v13, v13, v21

    aget-object v13, v13, v11

    aget v13, v13, v6

    and-int/lit8 v13, v13, 0x7

    aput v13, v5, v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4c
    if-ge v13, v3, :cond_63

    aget-object v15, v20, v13

    move/from16 v22, v3

    move-object/from16 v23, v8

    const/4 v3, 0x0

    :goto_4d
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_62

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LW/q;

    move/from16 v24, v3

    invoke-interface {v8}, LW/q;->g()LG/r0;

    move-result-object v3

    invoke-virtual {v3, v12}, LG/r0;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v8, v6}, LW/q;->l(I)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_61

    move/from16 v14, v17

    goto :goto_4e

    :cond_60
    const/4 v8, -0x1

    :cond_61
    add-int/lit8 v3, v24, 0x1

    goto :goto_4d

    :cond_62
    const/4 v8, -0x1

    :goto_4e
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v22

    move-object/from16 v8, v23

    goto :goto_4c

    :cond_63
    move/from16 v22, v3

    move-object/from16 v23, v8

    const/4 v8, -0x1

    aput-boolean v14, v4, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, v23

    goto :goto_4b

    :cond_64
    move/from16 v22, v3

    move-object/from16 v23, v8

    const/4 v8, -0x1

    new-instance v3, LG/x0;

    invoke-direct {v3, v12, v7, v5, v4}, LG/x0;-><init>(LG/r0;Z[I[Z)V

    invoke-virtual {v2, v3}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v20

    move/from16 v7, v21

    move/from16 v3, v22

    move-object/from16 v8, v23

    const/4 v6, -0x2

    goto/16 :goto_45

    :cond_65
    move/from16 v22, v3

    move-object/from16 v20, v5

    move/from16 v21, v7

    const/4 v8, -0x1

    const/16 v17, 0x1

    add-int/lit8 v7, v21, 0x1

    const/4 v6, -0x2

    goto/16 :goto_44

    :cond_66
    const/16 v17, 0x1

    iget-object v3, v9, LW/r;->f:LU/l0;

    const/4 v5, 0x0

    :goto_4f
    iget v4, v3, LU/l0;->a:I

    if-ge v5, v4, :cond_67

    invoke-virtual {v3, v5}, LU/l0;->a(I)LG/r0;

    move-result-object v4

    iget v6, v4, LG/r0;->a:I

    new-array v6, v6, [I

    const/4 v13, 0x0

    invoke-static {v6, v13}, Ljava/util/Arrays;->fill([II)V

    iget v7, v4, LG/r0;->a:I

    new-array v7, v7, [Z

    new-instance v8, LG/x0;

    invoke-direct {v8, v4, v13, v6, v7}, LG/x0;-><init>(LG/r0;Z[I[Z)V

    invoke-virtual {v2, v8}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_67
    const/4 v13, 0x0

    new-instance v3, LG/y0;

    invoke-virtual {v2}, Lu1/M;->f()Lu1/C0;

    move-result-object v2

    invoke-direct {v3, v2}, LG/y0;-><init>(Lu1/C0;)V

    new-instance v2, LW/t;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [LN/e0;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [LW/q;

    invoke-direct {v2, v4, v1, v3, v9}, LW/t;-><init>([LN/e0;[LW/q;LG/y0;Ljava/lang/Object;)V

    move v5, v13

    :goto_50
    iget v1, v2, LW/t;->a:I

    if-ge v5, v1, :cond_6c

    invoke-virtual {v2, v5}, LW/t;->b(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, v2, LW/t;->c:[LW/q;

    aget-object v1, v1, v5

    if-nez v1, :cond_69

    iget-object v1, v0, LN/L;->j:[LN/a;

    aget-object v1, v1, v5

    iget v1, v1, LN/a;->f:I

    const/4 v3, -0x2

    if-ne v1, v3, :cond_68

    goto :goto_51

    :cond_68
    move v7, v13

    goto :goto_52

    :cond_69
    const/4 v3, -0x2

    :goto_51
    move/from16 v7, v17

    :goto_52
    invoke-static {v7}, LF1/i;->o(Z)V

    goto :goto_54

    :cond_6a
    const/4 v3, -0x2

    iget-object v1, v2, LW/t;->c:[LW/q;

    aget-object v1, v1, v5

    if-nez v1, :cond_6b

    move/from16 v7, v17

    goto :goto_53

    :cond_6b
    move v7, v13

    :goto_53
    invoke-static {v7}, LF1/i;->o(Z)V

    :goto_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_6c
    iget-object v1, v2, LW/t;->c:[LW/q;

    array-length v3, v1

    move v8, v13

    :goto_55
    if-ge v8, v3, :cond_6e

    aget-object v4, v1, v8

    move/from16 v5, p1

    if-eqz v4, :cond_6d

    invoke-interface {v4, v5}, LW/q;->i(F)V

    move/from16 v6, p3

    invoke-interface {v4, v6}, LW/q;->a(Z)V

    goto :goto_56

    :cond_6d
    move/from16 v6, p3

    :goto_56
    add-int/lit8 v8, v8, 0x1

    goto :goto_55

    :cond_6e
    return-object v2
.end method
