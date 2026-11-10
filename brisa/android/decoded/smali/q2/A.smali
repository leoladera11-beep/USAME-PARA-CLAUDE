.class public final Lq2/A;
.super Lq2/B;
.source "SourceFile"


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    invoke-virtual {v0}, Lq2/o;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final g(Lo2/j;Lo2/p;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p2, Lo2/p;->e:Lo2/j;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo2/p;->l()Lo2/p;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    if-eqz v1, :cond_4

    if-ne v1, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v1}, Lq2/B;->h(Lo2/j;Lo2/p;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-virtual {v1}, Lo2/p;->q()Lo2/p;

    move-result-object v1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s ~ "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
