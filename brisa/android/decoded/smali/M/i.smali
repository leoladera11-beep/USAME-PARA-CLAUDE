.class public abstract LM/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/c;


# instance fields
.field public final a:LM/h;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayDeque;

.field public final d:Ljava/util/ArrayDeque;

.field public final e:[LM/f;

.field public final f:[LM/g;

.field public g:I

.field public h:I

.field public i:LM/f;

.field public j:LM/d;

.field public k:Z

.field public l:Z

.field public m:J


# direct methods
.method public constructor <init>([LM/f;[LM/g;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LM/i;->b:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LM/i;->m:J

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LM/i;->c:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LM/i;->d:Ljava/util/ArrayDeque;

    iput-object p1, p0, LM/i;->e:[LM/f;

    array-length p1, p1

    iput p1, p0, LM/i;->g:I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, LM/i;->g:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LM/i;->e:[LM/f;

    invoke-virtual {p0}, LM/i;->g()LM/f;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, LM/i;->f:[LM/g;

    array-length p2, p2

    iput p2, p0, LM/i;->h:I

    :goto_1
    iget p2, p0, LM/i;->h:I

    if-ge p1, p2, :cond_1

    iget-object p2, p0, LM/i;->f:[LM/g;

    invoke-virtual {p0}, LM/i;->h()LM/g;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, LM/h;

    invoke-direct {p1, p0}, LM/h;-><init>(LM/i;)V

    iput-object p1, p0, LM/i;->a:LM/h;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LM/i;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, LM/i;->l:Z

    iget-object v1, p0, LM/i;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, LM/i;->a:LM/h;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final bridge synthetic b(Ly0/i;)V
    .locals 0

    invoke-virtual {p0, p1}, LM/i;->m(LM/f;)V

    return-void
.end method

.method public final c(J)V
    .locals 3

    iget-object v0, p0, LM/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LM/i;->g:I

    iget-object v2, p0, LM/i;->e:[LM/f;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, LM/i;->k:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    iput-wide p1, p0, LM/i;->m:J

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LM/i;->l()LM/g;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LM/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LM/i;->j:LM/d;

    if-nez v1, :cond_2

    iget-object v1, p0, LM/i;->i:LM/f;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LF1/i;->o(Z)V

    iget v1, p0, LM/i;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, LM/i;->e:[LM/f;

    sub-int/2addr v1, v2

    iput v1, p0, LM/i;->g:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, LM/i;->i:LM/f;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    throw v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final flush()V
    .locals 5

    iget-object v0, p0, LM/i;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, LM/i;->k:Z

    iget-object v1, p0, LM/i;->i:LM/f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LM/f;->h()V

    iget-object v2, p0, LM/i;->e:[LM/f;

    iget v3, p0, LM/i;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, LM/i;->g:I

    aput-object v1, v2, v3

    const/4 v1, 0x0

    iput-object v1, p0, LM/i;->i:LM/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, LM/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, LM/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM/f;

    invoke-virtual {v1}, LM/f;->h()V

    iget-object v2, p0, LM/i;->e:[LM/f;

    iget v3, p0, LM/i;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, LM/i;->g:I

    aput-object v1, v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, LM/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, LM/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM/g;

    invoke-virtual {v1}, LM/g;->i()V

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract g()LM/f;
.end method

.method public abstract h()LM/g;
.end method

.method public abstract i(Ljava/lang/Throwable;)LM/d;
.end method

.method public abstract j(LM/f;LM/g;Z)LM/d;
.end method

.method public final k()Z
    .locals 13

    iget-object v0, p0, LM/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, LM/i;->l:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, LM/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, LM/i;->h:I

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_1

    iget-object v1, p0, LM/i;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    :cond_1
    iget-boolean v1, p0, LM/i;->l:Z

    if-eqz v1, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    iget-object v1, p0, LM/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM/f;

    iget-object v4, p0, LM/i;->f:[LM/g;

    iget v5, p0, LM/i;->h:I

    sub-int/2addr v5, v3

    iput v5, p0, LM/i;->h:I

    aget-object v4, v4, v5

    iget-boolean v5, p0, LM/i;->k:Z

    iput-boolean v2, p0, LM/i;->k:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, LK/f;->f(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v0}, LK/f;->b(I)V

    goto :goto_5

    :cond_3
    iget-wide v6, v1, LM/f;->k:J

    iput-wide v6, v4, LM/g;->g:J

    const/high16 v0, 0x8000000

    invoke-virtual {v1, v0}, LK/f;->f(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v0}, LK/f;->b(I)V

    :cond_4
    iget-wide v6, v1, LM/f;->k:J

    iget-object v8, p0, LM/i;->b:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-wide v9, p0, LM/i;->m:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v9, v11

    if-eqz v0, :cond_6

    cmp-long v0, v6, v9

    if-ltz v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v3

    :goto_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v0, :cond_7

    iput-boolean v3, v4, LM/g;->h:Z

    :cond_7
    :try_start_2
    invoke-virtual {p0, v1, v4, v5}, LM/i;->j(LM/f;LM/g;Z)LM/d;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, LM/i;->i(Ljava/lang/Throwable;)LM/d;

    move-result-object v0

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, LM/i;->i(Ljava/lang/Throwable;)LM/d;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_8

    iget-object v5, p0, LM/i;->b:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iput-object v0, p0, LM/i;->j:LM/d;

    monitor-exit v5

    return v2

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_8
    :goto_5
    iget-object v0, p0, LM/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-boolean v2, p0, LM/i;->k:Z

    if-eqz v2, :cond_9

    invoke-virtual {v4}, LM/g;->i()V

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_7

    :cond_9
    iget-boolean v2, v4, LM/g;->h:Z

    if-eqz v2, :cond_a

    invoke-virtual {v4}, LM/g;->i()V

    goto :goto_6

    :cond_a
    iget-object v2, p0, LM/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {v1}, LM/f;->h()V

    iget-object v2, p0, LM/i;->e:[LM/f;

    iget v4, p0, LM/i;->g:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, LM/i;->g:I

    aput-object v1, v2, v4

    monitor-exit v0

    return v3

    :goto_7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :goto_8
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public final l()LM/g;
    .locals 2

    iget-object v0, p0, LM/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LM/i;->j:LM/d;

    if-nez v1, :cond_1

    iget-object v1, p0, LM/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LM/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM/g;

    monitor-exit v0

    return-object v1

    :cond_1
    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m(LM/f;)V
    .locals 2

    iget-object v0, p0, LM/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LM/i;->j:LM/d;

    if-nez v1, :cond_2

    iget-object v1, p0, LM/i;->i:LM/f;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LF1/i;->g(Z)V

    iget-object v1, p0, LM/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, LM/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, LM/i;->h:I

    if-lez p1, :cond_1

    iget-object p1, p0, LM/i;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, LM/i;->i:LM/f;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n(LM/g;)V
    .locals 4

    iget-object v0, p0, LM/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, LM/g;->h()V

    iget-object v1, p0, LM/i;->f:[LM/g;

    iget v2, p0, LM/i;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, LM/i;->h:I

    aput-object p1, v1, v2

    iget-object p1, p0, LM/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, LM/i;->h:I

    if-lez p1, :cond_0

    iget-object p1, p0, LM/i;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
