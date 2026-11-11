.class public final Lg0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final a:[B

.field public final b:LJ/D;

.field public final c:Z

.field public final d:Z

.field public final e:Lb0/r;

.field public f:Lb0/p;

.field public g:Lb0/G;

.field public h:I

.field public i:LG/V;

.field public j:Lb0/t;

.field public k:I

.field public l:I

.field public m:LI0/y;

.field public n:I

.field public o:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Lg0/b;->a:[B

    new-instance v0, LJ/D;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJ/D;-><init>([BI)V

    iput-object v0, p0, Lg0/b;->b:LJ/D;

    iput-boolean v2, p0, Lg0/b;->c:Z

    iput-boolean v2, p0, Lg0/b;->d:Z

    new-instance v0, Lb0/r;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg0/b;->e:Lb0/r;

    iput v2, p0, Lg0/b;->h:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 2

    iput-object p1, p0, Lg0/b;->f:Lb0/p;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lb0/p;->v(II)Lb0/G;

    move-result-object v0

    iput-object v0, p0, Lg0/b;->g:Lb0/G;

    invoke-interface {p1}, Lb0/p;->e()V

    return-void
.end method

.method public final c(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, Lg0/b;->h:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg0/b;->m:LI0/y;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, LI0/y;->d(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Lg0/b;->o:J

    iput p2, p0, Lg0/b;->n:I

    iget-object p1, p0, Lg0/b;->b:LJ/D;

    invoke-virtual {p1, p2}, LJ/D;->K(I)V

    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lb0/a;->u(Lb0/o;ZZ)LG/V;

    new-instance v1, LJ/D;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LJ/D;-><init>(I)V

    iget-object v3, v1, LJ/D;->a:[B

    invoke-interface {p1, v0, v3, v2}, Lb0/o;->l(I[BI)V

    invoke-virtual {v1}, LJ/D;->C()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lg0/b;->h:I

    iget-boolean v3, v0, Lg0/b;->d:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2a

    iget-object v6, v0, Lg0/b;->a:[B

    const/4 v7, 0x2

    if-eq v2, v4, :cond_29

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v2, v7, :cond_27

    const/4 v11, 0x7

    const/4 v12, 0x6

    if-eq v2, v10, :cond_1d

    const-wide/16 v13, 0x0

    const-wide/16 v15, -0x1

    const/4 v3, 0x5

    if-eq v2, v9, :cond_17

    if-ne v2, v3, :cond_16

    iget-object v2, v0, Lg0/b;->g:Lb0/G;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lg0/b;->j:Lb0/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lg0/b;->m:LI0/y;

    if-eqz v2, :cond_0

    iget-object v3, v2, LI0/y;->c:Lb0/e;

    if-eqz v3, :cond_0

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, LI0/y;->b(Lb0/o;Lb0/r;)I

    move-result v1

    return v1

    :cond_0
    iget-wide v2, v0, Lg0/b;->o:J

    cmp-long v2, v2, v15

    const/4 v3, -0x1

    if-nez v2, :cond_8

    iget-object v2, v0, Lg0/b;->j:Lb0/t;

    invoke-interface {v1}, Lb0/o;->o()V

    invoke-interface {v1, v4}, Lb0/o;->z(I)V

    new-array v6, v4, [B

    invoke-interface {v1, v5, v6, v4}, Lb0/o;->l(I[BI)V

    aget-byte v6, v6, v5

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    invoke-interface {v1, v7}, Lb0/o;->z(I)V

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v11, v12

    :goto_1
    new-instance v7, LJ/D;

    invoke-direct {v7, v11}, LJ/D;-><init>(I)V

    iget-object v9, v7, LJ/D;->a:[B

    move v10, v5

    :goto_2
    if-ge v10, v11, :cond_4

    sub-int v12, v11, v10

    invoke-interface {v1, v10, v9, v12}, Lb0/o;->A(I[BI)I

    move-result v12

    if-ne v12, v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v10, v12

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v7, v10}, LJ/D;->M(I)V

    invoke-interface {v1}, Lb0/o;->o()V

    :try_start_0
    invoke-virtual {v7}, LJ/D;->I()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    iget v1, v2, Lb0/t;->b:I

    int-to-long v6, v1

    mul-long/2addr v9, v6

    :goto_4
    iget-wide v1, v2, Lb0/t;->j:J

    cmp-long v3, v1, v13

    if-eqz v3, :cond_6

    cmp-long v1, v9, v1

    if-lez v1, :cond_6

    :catch_0
    move v4, v5

    goto :goto_5

    :cond_6
    move-wide v13, v9

    :goto_5
    if-eqz v4, :cond_7

    iput-wide v13, v0, Lg0/b;->o:J

    goto/16 :goto_d

    :cond_7
    invoke-static {v8, v8}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_8
    iget-object v2, v0, Lg0/b;->b:LJ/D;

    iget v6, v2, LJ/D;->c:I

    const-wide/32 v7, 0xf4240

    const v9, 0x8000

    if-ge v6, v9, :cond_b

    iget-object v10, v2, LJ/D;->a:[B

    sub-int/2addr v9, v6

    invoke-interface {v1, v10, v6, v9}, LG/o;->read([BII)I

    move-result v1

    if-ne v1, v3, :cond_9

    goto :goto_6

    :cond_9
    move v4, v5

    :goto_6
    if-nez v4, :cond_a

    add-int/2addr v6, v1

    invoke-virtual {v2, v6}, LJ/D;->M(I)V

    goto :goto_7

    :cond_a
    invoke-virtual {v2}, LJ/D;->a()I

    move-result v1

    if-nez v1, :cond_c

    iget-wide v1, v0, Lg0/b;->o:J

    mul-long/2addr v1, v7

    iget-object v4, v0, Lg0/b;->j:Lb0/t;

    sget-object v5, LJ/W;->a:Ljava/lang/String;

    iget v4, v4, Lb0/t;->e:I

    int-to-long v4, v4

    div-long v7, v1, v4

    iget-object v6, v0, Lg0/b;->g:Lb0/G;

    iget v10, v0, Lg0/b;->n:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lb0/G;->f(JIIILb0/F;)V

    return v3

    :cond_b
    move v4, v5

    :cond_c
    :goto_7
    iget v1, v2, LJ/D;->b:I

    iget v3, v0, Lg0/b;->n:I

    iget v6, v0, Lg0/b;->k:I

    if-ge v3, v6, :cond_d

    sub-int/2addr v6, v3

    invoke-virtual {v2}, LJ/D;->a()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, LJ/D;->O(I)V

    :cond_d
    iget-object v3, v0, Lg0/b;->j:Lb0/t;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, LJ/D;->b:I

    :goto_8
    iget v6, v2, LJ/D;->c:I

    const/16 v9, 0x10

    sub-int/2addr v6, v9

    iget-object v10, v0, Lg0/b;->e:Lb0/r;

    if-gt v3, v6, :cond_f

    invoke-virtual {v2, v3}, LJ/D;->N(I)V

    iget-object v6, v0, Lg0/b;->j:Lb0/t;

    iget v11, v0, Lg0/b;->l:I

    invoke-static {v2, v6, v11, v10}, Lb0/a;->a(LJ/D;Lb0/t;ILb0/r;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v2, v3}, LJ/D;->N(I)V

    iget-wide v3, v10, Lb0/r;->a:J

    goto :goto_c

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    if-eqz v4, :cond_13

    :goto_9
    iget v4, v2, LJ/D;->c:I

    iget v6, v0, Lg0/b;->k:I

    sub-int v6, v4, v6

    if-gt v3, v6, :cond_12

    invoke-virtual {v2, v3}, LJ/D;->N(I)V

    :try_start_1
    iget-object v4, v0, Lg0/b;->j:Lb0/t;

    iget v6, v0, Lg0/b;->l:I

    invoke-static {v2, v4, v6, v10}, Lb0/a;->a(LJ/D;Lb0/t;ILb0/r;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move v4, v5

    :goto_a
    iget v6, v2, LJ/D;->b:I

    iget v11, v2, LJ/D;->c:I

    if-le v6, v11, :cond_10

    move v4, v5

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v2, v3}, LJ/D;->N(I)V

    iget-wide v3, v10, Lb0/r;->a:J

    goto :goto_c

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_12
    invoke-virtual {v2, v4}, LJ/D;->N(I)V

    goto :goto_b

    :cond_13
    invoke-virtual {v2, v3}, LJ/D;->N(I)V

    :goto_b
    move-wide v3, v15

    :goto_c
    iget v6, v2, LJ/D;->b:I

    sub-int/2addr v6, v1

    invoke-virtual {v2, v1}, LJ/D;->N(I)V

    iget-object v1, v0, Lg0/b;->g:Lb0/G;

    invoke-interface {v1, v6, v2}, Lb0/G;->a(ILJ/D;)V

    iget v1, v0, Lg0/b;->n:I

    add-int/2addr v1, v6

    iput v1, v0, Lg0/b;->n:I

    cmp-long v6, v3, v15

    if-eqz v6, :cond_14

    iget-wide v10, v0, Lg0/b;->o:J

    mul-long/2addr v10, v7

    iget-object v6, v0, Lg0/b;->j:Lb0/t;

    sget-object v7, LJ/W;->a:Ljava/lang/String;

    iget v6, v6, Lb0/t;->e:I

    int-to-long v6, v6

    div-long v18, v10, v6

    iget-object v6, v0, Lg0/b;->g:Lb0/G;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x1

    move/from16 v21, v1

    move-object/from16 v17, v6

    invoke-interface/range {v17 .. v23}, Lb0/G;->f(JIIILb0/F;)V

    iput v5, v0, Lg0/b;->n:I

    iput-wide v3, v0, Lg0/b;->o:J

    :cond_14
    iget-object v1, v2, LJ/D;->a:[B

    array-length v1, v1

    iget v3, v2, LJ/D;->c:I

    sub-int/2addr v1, v3

    invoke-virtual {v2}, LJ/D;->a()I

    move-result v3

    if-ge v3, v9, :cond_15

    if-ge v1, v9, :cond_15

    invoke-virtual {v2}, LJ/D;->a()I

    move-result v1

    iget-object v3, v2, LJ/D;->a:[B

    iget v4, v2, LJ/D;->b:I

    invoke-static {v3, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v5}, LJ/D;->N(I)V

    invoke-virtual {v2, v1}, LJ/D;->M(I)V

    :cond_15
    :goto_d
    return v5

    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_17
    invoke-interface {v1}, Lb0/o;->o()V

    new-instance v2, LJ/D;

    invoke-direct {v2, v7}, LJ/D;-><init>(I)V

    iget-object v4, v2, LJ/D;->a:[B

    invoke-interface {v1, v5, v4, v7}, Lb0/o;->l(I[BI)V

    invoke-virtual {v2}, LJ/D;->H()I

    move-result v2

    shr-int/lit8 v4, v2, 0x2

    const/16 v6, 0x3ffe

    if-ne v4, v6, :cond_1c

    invoke-interface {v1}, Lb0/o;->o()V

    iput v2, v0, Lg0/b;->l:I

    iget-object v2, v0, Lg0/b;->f:Lb0/p;

    sget-object v4, LJ/W;->a:Ljava/lang/String;

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v6

    invoke-interface {v1}, Lb0/o;->getLength()J

    move-result-wide v26

    iget-object v1, v0, Lg0/b;->j:Lb0/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lg0/b;->j:Lb0/t;

    iget-object v4, v1, Lb0/t;->k:LW0/c;

    if-eqz v4, :cond_18

    iget-object v4, v4, LW0/c;->f:Ljava/lang/Object;

    check-cast v4, [J

    array-length v4, v4

    if-lez v4, :cond_18

    new-instance v4, Lb0/s;

    invoke-direct {v4, v5, v6, v7, v1}, Lb0/s;-><init>(IJLjava/lang/Object;)V

    move v15, v5

    goto/16 :goto_11

    :cond_18
    cmp-long v4, v26, v15

    if-eqz v4, :cond_1b

    iget-wide v8, v1, Lb0/t;->j:J

    cmp-long v4, v8, v13

    if-lez v4, :cond_1b

    new-instance v17, LI0/y;

    iget v4, v0, Lg0/b;->l:I

    iget v8, v1, Lb0/t;->c:I

    new-instance v9, LI0/E;

    const/16 v10, 0x1a

    invoke-direct {v9, v1, v10}, LI0/E;-><init>(Ljava/lang/Object;I)V

    new-instance v10, Lg0/a;

    invoke-direct {v10, v1, v4}, Lg0/a;-><init>(Lb0/t;I)V

    invoke-virtual {v1}, Lb0/t;->b()J

    move-result-wide v20

    iget-wide v13, v1, Lb0/t;->j:J

    iget v4, v1, Lb0/t;->d:I

    if-lez v4, :cond_19

    move v15, v5

    move-wide/from16 v24, v6

    int-to-long v5, v4

    int-to-long v3, v8

    add-long/2addr v5, v3

    const-wide/16 v3, 0x2

    div-long/2addr v5, v3

    const-wide/16 v3, 0x1

    add-long/2addr v5, v3

    :goto_e
    move-wide/from16 v28, v5

    goto :goto_10

    :cond_19
    move v15, v5

    move-wide/from16 v24, v6

    iget v3, v1, Lb0/t;->a:I

    iget v4, v1, Lb0/t;->b:I

    if-ne v3, v4, :cond_1a

    if-lez v3, :cond_1a

    int-to-long v3, v3

    goto :goto_f

    :cond_1a
    const-wide/16 v3, 0x1000

    :goto_f
    iget v5, v1, Lb0/t;->g:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    iget v1, v1, Lb0/t;->h:I

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x40

    add-long/2addr v5, v3

    goto :goto_e

    :goto_10
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v30

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-wide/from16 v22, v13

    invoke-direct/range {v17 .. v30}, LI0/y;-><init>(Lb0/f;Lb0/h;JJJJJI)V

    move-object/from16 v1, v17

    iput-object v1, v0, Lg0/b;->m:LI0/y;

    iget-object v4, v1, LI0/y;->a:Lb0/d;

    goto :goto_11

    :cond_1b
    move v15, v5

    new-instance v4, Lb0/s;

    invoke-virtual {v1}, Lb0/t;->b()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lb0/s;-><init>(J)V

    :goto_11
    invoke-interface {v2, v4}, Lb0/p;->c(Lb0/z;)V

    const/4 v1, 0x5

    iput v1, v0, Lg0/b;->h:I

    return v15

    :cond_1c
    invoke-interface {v1}, Lb0/o;->o()V

    const-string v1, "First frame does not start with sync code."

    invoke-static {v8, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_1d
    move v15, v5

    iget-object v2, v0, Lg0/b;->j:Lb0/t;

    move v4, v15

    :goto_12
    if-nez v4, :cond_26

    invoke-interface {v1}, Lb0/o;->o()V

    new-instance v4, LJ/B;

    new-array v5, v9, [B

    invoke-direct {v4, v5, v9}, LJ/B;-><init>([BI)V

    invoke-interface {v1, v15, v5, v9}, Lb0/o;->l(I[BI)V

    invoke-virtual {v4}, LJ/B;->f()Z

    move-result v5

    invoke-virtual {v4, v11}, LJ/B;->g(I)I

    move-result v7

    const/16 v8, 0x18

    invoke-virtual {v4, v8}, LJ/B;->g(I)I

    move-result v4

    add-int/2addr v4, v9

    if-nez v7, :cond_1e

    const/16 v2, 0x26

    new-array v4, v2, [B

    invoke-interface {v1, v4, v15, v2}, Lb0/o;->readFully([BII)V

    new-instance v2, Lb0/t;

    invoke-direct {v2, v4, v9}, Lb0/t;-><init>([BI)V

    goto/16 :goto_18

    :cond_1e
    if-eqz v2, :cond_25

    iget-object v8, v2, Lb0/t;->l:LG/V;

    if-ne v7, v10, :cond_1f

    new-instance v7, LJ/D;

    invoke-direct {v7, v4}, LJ/D;-><init>(I)V

    iget-object v8, v7, LJ/D;->a:[B

    invoke-interface {v1, v8, v15, v4}, Lb0/o;->readFully([BII)V

    invoke-static {v7}, Lb0/a;->w(LJ/D;)LW0/c;

    move-result-object v26

    new-instance v16, Lb0/t;

    iget v4, v2, Lb0/t;->a:I

    iget v7, v2, Lb0/t;->b:I

    iget v8, v2, Lb0/t;->c:I

    iget v13, v2, Lb0/t;->d:I

    iget v14, v2, Lb0/t;->e:I

    iget v11, v2, Lb0/t;->g:I

    iget v15, v2, Lb0/t;->h:I

    move/from16 v22, v11

    iget-wide v10, v2, Lb0/t;->j:J

    iget-object v2, v2, Lb0/t;->l:LG/V;

    move-object/from16 v27, v2

    move/from16 v17, v4

    move/from16 v18, v7

    move/from16 v19, v8

    move-wide/from16 v24, v10

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v23, v15

    invoke-direct/range {v16 .. v27}, Lb0/t;-><init>(IIIIIIIJLW0/c;LG/V;)V

    :goto_13
    move-object/from16 v2, v16

    goto/16 :goto_18

    :cond_1f
    if-ne v7, v9, :cond_21

    new-instance v7, LJ/D;

    invoke-direct {v7, v4}, LJ/D;-><init>(I)V

    iget-object v10, v7, LJ/D;->a:[B

    const/4 v15, 0x0

    invoke-interface {v1, v10, v15, v4}, Lb0/o;->readFully([BII)V

    invoke-virtual {v7, v9}, LJ/D;->O(I)V

    invoke-static {v7, v15, v15}, LK/t;->p(LJ/D;ZZ)LZ0/i;

    move-result-object v4

    iget-object v4, v4, LZ0/i;->e:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lb0/I;->a(Ljava/util/List;)LG/V;

    move-result-object v4

    if-nez v8, :cond_20

    :goto_14
    move-object/from16 v27, v4

    goto :goto_15

    :cond_20
    invoke-virtual {v8, v4}, LG/V;->b(LG/V;)LG/V;

    move-result-object v4

    goto :goto_14

    :goto_15
    new-instance v16, Lb0/t;

    iget v4, v2, Lb0/t;->a:I

    iget v7, v2, Lb0/t;->b:I

    iget v8, v2, Lb0/t;->c:I

    iget v10, v2, Lb0/t;->d:I

    iget v11, v2, Lb0/t;->e:I

    iget v13, v2, Lb0/t;->g:I

    iget v14, v2, Lb0/t;->h:I

    move/from16 v20, v10

    iget-wide v9, v2, Lb0/t;->j:J

    iget-object v2, v2, Lb0/t;->k:LW0/c;

    move-object/from16 v26, v2

    move/from16 v17, v4

    move/from16 v18, v7

    move/from16 v19, v8

    move-wide/from16 v24, v9

    move/from16 v21, v11

    move/from16 v22, v13

    move/from16 v23, v14

    invoke-direct/range {v16 .. v27}, Lb0/t;-><init>(IIIIIIIJLW0/c;LG/V;)V

    goto :goto_13

    :cond_21
    if-ne v7, v12, :cond_24

    if-eqz v3, :cond_22

    invoke-interface {v1, v4}, Lb0/o;->p(I)V

    goto :goto_18

    :cond_22
    new-instance v7, LJ/D;

    invoke-direct {v7, v4}, LJ/D;-><init>(I)V

    iget-object v9, v7, LJ/D;->a:[B

    const/4 v15, 0x0

    invoke-interface {v1, v9, v15, v4}, Lb0/o;->readFully([BII)V

    const/4 v4, 0x4

    invoke-virtual {v7, v4}, LJ/D;->O(I)V

    invoke-static {v7}, Ln0/a;->d(LJ/D;)Ln0/a;

    move-result-object v4

    invoke-static {v4}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v4

    new-instance v7, LG/V;

    invoke-direct {v7, v4}, LG/V;-><init>(Ljava/util/List;)V

    if-nez v8, :cond_23

    :goto_16
    move-object/from16 v27, v7

    goto :goto_17

    :cond_23
    invoke-virtual {v8, v7}, LG/V;->b(LG/V;)LG/V;

    move-result-object v7

    goto :goto_16

    :goto_17
    new-instance v16, Lb0/t;

    iget v4, v2, Lb0/t;->a:I

    iget v7, v2, Lb0/t;->b:I

    iget v8, v2, Lb0/t;->c:I

    iget v9, v2, Lb0/t;->d:I

    iget v10, v2, Lb0/t;->e:I

    iget v11, v2, Lb0/t;->g:I

    iget v13, v2, Lb0/t;->h:I

    move/from16 v23, v13

    iget-wide v12, v2, Lb0/t;->j:J

    iget-object v2, v2, Lb0/t;->k:LW0/c;

    move-object/from16 v26, v2

    move/from16 v17, v4

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    move-wide/from16 v24, v12

    invoke-direct/range {v16 .. v27}, Lb0/t;-><init>(IIIIIIIJLW0/c;LG/V;)V

    goto/16 :goto_13

    :cond_24
    invoke-interface {v1, v4}, Lb0/o;->p(I)V

    :goto_18
    sget-object v4, LJ/W;->a:Ljava/lang/String;

    iput-object v2, v0, Lg0/b;->j:Lb0/t;

    move v4, v5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v15, 0x0

    goto/16 :goto_12

    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_26
    iget-object v1, v0, Lg0/b;->j:Lb0/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lg0/b;->j:Lb0/t;

    iget v1, v1, Lb0/t;->c:I

    const/4 v14, 0x6

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lg0/b;->k:I

    iget-object v1, v0, Lg0/b;->j:Lb0/t;

    iget-object v2, v0, Lg0/b;->i:LG/V;

    invoke-virtual {v1, v6, v2}, Lb0/t;->c([BLG/V;)LG/x;

    move-result-object v1

    iget-object v2, v0, Lg0/b;->g:Lb0/G;

    invoke-virtual {v1}, LG/x;->a()LG/w;

    move-result-object v1

    const-string v3, "audio/flac"

    invoke-static {v3}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, LG/w;->n:Ljava/lang/String;

    new-instance v3, LG/x;

    invoke-direct {v3, v1}, LG/x;-><init>(LG/w;)V

    invoke-interface {v2, v3}, Lb0/G;->b(LG/x;)V

    iget-object v1, v0, Lg0/b;->g:Lb0/G;

    iget-object v2, v0, Lg0/b;->j:Lb0/t;

    invoke-virtual {v2}, Lb0/t;->b()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lb0/G;->d(J)V

    const/4 v4, 0x4

    iput v4, v0, Lg0/b;->h:I

    const/4 v15, 0x0

    return v15

    :cond_27
    move v15, v5

    move v4, v9

    new-instance v2, LJ/D;

    invoke-direct {v2, v4}, LJ/D;-><init>(I)V

    iget-object v3, v2, LJ/D;->a:[B

    invoke-interface {v1, v3, v15, v4}, Lb0/o;->readFully([BII)V

    invoke-virtual {v2}, LJ/D;->C()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long v1, v1, v3

    if-nez v1, :cond_28

    const/4 v1, 0x3

    iput v1, v0, Lg0/b;->h:I

    return v15

    :cond_28
    const-string v1, "Failed to read FLAC stream marker."

    invoke-static {v8, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_29
    move v15, v5

    array-length v2, v6

    invoke-interface {v1, v15, v6, v2}, Lb0/o;->l(I[BI)V

    invoke-interface {v1}, Lb0/o;->o()V

    iput v7, v0, Lg0/b;->h:I

    return v15

    :cond_2a
    iget-boolean v2, v0, Lg0/b;->c:Z

    xor-int/2addr v2, v4

    invoke-interface {v1}, Lb0/o;->o()V

    invoke-interface {v1}, Lb0/o;->x()J

    move-result-wide v5

    invoke-static {v1, v2, v3}, Lb0/a;->u(Lb0/o;ZZ)LG/V;

    move-result-object v2

    invoke-interface {v1}, Lb0/o;->x()J

    move-result-wide v7

    sub-long/2addr v7, v5

    long-to-int v3, v7

    invoke-interface {v1, v3}, Lb0/o;->p(I)V

    iput-object v2, v0, Lg0/b;->i:LG/V;

    iput v4, v0, Lg0/b;->h:I

    const/4 v15, 0x0

    return v15
.end method
