.class public final LN/W;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LO/j;

.field public final b:LX/d;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/IdentityHashMap;

.field public final e:Ljava/util/HashMap;

.field public final f:LN/F;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashSet;

.field public final i:LO/d;

.field public final j:LJ/O;

.field public k:LU/c0;

.field public l:Z


# direct methods
.method public constructor <init>(LN/F;LO/d;LJ/O;LO/j;LX/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, LN/W;->a:LO/j;

    iput-object p5, p0, LN/W;->b:LX/d;

    iput-object p1, p0, LN/W;->f:LN/F;

    new-instance p1, LU/c0;

    invoke-direct {p1}, LU/c0;-><init>()V

    iput-object p1, p0, LN/W;->k:LU/c0;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, LN/W;->d:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LN/W;->e:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LN/W;->c:Ljava/util/ArrayList;

    iput-object p2, p0, LN/W;->i:LO/d;

    iput-object p3, p0, LN/W;->j:LJ/O;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LN/W;->g:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LN/W;->h:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/ArrayList;LU/c0;)LG/q0;
    .locals 6

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iput-object p3, p0, LN/W;->k:LU/c0;

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_4

    sub-int v0, p3, p1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN/V;

    const/4 v1, 0x0

    iget-object v2, p0, LN/W;->c:Ljava/util/ArrayList;

    if-lez p3, :cond_0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN/V;

    iget-object v4, v3, LN/V;->a:LU/v;

    iget-object v4, v4, LU/v;->o:LU/t;

    iget v3, v3, LN/V;->d:I

    iget-object v4, v4, LU/o;->e:LG/q0;

    invoke-virtual {v4}, LG/q0;->o()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v0, LN/V;->d:I

    iput-boolean v1, v0, LN/V;->e:Z

    iget-object v1, v0, LN/V;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_0
    iput v1, v0, LN/V;->d:I

    iput-boolean v1, v0, LN/V;->e:Z

    iget-object v1, v0, LN/V;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v1, v0, LN/V;->a:LU/v;

    iget-object v1, v1, LU/v;->o:LU/t;

    iget-object v1, v1, LU/o;->e:LG/q0;

    invoke-virtual {v1}, LG/q0;->o()I

    move-result v1

    move v3, p3

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN/V;

    iget v5, v4, LN/V;->d:I

    add-int/2addr v5, v1

    iput v5, v4, LN/V;->d:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v2, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, LN/W;->e:Ljava/util/HashMap;

    iget-object v2, v0, LN/V;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LN/W;->l:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, LN/W;->e(LN/V;)V

    iget-object v1, p0, LN/W;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LN/W;->h:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v1, p0, LN/W;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN/U;

    if-eqz v0, :cond_3

    iget-object v1, v0, LN/U;->a:LU/a;

    iget-object v0, v0, LN/U;->b:LN/P;

    invoke-virtual {v1, v0}, LU/a;->c(LU/B;)V

    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, LN/W;->b()LG/q0;

    move-result-object p1

    return-object p1
.end method

.method public final b()LG/q0;
    .locals 4

    iget-object v0, p0, LN/W;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, LG/q0;->a:LG/m0;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN/V;

    iput v2, v3, LN/V;->d:I

    iget-object v3, v3, LN/V;->a:LU/v;

    iget-object v3, v3, LU/v;->o:LU/t;

    iget-object v3, v3, LU/o;->e:LG/q0;

    invoke-virtual {v3}, LG/q0;->o()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, LN/d0;

    iget-object v2, p0, LN/W;->k:LU/c0;

    invoke-direct {v1, v0, v2}, LN/d0;-><init>(Ljava/util/ArrayList;LU/c0;)V

    return-object v1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, LN/W;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN/V;

    iget-object v2, v1, LN/V;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LN/W;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN/U;

    if-eqz v1, :cond_1

    iget-object v2, v1, LN/U;->a:LU/a;

    iget-object v1, v1, LN/U;->b:LN/P;

    invoke-virtual {v2, v1}, LU/a;->c(LU/B;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final d(LN/V;)V
    .locals 3

    iget-boolean v0, p1, LN/V;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, LN/V;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN/W;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN/U;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LN/U;->c:LN/T;

    iget-object v2, v0, LN/U;->a:LU/a;

    iget-object v0, v0, LN/U;->b:LN/P;

    invoke-virtual {v2, v0}, LU/a;->o(LU/B;)V

    invoke-virtual {v2, v1}, LU/a;->r(LU/G;)V

    invoke-virtual {v2, v1}, LU/a;->q(LQ/l;)V

    iget-object v0, p0, LN/W;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final e(LN/V;)V
    .locals 6

    iget-object v0, p1, LN/V;->a:LU/v;

    new-instance v1, LN/P;

    invoke-direct {v1, p0}, LN/P;-><init>(LN/W;)V

    new-instance v2, LN/T;

    invoke-direct {v2, p0, p1}, LN/T;-><init>(LN/W;LN/V;)V

    new-instance v3, LN/U;

    invoke-direct {v3, v0, v1, v2}, LN/U;-><init>(LU/a;LN/P;LN/T;)V

    iget-object v4, p0, LN/W;->g:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LJ/W;->q()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, LU/a;->c:LC1/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LC1/e;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, LU/F;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, LU/F;->a:Landroid/os/Handler;

    iput-object v2, v5, LU/F;->b:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, LJ/W;->q()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iget-object p1, v0, LU/a;->d:LQ/k;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LQ/k;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, LQ/j;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, LQ/j;->a:Landroid/os/Handler;

    iput-object v2, v4, LQ/j;->b:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LN/W;->a:LO/j;

    iget-object v2, p0, LN/W;->b:LX/d;

    invoke-virtual {v0, v1, p1, v2}, LU/a;->k(LU/B;LO/j;LX/d;)V

    return-void
.end method

.method public final f(II)V
    .locals 7

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_2

    iget-object v1, p0, LN/W;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN/V;

    iget-object v3, p0, LN/W;->e:Ljava/util/HashMap;

    iget-object v4, v2, LN/V;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, LN/V;->a:LU/v;

    iget-object v3, v3, LU/v;->o:LU/t;

    iget-object v3, v3, LU/o;->e:LG/q0;

    invoke-virtual {v3}, LG/q0;->o()I

    move-result v3

    neg-int v3, v3

    move v4, p2

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LN/V;

    iget v6, v5, LN/V;->d:I

    add-int/2addr v6, v3

    iput v6, v5, LN/V;->d:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iput-boolean v0, v2, LN/V;->e:Z

    iget-boolean v1, p0, LN/W;->l:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, LN/W;->d(LN/V;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
