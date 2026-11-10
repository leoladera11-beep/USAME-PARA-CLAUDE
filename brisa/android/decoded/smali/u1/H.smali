.class public abstract Lu1/H;
.super Lu1/T;
.source "SourceFile"


# direct methods
.method public static f(Ljava/util/HashMap;)Lu1/H;
    .locals 2

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    new-instance v1, Lu1/G;

    invoke-direct {v1, v0}, LC1/e;-><init>(I)V

    invoke-virtual {v1, p0}, Lu1/G;->w(Ljava/util/Set;)V

    invoke-virtual {v1}, Lu1/G;->u()Lu1/B0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d()Lu1/K;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final e()Lu1/K;
    .locals 2

    move-object v0, p0

    check-cast v0, Lu1/B0;

    iget-object v0, v0, Lu1/B0;->l:Lu1/B0;

    iget-object v1, v0, Lu1/T;->f:Lu1/b0;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lu1/B0;->c()Lu1/F0;

    move-result-object v1

    iput-object v1, v0, Lu1/T;->f:Lu1/b0;

    :cond_0
    return-object v1
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    move-object v0, p0

    check-cast v0, Lu1/B0;

    iget-object v0, v0, Lu1/B0;->l:Lu1/B0;

    iget-object v1, v0, Lu1/T;->f:Lu1/b0;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lu1/B0;->c()Lu1/F0;

    move-result-object v1

    iput-object v1, v0, Lu1/T;->f:Lu1/b0;

    :cond_0
    return-object v1
.end method
