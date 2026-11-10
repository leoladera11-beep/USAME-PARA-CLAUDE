.class public final Ld0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final a:LJ/D;

.field public final b:LK/k;

.field public final c:Z

.field public final d:Ld1/m;

.field public e:I

.field public f:Lb0/p;

.field public g:Ld0/c;

.field public h:J

.field public i:[Ld0/e;

.field public j:J

.field public k:Ld0/e;

.field public l:I

.field public m:J

.field public n:J

.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>(ILd1/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld0/b;->d:Ld1/m;

    const/4 p2, 0x1

    and-int/2addr p1, p2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Ld0/b;->c:Z

    new-instance p1, LJ/D;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, LJ/D;-><init>(I)V

    iput-object p1, p0, Ld0/b;->a:LJ/D;

    new-instance p1, LK/k;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/b;->b:LK/k;

    new-instance p1, Lcom/brisa/local/j;

    const/16 p2, 0x1c

    invoke-direct {p1, p2}, Lcom/brisa/local/j;-><init>(I)V

    iput-object p1, p0, Ld0/b;->f:Lb0/p;

    new-array p1, v0, [Ld0/e;

    iput-object p1, p0, Ld0/b;->i:[Ld0/e;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ld0/b;->m:J

    iput-wide p1, p0, Ld0/b;->n:J

    const/4 p1, -0x1

    iput p1, p0, Ld0/b;->l:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Ld0/b;->h:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Ld0/b;->e:I

    iget-boolean v0, p0, Ld0/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, LH/c;

    iget-object v1, p0, Ld0/b;->d:Ld1/m;

    invoke-direct {v0, p1, v1}, LH/c;-><init>(Lb0/p;Ly0/k;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Ld0/b;->f:Lb0/p;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ld0/b;->j:J

    return-void
.end method

.method public final c(JJ)V
    .locals 5

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Ld0/b;->j:J

    const/4 p3, 0x0

    iput-object p3, p0, Ld0/b;->k:Ld0/e;

    iget-object p3, p0, Ld0/b;->i:[Ld0/e;

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    aget-object v2, p3, v1

    iget v3, v2, Ld0/e;->l:I

    if-nez v3, :cond_0

    iput v0, v2, Ld0/e;->j:I

    goto :goto_1

    :cond_0
    iget-object v3, v2, Ld0/e;->n:[J

    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4}, LJ/W;->d([JJZ)I

    move-result v3

    iget-object v4, v2, Ld0/e;->o:[I

    aget v3, v4, v3

    iput v3, v2, Ld0/e;->j:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    iget-object p1, p0, Ld0/b;->i:[Ld0/e;

    array-length p1, p1

    if-nez p1, :cond_2

    iput v0, p0, Ld0/b;->e:I

    return-void

    :cond_2
    const/4 p1, 0x3

    iput p1, p0, Ld0/b;->e:I

    return-void

    :cond_3
    const/4 p1, 0x6

    iput p1, p0, Ld0/b;->e:I

    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 4

    iget-object v0, p0, Ld0/b;->a:LJ/D;

    iget-object v1, v0, LJ/D;->a:[B

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1, v2}, Lb0/o;->l(I[BI)V

    invoke-virtual {v0, v3}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->o()I

    move-result p1

    const v1, 0x46464952

    if-eq p1, v1, :cond_0

    return v3

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->o()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v3
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Ld0/b;->j:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v7

    iget-wide v9, v0, Ld0/b;->j:J

    cmp-long v2, v9, v7

    if-ltz v2, :cond_0

    const-wide/32 v11, 0x40000

    add-long/2addr v11, v7

    cmp-long v2, v9, v11

    if-lez v2, :cond_1

    :cond_0
    move-object/from16 v2, p2

    goto :goto_0

    :cond_1
    sub-long/2addr v9, v7

    long-to-int v2, v9

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    goto :goto_1

    :goto_0
    iput-wide v9, v2, Lb0/r;->a:J

    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v6

    :goto_2
    iput-wide v4, v0, Ld0/b;->j:J

    if-eqz v2, :cond_3

    return v3

    :cond_3
    iget v2, v0, Ld0/b;->e:I

    const/4 v8, 0x6

    const/16 v10, 0x10

    const v11, 0x69766f6d

    const/4 v12, 0x2

    const/4 v13, 0x4

    const v14, 0x5453494c

    const/16 v15, 0x8

    const-wide/16 v16, 0x8

    move-wide/from16 v18, v4

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 p2, 0x3

    iget-object v9, v0, Ld0/b;->b:LK/k;

    iget-object v7, v0, Ld0/b;->a:LJ/D;

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_0
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v8

    iget-wide v12, v0, Ld0/b;->n:J

    cmp-long v2, v8, v12

    if-ltz v2, :cond_4

    const/4 v1, -0x1

    return v1

    :cond_4
    iget-object v2, v0, Ld0/b;->k:Ld0/e;

    if-eqz v2, :cond_b

    iget v5, v2, Ld0/e;->i:I

    iget-object v7, v2, Ld0/e;->b:Lb0/G;

    invoke-interface {v7, v1, v5, v6}, Lb0/G;->g(LG/o;IZ)I

    move-result v1

    sub-int/2addr v5, v1

    iput v5, v2, Ld0/e;->i:I

    if-nez v5, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v6

    :goto_3
    if-eqz v1, :cond_9

    iget v5, v2, Ld0/e;->h:I

    if-lez v5, :cond_8

    iget-object v7, v2, Ld0/e;->b:Lb0/G;

    iget v5, v2, Ld0/e;->j:I

    iget-wide v8, v2, Ld0/e;->e:J

    int-to-long v10, v5

    mul-long/2addr v8, v10

    iget v10, v2, Ld0/e;->g:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    iget-boolean v10, v2, Ld0/e;->f:Z

    if-nez v10, :cond_7

    iget-object v10, v2, Ld0/e;->o:[I

    invoke-static {v10, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-ltz v5, :cond_6

    goto :goto_4

    :cond_6
    move v10, v6

    goto :goto_5

    :cond_7
    :goto_4
    move v10, v3

    :goto_5
    iget v11, v2, Ld0/e;->h:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Lb0/G;->f(JIIILb0/F;)V

    :cond_8
    iget v5, v2, Ld0/e;->j:I

    add-int/2addr v5, v3

    iput v5, v2, Ld0/e;->j:I

    :cond_9
    if-eqz v1, :cond_a

    iput-object v4, v0, Ld0/b;->k:Ld0/e;

    :cond_a
    return v6

    :cond_b
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v8

    const-wide/16 v12, 0x1

    and-long/2addr v8, v12

    cmp-long v2, v8, v12

    if-nez v2, :cond_c

    invoke-interface {v1, v3}, Lb0/o;->p(I)V

    :cond_c
    iget-object v2, v7, LJ/D;->a:[B

    invoke-interface {v1, v6, v2, v5}, Lb0/o;->l(I[BI)V

    invoke-virtual {v7, v6}, LJ/D;->N(I)V

    invoke-virtual {v7}, LJ/D;->o()I

    move-result v2

    if-ne v2, v14, :cond_e

    invoke-virtual {v7, v15}, LJ/D;->N(I)V

    invoke-virtual {v7}, LJ/D;->o()I

    move-result v2

    if-ne v2, v11, :cond_d

    move v15, v5

    :cond_d
    invoke-interface {v1, v15}, Lb0/o;->p(I)V

    invoke-interface {v1}, Lb0/o;->o()V

    return v6

    :cond_e
    invoke-virtual {v7}, LJ/D;->o()I

    move-result v3

    const v5, 0x4b4e554a    # 1.352225E7f

    if-ne v2, v5, :cond_f

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long v1, v1, v16

    iput-wide v1, v0, Ld0/b;->j:J

    return v6

    :cond_f
    invoke-interface {v1, v15}, Lb0/o;->p(I)V

    invoke-interface {v1}, Lb0/o;->o()V

    iget-object v5, v0, Ld0/b;->i:[Ld0/e;

    array-length v7, v5

    move v8, v6

    :goto_6
    if-ge v8, v7, :cond_12

    aget-object v9, v5, v8

    iget v10, v9, Ld0/e;->c:I

    if-eq v10, v2, :cond_11

    iget v10, v9, Ld0/e;->d:I

    if-ne v10, v2, :cond_10

    goto :goto_7

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_11
    :goto_7
    move-object v4, v9

    :cond_12
    if-nez v4, :cond_13

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Ld0/b;->j:J

    return v6

    :cond_13
    iput v3, v4, Ld0/e;->h:I

    iput v3, v4, Ld0/e;->i:I

    iput-object v4, v0, Ld0/b;->k:Ld0/e;

    return v6

    :pswitch_1
    new-instance v2, LJ/D;

    iget v5, v0, Ld0/b;->o:I

    invoke-direct {v2, v5}, LJ/D;-><init>(I)V

    iget-object v5, v2, LJ/D;->a:[B

    iget v7, v0, Ld0/b;->o:I

    invoke-interface {v1, v5, v6, v7}, Lb0/o;->readFully([BII)V

    invoke-virtual {v2}, LJ/D;->a()I

    move-result v1

    const-wide/16 v20, 0x0

    if-ge v1, v10, :cond_14

    goto :goto_9

    :cond_14
    iget v1, v2, LJ/D;->b:I

    invoke-virtual {v2, v15}, LJ/D;->O(I)V

    invoke-virtual {v2}, LJ/D;->o()I

    move-result v5

    int-to-long v14, v5

    iget-wide v4, v0, Ld0/b;->m:J

    cmp-long v7, v14, v4

    if-lez v7, :cond_15

    goto :goto_8

    :cond_15
    add-long v20, v4, v16

    :goto_8
    invoke-virtual {v2, v1}, LJ/D;->N(I)V

    :goto_9
    invoke-virtual {v2}, LJ/D;->a()I

    move-result v1

    if-lt v1, v10, :cond_1f

    invoke-virtual {v2}, LJ/D;->o()I

    move-result v1

    invoke-virtual {v2}, LJ/D;->o()I

    move-result v4

    invoke-virtual {v2}, LJ/D;->o()I

    move-result v5

    int-to-long v14, v5

    add-long v14, v14, v20

    invoke-virtual {v2, v13}, LJ/D;->O(I)V

    iget-object v5, v0, Ld0/b;->i:[Ld0/e;

    array-length v7, v5

    move v9, v6

    :goto_a
    if-ge v9, v7, :cond_17

    aget-object v11, v5, v9

    iget v13, v11, Ld0/e;->c:I

    if-eq v13, v1, :cond_18

    iget v13, v11, Ld0/e;->d:I

    if-ne v13, v1, :cond_16

    goto :goto_b

    :cond_16
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x4

    goto :goto_a

    :cond_17
    const/4 v11, 0x0

    :cond_18
    :goto_b
    if-nez v11, :cond_19

    :goto_c
    const/4 v13, 0x4

    goto :goto_9

    :cond_19
    and-int/lit8 v1, v4, 0x10

    if-ne v1, v10, :cond_1a

    move v1, v3

    goto :goto_d

    :cond_1a
    move v1, v6

    :goto_d
    iget-wide v4, v11, Ld0/e;->m:J

    cmp-long v4, v4, v18

    if-nez v4, :cond_1b

    iput-wide v14, v11, Ld0/e;->m:J

    :cond_1b
    if-nez v1, :cond_1c

    iget-boolean v1, v11, Ld0/e;->f:Z

    if-eqz v1, :cond_1e

    :cond_1c
    iget v1, v11, Ld0/e;->l:I

    iget-object v4, v11, Ld0/e;->o:[I

    array-length v4, v4

    if-ne v1, v4, :cond_1d

    iget-object v1, v11, Ld0/e;->n:[J

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v12

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v11, Ld0/e;->n:[J

    iget-object v1, v11, Ld0/e;->o:[I

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v12

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v11, Ld0/e;->o:[I

    :cond_1d
    iget-object v1, v11, Ld0/e;->n:[J

    iget v4, v11, Ld0/e;->l:I

    aput-wide v14, v1, v4

    iget-object v1, v11, Ld0/e;->o:[I

    iget v5, v11, Ld0/e;->k:I

    aput v5, v1, v4

    add-int/2addr v4, v3

    iput v4, v11, Ld0/e;->l:I

    :cond_1e
    iget v1, v11, Ld0/e;->k:I

    add-int/2addr v1, v3

    iput v1, v11, Ld0/e;->k:I

    goto :goto_c

    :cond_1f
    iget-object v1, v0, Ld0/b;->i:[Ld0/e;

    array-length v2, v1

    move v4, v6

    :goto_e
    if-ge v4, v2, :cond_21

    aget-object v5, v1, v4

    iget-object v7, v5, Ld0/e;->n:[J

    iget v9, v5, Ld0/e;->l:I

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    iput-object v7, v5, Ld0/e;->n:[J

    iget-object v7, v5, Ld0/e;->o:[I

    iget v9, v5, Ld0/e;->l:I

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    iput-object v7, v5, Ld0/e;->o:[I

    iget-boolean v7, v5, Ld0/e;->f:Z

    if-eqz v7, :cond_20

    iget-object v7, v5, Ld0/e;->a:Ld0/d;

    iget v7, v7, Ld0/d;->f:I

    if-eqz v7, :cond_20

    iget v7, v5, Ld0/e;->l:I

    if-lez v7, :cond_20

    iput v7, v5, Ld0/e;->g:I

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_21
    iput-boolean v3, v0, Ld0/b;->p:Z

    iget-object v1, v0, Ld0/b;->i:[Ld0/e;

    array-length v1, v1

    if-nez v1, :cond_22

    iget-object v1, v0, Ld0/b;->f:Lb0/p;

    new-instance v2, Lb0/s;

    iget-wide v3, v0, Ld0/b;->h:J

    invoke-direct {v2, v3, v4}, Lb0/s;-><init>(J)V

    invoke-interface {v1, v2}, Lb0/p;->c(Lb0/z;)V

    goto :goto_f

    :cond_22
    iget-object v1, v0, Ld0/b;->f:Lb0/p;

    new-instance v2, Lb0/s;

    iget-wide v3, v0, Ld0/b;->h:J

    invoke-direct {v2, v12, v3, v4, v0}, Lb0/s;-><init>(IJLjava/lang/Object;)V

    invoke-interface {v1, v2}, Lb0/p;->c(Lb0/z;)V

    :goto_f
    iput v8, v0, Ld0/b;->e:I

    iget-wide v1, v0, Ld0/b;->m:J

    iput-wide v1, v0, Ld0/b;->j:J

    return v6

    :pswitch_2
    iget-object v2, v7, LJ/D;->a:[B

    invoke-interface {v1, v2, v6, v15}, Lb0/o;->readFully([BII)V

    invoke-virtual {v7, v6}, LJ/D;->N(I)V

    invoke-virtual {v7}, LJ/D;->o()I

    move-result v2

    invoke-virtual {v7}, LJ/D;->o()I

    move-result v3

    const v4, 0x31786469

    if-ne v2, v4, :cond_23

    const/4 v1, 0x5

    iput v1, v0, Ld0/b;->e:I

    iput v3, v0, Ld0/b;->o:I

    return v6

    :cond_23
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Ld0/b;->j:J

    return v6

    :pswitch_3
    iget-wide v12, v0, Ld0/b;->m:J

    cmp-long v2, v12, v18

    if-eqz v2, :cond_24

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v12

    iget-wide v3, v0, Ld0/b;->m:J

    cmp-long v12, v12, v3

    if-eqz v12, :cond_24

    iput-wide v3, v0, Ld0/b;->j:J

    return v6

    :cond_24
    iget-object v3, v7, LJ/D;->a:[B

    invoke-interface {v1, v6, v3, v5}, Lb0/o;->l(I[BI)V

    invoke-interface {v1}, Lb0/o;->o()V

    invoke-virtual {v7, v6}, LJ/D;->N(I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, LJ/D;->o()I

    move-result v3

    iput v3, v9, LK/k;->a:I

    invoke-virtual {v7}, LJ/D;->o()I

    move-result v3

    iput v3, v9, LK/k;->b:I

    iput v6, v9, LK/k;->c:I

    invoke-virtual {v7}, LJ/D;->o()I

    move-result v3

    iget v4, v9, LK/k;->a:I

    const v7, 0x46464952

    if-ne v4, v7, :cond_25

    invoke-interface {v1, v5}, Lb0/o;->p(I)V

    return v6

    :cond_25
    if-ne v4, v14, :cond_29

    if-eq v3, v11, :cond_26

    goto :goto_10

    :cond_26
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v3

    iput-wide v3, v0, Ld0/b;->m:J

    iget v5, v9, LK/k;->b:I

    int-to-long v11, v5

    add-long/2addr v3, v11

    add-long v3, v3, v16

    iput-wide v3, v0, Ld0/b;->n:J

    iget-boolean v3, v0, Ld0/b;->p:Z

    if-nez v3, :cond_28

    iget-object v3, v0, Ld0/b;->g:Ld0/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, Ld0/c;->b:I

    and-int/2addr v3, v10

    if-ne v3, v10, :cond_27

    const/4 v3, 0x4

    iput v3, v0, Ld0/b;->e:I

    iget-wide v1, v0, Ld0/b;->n:J

    iput-wide v1, v0, Ld0/b;->j:J

    return v6

    :cond_27
    iget-object v3, v0, Ld0/b;->f:Lb0/p;

    new-instance v4, Lb0/s;

    iget-wide v9, v0, Ld0/b;->h:J

    invoke-direct {v4, v9, v10}, Lb0/s;-><init>(J)V

    invoke-interface {v3, v4}, Lb0/p;->c(Lb0/z;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Ld0/b;->p:Z

    :cond_28
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    iput-wide v1, v0, Ld0/b;->j:J

    iput v8, v0, Ld0/b;->e:I

    return v6

    :cond_29
    :goto_10
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v1

    iget v3, v9, LK/k;->b:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long v1, v1, v16

    iput-wide v1, v0, Ld0/b;->j:J

    return v6

    :pswitch_4
    iget v3, v0, Ld0/b;->l:I

    const/16 v22, 0x4

    add-int/lit8 v3, v3, -0x4

    new-instance v4, LJ/D;

    invoke-direct {v4, v3}, LJ/D;-><init>(I)V

    iget-object v5, v4, LJ/D;->a:[B

    invoke-interface {v1, v5, v6, v3}, Lb0/o;->readFully([BII)V

    const v1, 0x6c726468

    invoke-static {v1, v4}, Ld0/f;->c(ILJ/D;)Ld0/f;

    move-result-object v3

    iget v4, v3, Ld0/f;->b:I

    if-ne v4, v1, :cond_34

    const-class v1, Ld0/c;

    invoke-virtual {v3, v1}, Ld0/f;->a(Ljava/lang/Class;)Ld0/a;

    move-result-object v1

    check-cast v1, Ld0/c;

    if-eqz v1, :cond_33

    iput-object v1, v0, Ld0/b;->g:Ld0/c;

    iget v4, v1, Ld0/c;->c:I

    int-to-long v4, v4

    iget v1, v1, Ld0/c;->a:I

    int-to-long v7, v1

    mul-long/2addr v4, v7

    iput-wide v4, v0, Ld0/b;->h:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v3, Ld0/f;->a:Lu1/P;

    invoke-virtual {v3, v6}, Lu1/P;->m(I)Lu1/N;

    move-result-object v3

    move v4, v6

    :cond_2a
    :goto_11
    invoke-virtual {v3}, Lu1/a;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v3}, Lu1/a;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld0/a;

    invoke-interface {v5}, Ld0/a;->b()I

    move-result v7

    const v8, 0x6c727473

    if-ne v7, v8, :cond_2a

    check-cast v5, Ld0/f;

    add-int/lit8 v7, v4, 0x1

    const-class v8, Ld0/d;

    invoke-virtual {v5, v8}, Ld0/f;->a(Ljava/lang/Class;)Ld0/a;

    move-result-object v8

    check-cast v8, Ld0/d;

    const-class v9, Ld0/g;

    invoke-virtual {v5, v9}, Ld0/f;->a(Ljava/lang/Class;)Ld0/a;

    move-result-object v9

    check-cast v9, Ld0/g;

    const-string v10, "AviExtractor"

    if-nez v8, :cond_2c

    const-string v4, "Missing Stream Header"

    invoke-static {v10, v4}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_12
    const/4 v10, 0x0

    goto :goto_13

    :cond_2c
    if-nez v9, :cond_2d

    const-string v4, "Missing Stream Format"

    invoke-static {v10, v4}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_2d
    iget v10, v8, Ld0/d;->d:I

    int-to-long v13, v10

    iget v10, v8, Ld0/d;->b:I

    int-to-long v10, v10

    const-wide/32 v15, 0xf4240

    mul-long/2addr v15, v10

    iget v10, v8, Ld0/d;->c:I

    int-to-long v10, v10

    sget-object v17, LJ/W;->a:Ljava/lang/String;

    sget-object v19, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v17, v10

    invoke-static/range {v13 .. v19}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    iget-object v9, v9, Ld0/g;->a:LG/x;

    invoke-virtual {v9}, LG/x;->a()LG/w;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, LG/w;->a:Ljava/lang/String;

    iget v14, v8, Ld0/d;->e:I

    if-eqz v14, :cond_2e

    iput v14, v13, LG/w;->p:I

    :cond_2e
    const-class v14, Ld0/h;

    invoke-virtual {v5, v14}, Ld0/f;->a(Ljava/lang/Class;)Ld0/a;

    move-result-object v5

    check-cast v5, Ld0/h;

    if-eqz v5, :cond_2f

    iget-object v5, v5, Ld0/h;->a:Ljava/lang/String;

    iput-object v5, v13, LG/w;->b:Ljava/lang/String;

    :cond_2f
    iget-object v5, v9, LG/x;->p:Ljava/lang/String;

    invoke-static {v5}, LG/W;->g(Ljava/lang/String;)I

    move-result v5

    const/4 v2, 0x1

    if-eq v5, v2, :cond_30

    if-ne v5, v12, :cond_2b

    :cond_30
    iget-object v9, v0, Ld0/b;->f:Lb0/p;

    invoke-interface {v9, v4, v5}, Lb0/p;->v(II)Lb0/G;

    move-result-object v5

    new-instance v9, LG/x;

    invoke-direct {v9, v13}, LG/x;-><init>(LG/w;)V

    invoke-interface {v5, v9}, Lb0/G;->b(LG/x;)V

    invoke-interface {v5, v10, v11}, Lb0/G;->d(J)V

    iget-wide v13, v0, Ld0/b;->h:J

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v0, Ld0/b;->h:J

    new-instance v10, Ld0/e;

    iget-object v11, v9, LG/x;->p:Ljava/lang/String;

    iget-object v9, v9, LG/x;->l:Ljava/lang/String;

    invoke-static {v11, v9}, LG/W;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    invoke-direct {v10, v4, v8, v5, v9}, Ld0/e;-><init>(ILd0/d;Lb0/G;Z)V

    :goto_13
    if-eqz v10, :cond_31

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    move v4, v7

    goto/16 :goto_11

    :cond_32
    new-array v2, v6, [Ld0/e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ld0/e;

    iput-object v1, v0, Ld0/b;->i:[Ld0/e;

    iget-object v1, v0, Ld0/b;->f:Lb0/p;

    invoke-interface {v1}, Lb0/p;->e()V

    move/from16 v1, p2

    iput v1, v0, Ld0/b;->e:I

    return v6

    :cond_33
    const-string v1, "AviHeader not found"

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_34
    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected header list type "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :pswitch_5
    iget-object v2, v7, LJ/D;->a:[B

    invoke-interface {v1, v2, v6, v5}, Lb0/o;->readFully([BII)V

    invoke-virtual {v7, v6}, LJ/D;->N(I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, LJ/D;->o()I

    move-result v1

    iput v1, v9, LK/k;->a:I

    invoke-virtual {v7}, LJ/D;->o()I

    move-result v1

    iput v1, v9, LK/k;->b:I

    iput v6, v9, LK/k;->c:I

    iget v1, v9, LK/k;->a:I

    if-ne v1, v14, :cond_36

    invoke-virtual {v7}, LJ/D;->o()I

    move-result v1

    iput v1, v9, LK/k;->c:I

    const v2, 0x6c726468

    if-ne v1, v2, :cond_35

    iget v1, v9, LK/k;->b:I

    iput v1, v0, Ld0/b;->l:I

    iput v12, v0, Ld0/b;->e:I

    return v6

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hdrl expected, found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v9, LK/k;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_36
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LIST expected, found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v9, LK/k;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :pswitch_6
    move-object v3, v4

    invoke-virtual/range {p0 .. p1}, Ld0/b;->d(Lb0/o;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1, v5}, Lb0/o;->p(I)V

    const/4 v2, 0x1

    iput v2, v0, Ld0/b;->e:I

    return v6

    :cond_37
    const-string v1, "AVI Header List not found"

    invoke-static {v3, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
