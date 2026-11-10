.class public final LC1/c;
.super Ljava/util/ArrayList;
.source "SourceFile"


# virtual methods
.method public final a(I)LC1/c;
    .locals 2

    new-instance v0, LC1/c;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, LC1/c;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, LC1/c;

    if-eqz v1, :cond_0

    check-cast p1, LC1/c;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final b(I)LC1/d;
    .locals 2

    new-instance v0, LC1/d;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, p1}, LC1/c;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, LC1/d;

    if-eqz v1, :cond_0

    check-cast p1, LC1/d;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final d()Ljava/util/stream/Stream;
    .locals 3

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/b;

    invoke-direct {v1, v2}, LC1/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
