.class public abstract Lu1/Z;
.super Lu1/K;
.source "SourceFile"

# interfaces
.implements Lu1/u0;


# static fields
.field public static final synthetic h:I


# instance fields
.field public transient f:Lu1/C0;

.field public transient g:Lu1/b0;


# virtual methods
.method public final a()Lu1/P;
    .locals 2

    iget-object v0, p0, Lu1/Z;->f:Lu1/C0;

    if-nez v0, :cond_0

    invoke-super {p0}, Lu1/K;->a()Lu1/P;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lu1/C0;

    iput-object v1, p0, Lu1/Z;->f:Lu1/C0;

    :cond_0
    return-object v0
.end method

.method public final b(I[Ljava/lang/Object;)I
    .locals 4

    invoke-virtual {p0}, Lu1/Z;->j()Lu1/b0;

    move-result-object v0

    invoke-virtual {v0}, Lu1/K;->h()Lu1/R0;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu1/w0;

    invoke-virtual {v1}, Lu1/w0;->a()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, v1, Lu1/w0;->a:Ljava/lang/Object;

    invoke-static {p2, p1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-virtual {v1}, Lu1/w0;->a()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    move-object v0, p0

    check-cast v0, Lu1/I0;

    iget-object v0, v0, Lu1/I0;->i:Lu1/x0;

    invoke-virtual {v0, p1}, Lu1/x0;->b(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lu1/u0;

    if-eqz v0, :cond_4

    check-cast p1, Lu1/u0;

    move-object v0, p0

    check-cast v0, Lu1/I0;

    move-object v1, p1

    check-cast v1, Lu1/I0;

    iget v1, v1, Lu1/I0;->j:I

    iget v2, v0, Lu1/I0;->j:I

    if-ne v2, v1, :cond_4

    invoke-virtual {p0}, Lu1/Z;->j()Lu1/b0;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    check-cast p1, Lu1/Z;

    invoke-virtual {p1}, Lu1/Z;->j()Lu1/b0;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lu1/Z;->j()Lu1/b0;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu1/w0;

    iget-object v2, v1, Lu1/w0;->a:Ljava/lang/Object;

    iget-object v3, v0, Lu1/I0;->i:Lu1/x0;

    invoke-virtual {v3, v2}, Lu1/x0;->b(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1}, Lu1/w0;->a()I

    move-result v1

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final h()Lu1/R0;
    .locals 2

    invoke-virtual {p0}, Lu1/Z;->j()Lu1/b0;

    move-result-object v0

    invoke-virtual {v0}, Lu1/K;->h()Lu1/R0;

    move-result-object v0

    new-instance v1, Lu1/W;

    invoke-direct {v1, v0}, Lu1/W;-><init>(Lu1/R0;)V

    return-object v1
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lu1/Z;->j()Lu1/b0;

    move-result-object v0

    invoke-static {v0}, Lu1/s;->l(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public abstract i()Lu1/b0;
.end method

.method public final j()Lu1/b0;
    .locals 2

    iget-object v0, p0, Lu1/Z;->g:Lu1/b0;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lu1/J0;->n:Lu1/J0;

    goto :goto_0

    :cond_0
    new-instance v0, Lu1/Y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu1/Y;-><init>(Lu1/Z;I)V

    :goto_0
    iput-object v0, p0, Lu1/Z;->g:Lu1/b0;

    :cond_1
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lu1/Z;->j()Lu1/b0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
