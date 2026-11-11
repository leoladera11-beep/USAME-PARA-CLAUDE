.class public final Lz1/g;
.super Lcom/brisa/local/u;
.source "SourceFile"


# virtual methods
.method public final e(Lz1/p;Lz1/d;Lz1/d;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lz1/p;->f:Lz1/d;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lz1/p;->f:Lz1/d;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final f(Lz1/p;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lz1/p;->e:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lz1/p;->e:Ljava/lang/Object;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final g(Lz1/p;Lz1/o;Lz1/o;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lz1/p;->g:Lz1/o;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lz1/p;->g:Lz1/o;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final l(Lz1/p;)Lz1/d;
    .locals 2

    sget-object v0, Lz1/d;->d:Lz1/d;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lz1/p;->f:Lz1/d;

    if-eq v1, v0, :cond_0

    iput-object v0, p1, Lz1/p;->f:Lz1/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v1

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final m(Lz1/p;)Lz1/o;
    .locals 2

    sget-object v0, Lz1/o;->c:Lz1/o;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lz1/p;->g:Lz1/o;

    if-eq v1, v0, :cond_0

    iput-object v0, p1, Lz1/p;->g:Lz1/o;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v1

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final s(Lz1/o;Lz1/o;)V
    .locals 0

    iput-object p2, p1, Lz1/o;->b:Lz1/o;

    return-void
.end method

.method public final t(Lz1/o;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lz1/o;->a:Ljava/lang/Thread;

    return-void
.end method
