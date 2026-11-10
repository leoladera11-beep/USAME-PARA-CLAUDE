.class public final Lw0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/g;


# instance fields
.field public final b:Lw0/f;

.field public final c:J

.field public final d:J

.field public final e:Lw0/i;

.field public f:I

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J


# direct methods
.method public constructor <init>(Lw0/i;JJJJZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    iput-object p1, p0, Lw0/b;->e:Lw0/i;

    iput-wide p2, p0, Lw0/b;->c:J

    iput-wide p4, p0, Lw0/b;->d:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    :cond_1
    iput v1, p0, Lw0/b;->f:I

    goto :goto_2

    :cond_2
    :goto_1
    iput-wide p8, p0, Lw0/b;->g:J

    const/4 p1, 0x4

    iput p1, p0, Lw0/b;->f:I

    :goto_2
    new-instance p1, Lw0/f;

    invoke-direct {p1}, Lw0/f;-><init>()V

    iput-object p1, p0, Lw0/b;->b:Lw0/f;

    return-void
.end method


# virtual methods
.method public final b()Lb0/z;
    .locals 4

    iget-wide v0, p0, Lw0/b;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lw0/a;

    invoke-direct {v0, p0}, Lw0/a;-><init>(Lw0/b;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Lb0/o;)J
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lw0/b;->f:I

    iget-wide v5, v0, Lw0/b;->d:J

    const/4 v7, 0x0

    iget-object v8, v0, Lw0/b;->b:Lw0/f;

    const/4 v9, 0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x4

    if-eqz v2, :cond_d

    if-eq v2, v9, :cond_c

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v12, :cond_0

    return-wide v10

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1
    const-wide/16 v19, 0x2

    goto/16 :goto_4

    :cond_2
    const-wide/16 v15, 0x2

    iget-wide v13, v0, Lw0/b;->j:J

    const-wide/16 v17, 0x0

    iget-wide v3, v0, Lw0/b;->k:J

    cmp-long v2, v13, v3

    if-nez v2, :cond_3

    move-wide v4, v10

    :goto_0
    move-wide/from16 v19, v15

    goto/16 :goto_3

    :cond_3
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v2

    iget-wide v4, v0, Lw0/b;->k:J

    invoke-virtual {v8, v1, v4, v5}, Lw0/f;->b(Lb0/o;J)Z

    move-result v4

    if-nez v4, :cond_5

    iget-wide v4, v0, Lw0/b;->j:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {v8, v1, v7}, Lw0/f;->a(Lb0/o;Z)Z

    invoke-interface {v1}, Lb0/o;->o()V

    iget-wide v4, v0, Lw0/b;->i:J

    iget-wide v13, v8, Lw0/f;->b:J

    sub-long/2addr v4, v13

    iget v9, v8, Lw0/f;->d:I

    move-wide/from16 v19, v15

    iget v15, v8, Lw0/f;->e:I

    add-int/2addr v9, v15

    cmp-long v15, v17, v4

    if-gtz v15, :cond_6

    const-wide/32 v15, 0x11940

    cmp-long v15, v4, v15

    if-gez v15, :cond_6

    move-wide v4, v10

    goto :goto_3

    :cond_6
    cmp-long v15, v4, v17

    if-gez v15, :cond_7

    iput-wide v2, v0, Lw0/b;->k:J

    iput-wide v13, v0, Lw0/b;->m:J

    goto :goto_1

    :cond_7
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v2

    int-to-long v13, v9

    add-long/2addr v2, v13

    iput-wide v2, v0, Lw0/b;->j:J

    iget-wide v2, v8, Lw0/f;->b:J

    iput-wide v2, v0, Lw0/b;->l:J

    :goto_1
    iget-wide v2, v0, Lw0/b;->k:J

    iget-wide v13, v0, Lw0/b;->j:J

    sub-long/2addr v2, v13

    const-wide/32 v16, 0x186a0

    cmp-long v2, v2, v16

    if-gez v2, :cond_8

    iput-wide v13, v0, Lw0/b;->k:J

    move-wide v4, v13

    goto :goto_3

    :cond_8
    int-to-long v2, v9

    if-gtz v15, :cond_9

    move-wide/from16 v15, v19

    goto :goto_2

    :cond_9
    const-wide/16 v15, 0x1

    :goto_2
    mul-long/2addr v2, v15

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v15

    sub-long/2addr v15, v2

    iget-wide v2, v0, Lw0/b;->k:J

    const-wide/16 v17, 0x1

    iget-wide v13, v0, Lw0/b;->j:J

    sub-long v21, v2, v13

    mul-long v21, v21, v4

    iget-wide v4, v0, Lw0/b;->m:J

    move-wide/from16 v23, v13

    iget-wide v12, v0, Lw0/b;->l:J

    sub-long/2addr v4, v12

    div-long v21, v21, v4

    add-long v21, v21, v15

    sub-long v25, v2, v17

    invoke-static/range {v21 .. v26}, LJ/W;->h(JJJ)J

    move-result-wide v4

    :goto_3
    cmp-long v2, v4, v10

    if-eqz v2, :cond_a

    return-wide v4

    :cond_a
    iput v6, v0, Lw0/b;->f:I

    :goto_4
    invoke-virtual {v8, v1, v10, v11}, Lw0/f;->b(Lb0/o;J)Z

    invoke-virtual {v8, v1, v7}, Lw0/f;->a(Lb0/o;Z)Z

    iget-wide v2, v8, Lw0/f;->b:J

    iget-wide v4, v0, Lw0/b;->i:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_b

    invoke-interface {v1}, Lb0/o;->o()V

    const/4 v1, 0x4

    iput v1, v0, Lw0/b;->f:I

    iget-wide v1, v0, Lw0/b;->l:J

    add-long v1, v1, v19

    neg-long v1, v1

    return-wide v1

    :cond_b
    iget v2, v8, Lw0/f;->d:I

    iget v3, v8, Lw0/f;->e:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v2

    iput-wide v2, v0, Lw0/b;->j:J

    iget-wide v2, v8, Lw0/f;->b:J

    iput-wide v2, v0, Lw0/b;->l:J

    goto :goto_4

    :cond_c
    const-wide/16 v17, 0x0

    goto :goto_5

    :cond_d
    const-wide/16 v17, 0x0

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v2

    iput-wide v2, v0, Lw0/b;->h:J

    iput v9, v0, Lw0/b;->f:I

    const-wide/32 v12, 0xff1b

    sub-long v12, v5, v12

    cmp-long v2, v12, v2

    if-lez v2, :cond_e

    return-wide v12

    :cond_e
    :goto_5
    iput v7, v8, Lw0/f;->a:I

    move-wide/from16 v2, v17

    iput-wide v2, v8, Lw0/f;->b:J

    iput v7, v8, Lw0/f;->c:I

    iput v7, v8, Lw0/f;->d:I

    iput v7, v8, Lw0/f;->e:I

    invoke-virtual {v8, v1, v10, v11}, Lw0/f;->b(Lb0/o;J)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v8, v1, v7}, Lw0/f;->a(Lb0/o;Z)Z

    iget v2, v8, Lw0/f;->d:I

    iget v3, v8, Lw0/f;->e:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    iget-wide v2, v8, Lw0/f;->b:J

    :goto_6
    iget v4, v8, Lw0/f;->a:I

    const/4 v7, 0x4

    and-int/2addr v4, v7

    if-eq v4, v7, :cond_f

    invoke-virtual {v8, v1, v10, v11}, Lw0/f;->b(Lb0/o;J)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v12

    cmp-long v4, v12, v5

    if-gez v4, :cond_f

    invoke-virtual {v8, v1, v9}, Lw0/f;->a(Lb0/o;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, v8, Lw0/f;->d:I

    iget v7, v8, Lw0/f;->e:I

    add-int/2addr v4, v7

    :try_start_0
    invoke-interface {v1, v4}, Lb0/o;->p(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v2, v8, Lw0/f;->b:J

    goto :goto_6

    :catch_0
    :cond_f
    iput-wide v2, v0, Lw0/b;->g:J

    const/4 v1, 0x4

    iput v1, v0, Lw0/b;->f:I

    iget-wide v1, v0, Lw0/b;->h:J

    return-wide v1

    :cond_10
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final e(J)V
    .locals 10

    iget-wide v0, p0, Lw0/b;->g:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, LJ/W;->h(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lw0/b;->i:J

    const/4 p1, 0x2

    iput p1, p0, Lw0/b;->f:I

    iget-wide p1, p0, Lw0/b;->c:J

    iput-wide p1, p0, Lw0/b;->j:J

    iget-wide p1, p0, Lw0/b;->d:J

    iput-wide p1, p0, Lw0/b;->k:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lw0/b;->l:J

    iget-wide p1, p0, Lw0/b;->g:J

    iput-wide p1, p0, Lw0/b;->m:J

    return-void
.end method
