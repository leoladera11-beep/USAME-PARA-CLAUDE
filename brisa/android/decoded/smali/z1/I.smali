.class public final Lz1/I;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final h:Lz1/z;

.field public static final i:Lz1/z;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lz1/J;

.field public final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/I;->h:Lz1/z;

    new-instance v0, Lz1/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/I;->i:Lz1/z;

    return-void
.end method

.method public constructor <init>(Lz1/J;LM0/K;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz1/I;->e:I

    .line 5
    iput-object p1, p0, Lz1/I;->f:Lz1/J;

    .line 6
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    iput-object p2, p0, Lz1/I;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz1/J;Ljava/util/concurrent/Callable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lz1/I;->e:I

    .line 1
    iput-object p1, p0, Lz1/I;->f:Lz1/J;

    .line 2
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p2, p0, Lz1/I;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lz1/I;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lz1/I;->f:Lz1/J;

    invoke-virtual {v0, p1}, Lz1/p;->k(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    check-cast p1, Lz1/B;

    iget-object v0, p0, Lz1/I;->f:Lz1/J;

    invoke-virtual {v0, p1}, Lz1/p;->m(Lz1/B;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Thread;)V
    .locals 8

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    instance-of v5, v0, Lz1/y;

    sget-object v6, Lz1/I;->i:Lz1/z;

    if-nez v5, :cond_2

    if-ne v0, v6, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    move-object v2, v0

    check-cast v2, Lz1/y;

    :cond_3
    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/16 v7, 0x3e8

    if-le v4, v7, :cond_7

    if-eq v0, v6, :cond_4

    invoke-virtual {p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v5

    :goto_3
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_8
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final run()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v2, p0, Lz1/I;->e:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lz1/I;->f:Lz1/J;

    invoke-virtual {v2}, Lz1/p;->isDone()Z

    move-result v2

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lz1/I;->f:Lz1/J;

    invoke-virtual {v2}, Lz1/p;->isDone()Z

    move-result v2

    :goto_0
    sget-object v3, Lz1/I;->h:Lz1/z;

    if-nez v2, :cond_5

    :try_start_0
    iget v4, p0, Lz1/I;->e:I

    packed-switch v4, :pswitch_data_1

    iget-object v4, p0, Lz1/I;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/Callable;

    invoke-interface {v4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lz1/I;->g:Ljava/lang/Object;

    check-cast v4, LM0/K;

    iget-object v5, v4, LM0/K;->f:Ljava/lang/Object;

    check-cast v5, LM0/w1;

    iget-object v4, v4, LM0/K;->g:Ljava/lang/Object;

    check-cast v4, LM0/P0;

    invoke-virtual {v5, v4}, LM0/w1;->a(LM0/P0;)Lz1/B;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    instance-of v5, v4, Ljava/lang/InterruptedException;

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lz1/I;->b(Ljava/lang/Thread;)V

    :cond_2
    if-nez v2, :cond_7

    iget v0, p0, Lz1/I;->e:I

    packed-switch v0, :pswitch_data_2

    iget-object v0, p0, Lz1/I;->f:Lz1/J;

    invoke-virtual {v0, v4}, Lz1/p;->l(Ljava/lang/Throwable;)Z

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lz1/I;->f:Lz1/J;

    invoke-virtual {v0, v4}, Lz1/p;->l(Ljava/lang/Throwable;)Z

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v0}, Lz1/I;->b(Ljava/lang/Thread;)V

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Lz1/I;->a(Ljava/lang/Object;)V

    :cond_4
    throw v4

    :cond_5
    :goto_1
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v0}, Lz1/I;->b(Ljava/lang/Thread;)V

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0, v1}, Lz1/I;->a(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    sget-object v1, Lz1/I;->h:Lz1/z;

    if-ne v0, v1, :cond_0

    const-string v0, "running=[DONE]"

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lz1/y;

    if-eqz v1, :cond_1

    const-string v0, "running=[INTERRUPTED]"

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "running=[RUNNING ON "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "running=[NOT STARTED YET]"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lz1/I;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lz1/I;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lz1/I;->g:Ljava/lang/Object;

    check-cast v0, LM0/K;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
