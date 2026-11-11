.class public final Lq2/p;
.super Lq2/s;
.source "SourceFile"


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final g(Lo2/p;)Z
    .locals 0

    invoke-virtual {p1}, Lo2/p;->s()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln2/e;->f(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":blank"

    return-object v0
.end method
