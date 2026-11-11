.class public Lu1/j;
.super Lu1/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field public i:Ljava/util/SortedSet;

.field public final synthetic j:Lu1/s0;


# direct methods
.method public constructor <init>(Lu1/s0;Ljava/util/SortedMap;)V
    .locals 0

    iput-object p1, p0, Lu1/j;->j:Lu1/s0;

    invoke-direct {p0, p1, p2}, Lu1/e;-><init>(Lu1/s0;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/SortedSet;
    .locals 3

    new-instance v0, Lu1/k;

    iget-object v1, p0, Lu1/j;->j:Lu1/s0;

    invoke-virtual {p0}, Lu1/j;->d()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lu1/k;-><init>(Lu1/s0;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public c()Ljava/util/SortedSet;
    .locals 1

    iget-object v0, p0, Lu1/j;->i:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lu1/j;->b()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lu1/j;->i:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    invoke-virtual {p0}, Lu1/j;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/SortedMap;
    .locals 1

    iget-object v0, p0, Lu1/e;->g:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu1/j;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    new-instance v0, Lu1/j;

    invoke-virtual {p0}, Lu1/j;->d()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lu1/j;->j:Lu1/s0;

    invoke-direct {v0, v1, p1}, Lu1/j;-><init>(Lu1/s0;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lu1/j;->c()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu1/j;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    new-instance v0, Lu1/j;

    invoke-virtual {p0}, Lu1/j;->d()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object p2, p0, Lu1/j;->j:Lu1/s0;

    invoke-direct {v0, p2, p1}, Lu1/j;-><init>(Lu1/s0;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    new-instance v0, Lu1/j;

    invoke-virtual {p0}, Lu1/j;->d()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lu1/j;->j:Lu1/s0;

    invoke-direct {v0, v1, p1}, Lu1/j;-><init>(Lu1/s0;Ljava/util/SortedMap;)V

    return-object v0
.end method
