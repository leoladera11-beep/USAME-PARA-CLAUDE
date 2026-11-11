.class public Lu1/e;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field public transient e:Lu1/c;

.field public transient f:Lu1/o;

.field public final transient g:Ljava/util/Map;

.field public final synthetic h:Lu1/s0;


# direct methods
.method public constructor <init>(Lu1/s0;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lu1/e;->h:Lu1/s0;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p2, p0, Lu1/e;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)Lu1/L;
    .locals 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    check-cast p1, Ljava/util/List;

    instance-of v1, p1, Ljava/util/RandomAccess;

    iget-object v2, p0, Lu1/e;->h:Lu1/s0;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lu1/i;

    invoke-direct {v1, v2, v0, p1, v3}, Lu1/m;-><init>(Lu1/s0;Ljava/lang/Object;Ljava/util/List;Lu1/m;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lu1/m;

    invoke-direct {v1, v2, v0, p1, v3}, Lu1/m;-><init>(Lu1/s0;Ljava/lang/Object;Ljava/util/List;Lu1/m;)V

    :goto_0
    new-instance p1, Lu1/L;

    invoke-direct {p1, v0, v1}, Lu1/L;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lu1/e;->h:Lu1/s0;

    iget-object v1, v0, Lu1/s0;->i:Ljava/util/Map;

    iget-object v2, p0, Lu1/e;->g:Ljava/util/Map;

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lu1/s0;->clear()V

    return-void

    :cond_0
    new-instance v0, Lu1/d;

    invoke-direct {v0, p0}, Lu1/d;-><init>(Lu1/e;)V

    :goto_0
    invoke-virtual {v0}, Lu1/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lu1/d;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lu1/d;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lu1/e;->g:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lu1/e;->e:Lu1/c;

    if-nez v0, :cond_0

    new-instance v0, Lu1/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu1/c;-><init>(Ljava/util/AbstractMap;I)V

    iput-object v0, p0, Lu1/e;->e:Lu1/c;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    iget-object v0, p0, Lu1/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lu1/e;->g:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    iget-object v3, p0, Lu1/e;->h:Lu1/s0;

    if-eqz v2, :cond_1

    new-instance v2, Lu1/i;

    invoke-direct {v2, v3, p1, v0, v1}, Lu1/m;-><init>(Lu1/s0;Ljava/lang/Object;Ljava/util/List;Lu1/m;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v2, Lu1/m;

    invoke-direct {v2, v3, p1, v0, v1}, Lu1/m;-><init>(Lu1/s0;Ljava/lang/Object;Ljava/util/List;Lu1/m;)V

    goto :goto_1

    :goto_2
    return-object v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lu1/e;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lu1/e;->h:Lu1/s0;

    invoke-virtual {v0}, Lu1/p;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lu1/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lu1/e;->h:Lu1/s0;

    iget-object v1, v0, Lu1/s0;->k:Lu1/r0;

    invoke-virtual {v1}, Lu1/r0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    iget v3, v0, Lu1/s0;->j:I

    sub-int/2addr v3, v2

    iput v3, v0, Lu1/s0;->j:I

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lu1/e;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu1/e;->g:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lu1/e;->f:Lu1/o;

    if-nez v0, :cond_0

    new-instance v0, Lu1/o;

    invoke-direct {v0, p0}, Lu1/o;-><init>(Ljava/util/AbstractMap;)V

    iput-object v0, p0, Lu1/e;->f:Lu1/o;

    :cond_0
    return-object v0
.end method
