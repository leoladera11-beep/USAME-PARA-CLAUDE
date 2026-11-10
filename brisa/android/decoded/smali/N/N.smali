.class public final LN/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LG/n0;

.field public final b:LG/p0;

.field public final c:LO/d;

.field public final d:LJ/O;

.field public final e:LI0/E;

.field public f:J

.field public g:I

.field public h:Z

.field public i:LN/L;

.field public final j:[LN/L;

.field public final k:[LN/L;

.field public l:LN/L;

.field public m:LN/L;

.field public n:I

.field public o:Ljava/lang/Object;

.field public p:J

.field public q:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(LO/d;LJ/O;LI0/E;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/N;->c:LO/d;

    iput-object p2, p0, LN/N;->d:LJ/O;

    iput-object p3, p0, LN/N;->e:LI0/E;

    new-instance p1, LG/n0;

    invoke-direct {p1}, LG/n0;-><init>()V

    iput-object p1, p0, LN/N;->a:LG/n0;

    new-instance p1, LG/p0;

    invoke-direct {p1}, LG/p0;-><init>()V

    iput-object p1, p0, LN/N;->b:LG/p0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LN/N;->q:Ljava/util/ArrayList;

    new-array p1, p4, [LN/L;

    iput-object p1, p0, LN/N;->j:[LN/L;

    new-array p1, p4, [LN/L;

    iput-object p1, p0, LN/N;->k:[LN/L;

    return-void
.end method

.method public static o([LN/L;[JLN/L;J)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v3, p2, LN/L;->m:LN/L;

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v3, LN/L;->m:LN/L;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-wide v2, p1, v1

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    cmp-long v2, v2, p3

    if-ltz v2, :cond_4

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public static v(LG/q0;Ljava/lang/Object;JJLG/p0;LG/n0;)LU/A;
    .locals 14

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    invoke-virtual {p0, p1, v4}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget v5, v4, LG/n0;->c:I

    invoke-virtual {p0, v5, v2}, LG/q0;->n(ILG/p0;)V

    invoke-virtual/range {p0 .. p1}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v5

    move-object v7, p1

    :goto_0
    iget-object v3, v4, LG/n0;->g:LG/c;

    iget v3, v3, LG/c;->a:I

    const/4 v6, -0x1

    if-eqz v3, :cond_5

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v3, v8, :cond_0

    invoke-virtual {v4, v9}, LG/n0;->g(I)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_0
    iget-object v10, v4, LG/n0;->g:LG/c;

    iget v10, v10, LG/c;->d:I

    invoke-virtual {v4, v10}, LG/n0;->h(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v10, v11}, LG/n0;->c(J)I

    move-result v12

    if-eq v12, v6, :cond_1

    goto :goto_4

    :cond_1
    iget-wide v12, v4, LG/n0;->d:J

    cmp-long v12, v12, v10

    if-nez v12, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v3, -0x1

    invoke-virtual {v4, v12}, LG/n0;->g(I)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x2

    goto :goto_1

    :cond_3
    move v12, v8

    :goto_1
    sub-int/2addr v3, v12

    :goto_2
    if-gt v9, v3, :cond_4

    iget-object v12, v4, LG/n0;->g:LG/c;

    invoke-virtual {v12, v9}, LG/c;->a(I)LG/a;

    move-result-object v12

    iget-wide v12, v12, LG/a;->j:J

    add-long/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    iget-wide v12, v4, LG/n0;->d:J

    cmp-long v3, v12, v10

    if-gtz v3, :cond_5

    :goto_3
    iget v3, v2, LG/p0;->n:I

    if-gt v5, v3, :cond_5

    invoke-virtual {p0, v5, v4, v8}, LG/q0;->f(ILG/n0;Z)LG/n0;

    iget-object v7, v4, LG/n0;->b:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    invoke-virtual {p0, v7, v4}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    invoke-virtual {v4, v0, v1}, LG/n0;->c(J)I

    move-result v8

    if-ne v8, v6, :cond_6

    invoke-virtual {v4, v0, v1}, LG/n0;->b(J)I

    move-result p0

    new-instance v0, LU/A;

    move-wide/from16 v10, p4

    invoke-direct {v0, p0, v10, v11, v7}, LU/A;-><init>(IJLjava/lang/Object;)V

    return-object v0

    :cond_6
    move-wide/from16 v10, p4

    invoke-virtual {v4, v8}, LG/n0;->f(I)I

    move-result v9

    new-instance v6, LU/A;

    const/4 v12, -0x1

    invoke-direct/range {v6 .. v12}, LU/A;-><init>(Ljava/lang/Object;IIJI)V

    return-object v6
.end method


# virtual methods
.method public final a()LN/L;
    .locals 6

    iget-object v0, p0, LN/N;->i:LN/L;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, LN/N;->j:[LN/L;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    iget-object v4, p0, LN/N;->i:LN/L;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, LN/N;->i:LN/L;

    iget-object v4, v4, LN/L;->m:LN/L;

    aput-object v4, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, LN/N;->i:LN/L;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object v2, p0, LN/N;->k:[LN/L;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    iget-object v3, p0, LN/N;->i:LN/L;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, LN/N;->i:LN/L;

    iget-object v3, v3, LN/L;->m:LN/L;

    aput-object v3, v2, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, LN/N;->i:LN/L;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LN/N;->i:LN/L;

    invoke-virtual {v0}, LN/L;->i()V

    iget v0, p0, LN/N;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LN/N;->n:I

    if-nez v0, :cond_5

    iput-object v1, p0, LN/N;->l:LN/L;

    iget-object v0, p0, LN/N;->i:LN/L;

    iget-object v1, v0, LN/L;->b:Ljava/lang/Object;

    iput-object v1, p0, LN/N;->o:Ljava/lang/Object;

    iget-object v0, v0, LN/L;->g:LN/M;

    iget-object v0, v0, LN/M;->a:LU/A;

    iget-wide v0, v0, LU/A;->d:J

    iput-wide v0, p0, LN/N;->p:J

    :cond_5
    iget-object v0, p0, LN/N;->i:LN/L;

    iget-object v0, v0, LN/L;->m:LN/L;

    iput-object v0, p0, LN/N;->i:LN/L;

    invoke-virtual {p0}, LN/N;->s()V

    iget-object v0, p0, LN/N;->i:LN/L;

    return-object v0
.end method

.method public final b()V
    .locals 3

    iget v0, p0, LN/N;->n:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN/N;->i:LN/L;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LN/L;->b:Ljava/lang/Object;

    iput-object v1, p0, LN/N;->o:Ljava/lang/Object;

    iget-object v1, v0, LN/L;->g:LN/M;

    iget-object v1, v1, LN/M;->a:LU/A;

    iget-wide v1, v1, LU/A;->d:J

    iput-wide v1, p0, LN/N;->p:J

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, LN/L;->i()V

    iget-object v0, v0, LN/L;->m:LN/L;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, LN/N;->i:LN/L;

    iput-object v0, p0, LN/N;->l:LN/L;

    iget-object v1, p0, LN/N;->j:[LN/L;

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, LN/N;->k:[LN/L;

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, LN/N;->n:I

    invoke-virtual {p0}, LN/N;->s()V

    return-void
.end method

.method public final c()LN/L;
    .locals 5

    iget-object v0, p0, LN/N;->i:LN/L;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, LN/N;->k:[LN/L;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, v0, LN/L;->m:LN/L;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final d()LN/L;
    .locals 5

    iget-object v0, p0, LN/N;->i:LN/L;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, LN/N;->j:[LN/L;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, v0, LN/L;->m:LN/L;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final e(LG/q0;LN/L;J)LN/M;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    iget-object v2, v9, LN/L;->g:LN/M;

    iget-object v10, v2, LN/M;->a:LU/A;

    iget-wide v11, v2, LN/M;->d:J

    iget-object v2, v10, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v2

    iget v5, v0, LN/N;->g:I

    iget-boolean v6, v0, LN/N;->h:Z

    iget-object v3, v0, LN/N;->a:LG/n0;

    iget-object v4, v0, LN/N;->b:LG/p0;

    invoke-virtual/range {v1 .. v6}, LG/q0;->d(ILG/n0;LG/p0;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v13, v0, LN/N;->a:LG/n0;

    const/4 v14, 0x1

    invoke-virtual {v1, v2, v13, v14}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v3

    iget v4, v3, LG/n0;->c:I

    iget-object v3, v13, LG/n0;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v10, LU/A;->d:J

    iget-object v7, v0, LN/N;->b:LG/p0;

    const-wide/16 v14, 0x0

    invoke-virtual {v1, v4, v7, v14, v15}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v8

    iget v8, v8, LG/p0;->m:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v8, v2, :cond_6

    iget v2, v13, LG/n0;->c:I

    iget-wide v5, v13, LG/n0;->d:J

    cmp-long v3, v5, v16

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2, v7}, LG/q0;->n(ILG/p0;)V

    iget-boolean v2, v7, LG/p0;->h:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v7, LG/p0;->j:Z

    if-nez v2, :cond_2

    move-wide/from16 v2, p3

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide v7, v2

    goto :goto_1

    :cond_2
    :goto_0
    move-wide/from16 v7, v16

    :goto_1
    iget-object v3, v0, LN/N;->a:LG/n0;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v2, v0, LN/N;->b:LG/p0;

    invoke-virtual/range {v1 .. v8}, LG/q0;->j(LG/p0;LG/n0;IJJ)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    const/4 v1, 0x0

    return-object v1

    :cond_3
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v1, v9, LN/L;->m:LN/L;

    if-eqz v1, :cond_4

    iget-object v2, v1, LN/L;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, v1, LN/L;->g:LN/M;

    iget-object v1, v1, LN/M;->a:LU/A;

    iget-wide v5, v1, LU/A;->d:J

    :goto_3
    move-object v2, v3

    move-wide v3, v14

    move-wide/from16 v18, v16

    move-wide v14, v7

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v3}, LN/N;->x(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_5

    iget-wide v1, v0, LN/N;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    iput-wide v4, v0, LN/N;->f:J

    :cond_5
    move-wide v5, v1

    goto :goto_3

    :cond_6
    move-object v2, v3

    move-wide v3, v14

    move-wide/from16 v18, v3

    move-wide/from16 v14, v16

    :goto_4
    iget-object v7, v0, LN/N;->b:LG/p0;

    iget-object v8, v0, LN/N;->a:LG/n0;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, LN/N;->v(LG/q0;Ljava/lang/Object;JJLG/p0;LG/n0;)LU/A;

    move-result-object v2

    cmp-long v5, v18, v16

    if-eqz v5, :cond_a

    cmp-long v5, v11, v16

    if-eqz v5, :cond_a

    iget-object v5, v10, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v1, v5, v13}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v5

    iget-object v5, v5, LG/n0;->g:LG/c;

    iget v5, v5, LG/c;->a:I

    iget-object v6, v13, LG/n0;->g:LG/c;

    iget v6, v6, LG/c;->d:I

    if-lez v5, :cond_8

    invoke-virtual {v13, v6}, LG/n0;->h(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    if-gt v5, v7, :cond_7

    invoke-virtual {v13, v6}, LG/n0;->d(I)J

    move-result-wide v5

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v5, v5, v8

    if-eqz v5, :cond_8

    :cond_7
    move v5, v7

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v2}, LU/A;->c()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    move-wide v5, v3

    move-wide v3, v11

    move-wide v7, v14

    goto :goto_7

    :cond_9
    if-eqz v5, :cond_a

    move-wide v5, v11

    :goto_6
    move-wide v7, v14

    move-wide/from16 v3, v18

    goto :goto_7

    :cond_a
    move-wide v5, v3

    goto :goto_6

    :goto_7
    invoke-virtual/range {v0 .. v8}, LN/N;->i(LG/q0;LU/A;JJJ)LN/M;

    move-result-object v1

    return-object v1
.end method

.method public final f(LG/q0;LN/L;J)LN/M;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v8, v2, LN/L;->g:LN/M;

    iget-wide v3, v2, LN/L;->p:J

    iget-wide v5, v8, LN/M;->e:J

    add-long/2addr v3, v5

    sub-long v3, v3, p3

    iget-boolean v5, v8, LN/M;->g:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0, v1, v2, v3, v4}, LN/N;->e(LG/q0;LN/L;J)LN/M;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v9, v8, LN/M;->a:LU/A;

    iget-object v10, v9, LU/A;->a:Ljava/lang/Object;

    iget v5, v9, LU/A;->e:I

    move-object v6, v2

    iget-object v2, v0, LN/N;->a:LG/n0;

    invoke-virtual {v1, v10, v2}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    invoke-virtual {v9}, LU/A;->c()Z

    move-result v7

    const-wide/high16 v11, -0x8000000000000000L

    const/4 v13, -0x1

    if-eqz v7, :cond_8

    move-wide v14, v3

    iget v3, v9, LU/A;->b:I

    iget-object v4, v2, LG/n0;->g:LG/c;

    invoke-virtual {v4, v3}, LG/c;->a(I)LG/a;

    move-result-object v4

    iget v4, v4, LG/a;->b:I

    if-ne v4, v13, :cond_1

    move-object v13, v0

    goto :goto_1

    :cond_1
    iget v5, v9, LU/A;->c:I

    iget-object v6, v2, LG/n0;->g:LG/c;

    invoke-virtual {v6, v3}, LG/c;->a(I)LG/a;

    move-result-object v6

    invoke-virtual {v6, v5}, LG/a;->a(I)I

    move-result v5

    if-ge v5, v4, :cond_2

    iget-object v2, v9, LU/A;->a:Ljava/lang/Object;

    move v4, v5

    iget-wide v5, v8, LN/M;->d:J

    iget-wide v7, v9, LU/A;->d:J

    invoke-virtual/range {v0 .. v8}, LN/N;->j(LG/q0;Ljava/lang/Object;IIJJ)LN/M;

    move-result-object v1

    move-object v13, v0

    return-object v1

    :cond_2
    move-object v13, v0

    iget-wide v3, v8, LN/M;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-nez v0, :cond_6

    iget v0, v2, LG/n0;->c:I

    iget-wide v3, v2, LG/n0;->d:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v13, LN/N;->b:LG/p0;

    invoke-virtual {v1, v0, v3}, LG/q0;->n(ILG/p0;)V

    iget-boolean v0, v3, LG/p0;->h:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v3, LG/p0;->j:Z

    if-nez v0, :cond_4

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_4
    :goto_0
    move-wide v6, v5

    iget v3, v2, LG/n0;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v1, v13, LN/N;->b:LG/p0;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, LG/q0;->j(LG/p0;LG/n0;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_5
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v5, v6

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    iget v1, v9, LU/A;->b:I

    invoke-virtual {v0, v10, v2}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    invoke-virtual {v2, v1}, LG/n0;->d(I)J

    move-result-wide v14

    cmp-long v7, v14, v11

    if-nez v7, :cond_7

    iget-wide v1, v2, LG/n0;->d:J

    goto :goto_3

    :cond_7
    iget-object v2, v2, LG/n0;->g:LG/c;

    invoke-virtual {v2, v1}, LG/c;->a(I)LG/a;

    move-result-object v1

    iget-wide v1, v1, LG/a;->j:J

    add-long/2addr v1, v14

    :goto_3
    iget-object v7, v9, LU/A;->a:Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v2, v7

    iget-wide v7, v8, LN/M;->d:J

    iget-wide v9, v9, LU/A;->d:J

    move-object v1, v0

    move-object v0, v13

    invoke-virtual/range {v0 .. v10}, LN/N;->k(LG/q0;Ljava/lang/Object;JJJJ)LN/M;

    move-result-object v1

    return-object v1

    :cond_8
    move-wide v14, v3

    if-eq v5, v13, :cond_9

    invoke-virtual {v2, v5}, LG/n0;->g(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0, v1, v6, v14, v15}, LN/N;->e(LG/q0;LN/L;J)LN/M;

    move-result-object v1

    return-object v1

    :cond_9
    invoke-virtual {v2, v5}, LG/n0;->f(I)I

    move-result v4

    invoke-virtual {v2, v5}, LG/n0;->h(I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v5, v4}, LG/n0;->e(II)I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_a

    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    iget-object v6, v2, LG/n0;->g:LG/c;

    invoke-virtual {v6, v5}, LG/c;->a(I)LG/a;

    move-result-object v6

    iget v6, v6, LG/a;->b:I

    if-eq v4, v6, :cond_c

    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    iget-object v2, v9, LU/A;->a:Ljava/lang/Object;

    iget v3, v9, LU/A;->e:I

    iget-wide v5, v8, LN/M;->e:J

    iget-wide v7, v9, LU/A;->d:J

    invoke-virtual/range {v0 .. v8}, LN/N;->j(LG/q0;Ljava/lang/Object;IIJJ)LN/M;

    move-result-object v1

    return-object v1

    :cond_c
    :goto_5
    invoke-virtual {v1, v10, v2}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    invoke-virtual {v2, v5}, LG/n0;->d(I)J

    move-result-wide v3

    cmp-long v0, v3, v11

    if-nez v0, :cond_d

    iget-wide v2, v2, LG/n0;->d:J

    :goto_6
    move-wide v3, v2

    goto :goto_7

    :cond_d
    iget-object v0, v2, LG/n0;->g:LG/c;

    invoke-virtual {v0, v5}, LG/c;->a(I)LG/a;

    move-result-object v0

    iget-wide v5, v0, LG/a;->j:J

    add-long v2, v5, v3

    goto :goto_6

    :goto_7
    iget-object v2, v9, LU/A;->a:Ljava/lang/Object;

    iget-wide v7, v8, LN/M;->e:J

    iget-wide v9, v9, LU/A;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, LN/N;->k(LG/q0;Ljava/lang/Object;JJJJ)LN/M;

    move-result-object v1

    return-object v1
.end method

.method public final g()LN/L;
    .locals 7

    iget-object v0, p0, LN/N;->j:[LN/L;

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, LN/N;->i:LN/L;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    :goto_0
    if-eqz v1, :cond_3

    array-length v4, v0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v1, v1, LN/L;->m:LN/L;

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public final h(LG/q0;LU/A;)J
    .locals 4

    iget-object v0, p2, LU/A;->a:Ljava/lang/Object;

    iget-object v1, p0, LN/N;->a:LG/n0;

    invoke-virtual {p1, v0, v1}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    invoke-virtual {p2}, LU/A;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p2, LU/A;->b:I

    iget p2, p2, LU/A;->c:I

    invoke-virtual {v1, p1, p2}, LG/n0;->a(II)J

    move-result-wide p1

    return-wide p1

    :cond_0
    iget p1, p2, LU/A;->e:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    invoke-virtual {v1, p1}, LG/n0;->d(I)J

    move-result-wide p1

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    iget-wide p1, v1, LG/n0;->d:J

    :cond_1
    return-wide p1

    :cond_2
    iget-wide p1, v1, LG/n0;->d:J

    return-wide p1
.end method

.method public final i(LG/q0;LU/A;JJJ)LN/M;
    .locals 11

    iget-object v0, p2, LU/A;->a:Ljava/lang/Object;

    iget-object v1, p0, LN/N;->a:LG/n0;

    invoke-virtual {p1, v0, v1}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    invoke-virtual {p2}, LU/A;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p2, LU/A;->a:Ljava/lang/Object;

    iget v4, p2, LU/A;->b:I

    iget v5, p2, LU/A;->c:I

    iget-wide v8, p2, LU/A;->d:J

    move-object v1, p0

    move-object v2, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v9}, LN/N;->j(LG/q0;Ljava/lang/Object;IIJJ)LN/M;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p2, LU/A;->a:Ljava/lang/Object;

    iget-wide v9, p2, LU/A;->d:J

    move-object v0, p0

    move-object v1, p1

    move-wide v7, p3

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    invoke-virtual/range {v0 .. v10}, LN/N;->k(LG/q0;Ljava/lang/Object;JJJJ)LN/M;

    move-result-object p1

    return-object p1
.end method

.method public final j(LG/q0;Ljava/lang/Object;IIJJ)LN/M;
    .locals 14

    new-instance v0, LU/A;

    const/4 v6, -0x1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v6}, LU/A;-><init>(Ljava/lang/Object;IIJI)V

    iget-object v1, p0, LN/N;->a:LG/n0;

    move-object/from16 v4, p2

    invoke-virtual {p1, v4, v1}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, LG/n0;->a(II)J

    move-result-wide v8

    invoke-virtual {v1, v2}, LG/n0;->f(I)I

    move-result p1

    const-wide/16 v4, 0x0

    if-ne v3, p1, :cond_0

    iget-object p1, v1, LG/n0;->g:LG/c;

    iget-wide v6, p1, LG/c;->b:J

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    invoke-virtual {v1, v2}, LG/n0;->h(I)Z

    move-result v10

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v8, v1

    if-eqz p1, :cond_1

    cmp-long p1, v6, v8

    if-ltz p1, :cond_1

    const-wide/16 v1, 0x1

    sub-long v1, v8, v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_1
    move-object v1, v0

    move-wide v2, v6

    new-instance v0, LN/M;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v13}, LN/M;-><init>(LU/A;JJJJZZZZ)V

    return-object v0
.end method

.method public final k(LG/q0;Ljava/lang/Object;JJJJ)LN/M;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, LN/N;->a:LG/n0;

    invoke-virtual {v1, v2, v5}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    invoke-virtual {v5, v3, v4}, LG/n0;->b(J)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v6, v9, :cond_4

    invoke-virtual {v5, v6}, LG/n0;->h(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v5, v6}, LG/n0;->d(I)J

    move-result-wide v10

    iget-wide v12, v5, LG/n0;->d:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    iget-object v10, v5, LG/n0;->g:LG/c;

    invoke-virtual {v10, v6}, LG/c;->a(I)LG/a;

    move-result-object v10

    iget v11, v10, LG/a;->b:I

    if-ne v11, v9, :cond_1

    :cond_0
    :goto_0
    move v10, v7

    goto :goto_2

    :cond_1
    move v12, v8

    :goto_1
    if-ge v12, v11, :cond_3

    iget-object v13, v10, LG/a;->f:[I

    aget v13, v13, v12

    if-eqz v13, :cond_0

    if-ne v13, v7, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    move v10, v8

    :goto_2
    if-nez v10, :cond_4

    move v6, v9

    :cond_4
    if-eq v6, v9, :cond_5

    invoke-virtual {v5, v6}, LG/n0;->h(I)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v5, v6}, LG/n0;->g(I)Z

    move-result v5

    if-nez v5, :cond_5

    move/from16 v20, v7

    goto :goto_3

    :cond_5
    move/from16 v20, v8

    :goto_3
    new-instance v11, LU/A;

    move-wide/from16 v12, p9

    invoke-direct {v11, v6, v12, v13, v2}, LU/A;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v11}, LU/A;->c()Z

    move-result v2

    if-nez v2, :cond_6

    if-ne v6, v9, :cond_6

    goto :goto_4

    :cond_6
    move v7, v8

    :goto_4
    invoke-virtual {v0, v1, v11}, LN/N;->q(LG/q0;LU/A;)Z

    move-result v22

    invoke-virtual {v0, v1, v11, v7}, LN/N;->p(LG/q0;LU/A;Z)Z

    move-result v23

    invoke-virtual {v0, v1, v11}, LN/N;->h(LG/q0;LU/A;)J

    move-result-wide v18

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v18, v1

    if-eqz v1, :cond_7

    cmp-long v1, v3, v18

    if-ltz v1, :cond_7

    const-wide/16 v1, 0x1

    sub-long v1, v18, v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v12, v1

    goto :goto_5

    :cond_7
    move-wide v12, v3

    :goto_5
    new-instance v10, LN/M;

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    move/from16 v21, v7

    invoke-direct/range {v10 .. v23}, LN/M;-><init>(LU/A;JJJJZZZZ)V

    return-object v10
.end method

.method public final l()LN/L;
    .locals 1

    iget-object v0, p0, LN/N;->i:LN/L;

    return-object v0
.end method

.method public final m(I)LN/L;
    .locals 1

    iget-object v0, p0, LN/N;->k:[LN/L;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final n(LG/q0;LN/M;)LN/M;
    .locals 15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, LN/M;->a:LU/A;

    invoke-virtual {v3}, LU/A;->c()Z

    move-result v4

    iget v5, v3, LU/A;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-nez v4, :cond_0

    if-ne v5, v8, :cond_0

    move v12, v7

    goto :goto_0

    :cond_0
    move v12, v6

    :goto_0
    invoke-virtual {p0, v1, v3}, LN/N;->q(LG/q0;LU/A;)Z

    move-result v13

    invoke-virtual {p0, v1, v3, v12}, LN/N;->p(LG/q0;LU/A;Z)Z

    move-result v14

    invoke-virtual {p0, v1, v3}, LN/N;->h(LG/q0;LU/A;)J

    move-result-wide v9

    iget-object v4, v3, LU/A;->a:Ljava/lang/Object;

    iget-object v11, p0, LN/N;->a:LG/n0;

    invoke-virtual {v1, v4, v11}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    invoke-virtual {v3}, LU/A;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v3, LU/A;->b:I

    invoke-virtual {v11, v1}, LG/n0;->h(I)Z

    move-result v6

    :cond_1
    move v11, v6

    goto :goto_1

    :cond_2
    if-eq v5, v8, :cond_1

    invoke-virtual {v11, v5}, LG/n0;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v11, v5}, LG/n0;->g(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v11, v7

    :goto_1
    new-instance v1, LN/M;

    move-object v5, v3

    iget-wide v3, v2, LN/M;->b:J

    move-object v7, v5

    iget-wide v5, v2, LN/M;->c:J

    move-object/from16 p1, v1

    iget-wide v0, v2, LN/M;->d:J

    move-object v2, v7

    move-wide v7, v0

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v14}, LN/M;-><init>(LU/A;JJJJZZZZ)V

    return-object v1
.end method

.method public final p(LG/q0;LU/A;Z)Z
    .locals 7

    iget-object p2, p2, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, LN/N;->a:LG/n0;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, p2, v6}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object p2

    iget p2, p2, LG/n0;->c:I

    iget-object v0, p0, LN/N;->b:LG/p0;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v3}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object p2

    iget-boolean p2, p2, LG/p0;->h:Z

    if-nez p2, :cond_0

    iget v4, p0, LN/N;->g:I

    iget-boolean v5, p0, LN/N;->h:Z

    iget-object v2, p0, LN/N;->a:LG/n0;

    iget-object v3, p0, LN/N;->b:LG/p0;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, LG/q0;->d(ILG/n0;LG/p0;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v6
.end method

.method public final q(LG/q0;LU/A;)Z
    .locals 6

    invoke-virtual {p2}, LU/A;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p2, LU/A;->e:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p2, p2, LU/A;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, LN/N;->a:LG/n0;

    invoke-virtual {p1, p2, v0}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v0

    iget v0, v0, LG/n0;->c:I

    invoke-virtual {p1, p2}, LG/q0;->b(Ljava/lang/Object;)I

    move-result p2

    iget-object v3, p0, LN/N;->b:LG/p0;

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v3, v4, v5}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object p1

    iget p1, p1, LG/p0;->n:I

    if-ne p1, p2, :cond_2

    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, LN/N;->m:LN/L;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LN/L;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LN/N;->m:LN/L;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN/L;

    invoke-virtual {v1}, LN/L;->h()Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, LN/N;->m:LN/L;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final s()V
    .locals 4

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    iget-object v1, p0, LN/N;->i:LN/L;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, LN/L;->g:LN/M;

    iget-object v2, v2, LN/M;->a:LU/A;

    invoke-virtual {v0, v2}, Lu1/I;->c(Ljava/lang/Object;)V

    iget-object v1, v1, LN/L;->m:LN/L;

    goto :goto_0

    :cond_0
    iget-object v1, p0, LN/N;->j:[LN/L;

    array-length v2, v1

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v1, LN/L;->g:LN/M;

    iget-object v1, v1, LN/M;->a:LU/A;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    :goto_2
    new-instance v2, LJ/U;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p0, v0, v1}, LJ/U;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, LN/N;->d:LJ/O;

    invoke-virtual {v0, v2}, LJ/O;->e(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final t(J)V
    .locals 4

    iget-object v0, p0, LN/N;->l:LN/L;

    if-eqz v0, :cond_1

    iget-object v1, v0, LN/L;->m:LN/L;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LF1/i;->o(Z)V

    iget-boolean v1, v0, LN/L;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, LN/L;->a:LU/s;

    iget-wide v2, v0, LN/L;->p:J

    sub-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, LU/s;->t(J)V

    :cond_1
    return-void
.end method

.method public final u(LN/L;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LN/N;->l:LN/L;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, LN/N;->l:LN/L;

    move v0, v1

    :goto_0
    iget-object p1, p1, LN/L;->m:LN/L;

    if-eqz p1, :cond_5

    move v2, v1

    :goto_1
    iget-object v3, p0, LN/N;->j:[LN/L;

    array-length v4, v3

    iget-object v5, p0, LN/N;->k:[LN/L;

    if-ge v2, v4, :cond_2

    aget-object v4, v3, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, LN/N;->i:LN/L;

    aput-object v0, v3, v2

    aput-object v0, v5, v2

    const/4 v0, 0x3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_2
    array-length v4, v5

    if-ge v2, v4, :cond_4

    aget-object v4, v5, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v3, v2

    aput-object v4, v5, v2

    or-int/lit8 v0, v0, 0x2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, LN/L;->i()V

    iget v2, p0, LN/N;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LN/N;->n:I

    goto :goto_0

    :cond_5
    iget-object p1, p0, LN/N;->l:LN/L;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, LN/L;->m:LN/L;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, LN/L;->b()V

    const/4 v1, 0x0

    iput-object v1, p1, LN/L;->m:LN/L;

    invoke-virtual {p1}, LN/L;->c()V

    :goto_3
    invoke-virtual {p0}, LN/N;->s()V

    return v0
.end method

.method public final w(LN/X;LG/q0;Ljava/lang/Object;JZZ)LU/A;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v9, v0, LN/N;->a:LG/n0;

    invoke-virtual {v1, v2, v9}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v3

    iget v3, v3, LG/n0;->c:I

    iget-object v4, v0, LN/N;->o:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v10, -0x1

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v10, :cond_0

    invoke-virtual {v1, v4, v9, v5}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v4

    iget v4, v4, LG/n0;->c:I

    if-ne v4, v3, :cond_0

    iget-wide v3, v0, LN/N;->p:J

    goto :goto_2

    :cond_0
    iget-object v4, v0, LN/N;->i:LN/L;

    :goto_0
    if-eqz v4, :cond_2

    iget-object v6, v4, LN/L;->b:Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v3, v4, LN/L;->g:LN/M;

    iget-object v3, v3, LN/M;->a:LU/A;

    iget-wide v3, v3, LU/A;->d:J

    goto :goto_2

    :cond_1
    iget-object v4, v4, LN/L;->m:LN/L;

    goto :goto_0

    :cond_2
    iget-object v4, v0, LN/N;->i:LN/L;

    :goto_1
    if-eqz v4, :cond_4

    iget-object v6, v4, LN/L;->b:Ljava/lang/Object;

    invoke-virtual {v1, v6}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v10, :cond_3

    invoke-virtual {v1, v6, v9, v5}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v6

    iget v6, v6, LG/n0;->c:I

    if-ne v6, v3, :cond_3

    iget-object v3, v4, LN/L;->g:LN/M;

    iget-object v3, v3, LN/M;->a:LU/A;

    iget-wide v3, v3, LU/A;->d:J

    goto :goto_2

    :cond_3
    iget-object v4, v4, LN/L;->m:LN/L;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, LN/N;->x(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    iget-wide v3, v0, LN/N;->f:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v3

    iput-wide v6, v0, LN/N;->f:J

    iget-object v6, v0, LN/N;->i:LN/L;

    if-nez v6, :cond_6

    iput-object v2, v0, LN/N;->o:Ljava/lang/Object;

    iput-wide v3, v0, LN/N;->p:J

    :cond_6
    :goto_2
    if-nez p6, :cond_8

    if-nez p7, :cond_8

    move-object/from16 v6, p1

    iget-object v10, v6, LN/X;->b:LU/A;

    iget-object v7, v0, LN/N;->b:LG/p0;

    iget-object v8, v0, LN/N;->a:LG/n0;

    move-wide v5, v3

    move-wide/from16 v3, p4

    invoke-static/range {v1 .. v8}, LN/N;->v(LG/q0;Ljava/lang/Object;JJLG/p0;LG/n0;)LU/A;

    move-result-object v7

    move-wide v11, v5

    invoke-virtual {v10}, LU/A;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v10, v7}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    return-object v10

    :cond_7
    invoke-virtual {v1, v2, v9}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    invoke-virtual {v9, v3, v4}, LG/n0;->b(J)I

    move-result v1

    new-instance v3, LU/A;

    invoke-direct {v3, v1, v11, v12, v2}, LU/A;-><init>(IJLjava/lang/Object;)V

    return-object v3

    :cond_8
    move-wide v11, v3

    move-wide/from16 v3, p4

    invoke-virtual {v1, v2, v9}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget v6, v9, LG/n0;->c:I

    iget-object v7, v0, LN/N;->b:LG/p0;

    invoke-virtual {v1, v6, v7}, LG/q0;->n(ILG/p0;)V

    invoke-virtual/range {p2 .. p3}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v6

    move v8, v5

    :goto_3
    iget v13, v7, LG/p0;->m:I

    if-lt v6, v13, :cond_c

    const/4 v13, 0x1

    invoke-virtual {v1, v6, v9, v13}, LG/q0;->f(ILG/n0;Z)LG/n0;

    iget-object v14, v9, LG/n0;->g:LG/c;

    iget v14, v14, LG/c;->a:I

    if-lez v14, :cond_9

    goto :goto_4

    :cond_9
    move v13, v5

    :goto_4
    or-int/2addr v8, v13

    iget-wide v14, v9, LG/n0;->d:J

    invoke-virtual {v9, v14, v15}, LG/n0;->c(J)I

    move-result v14

    if-eq v14, v10, :cond_a

    iget-object v2, v9, LG/n0;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_a
    if-eqz v8, :cond_b

    if-eqz v13, :cond_c

    iget-wide v13, v9, LG/n0;->d:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_c
    :goto_5
    iget-object v7, v0, LN/N;->b:LG/p0;

    iget-object v8, v0, LN/N;->a:LG/n0;

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, LN/N;->v(LG/q0;Ljava/lang/Object;JJLG/p0;LG/n0;)LU/A;

    move-result-object v2

    iget-object v5, v2, LU/A;->a:Ljava/lang/Object;

    iget v6, v2, LU/A;->b:I

    if-eq v6, v10, :cond_d

    if-nez p6, :cond_d

    invoke-virtual {v1, v5, v9}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget-object v1, v9, LG/n0;->g:LG/c;

    invoke-virtual {v1, v6}, LG/c;->a(I)LG/a;

    move-result-object v1

    iget-wide v6, v1, LG/a;->a:J

    cmp-long v1, v6, v3

    if-eqz v1, :cond_d

    invoke-virtual {v9, v3, v4}, LG/n0;->b(J)I

    move-result v1

    new-instance v3, LU/A;

    iget-wide v6, v2, LU/A;->d:J

    invoke-direct {v3, v1, v6, v7, v5}, LU/A;-><init>(IJLjava/lang/Object;)V

    return-object v3

    :cond_d
    return-object v2
.end method

.method public final x(Ljava/lang/Object;)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN/L;

    iget-object v2, v1, LN/L;->b:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, v1, LN/L;->g:LN/M;

    iget-object p1, p1, LN/M;->a:LU/A;

    iget-wide v0, p1, LU/A;->d:J

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final y(LG/q0;)I
    .locals 7

    iget-object v0, p0, LN/N;->i:LN/L;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, v0, LN/L;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    :goto_0
    iget v5, p0, LN/N;->g:I

    iget-boolean v6, p0, LN/N;->h:Z

    iget-object v3, p0, LN/N;->a:LG/n0;

    iget-object v4, p0, LN/N;->b:LG/p0;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, LG/q0;->d(ILG/n0;LG/p0;IZ)I

    move-result v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, LN/L;->m:LN/L;

    if-eqz p1, :cond_1

    iget-object v3, v0, LN/L;->g:LN/M;

    iget-boolean v3, v3, LN/M;->g:Z

    if-nez v3, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, LN/L;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, LN/N;->u(LN/L;)I

    move-result p1

    iget-object v2, v0, LN/L;->g:LN/M;

    invoke-virtual {p0, v1, v2}, LN/N;->n(LG/q0;LN/M;)LN/M;

    move-result-object v1

    iput-object v1, v0, LN/L;->g:LN/M;

    return p1
.end method

.method public final z(LG/q0;J[J[J)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LN/N;->i:LN/L;

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_d

    iget-object v5, v2, LN/L;->g:LN/M;

    iget-object v6, v5, LN/M;->a:LU/A;

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v5}, LN/N;->n(LG/q0;LN/M;)LN/M;

    move-result-object v3

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v18, 0x0

    goto :goto_2

    :cond_0
    move-wide/from16 v9, p2

    invoke-virtual {v0, v1, v3, v9, v10}, LN/N;->f(LG/q0;LN/L;J)LN/M;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-wide v12, v11, LN/M;->b:J

    iget-wide v14, v5, LN/M;->c:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v7, v5, LN/M;->b:J

    const/16 v18, 0x0

    iget-object v4, v11, LN/M;->a:LU/A;

    invoke-virtual {v6, v4}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_6

    :cond_1
    cmp-long v4, v7, v12

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v19, v14, v16

    if-eqz v19, :cond_c

    iget-wide v9, v11, LN/M;->c:J

    cmp-long v19, v9, v16

    if-nez v19, :cond_3

    goto/16 :goto_6

    :cond_3
    sub-long v19, v7, v14

    sub-long/2addr v12, v9

    sub-long v12, v12, v19

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v12, 0x4c4b40

    cmp-long v9, v9, v12

    if-gez v9, :cond_c

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v11, v7, v8, v14, v15}, LN/M;->b(JJ)LN/M;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v11

    :goto_2
    iget-wide v7, v5, LN/M;->d:J

    iget-wide v4, v5, LN/M;->e:J

    invoke-virtual {v3, v7, v8}, LN/M;->a(J)LN/M;

    move-result-object v7

    iput-object v7, v2, LN/L;->g:LN/M;

    iget-wide v8, v3, LN/M;->e:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_b

    cmp-long v1, v8, v16

    if-nez v1, :cond_5

    const-wide v8, 0x7fffffffffffffffL

    goto :goto_3

    :cond_5
    iget-wide v10, v2, LN/L;->p:J

    add-long/2addr v8, v10

    :goto_3
    iget-boolean v1, v7, LN/M;->f:Z

    const/4 v3, 0x1

    if-nez v1, :cond_6

    iget-object v1, v0, LN/N;->j:[LN/L;

    move-object/from16 v7, p4

    invoke-static {v1, v7, v2, v8, v9}, LN/N;->o([LN/L;[JLN/L;J)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_4

    :cond_6
    move/from16 v1, v18

    :goto_4
    iget-object v7, v0, LN/N;->k:[LN/L;

    move-object/from16 v10, p5

    invoke-static {v7, v10, v2, v8, v9}, LN/N;->o([LN/L;[JLN/L;J)Z

    move-result v7

    invoke-virtual {v0, v2}, LN/N;->u(LN/L;)I

    move-result v2

    if-eqz v2, :cond_7

    return v2

    :cond_7
    if-eqz v1, :cond_9

    cmp-long v1, v4, v16

    if-nez v1, :cond_8

    iget v1, v6, LU/A;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    :cond_8
    move v4, v3

    goto :goto_5

    :cond_9
    move/from16 v4, v18

    :goto_5
    if-eqz v7, :cond_a

    or-int/lit8 v1, v4, 0x2

    return v1

    :cond_a
    return v4

    :cond_b
    move-object/from16 v7, p4

    move-object/from16 v10, p5

    iget-object v3, v2, LN/L;->m:LN/L;

    move-object/from16 v21, v3

    move-object v3, v2

    move-object/from16 v2, v21

    goto/16 :goto_0

    :cond_c
    :goto_6
    invoke-virtual {v0, v3}, LN/N;->u(LN/L;)I

    move-result v1

    return v1

    :cond_d
    const/16 v18, 0x0

    return v18
.end method
