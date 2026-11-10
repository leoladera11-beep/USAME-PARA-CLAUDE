.class public final Lu1/a0;
.super Lu1/I;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lu1/J;
    .locals 0

    invoke-virtual {p0, p1}, Lu1/a0;->f(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lu1/I;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()Lu1/b0;
    .locals 3

    iget v0, p0, Lu1/I;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lu1/I;->a:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lu1/b0;->j(I[Ljava/lang/Object;)Lu1/b0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p0, Lu1/I;->b:I

    iput-boolean v1, p0, Lu1/I;->c:Z

    return-object v0

    :cond_0
    iget-object v0, p0, Lu1/I;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lu1/b0;->g:I

    new-instance v1, Lu1/P0;

    invoke-direct {v1, v0}, Lu1/P0;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    sget v0, Lu1/b0;->g:I

    sget-object v0, Lu1/J0;->n:Lu1/J0;

    return-object v0
.end method
