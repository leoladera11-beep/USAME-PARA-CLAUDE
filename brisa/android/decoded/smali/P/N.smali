.class public final LP/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/g;


# instance fields
.field public b:J

.field public c:J

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p0, LP/N;->d:Ljava/lang/Object;

    check-cast v0, LX/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    .line 3
    iput-wide p2, p0, LP/N;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    .line 4
    iput-wide p2, p0, LP/N;->c:J

    return-void
.end method

.method public constructor <init>(LP/O;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP/N;->e:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, LP/N;->b:J

    .line 7
    iput-wide v0, p0, LP/N;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, LP/N;->d:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, LP/N;->e:Ljava/lang/Object;

    .line 11
    iput-wide p3, p0, LP/N;->b:J

    .line 12
    iput-wide p5, p0, LP/N;->c:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, LP/N;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    if-nez v2, :cond_0

    iput-object p1, p0, LP/N;->d:Ljava/lang/Object;

    :cond_0
    iget-wide v2, p0, LP/N;->b:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, LP/N;->e:Ljava/lang/Object;

    check-cast v2, LP/O;

    iget-object v2, v2, LP/O;->r:LP/q;

    check-cast v2, LP/G;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LP/E;->q:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v3, LP/E;->s:I

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    const-wide/16 v2, 0xc8

    add-long/2addr v2, v0

    iput-wide v2, p0, LP/N;->b:J

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    iget-wide v2, p0, LP/N;->b:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    iget-object v0, p0, LP/N;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    if-eq v0, p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    iget-object p1, p0, LP/N;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    const/4 v0, 0x0

    iput-object v0, p0, LP/N;->d:Ljava/lang/Object;

    iput-wide v4, p0, LP/N;->b:J

    iput-wide v4, p0, LP/N;->c:J

    throw p1

    :cond_4
    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    iput-wide v0, p0, LP/N;->c:J

    return-void
.end method

.method public b()Lb0/z;
    .locals 5

    iget-wide v0, p0, LP/N;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    new-instance v0, Lb0/s;

    iget-object v1, p0, LP/N;->d:Ljava/lang/Object;

    check-cast v1, Lb0/t;

    iget-wide v2, p0, LP/N;->b:J

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v3, v1}, Lb0/s;-><init>(IJLjava/lang/Object;)V

    return-object v0
.end method

.method public d(Lb0/o;)J
    .locals 6

    iget-wide v0, p0, LP/N;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    iput-wide v2, p0, LP/N;->c:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public e(J)V
    .locals 2

    iget-object v0, p0, LP/N;->e:Ljava/lang/Object;

    check-cast v0, LW0/c;

    iget-object v0, v0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, LJ/W;->d([JJZ)I

    move-result p1

    aget-wide p1, v0, p1

    iput-wide p1, p0, LP/N;->c:J

    return-void
.end method
