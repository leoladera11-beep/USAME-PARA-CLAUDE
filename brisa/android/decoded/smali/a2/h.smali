.class public final La2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final e:LW1/q;

.field public final f:LM0/r0;

.field public final g:La2/l;

.field public final h:La2/g;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public j:Ljava/lang/Object;

.field public k:La2/e;

.field public l:La2/k;

.field public m:La2/d;

.field public n:Z

.field public o:Z

.field public p:Z

.field public volatile q:Z

.field public volatile r:La2/d;

.field public volatile s:La2/k;


# direct methods
.method public constructor <init>(LW1/q;LM0/r0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/h;->e:LW1/q;

    iput-object p2, p0, La2/h;->f:LM0/r0;

    iget-object p2, p1, LW1/q;->f:La1/g;

    iget-object p2, p2, La1/g;->e:Ljava/lang/Object;

    check-cast p2, La2/l;

    iput-object p2, p0, La2/h;->g:La2/l;

    iget-object p1, p1, LW1/q;->i:LP/B;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, La2/g;

    invoke-direct {p1, p0}, La2/g;-><init>(La2/h;)V

    const/4 p2, 0x0

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Lj2/z;->g(J)Lj2/z;

    iput-object p1, p0, La2/h;->h:La2/g;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, La2/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, La2/h;->p:Z

    return-void
.end method


# virtual methods
.method public final a(La2/k;)V
    .locals 2

    sget-object v0, LX1/b;->a:[B

    iget-object v0, p0, La2/h;->l:La2/k;

    if-nez v0, :cond_0

    iput-object p1, p0, La2/h;->l:La2/k;

    iget-object p1, p1, La2/k;->p:Ljava/util/ArrayList;

    new-instance v0, La2/f;

    iget-object v1, p0, La2/h;->j:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, La2/f;-><init>(La2/h;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    sget-object v0, LX1/b;->a:[B

    iget-object v0, p0, La2/h;->l:La2/k;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, La2/h;->i()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, La2/h;->l:La2/k;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    invoke-static {v1}, LX1/b;->e(Ljava/net/Socket;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, La2/h;->h:La2/g;

    invoke-virtual {v0}, Lj2/e;->i()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    :cond_5
    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, La2/h;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La2/h;->q:Z

    iget-object v0, p0, La2/h;->r:La2/d;

    if-eqz v0, :cond_1

    iget-object v0, v0, La2/d;->d:Ljava/lang/Object;

    check-cast v0, Lb2/e;

    invoke-interface {v0}, Lb2/e;->cancel()V

    :cond_1
    iget-object v0, p0, La2/h;->s:La2/k;

    if-eqz v0, :cond_2

    iget-object v0, v0, La2/k;->c:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-static {v0}, LX1/b;->e(Ljava/net/Socket;)V

    :cond_2
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, La2/h;

    iget-object v1, p0, La2/h;->e:LW1/q;

    iget-object v2, p0, La2/h;->f:LM0/r0;

    invoke-direct {v0, v1, v2}, La2/h;-><init>(LW1/q;LM0/r0;)V

    return-object v0
.end method

.method public final d()LW1/v;
    .locals 3

    iget-object v0, p0, La2/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La2/h;->h:La2/g;

    invoke-virtual {v0}, Lj2/e;->h()V

    sget-object v0, Le2/m;->a:Le2/m;

    sget-object v0, Le2/m;->a:Le2/m;

    invoke-virtual {v0}, Le2/m;->g()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, La2/h;->j:Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, La2/h;->e:LW1/q;

    iget-object v0, v0, LW1/q;->e:LB0/b;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, LB0/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    invoke-virtual {p0}, La2/h;->f()LW1/v;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, La2/h;->e:LW1/q;

    iget-object v1, v1, LW1/q;->e:LB0/b;

    invoke-virtual {v1, p0}, LB0/b;->f(La2/h;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    iget-object v1, p0, La2/h;->e:LW1/q;

    iget-object v1, v1, LW1/q;->e:LB0/b;

    invoke-virtual {v1, p0}, LB0/b;->f(La2/h;)V

    throw v0

    :cond_0
    const-string v0, "Already Executed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final e(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La2/h;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, La2/h;->r:La2/d;

    if-eqz p1, :cond_0

    iget-object v1, p1, La2/d;->d:Ljava/lang/Object;

    check-cast v1, Lb2/e;

    invoke-interface {v1}, Lb2/e;->cancel()V

    iget-object v1, p1, La2/d;->b:Ljava/lang/Object;

    check-cast v1, La2/h;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v2, v0}, La2/h;->g(La2/d;ZZLjava/io/IOException;)Ljava/io/IOException;

    :cond_0
    iput-object v0, p0, La2/h;->m:La2/d;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()LW1/v;
    .locals 9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, La2/h;->e:LW1/q;

    iget-object v0, v0, LW1/q;->g:Ljava/util/List;

    invoke-static {v2, v0}, LF1/n;->y(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    new-instance v0, Lb2/a;

    iget-object v1, p0, La2/h;->e:LW1/q;

    invoke-direct {v0, v1}, Lb2/a;-><init>(LW1/q;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lb2/a;

    iget-object v1, p0, La2/h;->e:LW1/q;

    iget-object v1, v1, LW1/q;->n:LW1/b;

    invoke-direct {v0, v1}, Lb2/a;-><init>(LW1/b;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LY1/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, La2/a;->a:La2/a;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La2/h;->e:LW1/q;

    iget-object v0, v0, LW1/q;->h:Ljava/util/List;

    invoke-static {v2, v0}, LF1/n;->y(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    new-instance v0, Lb2/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lb2/g;

    iget-object v5, p0, La2/h;->f:LM0/r0;

    iget-object v1, p0, La2/h;->e:LW1/q;

    iget v6, v1, LW1/q;->z:I

    iget v7, v1, LW1/q;->A:I

    iget v8, v1, LW1/q;->B:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lb2/g;-><init>(La2/h;Ljava/util/ArrayList;ILa2/d;LM0/r0;III)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v5}, Lb2/g;->b(LM0/r0;)LW1/v;

    move-result-object v0

    iget-boolean v4, v1, La2/h;->q:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    invoke-virtual {p0, v2}, La2/h;->h(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {v0}, LX1/b;->d(Ljava/io/Closeable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, La2/h;->h(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-static {v0, v4}, LO1/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, La2/h;->h(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_1
    throw v0
.end method

.method public final g(La2/d;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2

    const-string v0, "exchange"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La2/h;->r:La2/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_5

    :cond_0
    monitor-enter p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, La2/h;->n:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v1, p0, La2/h;->o:Z

    if-eqz v1, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean v0, p0, La2/h;->n:Z

    :cond_3
    if-eqz p3, :cond_4

    iput-boolean v0, p0, La2/h;->o:Z

    :cond_4
    iget-boolean p2, p0, La2/h;->n:Z

    if-nez p2, :cond_5

    iget-boolean p3, p0, La2/h;->o:Z

    if-nez p3, :cond_5

    move p3, p1

    goto :goto_1

    :cond_5
    move p3, v0

    :goto_1
    if-nez p2, :cond_6

    iget-boolean p2, p0, La2/h;->o:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, La2/h;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_6

    move v0, p1

    :cond_6
    move p2, v0

    move v0, p3

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_7
    move p2, v0

    :goto_3
    monitor-exit p0

    if-eqz v0, :cond_8

    const/4 p3, 0x0

    iput-object p3, p0, La2/h;->r:La2/d;

    iget-object p3, p0, La2/h;->l:La2/k;

    if-eqz p3, :cond_8

    monitor-enter p3

    :try_start_1
    iget v0, p3, La2/k;->m:I

    add-int/2addr v0, p1

    iput v0, p3, La2/k;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p3

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    invoke-virtual {p0, p4}, La2/h;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_5
    return-object p4
.end method

.method public final h(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La2/h;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, La2/h;->p:Z

    iget-boolean v0, p0, La2/h;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, La2/h;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, La2/h;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :cond_1
    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final i()Ljava/net/Socket;
    .locals 7

    iget-object v0, p0, La2/h;->l:La2/k;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    sget-object v1, LX1/b;->a:[B

    iget-object v1, v0, La2/k;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p0}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_1
    if-eq v3, v5, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, La2/h;->l:La2/k;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v0, La2/k;->q:J

    iget-object v1, p0, La2/h;->g:La2/l;

    iget-object v3, v1, La2/l;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v1, La2/l;->b:LZ1/c;

    sget-object v5, LX1/b;->a:[B

    iget-boolean v5, v0, La2/k;->j:Z

    if-nez v5, :cond_2

    iget-object v0, v1, La2/l;->c:LZ1/b;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v0, v5, v6}, LZ1/c;->c(LZ1/a;J)V

    return-object v2

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, La2/k;->j:Z

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, LZ1/c;->a()V

    :cond_3
    iget-object v0, v0, La2/k;->d:Ljava/net/Socket;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    return-object v2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
