.class public final Lq2/z;
.super Lq2/B;
.source "SourceFile"


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    invoke-virtual {v0}, Lq2/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final g(Lo2/j;Lo2/p;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lq2/B;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lo2/p;->y()Lo2/p;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    invoke-virtual {p2}, Lo2/p;->y()Lo2/p;

    move-result-object p2

    if-eqz p2, :cond_3

    instance-of v1, p2, Lo2/j;

    if-eqz v1, :cond_2

    check-cast p2, Lo2/j;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, p2}, Lq2/B;->h(Lo2/j;Lo2/p;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s + "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
