.class public final LU/K;
.super LU/j;
.source "SourceFile"


# static fields
.field public static final s:LG/P;


# instance fields
.field public final k:[LU/a;

.field public final l:Ljava/util/ArrayList;

.field public final m:[LG/q0;

.field public final n:Ljava/util/ArrayList;

.field public final o:Lcom/brisa/local/j;

.field public p:I

.field public q:[[J

.field public r:LQ/b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LG/D;

    invoke-direct {v0}, LG/D;-><init>()V

    sget-object v1, Lu1/P;->f:Lu1/N;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    new-instance v1, LG/I;

    invoke-direct {v1}, LG/I;-><init>()V

    sget-object v8, LG/L;->d:LG/L;

    new-instance v2, LG/P;

    new-instance v4, LG/F;

    invoke-direct {v4, v0}, LG/E;-><init>(LG/D;)V

    new-instance v6, LG/J;

    invoke-direct {v6, v1}, LG/J;-><init>(LG/I;)V

    sget-object v7, LG/T;->M:LG/T;

    const-string v3, "MergingMediaSource"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, LG/P;-><init>(Ljava/lang/String;LG/F;LG/K;LG/J;LG/T;LG/L;)V

    sput-object v2, LU/K;->s:LG/P;

    return-void
.end method

.method public varargs constructor <init>([LU/a;)V
    .locals 4

    new-instance v0, Lcom/brisa/local/j;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/brisa/local/j;-><init>(I)V

    invoke-direct {p0}, LU/j;-><init>()V

    iput-object p1, p0, LU/K;->k:[LU/a;

    iput-object v0, p0, LU/K;->o:Lcom/brisa/local/j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LU/K;->n:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, LU/K;->p:I

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LU/K;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LU/K;->l:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p1

    new-array p1, p1, [LG/q0;

    iput-object p1, p0, LU/K;->m:[LG/q0;

    new-array p1, v0, [[J

    iput-object p1, p0, LU/K;->q:[[J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/16 p1, 0x8

    const-string v0, "expectedKeys"

    invoke-static {p1, v0}, Lu1/s;->e(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lu1/s;->e(ILjava/lang/String;)V

    invoke-static {}, Lu1/w;->b()Lu1/w;

    move-result-object p1

    new-instance v0, Lu1/r0;

    invoke-direct {v0}, Lu1/r0;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    invoke-static {p1}, LF1/i;->g(Z)V

    return-void
.end method


# virtual methods
.method public final a(LG/P;)Z
    .locals 3

    iget-object v0, p0, LU/K;->k:[LU/a;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, LU/a;->a(LG/P;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method public final b(LU/A;LB/A;J)LU/y;
    .locals 11

    iget-object v0, p0, LU/K;->k:[LU/a;

    array-length v1, v0

    new-array v2, v1, [LU/y;

    iget-object v3, p0, LU/K;->m:[LG/q0;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    iget-object v6, p1, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v5, v6}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v5

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, LG/q0;->l(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, LU/A;->a(Ljava/lang/Object;)LU/A;

    move-result-object v6

    aget-object v7, v0, v4

    iget-object v8, p0, LU/K;->q:[[J

    aget-object v8, v8, v5

    aget-wide v9, v8, v4

    sub-long v8, p3, v9

    invoke-virtual {v7, v6, p2, v8, v9}, LU/a;->b(LU/A;LB/A;J)LU/y;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, LU/K;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    new-instance v8, LU/J;

    aget-object v9, v2, v4

    invoke-direct {v8, v6, v9}, LU/J;-><init>(LU/A;LU/y;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, LU/I;

    iget-object p2, p0, LU/K;->q:[[J

    aget-object p2, p2, v5

    iget-object p3, p0, LU/K;->o:Lcom/brisa/local/j;

    invoke-direct {p1, p3, p2, v2}, LU/I;-><init>(Lcom/brisa/local/j;[J[LU/y;)V

    return-object p1
.end method

.method public final h()LG/P;
    .locals 2

    iget-object v0, p0, LU/K;->k:[LU/a;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, LU/a;->h()LG/P;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, LU/K;->s:LG/P;

    return-object v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, LU/K;->r:LQ/b;

    if-nez v0, :cond_0

    invoke-super {p0}, LU/j;->j()V

    return-void

    :cond_0
    throw v0
.end method

.method public final l(LL/D;)V
    .locals 2

    const/4 p1, 0x0

    invoke-static {p1}, LJ/W;->l(LZ/l;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, LU/j;->j:Landroid/os/Handler;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, LU/K;->k:[LU/a;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v0, v0, p1

    invoke-virtual {p0, v1, v0}, LU/j;->x(Ljava/lang/Object;LU/a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(LU/y;)V
    .locals 8

    check-cast p1, LU/I;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LU/K;->k:[LU/a;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    iget-object v3, p0, LU/K;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p1, LU/I;->e:[LU/y;

    iget-object v5, p1, LU/I;->f:[Z

    aget-boolean v6, v5, v1

    if-eqz v6, :cond_0

    aget-object v4, v4, v1

    check-cast v4, LU/j0;

    iget-object v4, v4, LU/j0;->e:LU/y;

    goto :goto_1

    :cond_0
    aget-object v4, v4, v1

    :goto_1
    move v6, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LU/J;

    iget-object v7, v7, LU/J;->b:LU/y;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    aget-object v2, v2, v1

    iget-object v3, p1, LU/I;->e:[LU/y;

    aget-boolean v4, v5, v1

    if-eqz v4, :cond_3

    aget-object v3, v3, v1

    check-cast v3, LU/j0;

    iget-object v3, v3, LU/j0;->e:LU/y;

    goto :goto_4

    :cond_3
    aget-object v3, v3, v1

    :goto_4
    invoke-virtual {v2, v3}, LU/a;->n(LU/y;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final p()V
    .locals 2

    invoke-super {p0}, LU/j;->p()V

    iget-object v0, p0, LU/K;->m:[LG/q0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, LU/K;->p:I

    iput-object v1, p0, LU/K;->r:LQ/b;

    iget-object v0, p0, LU/K;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, LU/K;->k:[LU/a;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final s(LG/P;)V
    .locals 2

    iget-object v0, p0, LU/K;->k:[LU/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, LU/a;->s(LG/P;)V

    return-void
.end method

.method public final t(Ljava/lang/Object;LU/A;)LU/A;
    .locals 4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, LU/K;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU/J;

    iget-object v3, v3, LU/J;->a:LU/A;

    invoke-virtual {v3, p2}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LU/J;

    iget-object p1, p1, LU/J;->a:LU/A;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final w(Ljava/lang/Object;LU/a;LG/q0;)V
    .locals 6

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, LU/K;->r:LQ/b;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, LU/K;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, LG/q0;->h()I

    move-result v0

    iput v0, p0, LU/K;->p:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, LG/q0;->h()I

    move-result v0

    iget v1, p0, LU/K;->p:I

    if-eq v0, v1, :cond_2

    new-instance p1, LQ/b;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    iput-object p1, p0, LU/K;->r:LQ/b;

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, LU/K;->q:[[J

    array-length v0, v0

    const/4 v1, 0x0

    iget-object v2, p0, LU/K;->m:[LG/q0;

    if-nez v0, :cond_3

    iget v0, p0, LU/K;->p:I

    array-length v3, v2

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, LU/K;->q:[[J

    :cond_3
    iget-object v0, p0, LU/K;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, v2, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object p1, v2, v1

    invoke-virtual {p0, p1}, LU/a;->m(LG/q0;)V

    :cond_4
    :goto_1
    return-void
.end method
