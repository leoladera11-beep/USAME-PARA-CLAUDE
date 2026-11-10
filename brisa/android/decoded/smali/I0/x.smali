.class public final LI0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/K;


# instance fields
.field public final a:LI0/h;

.field public final b:LJ/B;

.field public c:I

.field public d:I

.field public e:LJ/S;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(LI0/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/x;->a:LI0/h;

    new-instance p1, LJ/B;

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, LJ/B;-><init>([BI)V

    iput-object p1, p0, LI0/x;->b:LJ/B;

    const/4 p1, 0x0

    iput p1, p0, LI0/x;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LI0/x;->c:I

    iput v0, p0, LI0/x;->d:I

    iput-boolean v0, p0, LI0/x;->h:Z

    iget-object v0, p0, LI0/x;->a:LI0/h;

    invoke-interface {v0}, LI0/h;->a()V

    return-void
.end method

.method public final b(LJ/S;Lb0/p;LI0/J;)V
    .locals 0

    iput-object p1, p0, LI0/x;->e:LJ/S;

    iget-object p1, p0, LI0/x;->a:LI0/h;

    invoke-interface {p1, p2, p3}, LI0/h;->j(Lb0/p;LI0/J;)V

    return-void
.end method

.method public final c(ILJ/D;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, LI0/x;->e:LJ/S;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v2, p1, 0x1

    const-string v3, "PesReader"

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    iget-object v8, v0, LI0/x;->a:LI0/h;

    const/4 v9, 0x1

    if-eqz v2, :cond_5

    iget v2, v0, LI0/x;->c:I

    if-eqz v2, :cond_3

    if-eq v2, v9, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v7, :cond_1

    iget v2, v0, LI0/x;->j:I

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Unexpected start indicator: expected "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v0, LI0/x;->j:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " more bytes"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v8}, LI0/h;->h()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_2
    const-string v2, "Unexpected start indicator reading extended header"

    invoke-static {v3, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget v2, v1, LJ/D;->c:I

    if-nez v2, :cond_4

    invoke-interface {v8}, LI0/h;->i()V

    :cond_4
    iput v9, v0, LI0/x;->c:I

    iput v6, v0, LI0/x;->d:I

    :cond_5
    move/from16 v2, p1

    :goto_1
    invoke-virtual {v1}, LJ/D;->a()I

    move-result v10

    if-lez v10, :cond_14

    iget v10, v0, LI0/x;->c:I

    if-eqz v10, :cond_13

    iget-object v11, v0, LI0/x;->b:LJ/B;

    if-eq v10, v9, :cond_e

    if-eq v10, v5, :cond_a

    if-ne v10, v7, :cond_9

    invoke-virtual {v1}, LJ/D;->a()I

    move-result v10

    iget v11, v0, LI0/x;->j:I

    if-ne v11, v4, :cond_6

    move v11, v6

    goto :goto_2

    :cond_6
    sub-int v11, v10, v11

    :goto_2
    if-lez v11, :cond_7

    sub-int/2addr v10, v11

    iget v11, v1, LJ/D;->b:I

    add-int/2addr v11, v10

    invoke-virtual {v1, v11}, LJ/D;->M(I)V

    :cond_7
    invoke-interface {v8, v1}, LI0/h;->f(LJ/D;)V

    iget v11, v0, LI0/x;->j:I

    if-eq v11, v4, :cond_8

    sub-int/2addr v11, v10

    iput v11, v0, LI0/x;->j:I

    if-nez v11, :cond_8

    invoke-interface {v8}, LI0/h;->h()V

    iput v9, v0, LI0/x;->c:I

    iput v6, v0, LI0/x;->d:I

    :cond_8
    move v10, v5

    goto/16 :goto_6

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_a
    const/16 v10, 0xa

    iget v12, v0, LI0/x;->i:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v12, v11, LJ/B;->b:[B

    invoke-virtual {v0, v1, v12, v10}, LI0/x;->d(LJ/D;[BI)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    iget v12, v0, LI0/x;->i:I

    invoke-virtual {v0, v1, v10, v12}, LI0/x;->d(LJ/D;[BI)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v11, v6}, LJ/B;->m(I)V

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v0, LI0/x;->l:J

    iget-boolean v10, v0, LI0/x;->f:Z

    const/4 v12, 0x4

    if-eqz v10, :cond_c

    invoke-virtual {v11, v12}, LJ/B;->o(I)V

    invoke-virtual {v11, v7}, LJ/B;->g(I)I

    move-result v10

    int-to-long v13, v10

    const/16 v10, 0x1e

    shl-long/2addr v13, v10

    invoke-virtual {v11, v9}, LJ/B;->o(I)V

    const/16 v15, 0xf

    invoke-virtual {v11, v15}, LJ/B;->g(I)I

    move-result v16

    move/from16 p1, v10

    shl-int/lit8 v10, v16, 0xf

    int-to-long v4, v10

    or-long/2addr v4, v13

    invoke-virtual {v11, v9}, LJ/B;->o(I)V

    invoke-virtual {v11, v15}, LJ/B;->g(I)I

    move-result v10

    int-to-long v13, v10

    or-long/2addr v4, v13

    invoke-virtual {v11, v9}, LJ/B;->o(I)V

    iget-boolean v10, v0, LI0/x;->h:Z

    if-nez v10, :cond_b

    iget-boolean v10, v0, LI0/x;->g:Z

    if-eqz v10, :cond_b

    invoke-virtual {v11, v12}, LJ/B;->o(I)V

    invoke-virtual {v11, v7}, LJ/B;->g(I)I

    move-result v10

    int-to-long v13, v10

    shl-long v13, v13, p1

    invoke-virtual {v11, v9}, LJ/B;->o(I)V

    invoke-virtual {v11, v15}, LJ/B;->g(I)I

    move-result v10

    shl-int/2addr v10, v15

    move-wide/from16 v17, v13

    int-to-long v12, v10

    or-long v12, v17, v12

    invoke-virtual {v11, v9}, LJ/B;->o(I)V

    invoke-virtual {v11, v15}, LJ/B;->g(I)I

    move-result v10

    int-to-long v14, v10

    or-long/2addr v12, v14

    invoke-virtual {v11, v9}, LJ/B;->o(I)V

    iget-object v10, v0, LI0/x;->e:LJ/S;

    invoke-virtual {v10, v12, v13}, LJ/S;->b(J)J

    iput-boolean v9, v0, LI0/x;->h:Z

    :cond_b
    iget-object v10, v0, LI0/x;->e:LJ/S;

    invoke-virtual {v10, v4, v5}, LJ/S;->b(J)J

    move-result-wide v4

    iput-wide v4, v0, LI0/x;->l:J

    :cond_c
    iget-boolean v4, v0, LI0/x;->k:Z

    if-eqz v4, :cond_d

    const/4 v12, 0x4

    goto :goto_3

    :cond_d
    move v12, v6

    :goto_3
    or-int/2addr v2, v12

    iget-wide v4, v0, LI0/x;->l:J

    invoke-interface {v8, v2, v4, v5}, LI0/h;->g(IJ)V

    iput v7, v0, LI0/x;->c:I

    iput v6, v0, LI0/x;->d:I

    const/4 v4, -0x1

    const/4 v5, 0x2

    goto/16 :goto_1

    :cond_e
    iget-object v4, v11, LJ/B;->b:[B

    const/16 v5, 0x9

    invoke-virtual {v0, v1, v4, v5}, LI0/x;->d(LJ/D;[BI)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v11, v6}, LJ/B;->m(I)V

    const/16 v4, 0x18

    invoke-virtual {v11, v4}, LJ/B;->g(I)I

    move-result v4

    if-eq v4, v9, :cond_f

    const-string v5, "Unexpected start code prefix: "

    invoke-static {v5, v3, v4}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v4, -0x1

    iput v4, v0, LI0/x;->j:I

    move v5, v6

    const/4 v10, 0x2

    goto :goto_5

    :cond_f
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, LJ/B;->o(I)V

    const/16 v5, 0x10

    invoke-virtual {v11, v5}, LJ/B;->g(I)I

    move-result v5

    const/4 v10, 0x5

    invoke-virtual {v11, v10}, LJ/B;->o(I)V

    invoke-virtual {v11}, LJ/B;->f()Z

    move-result v10

    iput-boolean v10, v0, LI0/x;->k:Z

    const/4 v10, 0x2

    invoke-virtual {v11, v10}, LJ/B;->o(I)V

    invoke-virtual {v11}, LJ/B;->f()Z

    move-result v12

    iput-boolean v12, v0, LI0/x;->f:Z

    invoke-virtual {v11}, LJ/B;->f()Z

    move-result v12

    iput-boolean v12, v0, LI0/x;->g:Z

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, LJ/B;->o(I)V

    invoke-virtual {v11, v4}, LJ/B;->g(I)I

    move-result v4

    iput v4, v0, LI0/x;->i:I

    if-nez v5, :cond_10

    const/4 v11, -0x1

    iput v11, v0, LI0/x;->j:I

    move v4, v11

    goto :goto_4

    :cond_10
    add-int/lit8 v5, v5, -0x3

    sub-int/2addr v5, v4

    iput v5, v0, LI0/x;->j:I

    if-gez v5, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found negative packet payload size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, LI0/x;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    iput v4, v0, LI0/x;->j:I

    goto :goto_4

    :cond_11
    const/4 v4, -0x1

    :goto_4
    move v5, v10

    :goto_5
    iput v5, v0, LI0/x;->c:I

    iput v6, v0, LI0/x;->d:I

    goto :goto_6

    :cond_12
    const/4 v4, -0x1

    const/4 v10, 0x2

    goto :goto_6

    :cond_13
    move v10, v5

    invoke-virtual {v1}, LJ/D;->a()I

    move-result v5

    invoke-virtual {v1, v5}, LJ/D;->O(I)V

    :goto_6
    move v5, v10

    goto/16 :goto_1

    :cond_14
    return-void
.end method

.method public final d(LJ/D;[BI)Z
    .locals 3

    invoke-virtual {p1}, LJ/D;->a()I

    move-result v0

    iget v1, p0, LI0/x;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, LJ/D;->O(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, LI0/x;->d:I

    invoke-virtual {p1, v2, p2, v0}, LJ/D;->k(I[BI)V

    :goto_0
    iget p1, p0, LI0/x;->d:I

    add-int/2addr p1, v0

    iput p1, p0, LI0/x;->d:I

    if-ne p1, p3, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
