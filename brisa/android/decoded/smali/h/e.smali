.class public final Lh/e;
.super Lh/j;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public l:Lu1/u;

.field public m:Lh/b;

.field public n:Lh/d;


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lh/e;->l:Lu1/u;

    if-nez v0, :cond_0

    new-instance v0, Lu1/u;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lu1/u;-><init>(Ljava/util/Map;I)V

    iput-object v0, p0, Lh/e;->l:Lu1/u;

    :cond_0
    return-object v0
.end method

.method public final j(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lh/j;->g:I

    array-length v1, p2

    if-ge v1, v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lh/j;->f:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    add-int/2addr v3, p1

    aget-object v2, v2, v3

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p2

    if-le p1, v0, :cond_2

    const/4 p1, 0x0

    aput-object p1, p2, v0

    :cond_2
    return-object p2
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lh/e;->m:Lh/b;

    if-nez v0, :cond_0

    new-instance v0, Lh/b;

    invoke-direct {v0, p0}, Lh/b;-><init>(Lh/e;)V

    iput-object v0, p0, Lh/e;->m:Lh/b;

    :cond_0
    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 6

    iget v0, p0, Lh/j;->g:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lh/j;->g:I

    iget-object v2, p0, Lh/j;->e:[I

    array-length v3, v2

    if-ge v3, v1, :cond_1

    iget-object v3, p0, Lh/j;->f:[Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lh/j;->a(I)V

    iget v1, p0, Lh/j;->g:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lh/j;->e:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lh/j;->f:[Ljava/lang/Object;

    shl-int/lit8 v5, v0, 0x1

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    invoke-static {v2, v3, v0}, Lh/j;->b([I[Ljava/lang/Object;I)V

    :cond_1
    iget v1, p0, Lh/j;->g:I

    if-ne v1, v0, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lh/e;->n:Lh/d;

    if-nez v0, :cond_0

    new-instance v0, Lh/d;

    invoke-direct {v0, p0}, Lh/d;-><init>(Lh/e;)V

    iput-object v0, p0, Lh/e;->n:Lh/d;

    :cond_0
    return-object v0
.end method
