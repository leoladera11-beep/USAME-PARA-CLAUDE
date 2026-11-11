.class public final Lo2/d;
.super Lo2/o;
.source "SourceFile"


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lo2/p;->i()Lo2/p;

    move-result-object v0

    check-cast v0, Lo2/d;

    return-object v0
.end method

.method public final i()Lo2/p;
    .locals 1

    invoke-super {p0}, Lo2/p;->i()Lo2/p;

    move-result-object v0

    check-cast v0, Lo2/d;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    const-string v0, "#comment"

    return-object v0
.end method

.method public final v(Ln2/b;Lo2/f;)V
    .locals 0

    const-string p2, "<!--"

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p1

    invoke-virtual {p0}, Lo2/o;->F()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p1

    const-string p2, "-->"

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    return-void
.end method
