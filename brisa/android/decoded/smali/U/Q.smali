.class public final LU/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/a0;


# instance fields
.field public final e:I

.field public final f:Z

.field public final synthetic g:LU/T;


# direct methods
.method public constructor <init>(LU/T;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/Q;->g:LU/T;

    iput p2, p0, LU/Q;->e:I

    iput-boolean p3, p0, LU/Q;->f:Z

    return-void
.end method


# virtual methods
.method public final j(LN0/O;LM/f;I)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget-object v3, v1, LU/Q;->g:LU/T;

    iget v4, v1, LU/Q;->e:I

    invoke-virtual {v3}, LU/T;->F()Z

    move-result v5

    const/4 v6, -0x3

    if-eqz v5, :cond_0

    return v6

    :cond_0
    invoke-virtual {v3, v4}, LU/T;->A(I)V

    iget-object v5, v3, LU/T;->z:[LU/Z;

    aget-object v5, v5, v4

    iget-boolean v7, v3, LU/T;->W:Z

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v8, p3, 0x2

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v10

    :goto_0
    iget-object v11, v5, LU/Z;->b:LR/f;

    monitor-enter v5

    :try_start_0
    iput-boolean v10, v2, LM/f;->j:Z

    iget v12, v5, LU/Z;->q:I

    iget v13, v5, LU/Z;->s:I

    add-int v14, v12, v13

    iget v15, v5, LU/Z;->x:I

    const/4 v10, -0x1

    if-eq v15, v10, :cond_2

    if-lt v14, v15, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    :goto_1
    iget v6, v5, LU/Z;->p:I

    if-eq v13, v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const/4 v9, 0x4

    const/16 v18, -0x5

    if-eqz v6, :cond_b

    if-ne v15, v10, :cond_4

    iget v6, v5, LU/Z;->y:I

    if-eq v6, v10, :cond_4

    add-int/2addr v12, v13

    if-lt v12, v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_b

    if-eqz v16, :cond_5

    goto :goto_9

    :cond_5
    iget-object v6, v5, LU/Z;->c:LC1/e;

    invoke-virtual {v6, v14}, LC1/e;->g(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LU/Y;

    iget-object v6, v6, LU/Y;->a:LG/x;

    if-nez v8, :cond_a

    iget-object v8, v5, LU/Z;->g:LG/x;

    if-eq v6, v8, :cond_6

    goto :goto_7

    :cond_6
    iget v0, v5, LU/Z;->s:I

    invoke-virtual {v5, v0}, LU/Z;->k(I)I

    move-result v0

    invoke-virtual {v5, v0}, LU/Z;->n(I)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    iput-boolean v6, v2, LM/f;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    :goto_4
    const/4 v0, -0x3

    :goto_5
    const/4 v6, -0x4

    goto :goto_b

    :cond_7
    :try_start_1
    iget-object v6, v5, LU/Z;->m:[I

    aget v6, v6, v0

    iput v6, v2, LK/f;->f:I

    iget v6, v5, LU/Z;->s:I

    iget v8, v5, LU/Z;->p:I

    const/16 v17, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_9

    if-nez v7, :cond_8

    iget-boolean v6, v5, LU/Z;->z:Z

    if-eqz v6, :cond_9

    :cond_8
    const/high16 v6, 0x20000000

    invoke-virtual {v2, v6}, LK/f;->b(I)V

    :cond_9
    iget-object v6, v5, LU/Z;->n:[J

    aget-wide v7, v6, v0

    iput-wide v7, v2, LM/f;->k:J

    iget-object v6, v5, LU/Z;->l:[I

    aget v6, v6, v0

    iput v6, v11, LR/f;->a:I

    iget-object v6, v5, LU/Z;->k:[J

    aget-wide v7, v6, v0

    iput-wide v7, v11, LR/f;->b:J

    iget-object v6, v5, LU/Z;->o:[Lb0/F;

    aget-object v0, v6, v0

    iput-object v0, v11, LR/f;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    :goto_6
    const/4 v0, -0x4

    goto :goto_5

    :cond_a
    :goto_7
    :try_start_2
    invoke-virtual {v5, v6, v0}, LU/Z;->o(LG/x;LN0/O;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    :goto_8
    move/from16 v0, v18

    goto :goto_5

    :cond_b
    :goto_9
    if-nez v7, :cond_f

    :try_start_3
    iget-boolean v6, v5, LU/Z;->z:Z

    if-nez v6, :cond_f

    if-eqz v16, :cond_c

    goto :goto_a

    :cond_c
    iget-object v6, v5, LU/Z;->C:LG/x;

    if-eqz v6, :cond_e

    if-nez v8, :cond_d

    iget-object v7, v5, LU/Z;->g:LG/x;

    if-eq v6, v7, :cond_e

    :cond_d
    invoke-virtual {v5, v6, v0}, LU/Z;->o(LG/x;LN0/O;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    goto :goto_8

    :cond_e
    monitor-exit v5

    goto :goto_4

    :cond_f
    :goto_a
    :try_start_4
    iput v9, v2, LK/f;->f:I

    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, v2, LM/f;->k:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    goto :goto_6

    :goto_b
    if-ne v0, v6, :cond_13

    invoke-virtual {v2, v9}, LK/f;->f(I)Z

    move-result v6

    if-nez v6, :cond_13

    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_10

    const/4 v10, 0x1

    goto :goto_c

    :cond_10
    const/4 v10, 0x0

    :goto_c
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_12

    if-eqz v10, :cond_11

    iget-object v6, v5, LU/Z;->a:LU/X;

    iget-object v7, v5, LU/Z;->b:LR/f;

    iget-object v8, v6, LU/X;->e:LP/N;

    iget-object v6, v6, LU/X;->c:LJ/D;

    invoke-static {v8, v2, v7, v6}, LU/X;->e(LP/N;LM/f;LR/f;LJ/D;)LP/N;

    goto :goto_d

    :cond_11
    iget-object v6, v5, LU/Z;->a:LU/X;

    iget-object v7, v5, LU/Z;->b:LR/f;

    iget-object v8, v6, LU/X;->e:LP/N;

    iget-object v9, v6, LU/X;->c:LJ/D;

    invoke-static {v8, v2, v7, v9}, LU/X;->e(LP/N;LM/f;LR/f;LJ/D;)LP/N;

    move-result-object v2

    iput-object v2, v6, LU/X;->e:LP/N;

    :cond_12
    :goto_d
    if-nez v10, :cond_13

    iget v2, v5, LU/Z;->s:I

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v5, LU/Z;->s:I

    :cond_13
    const/4 v2, -0x3

    if-ne v0, v2, :cond_14

    invoke-virtual {v3, v4}, LU/T;->B(I)V

    :cond_14
    return v0

    :goto_e
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final o()Z
    .locals 3

    iget-object v0, p0, LU/Q;->g:LU/T;

    invoke-virtual {v0}, LU/T;->F()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, LU/T;->z:[LU/Z;

    iget v2, p0, LU/Q;->e:I

    aget-object v1, v1, v2

    iget-boolean v0, v0, LU/T;->W:Z

    invoke-virtual {v1, v0}, LU/Z;->m(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()I
    .locals 1

    iget-boolean v0, p0, LU/Q;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()V
    .locals 4

    iget v0, p0, LU/Q;->e:I

    iget-object v1, p0, LU/Q;->g:LU/T;

    iget-object v2, v1, LU/T;->z:[LU/Z;

    aget-object v0, v2, v0

    iget-object v2, v0, LU/Z;->h:LQ/h;

    if-eqz v2, :cond_1

    invoke-interface {v2}, LQ/h;->d()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, LU/Z;->h:LQ/h;

    invoke-interface {v0}, LQ/h;->g()LQ/g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :cond_1
    :goto_0
    iget-object v0, v1, LU/T;->q:LX/m;

    iget-object v2, v1, LU/T;->h:Lcom/brisa/local/j;

    iget v1, v1, LU/T;->J:I

    invoke-virtual {v2, v1}, Lcom/brisa/local/j;->I(I)I

    move-result v1

    iget-object v2, v0, LX/m;->c:Ljava/io/IOException;

    if-nez v2, :cond_5

    iget-object v0, v0, LX/m;->b:LX/i;

    if-eqz v0, :cond_4

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    iget v1, v0, LX/i;->e:I

    :cond_2
    iget-object v2, v0, LX/i;->i:Ljava/io/IOException;

    if-eqz v2, :cond_4

    iget v0, v0, LX/i;->j:I

    if-gt v0, v1, :cond_3

    goto :goto_1

    :cond_3
    throw v2

    :cond_4
    :goto_1
    return-void

    :cond_5
    throw v2
.end method

.method public final y(J)I
    .locals 13

    iget-object v0, p0, LU/Q;->g:LU/T;

    iget v1, p0, LU/Q;->e:I

    invoke-virtual {v0}, LU/T;->F()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0, v1}, LU/T;->A(I)V

    iget-object v2, v0, LU/T;->z:[LU/Z;

    aget-object v4, v2, v1

    iget-boolean v2, v0, LU/T;->W:Z

    monitor-enter v4

    :try_start_0
    iget v5, v4, LU/Z;->s:I

    invoke-virtual {v4, v5}, LU/Z;->k(I)I

    move-result v5

    iget v6, v4, LU/Z;->s:I

    iget v7, v4, LU/Z;->p:I

    const/4 v10, 0x1

    if-eq v6, v7, :cond_1

    move v8, v10

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_0
    if-eqz v8, :cond_5

    iget-object v8, v4, LU/Z;->n:[J

    aget-wide v11, v8, v5

    cmp-long v8, p1, v11

    if-gez v8, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v8, v4, LU/Z;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v8, p1, v8

    if-lez v8, :cond_3

    if-eqz v2, :cond_3

    sub-int/2addr v7, v6

    monitor-exit v4

    goto :goto_3

    :cond_3
    sub-int v8, v7, v6

    const/4 v9, 0x1

    move-wide v6, p1

    :try_start_1
    invoke-virtual/range {v4 .. v9}, LU/Z;->j(IJIZ)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, -0x1

    if-ne v7, p1, :cond_4

    monitor-exit v4

    :goto_1
    move v7, v3

    goto :goto_3

    :cond_4
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :cond_5
    :goto_2
    monitor-exit v4

    goto :goto_1

    :goto_3
    monitor-enter v4

    if-ltz v7, :cond_6

    :try_start_2
    iget p1, v4, LU/Z;->s:I

    add-int/2addr p1, v7

    iget p2, v4, LU/Z;->p:I

    if-gt p1, p2, :cond_6

    move v3, v10

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_6
    :goto_4
    invoke-static {v3}, LF1/i;->g(Z)V

    iget p1, v4, LU/Z;->s:I

    add-int/2addr p1, v7

    iput p1, v4, LU/Z;->s:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    if-nez v7, :cond_7

    invoke-virtual {v0, v1}, LU/T;->B(I)V

    :cond_7
    return v7

    :goto_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :goto_6
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
