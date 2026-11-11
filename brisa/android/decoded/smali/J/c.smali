.class public final LJ/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LK/z;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, LJ/c;->b:Ljava/lang/Object;

    .line 20
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LJ/c;->c:Ljava/lang/Object;

    .line 21
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LJ/c;->d:Ljava/lang/Object;

    .line 22
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, LJ/c;->e:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 23
    iput p1, p0, LJ/c;->a:I

    return-void
.end method

.method public constructor <init>(LW1/a;LZ0/i;La2/h;)V
    .locals 0

    const-string p3, "routeDatabase"

    invoke-static {p2, p3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LJ/c;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, LJ/c;->c:Ljava/lang/Object;

    .line 4
    sget-object p2, LF1/q;->e:LF1/q;

    iput-object p2, p0, LJ/c;->d:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, LJ/c;->e:Ljava/lang/Object;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, LJ/c;->f:Ljava/lang/Object;

    .line 7
    iget-object p2, p1, LW1/a;->h:LW1/m;

    .line 8
    const-string p3, "url"

    invoke-static {p2, p3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, LW1/m;->g()Ljava/net/URI;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {p1}, [Ljava/net/Proxy;

    move-result-object p1

    invoke-static {p1}, LX1/b;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_0
    iget-object p1, p1, LW1/a;->g:Ljava/net/ProxySelector;

    .line 12
    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {p1}, LX1/b;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {p1}, [Ljava/net/Proxy;

    move-result-object p1

    invoke-static {p1}, LX1/b;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 16
    :goto_1
    iput-object p1, p0, LJ/c;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, LJ/c;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;LJ/M;LN/p;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p4, p2, v0}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object p2

    iput-object p2, p0, LJ/c;->b:Ljava/lang/Object;

    .line 26
    invoke-virtual {p4, p3, v0}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object p2

    iput-object p2, p0, LJ/c;->c:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, LJ/c;->e:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, LJ/c;->f:Ljava/lang/Object;

    .line 29
    iput-object p5, p0, LJ/c;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(JLJ/D;)V
    .locals 9

    iget-object v0, p0, LJ/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, LJ/c;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/PriorityQueue;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v2

    if-eqz v2, :cond_6

    iget v3, p0, LJ/c;->a:I

    if-eqz v3, :cond_6

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    iget v5, p0, LJ/c;->a:I

    if-lt v3, v5, :cond_0

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK/y;

    sget-object v5, LJ/W;->a:Ljava/lang/String;

    iget-wide v5, v3, LK/y;->f:J

    cmp-long v3, p1, v5

    if-gez v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, LJ/c;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v3, LJ/D;

    invoke-direct {v3}, LJ/D;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ/D;

    :goto_0
    invoke-virtual {p3}, LJ/D;->a()I

    move-result v5

    invoke-virtual {v3, v5}, LJ/D;->K(I)V

    iget-object v5, p3, LJ/D;->a:[B

    iget p3, p3, LJ/D;->b:I

    iget-object v6, v3, LJ/D;->a:[B

    invoke-virtual {v3}, LJ/D;->a()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v5, p3, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, LJ/c;->f:Ljava/lang/Object;

    check-cast p3, LK/y;

    if-eqz p3, :cond_2

    iget-wide v5, p3, LK/y;->f:J

    cmp-long v5, p1, v5

    if-nez v5, :cond_2

    iget-object p1, p3, LK/y;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, LK/y;

    invoke-direct {p3}, LK/y;-><init>()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LK/y;

    :goto_1
    iget-object v0, p3, LK/y;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    const/4 v8, 0x1

    :cond_4
    invoke-static {v8}, LF1/i;->g(Z)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-static {v2}, LF1/i;->o(Z)V

    iput-wide p1, p3, LK/y;->f:J

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, LJ/c;->f:Ljava/lang/Object;

    iget p1, p0, LJ/c;->a:I

    if-eq p1, v4, :cond_5

    invoke-virtual {p0, p1}, LJ/c;->b(I)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    iget-object v0, p0, LJ/c;->b:Ljava/lang/Object;

    check-cast v0, LK/z;

    invoke-interface {v0, p1, p2, p3}, LK/z;->r(JLJ/D;)V

    return-void
.end method

.method public b(I)V
    .locals 8

    iget-object v0, p0, LJ/c;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/PriorityQueue;

    :goto_0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-le v1, p1, :cond_2

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK/y;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, v1, LK/y;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, LJ/c;->b:Ljava/lang/Object;

    check-cast v4, LK/z;

    iget-wide v5, v1, LK/y;->f:J

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LJ/D;

    invoke-interface {v4, v5, v6, v7}, LK/z;->r(JLJ/D;)V

    iget-object v4, p0, LJ/c;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ/D;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, LJ/c;->f:Ljava/lang/Object;

    check-cast v2, LK/y;

    if-eqz v2, :cond_1

    iget-wide v2, v2, LK/y;->f:J

    iget-wide v4, v1, LK/y;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, LJ/c;->f:Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, LJ/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, LJ/c;->c:Ljava/lang/Object;

    check-cast v1, LJ/O;

    iget-object v1, v1, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LJ/c;->e:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v1, p0, LJ/c;->b:Ljava/lang/Object;

    check-cast v1, LJ/O;

    iget-object v1, v1, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p0, LJ/c;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, LJ/c;->a:I

    iget-object v1, p0, LJ/c;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LJ/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, LJ/c;->b:Ljava/lang/Object;

    check-cast v0, LJ/O;

    iget-object v1, v0, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, LJ/O;->e(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iput p1, p0, LJ/c;->a:I

    invoke-virtual {p0, p1}, LJ/c;->b(I)V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LJ/c;->e:Ljava/lang/Object;

    iput-object p1, p0, LJ/c;->e:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LJ/c;->d:Ljava/lang/Object;

    check-cast v1, LN/p;

    iget-object v1, v1, LN/p;->f:LN/x;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1}, LN/x;->D1()V

    iget-object v0, v1, LN/x;->l:LN/F;

    iget-object v0, v0, LN/F;->k:LJ/O;

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, LJ/O;->b(III)LJ/N;

    move-result-object v0

    invoke-virtual {v0}, LJ/N;->b()V

    iget-object v0, v1, LN/x;->m:LJ/t;

    new-instance v1, LG/l0;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2}, LG/l0;-><init>(II)V

    const/16 p1, 0x15

    invoke-virtual {v0, p1, v1}, LJ/t;->f(ILJ/q;)V

    :cond_0
    return-void
.end method
