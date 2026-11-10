.class public final LB1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;


# virtual methods
.method public a()J
    .locals 10

    iget-wide v0, p0, LB1/d;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_3

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, LB1/d;->d:Ljava/lang/Object;

    check-cast v2, LK/A;

    iget v7, v2, LK/A;->f:I

    int-to-long v7, v7

    mul-long/2addr v0, v7

    iget v7, p0, LB1/d;->b:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    iget v9, p0, LB1/d;->c:I

    if-eq v9, v8, :cond_1

    add-int/2addr v7, v9

    int-to-long v7, v7

    sub-long/2addr v0, v7

    :cond_1
    cmp-long v5, v0, v5

    if-gtz v5, :cond_2

    return-wide v3

    :cond_2
    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    iget v2, v2, LK/A;->c:I

    invoke-static {v2, v0, v1}, LJ/W;->L(IJ)J

    move-result-wide v0

    return-wide v0

    :cond_3
    :goto_0
    return-wide v3
.end method
