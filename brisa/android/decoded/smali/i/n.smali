.class public final Li/n;
.super Li/i;
.source "SourceFile"


# virtual methods
.method public final j(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Li/i;->k:Ljava/lang/Object;

    :cond_0
    sget-object v0, Li/i;->j:Lcom/brisa/local/v;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/brisa/local/v;->b(Li/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Li/i;->c(Li/i;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final k(Lz1/B;)Z
    .locals 5

    iget-object v0, p0, Li/i;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Li/i;->f(Lz1/B;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Li/i;->j:Lcom/brisa/local/v;

    invoke-virtual {v0, p0, v3, p1}, Lcom/brisa/local/v;->b(Li/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Li/i;->c(Li/i;)V

    return v2

    :cond_0
    new-instance v0, Li/f;

    invoke-direct {v0, p0, p1}, Li/f;-><init>(Li/n;Lz1/B;)V

    sget-object v4, Li/i;->j:Lcom/brisa/local/v;

    invoke-virtual {v4, p0, v3, v0}, Lcom/brisa/local/v;->b(Li/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    sget-object v1, Li/m;->e:Li/m;

    invoke-interface {p1, v0, v1}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v1, Li/c;

    invoke-direct {v1, p1}, Li/c;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    sget-object v1, Li/c;->b:Li/c;

    :goto_0
    sget-object p1, Li/i;->j:Lcom/brisa/local/v;

    invoke-virtual {p1, p0, v0, v1}, Lcom/brisa/local/v;->b(Li/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    return v2

    :cond_1
    iget-object v0, p0, Li/i;->e:Ljava/lang/Object;

    :cond_2
    instance-of v2, v0, Li/a;

    if-eqz v2, :cond_3

    check-cast v0, Li/a;

    iget-boolean v0, v0, Li/a;->a:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    return v1
.end method
