.class public abstract Lq2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public abstract b(Lo2/j;Lo2/j;)Z
.end method

.method public c(Lo2/j;Lo2/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lo2/j;Lo2/p;)Z
    .locals 1

    instance-of v0, p2, Lo2/j;

    if-eqz v0, :cond_0

    check-cast p2, Lo2/j;

    invoke-virtual {p0, p1, p2}, Lq2/o;->b(Lo2/j;Lo2/j;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p2, Lo2/o;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq2/o;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lo2/o;

    invoke-virtual {p0, p1, p2}, Lq2/o;->c(Lo2/j;Lo2/o;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
