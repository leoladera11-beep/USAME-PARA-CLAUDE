.class public final Ld2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/v;


# instance fields
.field public final e:Z

.field public final f:Lj2/g;

.field public g:Z

.field public final synthetic h:Ld2/w;


# direct methods
.method public constructor <init>(Ld2/w;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/t;->h:Ld2/w;

    iput-boolean p2, p0, Ld2/t;->e:Z

    new-instance p1, Lj2/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/t;->f:Lj2/g;

    return-void
.end method


# virtual methods
.method public final a()Lj2/z;
    .locals 1

    iget-object v0, p0, Ld2/t;->h:Ld2/w;

    iget-object v0, v0, Ld2/w;->l:Ld2/v;

    return-object v0
.end method

.method public final c(Z)V
    .locals 12

    iget-object v1, p0, Ld2/t;->h:Ld2/w;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Ld2/w;->l:Ld2/v;

    invoke-virtual {v0}, Lj2/e;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-wide v2, v1, Ld2/w;->e:J

    iget-wide v4, v1, Ld2/w;->f:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Ld2/t;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ld2/t;->g:Z

    if-nez v0, :cond_0

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v0, v1, Ld2/w;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_0
    :try_start_8
    iget-object v0, v1, Ld2/w;->l:Ld2/v;

    invoke-virtual {v0}, Ld2/v;->k()V

    invoke-virtual {v1}, Ld2/w;->b()V

    iget-wide v2, v1, Ld2/w;->f:J

    iget-wide v4, v1, Ld2/w;->e:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Ld2/t;->f:Lj2/g;

    iget-wide v4, v0, Lj2/g;->f:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iget-wide v2, v1, Ld2/w;->e:J

    add-long/2addr v2, v10

    iput-wide v2, v1, Ld2/w;->e:J

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld2/t;->f:Lj2/g;

    iget-wide v2, p1, Lj2/g;->f:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    cmp-long p1, v10, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_1
    move v8, p1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    monitor-exit v1

    iget-object p1, p0, Ld2/t;->h:Ld2/w;

    iget-object p1, p1, Ld2/w;->l:Ld2/v;

    invoke-virtual {p1}, Lj2/e;->h()V

    :try_start_9
    iget-object p1, p0, Ld2/t;->h:Ld2/w;

    iget-object v6, p1, Ld2/w;->b:Ld2/o;

    iget v7, p1, Ld2/w;->a:I

    iget-object v9, p0, Ld2/t;->f:Lj2/g;

    invoke-virtual/range {v6 .. v11}, Ld2/o;->t(IZLj2/g;J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    iget-object p1, p0, Ld2/t;->h:Ld2/w;

    iget-object p1, p1, Ld2/w;->l:Ld2/v;

    invoke-virtual {p1}, Ld2/v;->k()V

    return-void

    :catchall_3
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, Ld2/t;->h:Ld2/w;

    iget-object v0, v0, Ld2/w;->l:Ld2/v;

    invoke-virtual {v0}, Ld2/v;->k()V

    throw p1

    :goto_3
    :try_start_a
    iget-object v0, v1, Ld2/w;->l:Ld2/v;

    invoke-virtual {v0}, Ld2/v;->k()V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_4
    monitor-exit v1

    throw p1
.end method

.method public final close()V
    .locals 13

    iget-object v1, p0, Ld2/t;->h:Ld2/w;

    sget-object v0, LX1/b;->a:[B

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ld2/t;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget v0, v1, Ld2/w;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    iget-object v1, p0, Ld2/t;->h:Ld2/w;

    iget-object v3, v1, Ld2/w;->j:Ld2/t;

    iget-boolean v3, v3, Ld2/t;->e:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Ld2/t;->f:Lj2/g;

    iget-wide v3, v3, Lj2/g;->f:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    :goto_1
    iget-object v0, p0, Ld2/t;->f:Lj2/g;

    iget-wide v0, v0, Lj2/g;->f:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_3

    invoke-virtual {p0, v2}, Ld2/t;->c(Z)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v7, v1, Ld2/w;->b:Ld2/o;

    iget v8, v1, Ld2/w;->a:I

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v7 .. v12}, Ld2/o;->t(IZLj2/g;J)V

    :cond_3
    iget-object v1, p0, Ld2/t;->h:Ld2/w;

    monitor-enter v1

    :try_start_4
    iput-boolean v2, p0, Ld2/t;->g:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Ld2/t;->h:Ld2/w;

    iget-object v0, v0, Ld2/w;->b:Ld2/o;

    invoke-virtual {v0}, Ld2/o;->flush()V

    iget-object v0, p0, Ld2/t;->h:Ld2/w;

    invoke-virtual {v0}, Ld2/w;->a()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final flush()V
    .locals 4

    iget-object v0, p0, Ld2/t;->h:Ld2/w;

    sget-object v1, LX1/b;->a:[B

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ld2/w;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    iget-object v0, p0, Ld2/t;->f:Lj2/g;

    iget-wide v0, v0, Lj2/g;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld2/t;->c(Z)V

    iget-object v0, p0, Ld2/t;->h:Ld2/w;

    iget-object v0, v0, Ld2/w;->b:Ld2/o;

    invoke-virtual {v0}, Ld2/o;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final k(JLj2/g;)V
    .locals 3

    sget-object v0, LX1/b;->a:[B

    iget-object v0, p0, Ld2/t;->f:Lj2/g;

    invoke-virtual {v0, p1, p2, p3}, Lj2/g;->k(JLj2/g;)V

    :goto_0
    iget-wide p1, v0, Lj2/g;->f:J

    const-wide/16 v1, 0x4000

    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ld2/t;->c(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
