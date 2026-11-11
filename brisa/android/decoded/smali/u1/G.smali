.class public final Lu1/G;
.super LC1/e;
.source "SourceFile"


# virtual methods
.method public final c()Lu1/T;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported for bimaps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;
    .locals 0

    invoke-super {p0, p1, p2}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    return-object p0
.end method

.method public final n(Ljava/lang/Iterable;)LC1/e;
    .locals 0

    invoke-super {p0, p1}, LC1/e;->n(Ljava/lang/Iterable;)LC1/e;

    return-object p0
.end method

.method public final u()Lu1/B0;
    .locals 3

    iget v0, p0, LC1/e;->f:I

    if-nez v0, :cond_0

    sget-object v0, Lu1/B0;->m:Lu1/B0;

    return-object v0

    :cond_0
    new-instance v0, Lu1/B0;

    iget-object v1, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget v2, p0, LC1/e;->f:I

    invoke-direct {v0, v1, v2}, Lu1/B0;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final v(LG/r0;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    return-void
.end method

.method public final w(Ljava/util/Set;)V
    .locals 0

    invoke-super {p0, p1}, LC1/e;->n(Ljava/lang/Iterable;)LC1/e;

    return-void
.end method
