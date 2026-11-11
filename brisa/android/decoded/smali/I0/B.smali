.class public final LI0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final a:LJ/S;

.field public final b:Landroid/util/SparseArray;

.field public final c:LJ/D;

.field public final d:LI0/z;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:LI0/y;

.field public j:Lb0/p;

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, LJ/S;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, LJ/S;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LI0/B;->a:LJ/S;

    new-instance v0, LJ/D;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, LJ/D;-><init>(I)V

    iput-object v0, p0, LI0/B;->c:LJ/D;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LI0/B;->b:Landroid/util/SparseArray;

    new-instance v0, LI0/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LI0/z;-><init>(I)V

    iput-object v0, p0, LI0/B;->d:LI0/z;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 0

    iput-object p1, p0, LI0/B;->j:Lb0/p;

    return-void
.end method

.method public final c(JJ)V
    .locals 7

    iget-object p1, p0, LI0/B;->b:Landroid/util/SparseArray;

    iget-object p2, p0, LI0/B;->a:LJ/S;

    monitor-enter p2

    :try_start_0
    iget-wide v0, p2, LJ/S;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p2}, LJ/S;->d()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    cmp-long v0, v5, p3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p2, p3, p4}, LJ/S;->e(J)V

    :cond_3
    iget-object p2, p0, LI0/B;->i:LI0/y;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p3, p4}, LI0/y;->d(J)V

    :cond_4
    move p2, v4

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_5

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LI0/A;

    iput-boolean v4, p3, LI0/A;->f:Z

    iget-object p3, p3, LI0/A;->a:LI0/h;

    invoke-interface {p3}, LI0/h;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Lb0/o;)Z
    .locals 9

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1, v0}, Lb0/o;->l(I[BI)V

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    invoke-interface {p1, v0}, Lb0/o;->z(I)V

    invoke-interface {p1, v2, v1, v5}, Lb0/o;->l(I[BI)V

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, LI0/B;->j:Lb0/p;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lb0/o;->getLength()J

    move-result-wide v13

    const-wide/16 v18, -0x1

    cmp-long v3, v13, v18

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v7, 0x1ba

    iget-object v8, v0, LI0/B;->d:LI0/z;

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_a

    iget-boolean v12, v8, LI0/z;->d:Z

    if-nez v12, :cond_a

    iget-object v3, v8, LI0/z;->b:LJ/S;

    iget-object v12, v8, LI0/z;->c:LJ/D;

    iget-boolean v13, v8, LI0/z;->f:Z

    const-wide/16 v14, 0x4e20

    if-nez v13, :cond_3

    invoke-interface {v1}, Lb0/o;->getLength()J

    move-result-wide v3

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v13, v13

    int-to-long v14, v13

    sub-long/2addr v3, v14

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v14

    cmp-long v14, v14, v3

    if-eqz v14, :cond_0

    iput-wide v3, v2, Lb0/r;->a:J

    return v10

    :cond_0
    invoke-virtual {v12, v13}, LJ/D;->K(I)V

    invoke-interface {v1}, Lb0/o;->o()V

    iget-object v2, v12, LJ/D;->a:[B

    invoke-interface {v1, v11, v2, v13}, Lb0/o;->l(I[BI)V

    iget v1, v12, LJ/D;->b:I

    iget v2, v12, LJ/D;->c:I

    sub-int/2addr v2, v9

    :goto_0
    if-lt v2, v1, :cond_2

    iget-object v3, v12, LJ/D;->a:[B

    invoke-static {v3, v2}, LI0/z;->b([BI)I

    move-result v3

    if-ne v3, v7, :cond_1

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {v12, v3}, LJ/D;->N(I)V

    invoke-static {v12}, LI0/z;->c(LJ/D;)J

    move-result-wide v3

    cmp-long v9, v3, v5

    if-eqz v9, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-wide v5, v8, LI0/z;->h:J

    iput-boolean v10, v8, LI0/z;->f:Z

    return v11

    :cond_3
    move-wide/from16 v20, v5

    const/16 v16, 0x3

    iget-wide v4, v8, LI0/z;->h:J

    cmp-long v4, v4, v20

    if-nez v4, :cond_4

    invoke-virtual {v8, v1}, LI0/z;->a(Lb0/o;)V

    return v11

    :cond_4
    iget-boolean v4, v8, LI0/z;->e:Z

    if-nez v4, :cond_8

    invoke-interface {v1}, Lb0/o;->getLength()J

    move-result-wide v3

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v4

    int-to-long v13, v11

    cmp-long v4, v4, v13

    if-eqz v4, :cond_5

    iput-wide v13, v2, Lb0/r;->a:J

    return v10

    :cond_5
    invoke-virtual {v12, v3}, LJ/D;->K(I)V

    invoke-interface {v1}, Lb0/o;->o()V

    iget-object v2, v12, LJ/D;->a:[B

    invoke-interface {v1, v11, v2, v3}, Lb0/o;->l(I[BI)V

    iget v1, v12, LJ/D;->b:I

    iget v2, v12, LJ/D;->c:I

    :goto_2
    add-int/lit8 v3, v2, -0x3

    if-ge v1, v3, :cond_7

    iget-object v3, v12, LJ/D;->a:[B

    invoke-static {v3, v1}, LI0/z;->b([BI)I

    move-result v3

    if-ne v3, v7, :cond_6

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v12, v3}, LJ/D;->N(I)V

    invoke-static {v12}, LI0/z;->c(LJ/D;)J

    move-result-wide v3

    cmp-long v5, v3, v20

    if-eqz v5, :cond_6

    move-wide v5, v3

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move-wide/from16 v5, v20

    :goto_3
    iput-wide v5, v8, LI0/z;->g:J

    iput-boolean v10, v8, LI0/z;->e:Z

    return v11

    :cond_8
    iget-wide v4, v8, LI0/z;->g:J

    cmp-long v2, v4, v20

    if-nez v2, :cond_9

    invoke-virtual {v8, v1}, LI0/z;->a(Lb0/o;)V

    return v11

    :cond_9
    invoke-virtual {v3, v4, v5}, LJ/S;->b(J)J

    move-result-wide v4

    iget-wide v6, v8, LI0/z;->h:J

    invoke-virtual {v3, v6, v7}, LJ/S;->c(J)J

    move-result-wide v2

    sub-long/2addr v2, v4

    iput-wide v2, v8, LI0/z;->i:J

    invoke-virtual {v8, v1}, LI0/z;->a(Lb0/o;)V

    return v11

    :cond_a
    move-wide/from16 v20, v5

    const/16 v16, 0x3

    iget-boolean v4, v0, LI0/B;->k:Z

    if-nez v4, :cond_c

    iput-boolean v10, v0, LI0/B;->k:Z

    iget-wide v4, v8, LI0/z;->i:J

    cmp-long v6, v4, v20

    if-eqz v6, :cond_b

    move-wide v5, v4

    new-instance v4, LI0/y;

    iget-object v8, v8, LI0/z;->b:LJ/S;

    move-wide/from16 v20, v5

    new-instance v5, Lcom/brisa/local/j;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Lcom/brisa/local/j;-><init>(I)V

    new-instance v6, LN0/O;

    invoke-direct {v6, v8}, LN0/O;-><init>(LJ/S;)V

    const-wide/16 v22, 0x1

    add-long v22, v20, v22

    move/from16 v8, v16

    const-wide/16 v15, 0xbc

    const/16 v17, 0x3e8

    move/from16 v24, v11

    const-wide/16 v11, 0x0

    move/from16 v25, v3

    move v3, v9

    move-wide/from16 v7, v20

    move-wide/from16 v9, v22

    invoke-direct/range {v4 .. v17}, LI0/y;-><init>(Lb0/f;Lb0/h;JJJJJI)V

    iput-object v4, v0, LI0/B;->i:LI0/y;

    iget-object v5, v0, LI0/B;->j:Lb0/p;

    iget-object v4, v4, LI0/y;->a:Lb0/d;

    invoke-interface {v5, v4}, Lb0/p;->c(Lb0/z;)V

    goto :goto_4

    :cond_b
    move/from16 v25, v3

    move-wide v5, v4

    move v3, v9

    iget-object v4, v0, LI0/B;->j:Lb0/p;

    new-instance v7, Lb0/s;

    invoke-direct {v7, v5, v6}, Lb0/s;-><init>(J)V

    invoke-interface {v4, v7}, Lb0/p;->c(Lb0/z;)V

    goto :goto_4

    :cond_c
    move/from16 v25, v3

    move v3, v9

    :goto_4
    iget-object v4, v0, LI0/B;->i:LI0/y;

    if-eqz v4, :cond_d

    iget-object v5, v4, LI0/y;->c:Lb0/e;

    if-eqz v5, :cond_d

    invoke-virtual {v4, v1, v2}, LI0/y;->b(Lb0/o;Lb0/r;)I

    move-result v1

    return v1

    :cond_d
    invoke-interface {v1}, Lb0/o;->o()V

    if-eqz v25, :cond_e

    invoke-interface {v1}, Lb0/o;->x()J

    move-result-wide v4

    sub-long/2addr v13, v4

    goto :goto_5

    :cond_e
    move-wide/from16 v13, v18

    :goto_5
    cmp-long v2, v13, v18

    const/4 v4, -0x1

    if-eqz v2, :cond_f

    const-wide/16 v5, 0x4

    cmp-long v2, v13, v5

    if-gez v2, :cond_f

    invoke-virtual {v0}, LI0/B;->g()V

    return v4

    :cond_f
    iget-object v2, v0, LI0/B;->c:LJ/D;

    iget-object v5, v2, LJ/D;->a:[B

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v1, v5, v7, v3, v6}, Lb0/o;->w([BIIZ)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v0}, LI0/B;->g()V

    return v4

    :cond_10
    invoke-virtual {v2, v7}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v5

    const/16 v8, 0x1b9

    if-ne v5, v8, :cond_11

    invoke-virtual {v0}, LI0/B;->g()V

    return v4

    :cond_11
    const/16 v4, 0x1ba

    if-ne v5, v4, :cond_12

    iget-object v3, v2, LJ/D;->a:[B

    const/16 v4, 0xa

    invoke-interface {v1, v7, v3, v4}, Lb0/o;->l(I[BI)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->A()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0xe

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    return v7

    :cond_12
    const/16 v4, 0x1bb

    const/4 v8, 0x2

    const/4 v9, 0x6

    if-ne v5, v4, :cond_13

    iget-object v3, v2, LJ/D;->a:[B

    invoke-interface {v1, v7, v3, v8}, Lb0/o;->l(I[BI)V

    invoke-virtual {v2, v7}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->H()I

    move-result v2

    add-int/2addr v2, v9

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    return v7

    :cond_13
    and-int/lit16 v4, v5, -0x100

    const/16 v10, 0x8

    shr-int/2addr v4, v10

    if-eq v4, v6, :cond_14

    invoke-interface {v1, v6}, Lb0/o;->p(I)V

    return v7

    :cond_14
    and-int/lit16 v4, v5, 0xff

    iget-object v11, v0, LI0/B;->b:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LI0/A;

    iget-boolean v13, v0, LI0/B;->e:Z

    if-nez v13, :cond_1a

    if-nez v12, :cond_18

    const/16 v13, 0xbd

    const-string v14, "video/mp2p"

    if-ne v4, v13, :cond_15

    new-instance v5, LI0/b;

    invoke-direct {v5, v14}, LI0/b;-><init>(Ljava/lang/String;)V

    iput-boolean v6, v0, LI0/B;->f:Z

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, LI0/B;->h:J

    goto :goto_6

    :cond_15
    and-int/lit16 v13, v5, 0xe0

    const/16 v15, 0xc0

    const/4 v3, 0x0

    if-ne v13, v15, :cond_16

    new-instance v5, LI0/t;

    invoke-direct {v5, v3, v14, v7}, LI0/t;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-boolean v6, v0, LI0/B;->f:Z

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, LI0/B;->h:J

    goto :goto_6

    :cond_16
    and-int/lit16 v5, v5, 0xf0

    const/16 v13, 0xe0

    if-ne v5, v13, :cond_17

    new-instance v5, LI0/j;

    invoke-direct {v5, v3, v14}, LI0/j;-><init>(LI0/F;Ljava/lang/String;)V

    iput-boolean v6, v0, LI0/B;->g:Z

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, LI0/B;->h:J

    goto :goto_6

    :cond_17
    move-object v5, v3

    :goto_6
    if-eqz v5, :cond_18

    new-instance v3, LI0/J;

    const/16 v12, 0x100

    invoke-direct {v3, v4, v12}, LI0/J;-><init>(II)V

    iget-object v12, v0, LI0/B;->j:Lb0/p;

    invoke-interface {v5, v12, v3}, LI0/h;->j(Lb0/p;LI0/J;)V

    new-instance v12, LI0/A;

    iget-object v3, v0, LI0/B;->a:LJ/S;

    invoke-direct {v12, v5, v3}, LI0/A;-><init>(LI0/h;LJ/S;)V

    invoke-virtual {v11, v4, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    iget-boolean v3, v0, LI0/B;->f:Z

    if-eqz v3, :cond_19

    iget-boolean v3, v0, LI0/B;->g:Z

    if-eqz v3, :cond_19

    iget-wide v3, v0, LI0/B;->h:J

    const-wide/16 v13, 0x2000

    add-long/2addr v3, v13

    goto :goto_7

    :cond_19
    const-wide/32 v3, 0x100000

    :goto_7
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v13

    cmp-long v3, v13, v3

    if-lez v3, :cond_1a

    iput-boolean v6, v0, LI0/B;->e:Z

    iget-object v3, v0, LI0/B;->j:Lb0/p;

    invoke-interface {v3}, Lb0/p;->e()V

    :cond_1a
    iget-object v3, v2, LJ/D;->a:[B

    invoke-interface {v1, v7, v3, v8}, Lb0/o;->l(I[BI)V

    invoke-virtual {v2, v7}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->H()I

    move-result v3

    add-int/2addr v3, v9

    if-nez v12, :cond_1b

    invoke-interface {v1, v3}, Lb0/o;->p(I)V

    return v7

    :cond_1b
    invoke-virtual {v2, v3}, LJ/D;->K(I)V

    iget-object v4, v2, LJ/D;->a:[B

    invoke-interface {v1, v4, v7, v3}, Lb0/o;->readFully([BII)V

    invoke-virtual {v2, v9}, LJ/D;->N(I)V

    iget-object v1, v12, LI0/A;->a:LI0/h;

    iget-object v3, v12, LI0/A;->c:LJ/B;

    iget-object v4, v3, LJ/B;->b:[B

    const/4 v8, 0x3

    invoke-virtual {v2, v7, v4, v8}, LJ/D;->k(I[BI)V

    invoke-virtual {v3, v7}, LJ/B;->m(I)V

    invoke-virtual {v3, v10}, LJ/B;->o(I)V

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v4

    iput-boolean v4, v12, LI0/A;->d:Z

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v4

    iput-boolean v4, v12, LI0/A;->e:Z

    invoke-virtual {v3, v9}, LJ/B;->o(I)V

    invoke-virtual {v3, v10}, LJ/B;->g(I)I

    move-result v4

    iget-object v5, v3, LJ/B;->b:[B

    invoke-virtual {v2, v7, v5, v4}, LJ/D;->k(I[BI)V

    invoke-virtual {v3, v7}, LJ/B;->m(I)V

    iget-object v4, v12, LI0/A;->b:LJ/S;

    const-wide/16 v8, 0x0

    iput-wide v8, v12, LI0/A;->g:J

    iget-boolean v5, v12, LI0/A;->d:Z

    if-eqz v5, :cond_1d

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, LJ/B;->o(I)V

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, LJ/B;->g(I)I

    move-result v5

    int-to-long v8, v5

    const/16 v5, 0x1e

    shl-long/2addr v8, v5

    invoke-virtual {v3, v6}, LJ/B;->o(I)V

    const/16 v10, 0xf

    invoke-virtual {v3, v10}, LJ/B;->g(I)I

    move-result v11

    shl-int/2addr v11, v10

    int-to-long v13, v11

    or-long/2addr v8, v13

    invoke-virtual {v3, v6}, LJ/B;->o(I)V

    invoke-virtual {v3, v10}, LJ/B;->g(I)I

    move-result v11

    int-to-long v13, v11

    or-long/2addr v8, v13

    invoke-virtual {v3, v6}, LJ/B;->o(I)V

    iget-boolean v11, v12, LI0/A;->f:Z

    if-nez v11, :cond_1c

    iget-boolean v11, v12, LI0/A;->e:Z

    if-eqz v11, :cond_1c

    const/4 v11, 0x4

    invoke-virtual {v3, v11}, LJ/B;->o(I)V

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, LJ/B;->g(I)I

    move-result v11

    int-to-long v13, v11

    shl-long/2addr v13, v5

    invoke-virtual {v3, v6}, LJ/B;->o(I)V

    invoke-virtual {v3, v10}, LJ/B;->g(I)I

    move-result v5

    shl-int/2addr v5, v10

    move/from16 v24, v7

    move-wide/from16 p1, v8

    int-to-long v7, v5

    or-long/2addr v7, v13

    invoke-virtual {v3, v6}, LJ/B;->o(I)V

    invoke-virtual {v3, v10}, LJ/B;->g(I)I

    move-result v5

    int-to-long v9, v5

    or-long/2addr v7, v9

    invoke-virtual {v3, v6}, LJ/B;->o(I)V

    invoke-virtual {v4, v7, v8}, LJ/S;->b(J)J

    iput-boolean v6, v12, LI0/A;->f:Z

    move-wide/from16 v5, p1

    goto :goto_8

    :cond_1c
    move/from16 v24, v7

    move-wide v5, v8

    :goto_8
    invoke-virtual {v4, v5, v6}, LJ/S;->b(J)J

    move-result-wide v3

    iput-wide v3, v12, LI0/A;->g:J

    goto :goto_9

    :cond_1d
    move/from16 v24, v7

    :goto_9
    iget-wide v3, v12, LI0/A;->g:J

    const/4 v5, 0x4

    invoke-interface {v1, v5, v3, v4}, LI0/h;->g(IJ)V

    invoke-interface {v1, v2}, LI0/h;->f(LJ/D;)V

    invoke-interface {v1}, LI0/h;->h()V

    iget-object v1, v2, LJ/D;->a:[B

    array-length v1, v1

    invoke-virtual {v2, v1}, LJ/D;->M(I)V

    return v24
.end method

.method public final g()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LI0/B;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LI0/A;

    iget-object v1, v1, LI0/A;->a:LI0/h;

    invoke-interface {v1}, LI0/h;->i()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
