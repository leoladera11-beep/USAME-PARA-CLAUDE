.class public final Li/g;
.super Lcom/brisa/local/v;
.source "SourceFile"


# virtual methods
.method public final a(Li/i;Li/d;Li/d;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Li/i;->f:Li/d;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Li/i;->f:Li/d;

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

.method public final b(Li/i;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Li/i;->e:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Li/i;->e:Ljava/lang/Object;

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

.method public final c(Li/i;Li/h;Li/h;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Li/i;->g:Li/h;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Li/i;->g:Li/h;

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

.method public final r(Li/h;Li/h;)V
    .locals 0

    iput-object p2, p1, Li/h;->b:Li/h;

    return-void
.end method

.method public final s(Li/h;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Li/h;->a:Ljava/lang/Thread;

    return-void
.end method
