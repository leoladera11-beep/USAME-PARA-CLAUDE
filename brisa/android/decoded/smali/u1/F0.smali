.class public final Lu1/F0;
.super Lu1/b0;
.source "SourceFile"


# instance fields
.field public final transient h:Lu1/T;

.field public final transient i:Lu1/G0;


# direct methods
.method public constructor <init>(Lu1/T;Lu1/G0;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lu1/F0;->h:Lu1/T;

    iput-object p2, p0, Lu1/F0;->i:Lu1/G0;

    return-void
.end method


# virtual methods
.method public final a()Lu1/P;
    .locals 1

    iget-object v0, p0, Lu1/F0;->i:Lu1/G0;

    return-object v0
.end method

.method public final b(I[Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lu1/F0;->i:Lu1/G0;

    invoke-virtual {v0, p1, p2}, Lu1/P;->b(I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lu1/F0;->h:Lu1/T;

    invoke-virtual {v0, p1}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Lu1/R0;
    .locals 2

    iget-object v0, p0, Lu1/F0;->i:Lu1/G0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu1/P;->m(I)Lu1/N;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lu1/F0;->h:Lu1/T;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
