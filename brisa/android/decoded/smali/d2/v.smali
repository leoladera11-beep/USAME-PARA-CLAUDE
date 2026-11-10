.class public final Ld2/v;
.super Lj2/e;
.source "SourceFile"


# instance fields
.field public final synthetic m:Ld2/w;


# direct methods
.method public constructor <init>(Ld2/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/v;->m:Ld2/w;

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 6

    iget-object v0, p0, Ld2/v;->m:Ld2/w;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ld2/w;->e(I)V

    iget-object v0, p0, Ld2/v;->m:Ld2/w;

    iget-object v0, v0, Ld2/w;->b:Ld2/o;

    monitor-enter v0

    :try_start_0
    iget-wide v1, v0, Ld2/o;->r:J

    iget-wide v3, v0, Ld2/o;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-wide/16 v1, 0x1

    add-long/2addr v3, v1

    :try_start_1
    iput-wide v3, v0, Ld2/o;->q:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const v3, 0x3b9aca00

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Ld2/o;->s:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v1, v0, Ld2/o;->l:LZ1/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ld2/o;->g:Ljava/lang/String;

    const-string v4, " ping"

    invoke-static {v2, v3, v4}, LB1/e;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, LZ1/b;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v0, v4}, LZ1/b;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, LZ1/c;->c(LZ1/a;J)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, Lj2/e;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
