.class public final LU/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/b0;


# instance fields
.field public final e:Lu1/C0;

.field public f:J


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, LF1/i;->g(Z)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    new-instance v1, LU/k;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU/b0;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v1, v2, v4}, LU/k;-><init>(LU/b0;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object p1

    iput-object p1, p0, LU/l;->e:Lu1/C0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LU/l;->f:J

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LU/l;->e:Lu1/C0;

    iget v3, v2, Lu1/C0;->h:I

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU/k;

    iget-object v2, v2, LU/k;->e:LU/b0;

    invoke-interface {v2}, LU/b0;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final h()J
    .locals 9

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    iget-object v5, p0, LU/l;->e:Lu1/C0;

    iget v6, v5, Lu1/C0;->h:I

    const-wide/high16 v7, -0x8000000000000000L

    if-ge v2, v6, :cond_1

    invoke-virtual {v5, v2}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LU/k;

    iget-object v5, v5, LU/k;->e:LU/b0;

    invoke-interface {v5}, LU/b0;->h()J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v3, v0

    if-nez v0, :cond_2

    return-wide v7

    :cond_2
    return-wide v3
.end method

.method public final j(LN/J;)Z
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-virtual {p0}, LU/l;->h()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return v1

    :cond_1
    move v6, v0

    move v7, v6

    :goto_0
    iget-object v8, p0, LU/l;->e:Lu1/C0;

    iget v9, v8, Lu1/C0;->h:I

    if-ge v6, v9, :cond_5

    invoke-virtual {v8, v6}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LU/k;

    iget-object v9, v9, LU/k;->e:LU/b0;

    invoke-interface {v9}, LU/b0;->h()J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-eqz v11, :cond_2

    iget-wide v11, p1, LN/J;->a:J

    cmp-long v11, v9, v11

    if-gtz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    move v11, v0

    :goto_1
    cmp-long v9, v9, v2

    if-eqz v9, :cond_3

    if-eqz v11, :cond_4

    :cond_3
    invoke-virtual {v8, v6}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LU/k;

    iget-object v8, v8, LU/k;->e:LU/b0;

    invoke-interface {v8, p1}, LU/b0;->j(LN/J;)Z

    move-result v8

    or-int/2addr v7, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    or-int/2addr v1, v7

    if-nez v7, :cond_0

    return v1
.end method

.method public final n()J
    .locals 13

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    :goto_0
    iget-object v7, p0, LU/l;->e:Lu1/C0;

    iget v8, v7, Lu1/C0;->h:I

    const-wide/high16 v9, -0x8000000000000000L

    if-ge v2, v8, :cond_3

    invoke-virtual {v7, v2}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LU/k;

    iget-object v8, v7, LU/k;->e:LU/b0;

    invoke-interface {v8}, LU/b0;->n()J

    move-result-wide v11

    iget-object v7, v7, LU/k;->f:Lu1/P;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lu1/P;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lu1/P;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lu1/P;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    cmp-long v7, v11, v9

    if-eqz v7, :cond_1

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_1
    cmp-long v7, v11, v9

    if-eqz v7, :cond_2

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    cmp-long v2, v3, v0

    if-eqz v2, :cond_4

    iput-wide v3, p0, LU/l;->f:J

    return-wide v3

    :cond_4
    cmp-long v0, v5, v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, LU/l;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    return-wide v0

    :cond_5
    return-wide v5

    :cond_6
    return-wide v9
.end method

.method public final t(J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LU/l;->e:Lu1/C0;

    iget v2, v1, Lu1/C0;->h:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/k;

    invoke-virtual {v1, p1, p2}, LU/k;->t(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
