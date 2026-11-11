.class public final Lo2/e;
.super Lo2/o;
.source "SourceFile"


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lo2/p;->i()Lo2/p;

    move-result-object v0

    check-cast v0, Lo2/e;

    return-object v0
.end method

.method public final i()Lo2/p;
    .locals 1

    invoke-super {p0}, Lo2/p;->i()Lo2/p;

    move-result-object v0

    check-cast v0, Lo2/e;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    const-string v0, "#data"

    return-object v0
.end method

.method public final v(Ln2/b;Lo2/f;)V
    .locals 3

    invoke-virtual {p0}, Lo2/o;->F()Ljava/lang/String;

    move-result-object v0

    iget p2, p2, Lo2/f;->j:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const-string p2, "<![CDATA["

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lo2/p;->e:Lo2/j;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo2/j;->h:Lp2/E;

    iget-object v1, v1, Lp2/E;->g:Ljava/lang/String;

    const-string v2, "script"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "//<![CDATA[\n"

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p1

    const-string p2, "\n//]]>"

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    return-void

    :cond_0
    iget-object v1, p0, Lo2/p;->e:Lo2/j;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lo2/j;->h:Lp2/E;

    iget-object v1, v1, Lp2/E;->g:Ljava/lang/String;

    const-string v2, "style"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "/*<![CDATA[*/\n"

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p1

    const-string p2, "\n/*]]>*/"

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p1

    const-string p2, "]]>"

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    return-void

    :cond_2
    invoke-virtual {p1, v0}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    return-void
.end method
