.class public final Lu1/s0;
.super Lu1/p;
.source "SourceFile"

# interfaces
.implements Lu1/i0;
.implements Ljava/io/Serializable;


# instance fields
.field public transient i:Ljava/util/Map;

.field public transient j:I

.field public transient k:Lu1/r0;


# virtual methods
.method public final clear()V
    .locals 3

    iget-object v0, p0, Lu1/s0;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lu1/s0;->j:I

    return-void
.end method

.method public final d()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lu1/s0;->i:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v1, Lu1/g;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lu1/g;-><init>(Lu1/s0;Ljava/util/NavigableMap;)V

    return-object v1

    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    new-instance v1, Lu1/j;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lu1/j;-><init>(Lu1/s0;Ljava/util/SortedMap;)V

    return-object v1

    :cond_1
    new-instance v1, Lu1/e;

    invoke-direct {v1, p0, v0}, Lu1/e;-><init>(Lu1/s0;Ljava/util/Map;)V

    return-object v1
.end method

.method public final e()Ljava/util/Collection;
    .locals 2

    new-instance v0, Lu1/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu1/o;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lu1/s0;->i:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v1, Lu1/h;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lu1/h;-><init>(Lu1/s0;Ljava/util/NavigableMap;)V

    return-object v1

    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    new-instance v1, Lu1/k;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lu1/k;-><init>(Lu1/s0;Ljava/util/SortedMap;)V

    return-object v1

    :cond_1
    new-instance v1, Lu1/f;

    invoke-direct {v1, p0, v0}, Lu1/f;-><init>(Lu1/s0;Ljava/util/Map;)V

    return-object v1
.end method

.method public final g()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lu1/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lu1/b;-><init>(Lu1/s0;I)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, Lu1/s0;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lu1/s0;->k:Lu1/r0;

    invoke-virtual {v0}, Lu1/r0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Ljava/util/RandomAccess;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lu1/i;

    invoke-direct {v1, p0, p1, v0, v2}, Lu1/m;-><init>(Lu1/s0;Ljava/lang/Object;Ljava/util/List;Lu1/m;)V

    return-object v1

    :cond_1
    new-instance v1, Lu1/m;

    invoke-direct {v1, p0, p1, v0, v2}, Lu1/m;-><init>(Lu1/s0;Ljava/lang/Object;Ljava/util/List;Lu1/m;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lu1/s0;->j:I

    return v0
.end method
