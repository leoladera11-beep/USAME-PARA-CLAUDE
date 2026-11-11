.class public final Lu1/M;
.super Lu1/I;
.source "SourceFile"


# virtual methods
.method public final a(Ljava/lang/Object;)Lu1/J;
    .locals 0

    invoke-virtual {p0, p1}, Lu1/I;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final f()Lu1/C0;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu1/I;->c:Z

    iget-object v0, p0, Lu1/I;->a:[Ljava/lang/Object;

    iget v1, p0, Lu1/I;->b:I

    invoke-static {v1, v0}, Lu1/P;->i(I[Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    return-object v0
.end method
