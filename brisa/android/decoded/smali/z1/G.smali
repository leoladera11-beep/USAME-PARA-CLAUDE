.class public final Lz1/G;
.super Lz1/D;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public final f:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0, p1}, Lz1/D;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lz1/G;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .line 4
    new-instance v0, Lz1/J;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-direct {v0, p1}, Lz1/J;-><init>(Ljava/util/concurrent/Callable;)V

    .line 5
    iget-object p1, p0, Lz1/G;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 6
    new-instance p2, Lz1/E;

    invoke-direct {p2, v0, p1}, Lz1/E;-><init>(Lz1/p;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method

.method public final schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .line 1
    new-instance v0, Lz1/J;

    invoke-direct {v0, p1}, Lz1/J;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    iget-object p1, p0, Lz1/G;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 3
    new-instance p2, Lz1/E;

    invoke-direct {p2, v0, p1}, Lz1/E;-><init>(Lz1/p;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method

.method public final scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    new-instance v1, Lz1/F;

    invoke-direct {v1, p1}, Lz1/F;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lz1/G;->f:Ljava/util/concurrent/ScheduledExecutorService;

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    new-instance p2, Lz1/E;

    invoke-direct {p2, v1, p1}, Lz1/E;-><init>(Lz1/p;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method

.method public final scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    new-instance v1, Lz1/F;

    invoke-direct {v1, p1}, Lz1/F;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lz1/G;->f:Ljava/util/concurrent/ScheduledExecutorService;

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    new-instance p2, Lz1/E;

    invoke-direct {p2, v1, p1}, Lz1/E;-><init>(Lz1/p;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method
