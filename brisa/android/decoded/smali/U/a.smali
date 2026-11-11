.class public abstract LU/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/HashSet;

.field public final c:LC1/e;

.field public final d:LQ/k;

.field public e:Landroid/os/Looper;

.field public f:LG/q0;

.field public g:LO/j;

.field public h:LX/d;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LU/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, LU/a;->b:Ljava/util/HashSet;

    new-instance v0, LC1/e;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LC1/e;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILU/A;)V

    iput-object v0, p0, LU/a;->c:LC1/e;

    new-instance v0, LQ/k;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, LQ/k;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILU/A;)V

    iput-object v0, p0, LU/a;->d:LQ/k;

    return-void
.end method


# virtual methods
.method public a(LG/P;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract b(LU/A;LB/A;J)LU/y;
.end method

.method public final c(LU/B;)V
    .locals 2

    iget-object v0, p0, LU/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LU/a;->d()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final e(LU/B;)V
    .locals 2

    iget-object v0, p0, LU/a;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LU/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LU/a;->f()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()LG/q0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract h()LG/P;
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract j()V
.end method

.method public final k(LU/B;LO/j;LX/d;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, LU/a;->e:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->g(Z)V

    iput-object p2, p0, LU/a;->g:LO/j;

    iput-object p3, p0, LU/a;->h:LX/d;

    iget-object p2, p0, LU/a;->f:LG/q0;

    iget-object v1, p0, LU/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LU/a;->e:Landroid/os/Looper;

    if-nez v1, :cond_2

    iput-object v0, p0, LU/a;->e:Landroid/os/Looper;

    iget-object p2, p0, LU/a;->b:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, LX/d;->a()LL/D;

    move-result-object p1

    invoke-virtual {p0, p1}, LU/a;->l(LL/D;)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, LU/a;->e(LU/B;)V

    invoke-interface {p1, p0, p2}, LU/B;->a(LU/a;LG/q0;)V

    :cond_3
    return-void
.end method

.method public abstract l(LL/D;)V
.end method

.method public final m(LG/q0;)V
    .locals 2

    iput-object p1, p0, LU/a;->f:LG/q0;

    iget-object v0, p0, LU/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/B;

    invoke-interface {v1, p0, p1}, LU/B;->a(LU/a;LG/q0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract n(LU/y;)V
.end method

.method public final o(LU/B;)V
    .locals 1

    iget-object v0, p0, LU/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, LU/a;->e:Landroid/os/Looper;

    iput-object p1, p0, LU/a;->f:LG/q0;

    iput-object p1, p0, LU/a;->g:LO/j;

    iget-object p1, p0, LU/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, LU/a;->p()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, LU/a;->c(LU/B;)V

    return-void
.end method

.method public abstract p()V
.end method

.method public final q(LQ/l;)V
    .locals 4

    iget-object v0, p0, LU/a;->d:LQ/k;

    iget-object v0, v0, LQ/k;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ/j;

    iget-object v3, v2, LQ/j;->b:Ljava/lang/Object;

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r(LU/G;)V
    .locals 4

    iget-object v0, p0, LU/a;->c:LC1/e;

    iget-object v0, v0, LC1/e;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU/F;

    iget-object v3, v2, LU/F;->b:Ljava/lang/Object;

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public s(LG/P;)V
    .locals 0

    return-void
.end method
