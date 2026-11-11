.class public final Lu1/t0;
.super Lu1/p;
.source "SourceFile"

# interfaces
.implements Lu1/i0;


# instance fields
.field public final i:Lu1/i0;

.field public final j:La1/g;


# direct methods
.method public constructor <init>(Lu1/i0;La1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lu1/t0;->i:Lu1/i0;

    iput-object p2, p0, Lu1/t0;->j:La1/g;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lu1/t0;->i:Lu1/i0;

    invoke-interface {v0}, Lu1/q0;->clear()V

    return-void
.end method

.method public final d()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lu1/t0;->i:Lu1/i0;

    invoke-interface {v0}, Lu1/q0;->b()Ljava/util/Map;

    move-result-object v0

    new-instance v1, LI0/E;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, LI0/E;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lu1/p0;

    invoke-direct {v2, v0, v1}, Lu1/p0;-><init>(Ljava/util/Map;Lu1/o0;)V

    return-object v2
.end method

.method public final e()Ljava/util/Collection;
    .locals 2

    new-instance v0, Lu1/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu1/o;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lu1/t0;->i:Lu1/i0;

    invoke-interface {v0}, Lu1/q0;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lu1/t0;->i:Lu1/i0;

    invoke-interface {v0}, Lu1/q0;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LZ0/i;

    iget-object v2, p0, Lu1/t0;->j:La1/g;

    invoke-direct {v1, v2}, LZ0/i;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lu1/e0;

    invoke-direct {v2, v0, v1}, Lu1/e0;-><init>(Ljava/util/Iterator;Lt1/j;)V

    return-object v2
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4

    iget-object v0, p0, Lu1/t0;->i:Lu1/i0;

    invoke-interface {v0, p1}, Lu1/q0;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, LW0/c;

    const/16 v2, 0x14

    iget-object v3, p0, Lu1/t0;->j:La1/g;

    invoke-direct {v1, v3, p1, v2}, LW0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lu1/s;->v(Ljava/util/List;Lt1/j;)Ljava/util/AbstractList;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lu1/t0;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lu1/t0;->i:Lu1/i0;

    invoke-interface {v0}, Lu1/q0;->size()I

    move-result v0

    return v0
.end method
