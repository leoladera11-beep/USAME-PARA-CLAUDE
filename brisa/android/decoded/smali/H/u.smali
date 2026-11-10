.class public final LH/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH/o;


# instance fields
.field public b:I

.field public c:F

.field public d:F

.field public e:LH/k;

.field public f:LH/k;

.field public g:LH/k;

.field public h:LH/k;

.field public i:Z

.field public j:LH/t;

.field public k:Ljava/nio/ByteBuffer;

.field public l:Ljava/nio/ByteBuffer;

.field public m:J

.field public n:J

.field public o:Z


# virtual methods
.method public final b()Z
    .locals 5

    iget-boolean v0, p0, LH/u;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, LH/u;->j:LH/t;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v3, v0, LH/t;->k:I

    if-ltz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, LF1/i;->o(Z)V

    iget v3, v0, LH/t;->k:I

    iget v4, v0, LH/t;->b:I

    mul-int/2addr v3, v4

    iget-object v0, v0, LH/t;->i:LH/r;

    invoke-interface {v0}, LH/r;->l()I

    move-result v0

    mul-int/2addr v0, v3

    if-nez v0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .locals 8

    iget-object v0, p0, LH/u;->j:LH/t;

    if-eqz v0, :cond_3

    iget-object v1, v0, LH/t;->i:LH/r;

    iget v2, v0, LH/t;->b:I

    iget v3, v0, LH/t;->k:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, LF1/i;->o(Z)V

    iget v3, v0, LH/t;->k:I

    mul-int/2addr v3, v2

    invoke-interface {v1}, LH/r;->l()I

    move-result v6

    mul-int/2addr v6, v3

    if-lez v6, :cond_3

    iget-object v3, p0, LH/u;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    if-ge v3, v6, :cond_1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, LH/u;->k:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    iget-object v3, p0, LH/u;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_1
    iget-object v3, p0, LH/u;->k:Ljava/nio/ByteBuffer;

    iget v7, v0, LH/t;->k:I

    if-ltz v7, :cond_2

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-static {v5}, LF1/i;->o(Z)V

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-interface {v1}, LH/r;->l()I

    move-result v7

    mul-int/2addr v7, v2

    div-int/2addr v5, v7

    iget v7, v0, LH/t;->k:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v1, v5, v3}, LH/r;->e(ILjava/nio/ByteBuffer;)V

    iget v3, v0, LH/t;->k:I

    sub-int/2addr v3, v5

    iput v3, v0, LH/t;->k:I

    invoke-interface {v1}, LH/r;->p()Ljava/lang/Object;

    move-result-object v3

    mul-int/2addr v5, v2

    invoke-interface {v1}, LH/r;->p()Ljava/lang/Object;

    move-result-object v1

    iget v0, v0, LH/t;->k:I

    mul-int/2addr v0, v2

    invoke-static {v3, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LH/u;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-wide v0, p0, LH/u;->n:J

    int-to-long v2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, LH/u;->n:J

    iget-object v0, p0, LH/u;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, LH/u;->l:Ljava/nio/ByteBuffer;

    :cond_3
    iget-object v0, p0, LH/u;->l:Ljava/nio/ByteBuffer;

    sget-object v1, LH/o;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, LH/u;->l:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final d()V
    .locals 11

    iget-object v0, p0, LH/u;->j:LH/t;

    if-eqz v0, :cond_1

    iget v1, v0, LH/t;->j:I

    iget v2, v0, LH/t;->c:F

    iget v3, v0, LH/t;->d:F

    div-float/2addr v2, v3

    float-to-double v4, v2

    iget v2, v0, LH/t;->e:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    iget v6, v0, LH/t;->o:I

    sub-int v7, v1, v6

    iget v8, v0, LH/t;->k:I

    int-to-double v9, v7

    div-double/2addr v9, v4

    int-to-double v4, v6

    add-double/2addr v9, v4

    iget-wide v4, v0, LH/t;->q:D

    add-double/2addr v9, v4

    iget v4, v0, LH/t;->l:I

    int-to-double v4, v4

    add-double/2addr v9, v4

    div-double/2addr v9, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v2

    double-to-int v2, v9

    add-int/2addr v8, v2

    const-wide/16 v2, 0x0

    iput-wide v2, v0, LH/t;->q:D

    iget-object v2, v0, LH/t;->i:LH/r;

    iget v3, v0, LH/t;->h:I

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v3, v1

    invoke-interface {v2, v4}, LH/r;->m(I)V

    iget v4, v0, LH/t;->b:I

    mul-int/2addr v1, v4

    invoke-interface {v2, v1, v3}, LH/r;->f(II)V

    iget v1, v0, LH/t;->j:I

    add-int/2addr v3, v1

    iput v3, v0, LH/t;->j:I

    invoke-virtual {v0}, LH/t;->b()V

    iget v1, v0, LH/t;->k:I

    const/4 v2, 0x0

    if-le v1, v8, :cond_0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, LH/t;->k:I

    :cond_0
    iput v2, v0, LH/t;->j:I

    iput v2, v0, LH/t;->o:I

    iput v2, v0, LH/t;->l:I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LH/u;->o:Z

    return-void
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, LH/u;->f:LH/k;

    iget v0, v0, LH/k;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, LH/u;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, LH/u;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, LH/u;->f:LH/k;

    iget v0, v0, LH/k;->a:I

    iget-object v1, p0, LH/u;->e:LH/k;

    iget v1, v1, LH/k;->a:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(LH/k;)LH/k;
    .locals 3

    iget v0, p1, LH/k;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LH/n;

    invoke-direct {v0, p1}, LH/n;-><init>(LH/k;)V

    throw v0

    :cond_1
    :goto_0
    iget v1, p0, LH/u;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v1, p1, LH/k;->a:I

    :cond_2
    iput-object p1, p0, LH/u;->e:LH/k;

    new-instance v2, LH/k;

    iget p1, p1, LH/k;->b:I

    invoke-direct {v2, v1, p1, v0}, LH/k;-><init>(III)V

    iput-object v2, p0, LH/u;->f:LH/k;

    const/4 p1, 0x1

    iput-boolean p1, p0, LH/u;->i:Z

    return-object v2
.end method

.method public final g(Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LH/u;->j:LH/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget-wide v2, p0, LH/u;->m:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, LH/u;->m:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, LH/t;->b:I

    iget-object v3, v0, LH/t;->i:LH/r;

    invoke-interface {v3}, LH/r;->l()I

    move-result v4

    mul-int/2addr v4, v2

    div-int v2, v1, v4

    invoke-interface {v3, v2}, LH/r;->m(I)V

    invoke-interface {v3, v1, p1}, LH/r;->b(ILjava/nio/ByteBuffer;)V

    iget p1, v0, LH/t;->j:I

    add-int/2addr p1, v2

    iput p1, v0, LH/t;->j:I

    invoke-virtual {v0}, LH/t;->b()V

    return-void
.end method

.method public final h(J)J
    .locals 11

    iget-wide v0, p0, LH/u;->n:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, LH/u;->m:J

    iget-object v2, p0, LH/u;->j:LH/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, LH/t;->j:I

    iget v4, v2, LH/t;->b:I

    mul-int/2addr v3, v4

    iget-object v2, v2, LH/t;->i:LH/r;

    invoke-interface {v2}, LH/r;->l()I

    move-result v2

    mul-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v8, v0, v2

    iget-object v0, p0, LH/u;->h:LH/k;

    iget v0, v0, LH/k;->a:I

    iget-object v1, p0, LH/u;->g:LH/k;

    iget v1, v1, LH/k;->a:I

    if-ne v0, v1, :cond_0

    iget-wide v6, p0, LH/u;->n:J

    sget-object v10, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v4, p1

    invoke-static/range {v4 .. v10}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    move-wide v4, p1

    iget-wide p1, p0, LH/u;->n:J

    int-to-long v1, v1

    mul-long v2, p1, v1

    int-to-long p1, v0

    mul-long/2addr v8, p1

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v0, v4

    move-wide v4, v8

    invoke-static/range {v0 .. v6}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    move-wide v4, p1

    long-to-double p1, v4

    iget v0, p0, LH/u;->c:F

    float-to-double v0, v0

    div-double/2addr p1, v0

    double-to-long p1, p1

    return-wide p1
.end method

.method public final i(LH/m;)V
    .locals 10

    invoke-virtual {p0}, LH/u;->e()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, LH/u;->e:LH/k;

    iput-object p1, p0, LH/u;->g:LH/k;

    iget-object v1, p0, LH/u;->f:LH/k;

    iput-object v1, p0, LH/u;->h:LH/k;

    iget-boolean v2, p0, LH/u;->i:Z

    if-eqz v2, :cond_1

    new-instance v3, LH/t;

    iget v4, p1, LH/k;->a:I

    iget v5, p1, LH/k;->b:I

    iget v6, p0, LH/u;->c:F

    iget v7, p0, LH/u;->d:F

    iget v8, v1, LH/k;->a:I

    iget p1, p1, LH/k;->c:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    move v9, p1

    goto :goto_0

    :cond_0
    move v9, v0

    :goto_0
    invoke-direct/range {v3 .. v9}, LH/t;-><init>(IIFFIZ)V

    iput-object v3, p0, LH/u;->j:LH/t;

    goto :goto_1

    :cond_1
    iget-object p1, p0, LH/u;->j:LH/t;

    if-eqz p1, :cond_2

    iput v0, p1, LH/t;->j:I

    iput v0, p1, LH/t;->k:I

    iput v0, p1, LH/t;->l:I

    iput v0, p1, LH/t;->m:I

    iput v0, p1, LH/t;->n:I

    iput v0, p1, LH/t;->o:I

    iput v0, p1, LH/t;->p:I

    const-wide/16 v1, 0x0

    iput-wide v1, p1, LH/t;->q:D

    iget-object p1, p1, LH/t;->i:LH/r;

    invoke-interface {p1}, LH/r;->flush()V

    :cond_2
    :goto_1
    sget-object p1, LH/o;->a:Ljava/nio/ByteBuffer;

    iput-object p1, p0, LH/u;->l:Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LH/u;->m:J

    iput-wide v1, p0, LH/u;->n:J

    iput-boolean v0, p0, LH/u;->o:Z

    return-void
.end method

.method public final reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LH/u;->c:F

    iput v0, p0, LH/u;->d:F

    sget-object v0, LH/k;->e:LH/k;

    iput-object v0, p0, LH/u;->e:LH/k;

    iput-object v0, p0, LH/u;->f:LH/k;

    iput-object v0, p0, LH/u;->g:LH/k;

    iput-object v0, p0, LH/u;->h:LH/k;

    sget-object v0, LH/o;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, LH/u;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, LH/u;->l:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, LH/u;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LH/u;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, LH/u;->j:LH/t;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LH/u;->m:J

    iput-wide v1, p0, LH/u;->n:J

    iput-boolean v0, p0, LH/u;->o:Z

    return-void
.end method
