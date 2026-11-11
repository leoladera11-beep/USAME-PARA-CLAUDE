.class public final LZ0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LE/a;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/util/concurrent/Executor;

.field public volatile g:LF/a;

.field public volatile h:LF/a;

.field public final i:Ljava/util/concurrent/Semaphore;

.field public final j:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;Ljava/util/Set;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LZ0/d;->b:Z

    iput-boolean v0, p0, LZ0/d;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, LZ0/d;->d:Z

    iput-boolean v0, p0, LZ0/d;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, LZ0/d;->i:Ljava/util/concurrent/Semaphore;

    iput-object p2, p0, LZ0/d;->j:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, LZ0/d;->g:LF/a;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LZ0/d;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ0/d;->c()V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, LZ0/d;->e:Z

    :cond_1
    :goto_0
    iget-object v0, p0, LZ0/d;->h:LF/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, LZ0/d;->g:LF/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, LZ0/d;->g:LF/a;

    return-void

    :cond_2
    iget-object v0, p0, LZ0/d;->g:LF/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LZ0/d;->g:LF/a;

    iget-object v3, v0, LF/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, LF/a;->e:LF/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LZ0/d;->g:LF/a;

    iput-object v0, p0, LZ0/d;->h:LF/a;

    :cond_3
    iput-object v2, p0, LZ0/d;->g:LF/a;

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, LZ0/d;->h:LF/a;

    if-nez v0, :cond_4

    iget-object v0, p0, LZ0/d;->g:LF/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, LZ0/d;->g:LF/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LZ0/d;->f:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, LZ0/d;->f:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, LZ0/d;->g:LF/a;

    iget-object v1, p0, LZ0/d;->f:Ljava/util/concurrent/Executor;

    iget v2, v0, LF/a;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    iget v0, v0, LF/a;->f:I

    invoke-static {v0}, Lz/K;->b(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We should never reach this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v3, v0, LF/a;->f:I

    iget-object v0, v0, LF/a;->e:LF/c;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, LZ0/d;->a()V

    new-instance v0, LF/a;

    invoke-direct {v0, p0}, LF/a;-><init>(LZ0/d;)V

    iput-object v0, p0, LZ0/d;->g:LF/a;

    invoke-virtual {p0}, LZ0/d;->b()V

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, LZ0/d;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v0, p0, LZ0/d;->i:Ljava/util/concurrent/Semaphore;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x0

    const-wide/16 v3, 0x5

    invoke-virtual {v0, v2, v3, v4, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GACSignInLoader"

    const-string v2, "Unexpected InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb1/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id=0}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
