.class public Lo2/r;
.super LB/A;
.source "SourceFile"


# instance fields
.field public i:Z


# direct methods
.method public static W(Lo2/p;)Z
    .locals 1

    instance-of v0, p0, Lo2/x;

    if-eqz v0, :cond_0

    check-cast p0, Lo2/x;

    invoke-virtual {p0}, Lo2/o;->F()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln2/e;->f(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public X(Lo2/p;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v1, p1, Lo2/j;

    if-eqz v1, :cond_4

    check-cast p1, Lo2/j;

    const-string v1, "br"

    invoke-virtual {p1, v1}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lo2/j;->P()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lo2/j;->h:Lp2/E;

    iget v1, v1, Lp2/E;->h:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lo2/p;->e:Lo2/j;

    instance-of v1, v1, Lo2/g;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lo2/j;->O()Lo2/j;

    move-result-object p1

    move v1, v0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lo2/j;->P()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lo2/j;->h:Lp2/E;

    iget v3, v3, Lp2/E;->h:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lo2/p;->p()Lo2/j;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    :goto_2
    return v0
.end method

.method public Y(Lo2/p;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, Lo2/p;

    if-eq p1, v1, :cond_6

    iget-boolean v1, p0, Lo2/r;->i:Z

    if-nez v1, :cond_6

    invoke-static {p1}, Lo2/r;->W(Lo2/p;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Lo2/r;->X(Lo2/p;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lo2/p;->y()Lo2/p;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lo2/r;->W(Lo2/p;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lo2/p;->y()Lo2/p;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lo2/r;->X(Lo2/p;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lo2/p;->e:Lo2/j;

    invoke-virtual {p0, p1}, Lo2/r;->X(Lo2/p;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lo2/j;->h:Lp2/E;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lp2/E;->c(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lo2/p;->l()Lo2/p;

    move-result-object p1

    move v2, v0

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6

    if-eqz p1, :cond_6

    instance-of v3, p1, Lo2/x;

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    instance-of p1, v1, Lo2/x;

    if-nez p1, :cond_6

    invoke-virtual {p0, v1}, Lo2/r;->X(Lo2/p;)Z

    move-result p1

    if-nez p1, :cond_4

    instance-of p1, v1, Lo2/j;

    if-nez p1, :cond_6

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_5
    invoke-virtual {p1}, Lo2/p;->q()Lo2/p;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    return v0
.end method

.method public final l(Lo2/j;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lo2/r;->Y(Lo2/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, LB/A;->I(I)V

    :cond_0
    iget-object p2, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p2, Ln2/b;

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Lo2/f;

    invoke-virtual {p1, p2, v0}, Lo2/j;->v(Ln2/b;Lo2/f;)V

    const/16 p2, 0x40

    iget-object p1, p1, Lo2/j;->h:Lp2/E;

    invoke-virtual {p1, p2}, Lp2/E;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo2/r;->i:Z

    :cond_1
    return-void
.end method

.method public final m(Lo2/o;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lo2/r;->Y(Lo2/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, LB/A;->I(I)V

    :cond_0
    iget-object p2, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p2, Ln2/b;

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Lo2/f;

    invoke-virtual {p1, p2, v0}, Lo2/p;->v(Ln2/b;Lo2/f;)V

    return-void
.end method

.method public final n(Lo2/j;I)V
    .locals 2

    invoke-virtual {p1}, Lo2/p;->l()Lo2/p;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lo2/r;->W(Lo2/p;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lo2/p;->q()Lo2/p;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lo2/r;->Y(Lo2/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, LB/A;->I(I)V

    :cond_1
    iget-object p2, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p2, Ln2/b;

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Lo2/f;

    invoke-virtual {p1, p2, v0}, Lo2/j;->Q(Ln2/b;Lo2/f;)V

    iget-boolean p2, p0, Lo2/r;->i:Z

    if-eqz p2, :cond_4

    iget-object p2, p1, Lo2/j;->h:Lp2/E;

    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Lp2/E;->c(I)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_2
    iget-object p1, p1, Lo2/p;->e:Lo2/j;

    if-eqz p1, :cond_3

    iget-object p2, p1, Lo2/j;->h:Lp2/E;

    iget p2, p2, Lp2/E;->h:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_2

    return-void

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lo2/r;->i:Z

    :cond_4
    return-void
.end method

.method public final o(Lo2/x;II)V
    .locals 4

    iget-boolean p2, p0, Lo2/r;->i:Z

    const/4 v0, 0x0

    if-nez p2, :cond_8

    iget-object p2, p1, Lo2/p;->e:Lo2/j;

    invoke-virtual {p0, p2}, Lo2/r;->X(Lo2/p;)Z

    move-result p2

    const/4 v1, 0x4

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lo2/p;->y()Lo2/p;

    move-result-object p2

    invoke-virtual {p1}, Lo2/p;->q()Lo2/p;

    move-result-object v2

    instance-of v3, p2, Lo2/j;

    if-eqz v3, :cond_2

    invoke-virtual {p0, p2}, Lo2/r;->X(Lo2/p;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    if-eqz p2, :cond_3

    instance-of v3, p2, Lo2/x;

    if-nez v3, :cond_4

    invoke-virtual {p0, p2}, Lo2/r;->Y(Lo2/p;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    const/16 v1, 0xc

    :cond_4
    if-eqz v2, :cond_7

    instance-of p2, v2, Lo2/x;

    if-nez p2, :cond_5

    invoke-virtual {p0, v2}, Lo2/r;->Y(Lo2/p;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    invoke-static {v2}, Lo2/r;->W(Lo2/p;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v2}, Lo2/p;->q()Lo2/p;

    move-result-object v2

    goto :goto_0

    :cond_6
    instance-of p2, v2, Lo2/x;

    if-eqz p2, :cond_0

    check-cast v2, Lo2/o;

    invoke-virtual {v2}, Lo2/o;->F()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p2

    invoke-static {p2}, Ln2/e;->i(I)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_7
    :goto_1
    or-int/lit8 p2, v1, 0x10

    move v0, p2

    :goto_2
    invoke-virtual {p1}, Lo2/o;->F()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ln2/e;->f(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p1, Lo2/p;->e:Lo2/j;

    invoke-virtual {p0, p2}, Lo2/r;->X(Lo2/p;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1}, Lo2/r;->Y(Lo2/p;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0, p3}, LB/A;->I(I)V

    :cond_8
    invoke-super {p0, p1, v0, p3}, LB/A;->o(Lo2/x;II)V

    return-void
.end method
