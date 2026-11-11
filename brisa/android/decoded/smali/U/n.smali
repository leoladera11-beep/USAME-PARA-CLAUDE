.class public final LU/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/z;


# instance fields
.field public final a:LN0/j;

.field public final b:LN0/O;

.field public c:Ld1/m;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:F

.field public final h:F

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/brisa/local/VideoPlaybackService;Lb0/k;)V
    .locals 2

    new-instance v0, LN0/O;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, LN0/O;-><init>(ILandroid/content/Context;)V

    new-instance p1, Ld1/m;

    const/16 v1, 0xb

    invoke-direct {p1, v1}, Ld1/m;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LU/n;->b:LN0/O;

    iput-object p1, p0, LU/n;->c:Ld1/m;

    new-instance v1, LN0/j;

    invoke-direct {v1, p2, p1}, LN0/j;-><init>(Lb0/k;Ld1/m;)V

    iput-object v1, p0, LU/n;->a:LN0/j;

    iget-object p1, v1, LN0/j;->f:Ljava/lang/Object;

    check-cast p1, LN0/O;

    if-eq v0, p1, :cond_0

    iput-object v0, v1, LN0/j;->f:Ljava/lang/Object;

    iget-object p1, v1, LN0/j;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, v1, LN0/j;->e:Ljava/io/Serializable;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LU/n;->d:J

    iput-wide p1, p0, LU/n;->e:J

    iput-wide p1, p0, LU/n;->f:J

    const p1, -0x800001

    iput p1, p0, LU/n;->g:F

    iput p1, p0, LU/n;->h:F

    const/4 p1, 0x1

    iput-boolean p1, p0, LU/n;->i:Z

    return-void
.end method

.method public static e(Ljava/lang/Class;LL/g;)LU/z;
    .locals 1

    :try_start_0
    const-class v0, LL/g;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU/z;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iput-boolean p1, p0, LU/n;->i:Z

    iget-object v0, p0, LU/n;->a:LN0/j;

    iput-boolean p1, v0, LN0/j;->a:Z

    iget-object v1, v0, LN0/j;->c:Ljava/lang/Object;

    check-cast v1, Lb0/k;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, v1, Lb0/k;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, v0, LN0/j;->e:Ljava/io/Serializable;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/z;

    invoke-interface {v1, p1}, LU/z;->a(Z)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ld1/m;)V
    .locals 2

    iput-object p1, p0, LU/n;->c:Ld1/m;

    iget-object v0, p0, LU/n;->a:LN0/j;

    iput-object p1, v0, LN0/j;->g:Ljava/lang/Object;

    iget-object v1, v0, LN0/j;->c:Ljava/lang/Object;

    check-cast v1, Lb0/k;

    monitor-enter v1

    :try_start_0
    iput-object p1, v1, Lb0/k;->g:Ld1/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, v0, LN0/j;->e:Ljava/io/Serializable;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/z;

    invoke-interface {v1, p1}, LU/z;->b(Ld1/m;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(LG/P;)LU/a;
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, LG/P;->b:LG/K;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, LG/P;->b:LG/K;

    iget-object v2, v2, LG/K;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v4, "ssai"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    throw v3

    :cond_1
    :goto_0
    iget-object v2, v0, LG/P;->b:LG/K;

    iget-object v2, v2, LG/K;->b:Ljava/lang/String;

    const-string v4, "application/x-image-uri"

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v0, LG/P;->b:LG/K;

    iget-object v4, v2, LG/K;->a:Landroid/net/Uri;

    iget-object v2, v2, LG/K;->b:Ljava/lang/String;

    invoke-static {v4, v2}, LJ/W;->A(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    iget-object v4, v0, LG/P;->b:LG/K;

    iget-wide v4, v4, LG/K;->h:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v1, LU/n;->a:LN0/j;

    iget-object v4, v4, LN0/j;->c:Ljava/lang/Object;

    check-cast v4, Lb0/k;

    monitor-enter v4

    :try_start_0
    iput v5, v4, Lb0/k;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v4

    iget-object v4, v1, LU/n;->a:LN0/j;

    iget-object v4, v4, LN0/j;->c:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Lb0/k;

    monitor-enter v8

    :try_start_1
    iput v5, v8, Lb0/k;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    :goto_1
    :try_start_4
    iget-object v4, v1, LU/n;->a:LN0/j;

    invoke-virtual {v4, v2}, LN0/j;->a(I)LU/z;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    iget-object v4, v0, LG/P;->c:LG/J;

    invoke-virtual {v4}, LG/J;->a()LG/I;

    move-result-object v4

    iget-object v8, v0, LG/P;->c:LG/J;

    iget-wide v9, v8, LG/J;->a:J

    cmp-long v9, v9, v6

    if-nez v9, :cond_3

    iget-wide v9, v1, LU/n;->d:J

    iput-wide v9, v4, LG/I;->a:J

    :cond_3
    iget v9, v8, LG/J;->d:F

    const v10, -0x800001

    cmpl-float v9, v9, v10

    if-nez v9, :cond_4

    iget v9, v1, LU/n;->g:F

    iput v9, v4, LG/I;->d:F

    :cond_4
    iget v9, v8, LG/J;->e:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_5

    iget v9, v1, LU/n;->h:F

    iput v9, v4, LG/I;->e:F

    :cond_5
    iget-wide v9, v8, LG/J;->b:J

    cmp-long v9, v9, v6

    if-nez v9, :cond_6

    iget-wide v9, v1, LU/n;->e:J

    iput-wide v9, v4, LG/I;->b:J

    :cond_6
    iget-wide v8, v8, LG/J;->c:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_7

    iget-wide v8, v1, LU/n;->f:J

    iput-wide v8, v4, LG/I;->c:J

    :cond_7
    new-instance v8, LG/J;

    invoke-direct {v8, v4}, LG/J;-><init>(LG/I;)V

    iget-object v4, v0, LG/P;->c:LG/J;

    invoke-virtual {v8, v4}, LG/J;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    new-instance v4, LG/G;

    invoke-direct {v4}, LG/G;-><init>()V

    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v11, Lu1/C0;->i:Lu1/C0;

    sget-object v12, LG/L;->d:LG/L;

    iget-object v12, v0, LG/P;->e:LG/F;

    invoke-virtual {v12}, LG/E;->a()LG/D;

    move-result-object v12

    iget-object v13, v0, LG/P;->a:Ljava/lang/String;

    iget-object v14, v0, LG/P;->d:LG/T;

    iget-object v15, v0, LG/P;->c:LG/J;

    invoke-virtual {v15}, LG/J;->a()LG/I;

    iget-object v15, v0, LG/P;->f:LG/L;

    iget-object v0, v0, LG/P;->b:LG/K;

    if-eqz v0, :cond_9

    iget-object v4, v0, LG/K;->f:Ljava/lang/String;

    iget-object v6, v0, LG/K;->b:Ljava/lang/String;

    iget-object v7, v0, LG/K;->a:Landroid/net/Uri;

    iget-object v10, v0, LG/K;->e:Ljava/util/List;

    iget-object v11, v0, LG/K;->g:Lu1/P;

    move-object/from16 v23, v3

    iget-object v3, v0, LG/K;->c:LG/H;

    if-eqz v3, :cond_8

    const/16 v24, 0x0

    new-instance v9, LG/G;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move/from16 v25, v5

    iget-object v5, v3, LG/H;->a:Ljava/util/UUID;

    iput-object v5, v9, LG/G;->a:Ljava/util/UUID;

    iget-object v5, v3, LG/H;->b:Landroid/net/Uri;

    iput-object v5, v9, LG/G;->b:Landroid/net/Uri;

    iget-object v5, v3, LG/H;->c:Lu1/T;

    iput-object v5, v9, LG/G;->c:Lu1/T;

    iget-boolean v5, v3, LG/H;->d:Z

    iput-boolean v5, v9, LG/G;->d:Z

    iget-boolean v5, v3, LG/H;->e:Z

    iput-boolean v5, v9, LG/G;->e:Z

    iget-boolean v5, v3, LG/H;->f:Z

    iput-boolean v5, v9, LG/G;->f:Z

    iget-object v5, v3, LG/H;->g:Lu1/P;

    iput-object v5, v9, LG/G;->g:Lu1/P;

    iget-object v3, v3, LG/H;->h:[B

    iput-object v3, v9, LG/G;->h:[B

    move-object v3, v9

    goto :goto_2

    :cond_8
    move/from16 v25, v5

    const/16 v24, 0x0

    new-instance v3, LG/G;

    invoke-direct {v3}, LG/G;-><init>()V

    :goto_2
    iget-object v5, v0, LG/K;->d:LG/C;

    move-object/from16 p1, v3

    move-object v9, v4

    iget-wide v3, v0, LG/K;->h:J

    move-wide/from16 v34, v3

    move-object/from16 v30, v5

    move-object/from16 v28, v6

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v4, p1

    :goto_3
    move-object/from16 v31, v10

    move-object/from16 v33, v11

    goto :goto_4

    :cond_9
    move-object/from16 v23, v3

    move/from16 v25, v5

    const/16 v24, 0x0

    move-wide/from16 v34, v6

    move-object/from16 v27, v23

    move-object/from16 v28, v27

    move-object/from16 v30, v28

    move-object/from16 v32, v30

    goto :goto_3

    :goto_4
    invoke-virtual {v8}, LG/J;->a()LG/I;

    move-result-object v0

    iget-object v3, v4, LG/G;->b:Landroid/net/Uri;

    if-eqz v3, :cond_b

    iget-object v3, v4, LG/G;->a:Ljava/util/UUID;

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    move/from16 v3, v24

    goto :goto_6

    :cond_b
    :goto_5
    move/from16 v3, v25

    :goto_6
    invoke-static {v3}, LF1/i;->o(Z)V

    if-eqz v27, :cond_d

    new-instance v26, LG/K;

    iget-object v3, v4, LG/G;->a:Ljava/util/UUID;

    if-eqz v3, :cond_c

    new-instance v3, LG/H;

    invoke-direct {v3, v4}, LG/H;-><init>(LG/G;)V

    move-object/from16 v29, v3

    goto :goto_7

    :cond_c
    move-object/from16 v29, v23

    :goto_7
    invoke-direct/range {v26 .. v35}, LG/K;-><init>(Landroid/net/Uri;Ljava/lang/String;LG/H;LG/C;Ljava/util/List;Ljava/lang/String;Lu1/P;J)V

    move-object/from16 v19, v26

    goto :goto_8

    :cond_d
    move-object/from16 v19, v23

    :goto_8
    new-instance v16, LG/P;

    if-eqz v13, :cond_e

    :goto_9
    move-object/from16 v17, v13

    goto :goto_a

    :cond_e
    const-string v13, ""

    goto :goto_9

    :goto_a
    new-instance v3, LG/F;

    invoke-direct {v3, v12}, LG/E;-><init>(LG/D;)V

    new-instance v4, LG/J;

    invoke-direct {v4, v0}, LG/J;-><init>(LG/I;)V

    if-eqz v14, :cond_f

    :goto_b
    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    goto :goto_c

    :cond_f
    sget-object v14, LG/T;->M:LG/T;

    goto :goto_b

    :goto_c
    invoke-direct/range {v16 .. v22}, LG/P;-><init>(Ljava/lang/String;LG/F;LG/K;LG/J;LG/T;LG/L;)V

    move-object/from16 v0, v16

    goto :goto_d

    :cond_10
    move-object/from16 v23, v3

    move/from16 v25, v5

    const/16 v24, 0x0

    :goto_d
    invoke-interface {v2, v0}, LU/z;->c(LG/P;)LU/a;

    move-result-object v2

    iget-object v3, v0, LG/P;->b:LG/K;

    iget-object v3, v3, LG/K;->g:Lu1/P;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [LU/a;

    aput-object v2, v4, v24

    move/from16 v2, v24

    :goto_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_18

    iget-boolean v5, v1, LU/n;->i:Z

    if-eqz v5, :cond_17

    new-instance v5, LG/w;

    invoke-direct {v5}, LG/w;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/O;

    iget-object v6, v6, LG/O;->b:Ljava/lang/String;

    invoke-static {v6}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, LG/w;->o:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/O;

    iget-object v6, v6, LG/O;->c:Ljava/lang/String;

    iput-object v6, v5, LG/w;->d:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/O;

    iget v6, v6, LG/O;->d:I

    iput v6, v5, LG/w;->e:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/O;

    iget v6, v6, LG/O;->e:I

    iput v6, v5, LG/w;->f:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/O;

    iget-object v6, v6, LG/O;->f:Ljava/lang/String;

    iput-object v6, v5, LG/w;->b:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/O;

    iget-object v6, v6, LG/O;->g:Ljava/lang/String;

    iput-object v6, v5, LG/w;->a:Ljava/lang/String;

    new-instance v6, LG/x;

    invoke-direct {v6, v5}, LG/x;-><init>(LG/w;)V

    new-instance v5, LM0/K;

    const/16 v7, 0x13

    invoke-direct {v5, v1, v6, v7}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v7, LU/V;

    iget-object v8, v1, LU/n;->b:LN0/O;

    invoke-direct {v7, v8, v5}, LU/V;-><init>(LL/g;Lb0/q;)V

    iget-object v5, v1, LU/n;->c:Ld1/m;

    invoke-virtual {v5, v6}, Ld1/m;->a(LG/x;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v6}, LG/x;->a()LG/w;

    move-result-object v5

    const-string v8, "application/x-media3-cues"

    invoke-static {v8}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, LG/w;->o:Ljava/lang/String;

    iget-object v8, v6, LG/x;->p:Ljava/lang/String;

    iput-object v8, v5, LG/w;->k:Ljava/lang/String;

    iget-object v8, v1, LU/n;->c:Ld1/m;

    invoke-virtual {v8, v6}, Ld1/m;->f(LG/x;)I

    move-result v6

    iput v6, v5, LG/w;->P:I

    new-instance v6, LG/x;

    invoke-direct {v6, v5}, LG/x;-><init>(LG/w;)V

    :cond_11
    iput-object v6, v7, LU/V;->f:LG/x;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/O;

    iget-object v6, v6, LG/O;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, LG/D;

    invoke-direct {v8}, LG/D;-><init>()V

    new-instance v9, LG/G;

    invoke-direct {v9}, LG/G;-><init>()V

    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v17, Lu1/C0;->i:Lu1/C0;

    new-instance v10, LG/I;

    invoke-direct {v10}, LG/I;-><init>()V

    sget-object v32, LG/L;->d:LG/L;

    if-nez v6, :cond_12

    move-object/from16 v11, v23

    goto :goto_f

    :cond_12
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v11, v6

    :goto_f
    iget-object v6, v9, LG/G;->b:Landroid/net/Uri;

    if-eqz v6, :cond_14

    iget-object v6, v9, LG/G;->a:Ljava/util/UUID;

    if-eqz v6, :cond_13

    goto :goto_10

    :cond_13
    move/from16 v6, v24

    goto :goto_11

    :cond_14
    :goto_10
    move/from16 v6, v25

    :goto_11
    invoke-static {v6}, LF1/i;->o(Z)V

    move-object v6, v10

    if-eqz v11, :cond_16

    new-instance v10, LG/K;

    iget-object v12, v9, LG/G;->a:Ljava/util/UUID;

    if-eqz v12, :cond_15

    new-instance v12, LG/H;

    invoke-direct {v12, v9}, LG/H;-><init>(LG/G;)V

    move-object v13, v12

    goto :goto_12

    :cond_15
    move-object/from16 v13, v23

    :goto_12
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v10 .. v19}, LG/K;-><init>(Landroid/net/Uri;Ljava/lang/String;LG/H;LG/C;Ljava/util/List;Ljava/lang/String;Lu1/P;J)V

    move-object/from16 v29, v10

    goto :goto_13

    :cond_16
    move-object/from16 v29, v23

    :goto_13
    new-instance v26, LG/P;

    const-string v27, ""

    new-instance v9, LG/F;

    invoke-direct {v9, v8}, LG/E;-><init>(LG/D;)V

    new-instance v8, LG/J;

    invoke-direct {v8, v6}, LG/J;-><init>(LG/I;)V

    sget-object v31, LG/T;->M:LG/T;

    move-object/from16 v30, v8

    move-object/from16 v28, v9

    invoke-direct/range {v26 .. v32}, LG/P;-><init>(Ljava/lang/String;LG/F;LG/K;LG/J;LG/T;LG/L;)V

    move-object/from16 v6, v26

    invoke-virtual {v7, v6}, LU/V;->e(LG/P;)LU/W;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_14

    :cond_17
    iget-object v5, v1, LU/n;->b:LN0/O;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/brisa/local/j;

    const/16 v7, 0x18

    invoke-direct {v6, v7}, Lcom/brisa/local/j;-><init>(I)V

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LG/O;

    new-instance v9, LU/h0;

    invoke-direct {v9, v8, v5, v6}, LU/h0;-><init>(LG/O;LN0/O;Lcom/brisa/local/j;)V

    aput-object v9, v4, v7

    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    :cond_18
    new-instance v2, LU/K;

    invoke-direct {v2, v4}, LU/K;-><init>([LU/a;)V

    :cond_19
    iget-object v3, v0, LG/P;->e:LG/F;

    iget-wide v4, v3, LG/E;->b:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1a

    iget-wide v4, v3, LG/E;->d:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-nez v4, :cond_1a

    iget-boolean v3, v3, LG/E;->f:Z

    if-nez v3, :cond_1a

    goto :goto_15

    :cond_1a
    new-instance v3, LM0/l;

    invoke-direct {v3, v2}, LM0/l;-><init>(LU/a;)V

    iget-object v2, v0, LG/P;->e:LG/F;

    iget-boolean v4, v3, LM0/l;->e:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, LF1/i;->o(Z)V

    invoke-virtual {v2}, LG/E;->a()LG/D;

    move-result-object v2

    iput-object v2, v3, LM0/l;->g:Ljava/lang/Object;

    iget-boolean v2, v3, LM0/l;->e:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, LF1/i;->o(Z)V

    move/from16 v2, v25

    iput-boolean v2, v3, LM0/l;->e:Z

    new-instance v2, LU/f;

    invoke-direct {v2, v3}, LU/f;-><init>(LM0/l;)V

    :goto_15
    iget-object v3, v0, LG/P;->b:LG/K;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LG/P;->b:LG/K;

    iget-object v0, v0, LG/K;->d:LG/C;

    if-nez v0, :cond_1b

    return-object v2

    :cond_1b
    const-string v0, "DMediaSourceFactory"

    const-string v3, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider."

    invoke-static {v0, v3}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1c
    move-object/from16 v23, v3

    iget-object v0, v0, LG/P;->b:LG/K;

    iget-wide v2, v0, LG/K;->h:J

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    throw v23
.end method

.method public final d(I)V
    .locals 1

    iget-object v0, p0, LU/n;->a:LN0/j;

    iput p1, v0, LN0/j;->b:I

    iget-object v0, v0, LN0/j;->c:Ljava/lang/Object;

    check-cast v0, Lb0/k;

    monitor-enter v0

    :try_start_0
    iput p1, v0, Lb0/k;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
