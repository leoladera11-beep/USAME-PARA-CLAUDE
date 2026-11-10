.class public Lo2/x;
.super Lo2/o;
.source "SourceFile"


# direct methods
.method public static I(Ljava/lang/StringBuilder;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public H()Lo2/x;
    .locals 1

    invoke-super {p0}, Lo2/p;->i()Lo2/p;

    move-result-object v0

    check-cast v0, Lo2/x;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo2/x;->H()Lo2/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lo2/p;
    .locals 1

    invoke-virtual {p0}, Lo2/x;->H()Lo2/x;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0}, Ln2/b;->e(Ljava/lang/StringBuilder;)Ln2/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo2/p;->u(Ln2/b;)V

    invoke-static {v0}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Ln2/b;Lo2/f;)V
    .locals 3

    invoke-virtual {p0}, Lo2/o;->F()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo2/l;->a:[C

    iget-object v1, p2, Lo2/f;->e:Lo2/k;

    iget-object p2, p2, Lo2/f;->f:Ljava/nio/charset/Charset;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, p2, v2}, Lo2/l;->c(Ljava/lang/String;Ln2/b;Lo2/k;Ljava/nio/charset/Charset;I)V

    return-void
.end method
