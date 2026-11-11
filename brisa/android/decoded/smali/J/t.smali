.class public final LJ/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Thread;

.field public final b:LJ/O;

.field public final c:LJ/r;

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final e:Ljava/util/ArrayDeque;

.field public final f:Ljava/util/ArrayDeque;

.field public final g:Ljava/lang/Object;

.field public h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;LJ/M;LJ/r;)V
    .locals 7

    .line 2
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 4
    invoke-direct/range {v0 .. v6}, LJ/t;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;LJ/M;LJ/r;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 7

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, LJ/t;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;LJ/M;LJ/r;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;LJ/M;LJ/r;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p3, p0, LJ/t;->a:Ljava/lang/Thread;

    .line 7
    iput-object p1, p0, LJ/t;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    iput-object p5, p0, LJ/t;->c:LJ/r;

    .line 9
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/t;->g:Ljava/lang/Object;

    .line 10
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LJ/t;->e:Ljava/util/ArrayDeque;

    .line 11
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LJ/t;->f:Ljava/util/ArrayDeque;

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 12
    new-instance p1, LJ/o;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, LJ/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p4, p2, p1}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object p1

    .line 13
    iput-object p1, p0, LJ/t;->b:LJ/O;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, LJ/t;->b:LJ/O;

    .line 15
    :goto_0
    iput-boolean p6, p0, LJ/t;->i:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LJ/t;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LJ/t;->h:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LJ/t;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, LJ/s;

    invoke-direct {v2, p1}, LJ/s;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 5

    iget-boolean v0, p0, LJ/t;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, LJ/t;->a:Ljava/lang/Thread;

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    :goto_1
    iget-object v0, p0, LJ/t;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, LJ/t;->c:LJ/r;

    if-eqz v2, :cond_3

    iget-object v2, p0, LJ/t;->b:LJ/O;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v1}, LJ/O;->a(I)LJ/N;

    move-result-object v1

    iget-object v2, v1, LJ/N;->a:Landroid/os/Message;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-virtual {v1}, LJ/N;->a()V

    :cond_3
    iget-object v1, p0, LJ/t;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final c(ILJ/q;)V
    .locals 3

    iget-boolean v0, p0, LJ/t;->i:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, LJ/t;->a:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    :goto_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, LJ/t;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v1, LJ/p;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, LJ/p;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    iget-object p1, p0, LJ/t;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 6

    iget-boolean v0, p0, LJ/t;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v3, p0, LJ/t;->a:Ljava/lang/Thread;

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    :goto_1
    iget-object v0, p0, LJ/t;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean v2, p0, LJ/t;->h:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LJ/t;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ/s;

    iget-object v4, p0, LJ/t;->c:LJ/r;

    iput-boolean v2, v3, LJ/s;->d:Z

    if-eqz v4, :cond_2

    iget-boolean v5, v3, LJ/s;->c:Z

    if-eqz v5, :cond_2

    iput-boolean v1, v3, LJ/s;->c:Z

    iget-object v5, v3, LJ/s;->a:Ljava/lang/Object;

    iget-object v3, v3, LJ/s;->b:LE/b;

    invoke-virtual {v3}, LE/b;->e()LG/u;

    move-result-object v3

    invoke-interface {v4, v5, v3}, LJ/r;->c(Ljava/lang/Object;LG/u;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, LJ/t;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final e(LG/e0;)V
    .locals 8

    iget-boolean v0, p0, LJ/t;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v3, p0, LJ/t;->a:Ljava/lang/Thread;

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    :goto_1
    iget-object v0, p0, LJ/t;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ/s;

    iget-object v5, v4, LJ/s;->a:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-boolean v2, v4, LJ/s;->d:Z

    iget-object v5, p0, LJ/t;->c:LJ/r;

    if-eqz v5, :cond_3

    iget-boolean v6, v4, LJ/s;->c:Z

    if-eqz v6, :cond_3

    iput-boolean v1, v4, LJ/s;->c:Z

    iget-object v6, v4, LJ/s;->a:Ljava/lang/Object;

    iget-object v7, v4, LJ/s;->b:LE/b;

    invoke-virtual {v7}, LE/b;->e()LG/u;

    move-result-object v7

    invoke-interface {v5, v6, v7}, LJ/r;->c(Ljava/lang/Object;LG/u;)V

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final f(ILJ/q;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p0}, LJ/t;->b()V

    return-void
.end method
