.class public Lu1/Q;
.super Lu1/q;
.source "SourceFile"

# interfaces
.implements Lu1/i0;
.implements Ljava/io/Serializable;


# instance fields
.field public final transient i:Lu1/H0;

.field public final transient j:I


# direct methods
.method public constructor <init>(Lu1/H0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/Q;->i:Lu1/H0;

    iput p2, p0, Lu1/Q;->j:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    invoke-super {p0}, Lu1/p;->a()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lu1/K;

    return-object v0
.end method

.method public bridge synthetic b()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lu1/Q;->h()Lu1/T;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lu1/p;->c(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final d()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 1

    new-instance v0, Lu1/V;

    invoke-direct {v0, p0}, Lu1/V;-><init>(Lu1/Q;)V

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final g()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lu1/U;

    invoke-direct {v0, p0}, Lu1/U;-><init>(Lu1/Q;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lu1/Q;->i:Lu1/H0;

    invoke-virtual {v0, p1}, Lu1/H0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu1/P;

    if-nez p1, :cond_0

    sget-object p1, Lu1/P;->f:Lu1/N;

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    :cond_0
    return-object p1
.end method

.method public h()Lu1/T;
    .locals 1

    iget-object v0, p0, Lu1/Q;->i:Lu1/H0;

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lu1/Q;->i:Lu1/H0;

    iget-object v1, v0, Lu1/T;->f:Lu1/b0;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lu1/H0;->c()Lu1/F0;

    move-result-object v1

    iput-object v1, v0, Lu1/T;->f:Lu1/b0;

    :cond_0
    return-object v1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lu1/Q;->j:I

    return v0
.end method
