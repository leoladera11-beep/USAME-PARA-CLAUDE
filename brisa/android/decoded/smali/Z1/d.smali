.class public final LZ1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lcom/brisa/local/j;

.field public static final i:LZ1/d;

.field public static final j:Ljava/util/logging/Logger;


# instance fields
.field public final a:La1/g;

.field public b:I

.field public c:Z

.field public d:J

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:LB/k;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/brisa/local/j;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/brisa/local/j;-><init>(I)V

    sput-object v0, LZ1/d;->h:Lcom/brisa/local/j;

    new-instance v0, LZ1/d;

    new-instance v1, La1/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LX1/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " TaskRunner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-static {v2, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, LX1/a;

    const/4 v3, 0x1

    invoke-direct {v11, v2, v3}, LX1/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v10}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const-wide/16 v7, 0x3c

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v4, v1, La1/g;->e:Ljava/lang/Object;

    invoke-direct {v0, v1}, LZ1/d;-><init>(La1/g;)V

    sput-object v0, LZ1/d;->i:LZ1/d;

    const-class v0, LZ1/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "getLogger(TaskRunner::class.java.name)"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LZ1/d;->j:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(La1/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ1/d;->a:La1/g;

    const/16 p1, 0x2710

    iput p1, p0, LZ1/d;->b:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LZ1/d;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LZ1/d;->f:Ljava/util/ArrayList;

    new-instance p1, LB/k;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, LB/k;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, LZ1/d;->g:LB/k;

    return-void
.end method

.method public static final a(LZ1/d;LZ1/a;)V
    .locals 5

    sget-object v0, LX1/b;->a:[B

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, LZ1/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, LZ1/a;->a()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, v2, v3}, LZ1/d;->b(LZ1/a;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    move-exception v2

    monitor-enter p0

    const-wide/16 v3, -0x1

    :try_start_2
    invoke-virtual {p0, p1, v3, v4}, LZ1/d;->b(LZ1/a;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final b(LZ1/a;J)V
    .locals 4

    sget-object v0, LX1/b;->a:[B

    iget-object v0, p1, LZ1/a;->c:LZ1/c;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v1, v0, LZ1/c;->d:LZ1/a;

    if-ne v1, p1, :cond_2

    iget-boolean v1, v0, LZ1/c;->f:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, LZ1/c;->f:Z

    const/4 v2, 0x0

    iput-object v2, v0, LZ1/c;->d:LZ1/a;

    iget-object v2, p0, LZ1/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-boolean v1, v0, LZ1/c;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, LZ1/c;->d(LZ1/a;JZ)Z

    :cond_0
    iget-object p1, v0, LZ1/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LZ1/d;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()LZ1/a;
    .locals 17

    move-object/from16 v1, p0

    sget-object v0, LX1/b;->a:[B

    :goto_0
    iget-object v0, v1, LZ1/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v6, 0x7fffffffffffffffL

    move-object v8, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LZ1/c;

    iget-object v9, v9, LZ1/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LZ1/a;

    iget-wide v14, v9, LZ1/a;->d:J

    sub-long/2addr v14, v4

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    cmp-long v16, v14, v11

    if-lez v16, :cond_1

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    move v2, v10

    goto :goto_2

    :cond_2
    move-object v8, v9

    goto :goto_1

    :cond_3
    move v2, v13

    :goto_2
    iget-object v9, v1, LZ1/d;->e:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    sget-object v3, LX1/b;->a:[B

    const-wide/16 v3, -0x1

    iput-wide v3, v8, LZ1/a;->d:J

    iget-object v3, v8, LZ1/a;->c:LZ1/c;

    invoke-static {v3}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v4, v3, LZ1/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v8, v3, LZ1/c;->d:LZ1/a;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, LZ1/d;->c:Z

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "runnable"

    iget-object v2, v1, LZ1/d;->g:LB/k;

    invoke-static {v2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, LZ1/d;->a:La1/g;

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    return-object v8

    :cond_6
    iget-boolean v2, v1, LZ1/d;->c:Z

    if-eqz v2, :cond_8

    iget-wide v8, v1, LZ1/d;->d:J

    sub-long/2addr v8, v4

    cmp-long v0, v6, v8

    if-gez v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_7
    :goto_3
    return-object v3

    :cond_8
    iput-boolean v10, v1, LZ1/d;->c:Z

    add-long/2addr v4, v6

    iput-wide v4, v1, LZ1/d;->d:J

    const-wide/32 v2, 0xf4240

    :try_start_0
    div-long v4, v6, v2

    mul-long/2addr v2, v4

    sub-long v2, v6, v2

    cmp-long v8, v4, v11

    if-gtz v8, :cond_9

    cmp-long v6, v6, v11

    if-lez v6, :cond_a

    :cond_9
    long-to-int v2, v2

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    iput-boolean v13, v1, LZ1/d;->c:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v10

    :goto_4
    const/4 v3, -0x1

    if-ge v3, v2, :cond_b

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZ1/c;

    invoke-virtual {v3}, LZ1/c;->b()Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v10

    :goto_5
    if-ge v3, v2, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LZ1/c;

    invoke-virtual {v4}, LZ1/c;->b()Z

    iget-object v4, v4, LZ1/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :goto_6
    iput-boolean v13, v1, LZ1/d;->c:Z

    throw v0
.end method

.method public final d(LZ1/c;)V
    .locals 2

    const-string v0, "taskQueue"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LX1/b;->a:[B

    iget-object v0, p1, LZ1/c;->d:LZ1/a;

    if-nez v0, :cond_1

    iget-object v0, p1, LZ1/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, LZ1/d;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v0, "<this>"

    invoke-static {v1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-boolean p1, p0, LZ1/d;->c:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void

    :cond_2
    const-string p1, "runnable"

    iget-object v0, p0, LZ1/d;->g:LB/k;

    invoke-static {v0, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LZ1/d;->a:La1/g;

    iget-object p1, p1, La1/g;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()LZ1/c;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, LZ1/d;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LZ1/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    new-instance v1, LZ1/c;

    const-string v2, "Q"

    invoke-static {v0, v2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, LZ1/c;-><init>(LZ1/d;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
