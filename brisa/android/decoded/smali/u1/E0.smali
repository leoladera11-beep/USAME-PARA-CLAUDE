.class public final Lu1/E0;
.super Lu1/b0;
.source "SourceFile"


# instance fields
.field public final transient h:Lu1/T;

.field public final transient i:[Ljava/lang/Object;

.field public final transient j:I

.field public final transient k:I


# direct methods
.method public constructor <init>(Lu1/T;[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lu1/E0;->h:Lu1/T;

    iput-object p2, p0, Lu1/E0;->i:[Ljava/lang/Object;

    iput p3, p0, Lu1/E0;->j:I

    iput p4, p0, Lu1/E0;->k:I

    return-void
.end method


# virtual methods
.method public final b(I[Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lu1/b0;->a()Lu1/P;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lu1/P;->b(I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lu1/E0;->h:Lu1/T;

    invoke-virtual {v2, v0}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Lu1/R0;
    .locals 2

    invoke-virtual {p0}, Lu1/b0;->a()Lu1/P;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu1/P;->m(I)Lu1/N;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lu1/P;
    .locals 1

    new-instance v0, Lu1/D0;

    invoke-direct {v0, p0}, Lu1/D0;-><init>(Lu1/E0;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lu1/E0;->k:I

    return v0
.end method
