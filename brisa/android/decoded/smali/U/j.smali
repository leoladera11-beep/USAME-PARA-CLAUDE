.class public abstract LU/j;
.super LU/a;
.source "SourceFile"


# instance fields
.field public final i:Ljava/util/HashMap;

.field public j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LU/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LU/j;->i:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-object v0, p0, LU/j;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/i;

    iget-object v2, v1, LU/i;->a:LU/a;

    iget-object v1, v1, LU/i;->b:LU/g;

    invoke-virtual {v2, v1}, LU/a;->c(LU/B;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, LU/j;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/i;

    iget-object v2, v1, LU/i;->a:LU/a;

    iget-object v1, v1, LU/i;->b:LU/g;

    invoke-virtual {v2, v1}, LU/a;->e(LU/B;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, LU/j;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/i;

    iget-object v1, v1, LU/i;->a:LU/a;

    invoke-virtual {v1}, LU/a;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p()V
    .locals 5

    iget-object v0, p0, LU/j;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU/i;

    iget-object v3, v2, LU/i;->a:LU/a;

    iget-object v4, v2, LU/i;->c:LU/h;

    iget-object v2, v2, LU/i;->b:LU/g;

    invoke-virtual {v3, v2}, LU/a;->o(LU/B;)V

    invoke-virtual {v3, v4}, LU/a;->r(LU/G;)V

    invoke-virtual {v3, v4}, LU/a;->q(LQ/l;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public abstract t(Ljava/lang/Object;LU/A;)LU/A;
.end method

.method public u(JLjava/lang/Object;)J
    .locals 0

    return-wide p1
.end method

.method public v(ILjava/lang/Object;)I
    .locals 0

    return p1
.end method

.method public abstract w(Ljava/lang/Object;LU/a;LG/q0;)V
.end method

.method public final x(Ljava/lang/Object;LU/a;)V
    .locals 4

    iget-object v0, p0, LU/j;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, LF1/i;->g(Z)V

    new-instance v1, LU/g;

    invoke-direct {v1, p0, p1}, LU/g;-><init>(LU/j;Ljava/lang/Object;)V

    new-instance v2, LU/h;

    invoke-direct {v2, p0, p1}, LU/h;-><init>(LU/j;Ljava/lang/Object;)V

    new-instance v3, LU/i;

    invoke-direct {v3, p2, v1, v2}, LU/i;-><init>(LU/a;LU/g;LU/h;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LU/j;->j:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, LU/a;->c:LC1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LC1/e;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, LU/F;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p1, v3, LU/F;->a:Landroid/os/Handler;

    iput-object v2, v3, LU/F;->b:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LU/j;->j:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, LU/a;->d:LQ/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LQ/k;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, LQ/j;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p1, v3, LQ/j;->a:Landroid/os/Handler;

    iput-object v2, v3, LQ/j;->b:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LU/a;->g:LO/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LU/a;->h:LX/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v1, p1, v0}, LU/a;->k(LU/B;LO/j;LX/d;)V

    iget-object p1, p0, LU/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v1}, LU/a;->c(LU/B;)V

    :cond_0
    return-void
.end method
