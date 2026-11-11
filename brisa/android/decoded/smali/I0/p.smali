.class public final LI0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/h;


# instance fields
.field public final a:LI0/F;

.field public final b:Z

.field public final c:Z

.field public final d:LI0/w;

.field public final e:LI0/w;

.field public final f:LI0/w;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:Lb0/G;

.field public k:LI0/o;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:LJ/D;


# direct methods
.method public constructor <init>(LI0/F;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/p;->a:LI0/F;

    iput-boolean p2, p0, LI0/p;->b:Z

    iput-boolean p3, p0, LI0/p;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, LI0/p;->h:[Z

    new-instance p1, LI0/w;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, LI0/w;-><init>(I)V

    iput-object p1, p0, LI0/p;->d:LI0/w;

    new-instance p1, LI0/w;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, LI0/w;-><init>(I)V

    iput-object p1, p0, LI0/p;->e:LI0/w;

    new-instance p1, LI0/w;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, LI0/w;-><init>(I)V

    iput-object p1, p0, LI0/p;->f:LI0/w;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LI0/p;->m:J

    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, LI0/p;->o:LJ/D;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LI0/p;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LI0/p;->n:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, LI0/p;->m:J

    iget-object v1, p0, LI0/p;->h:[Z

    invoke-static {v1}, LK/t;->b([Z)V

    iget-object v1, p0, LI0/p;->d:LI0/w;

    invoke-virtual {v1}, LI0/w;->g()V

    iget-object v1, p0, LI0/p;->e:LI0/w;

    invoke-virtual {v1}, LI0/w;->g()V

    iget-object v1, p0, LI0/p;->f:LI0/w;

    invoke-virtual {v1}, LI0/w;->g()V

    iget-object v1, p0, LI0/p;->a:LI0/F;

    iget-object v1, v1, LI0/F;->d:LJ/c;

    invoke-virtual {v1, v0}, LJ/c;->b(I)V

    iget-object v1, p0, LI0/p;->k:LI0/o;

    if-eqz v1, :cond_0

    iput-boolean v0, v1, LI0/o;->k:Z

    iput-boolean v0, v1, LI0/o;->o:Z

    iget-object v1, v1, LI0/o;->n:LI0/n;

    iput-boolean v0, v1, LI0/n;->b:Z

    iput-boolean v0, v1, LI0/n;->a:Z

    :cond_0
    return-void
.end method

.method public final b(IIJJ)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, LI0/p;->a:LI0/F;

    iget-object v2, v2, LI0/F;->d:LJ/c;

    iget-boolean v3, v0, LI0/p;->l:Z

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    iget-object v3, v0, LI0/p;->k:LI0/o;

    iget-boolean v3, v3, LI0/o;->c:Z

    if-eqz v3, :cond_3

    :cond_0
    iget-object v3, v0, LI0/p;->d:LI0/w;

    invoke-virtual {v3, v1}, LI0/w;->e(I)Z

    iget-object v6, v0, LI0/p;->e:LI0/w;

    invoke-virtual {v6, v1}, LI0/w;->e(I)Z

    iget-boolean v7, v0, LI0/p;->l:Z

    const/4 v8, 0x3

    if-nez v7, :cond_1

    iget-boolean v7, v3, LI0/w;->d:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v6, LI0/w;->d:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v3, LI0/w;->f:Ljava/lang/Object;

    check-cast v9, [B

    iget v10, v3, LI0/w;->e:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v6, LI0/w;->f:Ljava/lang/Object;

    check-cast v9, [B

    iget v10, v6, LI0/w;->e:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v3, LI0/w;->f:Ljava/lang/Object;

    check-cast v9, [B

    iget v10, v3, LI0/w;->e:I

    invoke-static {v8, v9, v10}, LK/t;->o(I[BI)LK/s;

    move-result-object v8

    iget v9, v8, LK/s;->s:I

    iget-object v10, v6, LI0/w;->f:Ljava/lang/Object;

    check-cast v10, [B

    iget v11, v6, LI0/w;->e:I

    new-instance v12, LJ/v;

    invoke-direct {v12, v4, v10, v11}, LJ/v;-><init>(I[BI)V

    invoke-virtual {v12}, LJ/v;->k()I

    move-result v10

    invoke-virtual {v12}, LJ/v;->k()I

    move-result v11

    invoke-virtual {v12}, LJ/v;->o()V

    invoke-virtual {v12}, LJ/v;->i()Z

    move-result v12

    new-instance v13, LK/r;

    invoke-direct {v13, v10, v11, v12}, LK/r;-><init>(IIZ)V

    iget v11, v8, LK/s;->a:I

    iget v12, v8, LK/s;->b:I

    iget v14, v8, LK/s;->c:I

    sget-object v15, LJ/h;->a:[B

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v11, v12, v14}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "avc1.%02X%02X%02X"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, LI0/p;->j:Lb0/G;

    new-instance v14, LG/w;

    invoke-direct {v14}, LG/w;-><init>()V

    iget-object v15, v0, LI0/p;->i:Ljava/lang/String;

    iput-object v15, v14, LG/w;->a:Ljava/lang/String;

    const-string v15, "video/mp2t"

    invoke-static {v15}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, LG/w;->n:Ljava/lang/String;

    const-string v15, "video/avc"

    invoke-static {v15}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, LG/w;->o:Ljava/lang/String;

    iput-object v11, v14, LG/w;->k:Ljava/lang/String;

    iget v11, v8, LK/s;->e:I

    iput v11, v14, LG/w;->v:I

    iget v11, v8, LK/s;->f:I

    iput v11, v14, LG/w;->w:I

    iget v11, v8, LK/s;->p:I

    iget v15, v8, LK/s;->q:I

    iget v4, v8, LK/s;->r:I

    iget v5, v8, LK/s;->h:I

    add-int/lit8 v20, v5, 0x8

    iget v5, v8, LK/s;->i:I

    add-int/lit8 v21, v5, 0x8

    move/from16 v17, v15

    new-instance v15, LG/n;

    const/16 v19, 0x0

    move/from16 v18, v4

    move/from16 v16, v11

    invoke-direct/range {v15 .. v21}, LG/n;-><init>(III[BII)V

    iput-object v15, v14, LG/w;->G:LG/n;

    iget v4, v8, LK/s;->g:F

    iput v4, v14, LG/w;->D:F

    iput-object v7, v14, LG/w;->r:Ljava/util/List;

    iput v9, v14, LG/w;->q:I

    new-instance v4, LG/x;

    invoke-direct {v4, v14}, LG/x;-><init>(LG/w;)V

    invoke-interface {v12, v4}, Lb0/G;->b(LG/x;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, LI0/p;->l:Z

    invoke-virtual {v2, v9}, LJ/c;->f(I)V

    iget-object v4, v0, LI0/p;->k:LI0/o;

    iget-object v4, v4, LI0/o;->d:Landroid/util/SparseArray;

    iget v5, v8, LK/s;->d:I

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v4, v0, LI0/p;->k:LI0/o;

    iget-object v4, v4, LI0/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v10, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v3}, LI0/w;->g()V

    invoke-virtual {v6}, LI0/w;->g()V

    goto :goto_0

    :cond_1
    iget-boolean v4, v3, LI0/w;->d:Z

    if-eqz v4, :cond_2

    iget-object v4, v3, LI0/w;->f:Ljava/lang/Object;

    check-cast v4, [B

    iget v5, v3, LI0/w;->e:I

    invoke-static {v8, v4, v5}, LK/t;->o(I[BI)LK/s;

    move-result-object v4

    iget v5, v4, LK/s;->s:I

    invoke-virtual {v2, v5}, LJ/c;->f(I)V

    iget-object v5, v0, LI0/p;->k:LI0/o;

    iget-object v5, v5, LI0/o;->d:Landroid/util/SparseArray;

    iget v6, v4, LK/s;->d:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v3}, LI0/w;->g()V

    goto :goto_0

    :cond_2
    iget-boolean v3, v6, LI0/w;->d:Z

    if-eqz v3, :cond_3

    iget-object v3, v6, LI0/w;->f:Ljava/lang/Object;

    check-cast v3, [B

    iget v4, v6, LI0/w;->e:I

    new-instance v5, LJ/v;

    const/4 v7, 0x4

    invoke-direct {v5, v7, v3, v4}, LJ/v;-><init>(I[BI)V

    invoke-virtual {v5}, LJ/v;->k()I

    move-result v3

    invoke-virtual {v5}, LJ/v;->k()I

    move-result v4

    invoke-virtual {v5}, LJ/v;->o()V

    invoke-virtual {v5}, LJ/v;->i()Z

    move-result v5

    new-instance v7, LK/r;

    invoke-direct {v7, v3, v4, v5}, LK/r;-><init>(IIZ)V

    iget-object v4, v0, LI0/p;->k:LI0/o;

    iget-object v4, v4, LI0/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v6}, LI0/w;->g()V

    :cond_3
    :goto_0
    iget-object v3, v0, LI0/p;->f:LI0/w;

    invoke-virtual {v3, v1}, LI0/w;->e(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v3, LI0/w;->f:Ljava/lang/Object;

    check-cast v1, [B

    iget v4, v3, LI0/w;->e:I

    invoke-static {v1, v4}, LK/t;->s([BI)I

    move-result v1

    iget-object v3, v3, LI0/w;->f:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v0, LI0/p;->o:LJ/D;

    invoke-virtual {v4, v3, v1}, LJ/D;->L([BI)V

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, LJ/D;->N(I)V

    move-wide/from16 v5, p5

    invoke-virtual {v2, v5, v6, v4}, LJ/c;->a(JLJ/D;)V

    :cond_4
    iget-object v1, v0, LI0/p;->k:LI0/o;

    iget-boolean v2, v0, LI0/p;->l:Z

    iget v3, v1, LI0/o;->i:I

    const/16 v4, 0x9

    const/4 v5, 0x0

    if-eq v3, v4, :cond_b

    iget-boolean v3, v1, LI0/o;->c:Z

    if-eqz v3, :cond_e

    iget-object v3, v1, LI0/o;->n:LI0/n;

    iget-object v4, v1, LI0/o;->m:LI0/n;

    iget-boolean v6, v3, LI0/n;->a:Z

    if-nez v6, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-boolean v6, v4, LI0/n;->a:Z

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    iget-object v6, v3, LI0/n;->c:LK/s;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v4, LI0/n;->c:LK/s;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v7, LK/s;->m:I

    iget v8, v3, LI0/n;->f:I

    iget v9, v4, LI0/n;->f:I

    if-ne v8, v9, :cond_b

    iget v8, v3, LI0/n;->g:I

    iget v9, v4, LI0/n;->g:I

    if-ne v8, v9, :cond_b

    iget-boolean v8, v3, LI0/n;->h:Z

    iget-boolean v9, v4, LI0/n;->h:Z

    if-ne v8, v9, :cond_b

    iget-boolean v8, v3, LI0/n;->i:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v4, LI0/n;->i:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v3, LI0/n;->j:Z

    iget-boolean v9, v4, LI0/n;->j:Z

    if-ne v8, v9, :cond_b

    :cond_7
    iget v8, v3, LI0/n;->d:I

    iget v9, v4, LI0/n;->d:I

    if-eq v8, v9, :cond_8

    if-eqz v8, :cond_b

    if-eqz v9, :cond_b

    :cond_8
    iget v6, v6, LK/s;->m:I

    if-nez v6, :cond_9

    if-nez v7, :cond_9

    iget v8, v3, LI0/n;->m:I

    iget v9, v4, LI0/n;->m:I

    if-ne v8, v9, :cond_b

    iget v8, v3, LI0/n;->n:I

    iget v9, v4, LI0/n;->n:I

    if-ne v8, v9, :cond_b

    :cond_9
    const/4 v8, 0x1

    if-ne v6, v8, :cond_a

    if-ne v7, v8, :cond_a

    iget v6, v3, LI0/n;->o:I

    iget v7, v4, LI0/n;->o:I

    if-ne v6, v7, :cond_b

    iget v6, v3, LI0/n;->p:I

    iget v7, v4, LI0/n;->p:I

    if-ne v6, v7, :cond_b

    :cond_a
    iget-boolean v6, v3, LI0/n;->k:Z

    iget-boolean v7, v4, LI0/n;->k:Z

    if-ne v6, v7, :cond_b

    if-eqz v6, :cond_e

    iget v3, v3, LI0/n;->l:I

    iget v4, v4, LI0/n;->l:I

    if-eq v3, v4, :cond_e

    :cond_b
    :goto_1
    if-eqz v2, :cond_d

    iget-boolean v2, v1, LI0/o;->o:Z

    if-eqz v2, :cond_d

    iget-wide v2, v1, LI0/o;->j:J

    sub-long v6, p3, v2

    long-to-int v4, v6

    add-int v11, p1, v4

    iget-wide v7, v1, LI0/o;->q:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v7, v9

    if-eqz v4, :cond_d

    iget-wide v9, v1, LI0/o;->p:J

    cmp-long v4, v2, v9

    if-nez v4, :cond_c

    goto :goto_2

    :cond_c
    move-wide v12, v9

    iget-boolean v9, v1, LI0/o;->r:Z

    sub-long/2addr v2, v12

    long-to-int v10, v2

    iget-object v6, v1, LI0/o;->a:Lb0/G;

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lb0/G;->f(JIIILb0/F;)V

    :cond_d
    :goto_2
    iget-wide v2, v1, LI0/o;->j:J

    iput-wide v2, v1, LI0/o;->p:J

    iget-wide v2, v1, LI0/o;->l:J

    iput-wide v2, v1, LI0/o;->q:J

    iput-boolean v5, v1, LI0/o;->r:Z

    const/4 v4, 0x1

    iput-boolean v4, v1, LI0/o;->o:Z

    :cond_e
    :goto_3
    iget-boolean v2, v1, LI0/o;->b:Z

    if-eqz v2, :cond_11

    iget-object v2, v1, LI0/o;->n:LI0/n;

    iget-boolean v3, v2, LI0/n;->b:Z

    if-eqz v3, :cond_10

    iget v2, v2, LI0/n;->e:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_f

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    :cond_f
    const/4 v4, 0x1

    goto :goto_4

    :cond_10
    move v4, v5

    goto :goto_4

    :cond_11
    iget-boolean v4, v1, LI0/o;->s:Z

    :goto_4
    iget-boolean v2, v1, LI0/o;->r:Z

    iget v3, v1, LI0/o;->i:I

    const/4 v6, 0x5

    if-eq v3, v6, :cond_13

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    goto :goto_5

    :cond_12
    move v4, v5

    goto :goto_5

    :cond_13
    const/4 v4, 0x1

    :goto_5
    or-int/2addr v2, v4

    iput-boolean v2, v1, LI0/o;->r:Z

    const/16 v3, 0x18

    iput v3, v1, LI0/o;->i:I

    if-eqz v2, :cond_14

    iput-boolean v5, v0, LI0/p;->n:Z

    :cond_14
    return-void
.end method

.method public final c(I[BI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, LI0/p;->l:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, LI0/p;->k:LI0/o;

    iget-boolean v4, v4, LI0/o;->c:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, v0, LI0/p;->d:LI0/w;

    invoke-virtual {v4, v1, v2, v3}, LI0/w;->a(I[BI)V

    iget-object v4, v0, LI0/p;->e:LI0/w;

    invoke-virtual {v4, v1, v2, v3}, LI0/w;->a(I[BI)V

    :cond_1
    iget-object v4, v0, LI0/p;->f:LI0/w;

    invoke-virtual {v4, v1, v2, v3}, LI0/w;->a(I[BI)V

    iget-object v4, v0, LI0/p;->k:LI0/o;

    iget-object v5, v4, LI0/o;->e:Landroid/util/SparseArray;

    iget-object v6, v4, LI0/o;->f:LJ/v;

    iget-boolean v7, v4, LI0/o;->k:Z

    if-nez v7, :cond_2

    goto/16 :goto_6

    :cond_2
    sub-int/2addr v3, v1

    iget-object v7, v4, LI0/o;->g:[B

    array-length v8, v7

    iget v9, v4, LI0/o;->h:I

    add-int/2addr v9, v3

    const/4 v10, 0x2

    if-ge v8, v9, :cond_3

    mul-int/2addr v9, v10

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    iput-object v7, v4, LI0/o;->g:[B

    :cond_3
    iget-object v7, v4, LI0/o;->g:[B

    iget v8, v4, LI0/o;->h:I

    invoke-static {v2, v1, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v4, LI0/o;->h:I

    add-int/2addr v1, v3

    iput v1, v4, LI0/o;->h:I

    iget-object v2, v4, LI0/o;->g:[B

    iput-object v2, v6, LJ/v;->i:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v6, LJ/v;->f:I

    iput v2, v6, LJ/v;->g:I

    iput v1, v6, LJ/v;->e:I

    iput v2, v6, LJ/v;->h:I

    invoke-virtual {v6}, LJ/v;->d()V

    const/16 v1, 0x8

    invoke-virtual {v6, v1}, LJ/v;->f(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v6}, LJ/v;->o()V

    invoke-virtual {v6, v10}, LJ/v;->j(I)I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {v6, v3}, LJ/v;->p(I)V

    invoke-virtual {v6}, LJ/v;->g()Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v6}, LJ/v;->k()I

    invoke-virtual {v6}, LJ/v;->g()Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v6}, LJ/v;->k()I

    move-result v7

    iget-boolean v8, v4, LI0/o;->c:Z

    const/4 v9, 0x1

    if-nez v8, :cond_7

    iput-boolean v2, v4, LI0/o;->k:Z

    iget-object v1, v4, LI0/o;->n:LI0/n;

    iput v7, v1, LI0/n;->e:I

    iput-boolean v9, v1, LI0/n;->b:Z

    return-void

    :cond_7
    invoke-virtual {v6}, LJ/v;->g()Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v6}, LJ/v;->k()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_9

    iput-boolean v2, v4, LI0/o;->k:Z

    return-void

    :cond_9
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK/r;

    iget-object v11, v4, LI0/o;->d:Landroid/util/SparseArray;

    iget v12, v5, LK/r;->a:I

    iget-boolean v5, v5, LK/r;->b:Z

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LK/s;

    iget-boolean v12, v11, LK/s;->j:Z

    iget v13, v11, LK/s;->n:I

    iget v14, v11, LK/s;->l:I

    if-eqz v12, :cond_b

    invoke-virtual {v6, v10}, LJ/v;->f(I)Z

    move-result v12

    if-nez v12, :cond_a

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v6, v10}, LJ/v;->p(I)V

    :cond_b
    invoke-virtual {v6, v14}, LJ/v;->f(I)Z

    move-result v10

    if-nez v10, :cond_c

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v6, v14}, LJ/v;->j(I)I

    move-result v10

    iget-boolean v12, v11, LK/s;->k:Z

    if-nez v12, :cond_10

    invoke-virtual {v6, v9}, LJ/v;->f(I)Z

    move-result v12

    if-nez v12, :cond_d

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v6}, LJ/v;->i()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v6, v9}, LJ/v;->f(I)Z

    move-result v14

    if-nez v14, :cond_e

    goto/16 :goto_6

    :cond_e
    invoke-virtual {v6}, LJ/v;->i()Z

    move-result v14

    move v15, v9

    goto :goto_1

    :cond_f
    move v14, v2

    :goto_0
    move v15, v14

    goto :goto_1

    :cond_10
    move v12, v2

    move v14, v12

    goto :goto_0

    :goto_1
    iget v2, v4, LI0/o;->i:I

    if-ne v2, v3, :cond_11

    move v2, v9

    goto :goto_2

    :cond_11
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_13

    invoke-virtual {v6}, LJ/v;->g()Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {v6}, LJ/v;->k()I

    move-result v3

    goto :goto_3

    :cond_13
    const/4 v3, 0x0

    :goto_3
    iget v9, v11, LK/s;->m:I

    if-nez v9, :cond_17

    invoke-virtual {v6, v13}, LJ/v;->f(I)Z

    move-result v9

    if-nez v9, :cond_14

    goto :goto_6

    :cond_14
    invoke-virtual {v6, v13}, LJ/v;->j(I)I

    move-result v9

    if-eqz v5, :cond_16

    if-nez v12, :cond_16

    invoke-virtual {v6}, LJ/v;->g()Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_6

    :cond_15
    invoke-virtual {v6}, LJ/v;->l()I

    move-result v5

    :goto_4
    const/4 v6, 0x0

    :goto_5
    const/4 v13, 0x0

    goto :goto_8

    :cond_16
    const/4 v5, 0x0

    goto :goto_4

    :cond_17
    const/4 v13, 0x1

    if-ne v9, v13, :cond_1b

    iget-boolean v9, v11, LK/s;->o:Z

    if-nez v9, :cond_1b

    invoke-virtual {v6}, LJ/v;->g()Z

    move-result v9

    if-nez v9, :cond_18

    goto :goto_6

    :cond_18
    invoke-virtual {v6}, LJ/v;->l()I

    move-result v9

    if-eqz v5, :cond_1a

    if-nez v12, :cond_1a

    invoke-virtual {v6}, LJ/v;->g()Z

    move-result v5

    if-nez v5, :cond_19

    :goto_6
    return-void

    :cond_19
    invoke-virtual {v6}, LJ/v;->l()I

    move-result v5

    move v6, v5

    move v13, v9

    const/4 v5, 0x0

    :goto_7
    const/4 v9, 0x0

    goto :goto_8

    :cond_1a
    move v13, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_7

    :cond_1b
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    goto :goto_5

    :goto_8
    iget-object v0, v4, LI0/o;->n:LI0/n;

    iput-object v11, v0, LI0/n;->c:LK/s;

    iput v1, v0, LI0/n;->d:I

    iput v7, v0, LI0/n;->e:I

    iput v10, v0, LI0/n;->f:I

    iput v8, v0, LI0/n;->g:I

    iput-boolean v12, v0, LI0/n;->h:Z

    iput-boolean v15, v0, LI0/n;->i:Z

    iput-boolean v14, v0, LI0/n;->j:Z

    iput-boolean v2, v0, LI0/n;->k:Z

    iput v3, v0, LI0/n;->l:I

    iput v9, v0, LI0/n;->m:I

    iput v5, v0, LI0/n;->n:I

    iput v13, v0, LI0/n;->o:I

    iput v6, v0, LI0/n;->p:I

    const/4 v13, 0x1

    iput-boolean v13, v0, LI0/n;->a:Z

    iput-boolean v13, v0, LI0/n;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, v4, LI0/o;->k:Z

    return-void
.end method

.method public final d(JJI)V
    .locals 2

    iget-boolean v0, p0, LI0/p;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LI0/p;->k:LI0/o;

    iget-boolean v0, v0, LI0/o;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, LI0/p;->d:LI0/w;

    invoke-virtual {v0, p5}, LI0/w;->h(I)V

    iget-object v0, p0, LI0/p;->e:LI0/w;

    invoke-virtual {v0, p5}, LI0/w;->h(I)V

    :cond_1
    iget-object v0, p0, LI0/p;->f:LI0/w;

    invoke-virtual {v0, p5}, LI0/w;->h(I)V

    iget-object v0, p0, LI0/p;->k:LI0/o;

    iget-boolean v1, p0, LI0/p;->n:Z

    iput p5, v0, LI0/o;->i:I

    iput-wide p3, v0, LI0/o;->l:J

    iput-wide p1, v0, LI0/o;->j:J

    iput-boolean v1, v0, LI0/o;->s:Z

    iget-boolean p1, v0, LI0/o;->b:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p5, p2, :cond_3

    :cond_2
    iget-boolean p1, v0, LI0/o;->c:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    if-eq p5, p1, :cond_3

    if-eq p5, p2, :cond_3

    const/4 p1, 0x2

    if-ne p5, p1, :cond_4

    :cond_3
    iget-object p1, v0, LI0/o;->m:LI0/n;

    iget-object p3, v0, LI0/o;->n:LI0/n;

    iput-object p3, v0, LI0/o;->m:LI0/n;

    iput-object p1, v0, LI0/o;->n:LI0/n;

    const/4 p3, 0x0

    iput-boolean p3, p1, LI0/n;->b:Z

    iput-boolean p3, p1, LI0/n;->a:Z

    iput p3, v0, LI0/o;->h:I

    iput-boolean p2, v0, LI0/o;->k:Z

    :cond_4
    return-void
.end method

.method public final f(LJ/D;)V
    .locals 12

    iget-object v2, p0, LI0/p;->j:Lb0/G;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    iget v2, p1, LJ/D;->b:I

    iget v7, p1, LJ/D;->c:I

    iget-object v8, p1, LJ/D;->a:[B

    iget-wide v3, p0, LI0/p;->g:J

    invoke-virtual {p1}, LJ/D;->a()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, LI0/p;->g:J

    iget-object v3, p0, LI0/p;->j:Lb0/G;

    invoke-virtual {p1}, LJ/D;->a()I

    move-result v4

    invoke-interface {v3, v4, p1}, Lb0/G;->a(ILJ/D;)V

    :goto_0
    iget-object v1, p0, LI0/p;->h:[Z

    invoke-static {v8, v2, v7, v1}, LK/t;->c([BII[Z)I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-virtual {p0, v2, v8, v7}, LI0/p;->c(I[BI)V

    return-void

    :cond_0
    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v8, v3

    and-int/lit8 v9, v3, 0x1f

    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v8, v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x4

    :goto_1
    move v10, v1

    move v11, v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x3

    goto :goto_1

    :goto_2
    sub-int v1, v10, v2

    if-lez v1, :cond_2

    invoke-virtual {p0, v2, v8, v10}, LI0/p;->c(I[BI)V

    :cond_2
    sub-int v2, v7, v10

    iget-wide v3, p0, LI0/p;->g:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    if-gez v1, :cond_3

    neg-int v1, v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iget-wide v5, p0, LI0/p;->m:J

    move v0, v2

    move v2, v1

    move v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, LI0/p;->b(IIJJ)V

    move-wide v1, v3

    iget-wide v3, p0, LI0/p;->m:J

    move v5, v9

    invoke-virtual/range {v0 .. v5}, LI0/p;->d(JJI)V

    add-int v2, v10, v11

    goto :goto_0
.end method

.method public final g(IJ)V
    .locals 0

    iput-wide p2, p0, LI0/p;->m:J

    iget-boolean p2, p0, LI0/p;->n:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, LI0/p;->n:Z

    return-void
.end method

.method public final i()V
    .locals 7

    iget-object v1, p0, LI0/p;->j:Lb0/G;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    iget-object v1, p0, LI0/p;->a:LI0/F;

    iget-object v1, v1, LI0/F;->d:LJ/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LJ/c;->b(I)V

    iget-wide v3, p0, LI0/p;->g:J

    iget-wide v5, p0, LI0/p;->m:J

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, LI0/p;->b(IIJJ)V

    iget-wide v1, p0, LI0/p;->g:J

    const/16 v5, 0x9

    iget-wide v3, p0, LI0/p;->m:J

    invoke-virtual/range {v0 .. v5}, LI0/p;->d(JJI)V

    iget-wide v3, p0, LI0/p;->g:J

    const/4 v2, 0x0

    iget-wide v5, p0, LI0/p;->m:J

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, LI0/p;->b(IIJJ)V

    return-void
.end method

.method public final j(Lb0/p;LI0/J;)V
    .locals 4

    invoke-virtual {p2}, LI0/J;->a()V

    invoke-virtual {p2}, LI0/J;->b()V

    iget-object v0, p2, LI0/J;->e:Ljava/lang/String;

    iput-object v0, p0, LI0/p;->i:Ljava/lang/String;

    invoke-virtual {p2}, LI0/J;->b()V

    iget v0, p2, LI0/J;->d:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lb0/p;->v(II)Lb0/G;

    move-result-object v0

    iput-object v0, p0, LI0/p;->j:Lb0/G;

    new-instance v1, LI0/o;

    iget-boolean v2, p0, LI0/p;->b:Z

    iget-boolean v3, p0, LI0/p;->c:Z

    invoke-direct {v1, v0, v2, v3}, LI0/o;-><init>(Lb0/G;ZZ)V

    iput-object v1, p0, LI0/p;->k:LI0/o;

    iget-object v0, p0, LI0/p;->a:LI0/F;

    invoke-virtual {v0, p1, p2}, LI0/F;->b(Lb0/p;LI0/J;)V

    return-void
.end method
