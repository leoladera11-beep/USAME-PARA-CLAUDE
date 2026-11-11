.class public final Ld2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ld2/o;

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public final g:Ljava/util/ArrayDeque;

.field public h:Z

.field public final i:Ld2/u;

.field public final j:Ld2/t;

.field public final k:Ld2/v;

.field public final l:Ld2/v;

.field public m:I

.field public n:Ljava/io/IOException;


# direct methods
.method public constructor <init>(ILd2/o;ZZLW1/k;)V
    .locals 3

    const-string v0, "connection"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld2/w;->a:I

    iput-object p2, p0, Ld2/w;->b:Ld2/o;

    iget-object p1, p2, Ld2/o;->u:LJ/u;

    invoke-virtual {p1}, LJ/u;->e()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Ld2/w;->f:J

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ld2/w;->g:Ljava/util/ArrayDeque;

    new-instance v0, Ld2/u;

    iget-object p2, p2, Ld2/o;->t:LJ/u;

    invoke-virtual {p2}, LJ/u;->e()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {v0, p0, v1, v2, p4}, Ld2/u;-><init>(Ld2/w;JZ)V

    iput-object v0, p0, Ld2/w;->i:Ld2/u;

    new-instance p2, Ld2/t;

    invoke-direct {p2, p0, p3}, Ld2/t;-><init>(Ld2/w;Z)V

    iput-object p2, p0, Ld2/w;->j:Ld2/t;

    new-instance p2, Ld2/v;

    invoke-direct {p2, p0}, Ld2/v;-><init>(Ld2/w;)V

    iput-object p2, p0, Ld2/w;->k:Ld2/v;

    new-instance p2, Ld2/v;

    invoke-direct {p2, p0}, Ld2/v;-><init>(Ld2/w;)V

    iput-object p2, p0, Ld2/w;->l:Ld2/v;

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Ld2/w;->g()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Ld2/w;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, LX1/b;->a:[B

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld2/w;->i:Ld2/u;

    iget-boolean v1, v0, Ld2/u;->f:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Ld2/u;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld2/w;->j:Ld2/t;

    iget-boolean v1, v0, Ld2/t;->e:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Ld2/t;->g:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ld2/w;->h()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ld2/w;->c(ILjava/io/IOException;)V

    return-void

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Ld2/w;->b:Ld2/o;

    iget v1, p0, Ld2/w;->a:I

    invoke-virtual {v0, v1}, Ld2/o;->q(I)Ld2/w;

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ld2/w;->j:Ld2/t;

    iget-boolean v1, v0, Ld2/t;->g:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Ld2/t;->e:Z

    if-nez v0, :cond_2

    iget v0, p0, Ld2/w;->m:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld2/w;->n:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ld2/A;

    iget v1, p0, Ld2/w;->m:I

    invoke-static {v1}, LB1/e;->k(I)V

    invoke-direct {v0, v1}, Ld2/A;-><init>(I)V

    :goto_0
    throw v0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(ILjava/io/IOException;)V
    .locals 1

    const-string v0, "rstStatusCode"

    invoke-static {p1, v0}, LB1/e;->l(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ld2/w;->d(ILjava/io/IOException;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Ld2/w;->b:Ld2/o;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "statusCode"

    invoke-static {p1, v0}, LB1/e;->l(ILjava/lang/String;)V

    iget-object p2, p2, Ld2/o;->A:Ld2/x;

    iget v0, p0, Ld2/w;->a:I

    invoke-virtual {p2, v0, p1}, Ld2/x;->u(II)V

    return-void
.end method

.method public final d(ILjava/io/IOException;)Z
    .locals 2

    sget-object v0, LX1/b;->a:[B

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ld2/w;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iput p1, p0, Ld2/w;->m:I

    iput-object p2, p0, Ld2/w;->n:Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object p1, p0, Ld2/w;->i:Ld2/u;

    iget-boolean p1, p1, Ld2/u;->f:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld2/w;->j:Ld2/t;

    iget-boolean p1, p1, Ld2/t;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    iget-object p1, p0, Ld2/w;->b:Ld2/o;

    iget p2, p0, Ld2/w;->a:I

    invoke-virtual {p1, p2}, Ld2/o;->q(I)Ld2/w;

    const/4 p1, 0x1

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final e(I)V
    .locals 2

    const-string v0, "errorCode"

    invoke-static {p1, v0}, LB1/e;->l(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ld2/w;->d(ILjava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld2/w;->b:Ld2/o;

    iget v1, p0, Ld2/w;->a:I

    invoke-virtual {v0, v1, p1}, Ld2/o;->u(II)V

    return-void
.end method

.method public final f()Ld2/t;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld2/w;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ld2/w;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "reply before requesting the sink"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    iget-object v0, p0, Ld2/w;->j:Ld2/t;

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final g()Z
    .locals 4

    iget v0, p0, Ld2/w;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Ld2/w;->b:Ld2/o;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final declared-synchronized h()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ld2/w;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Ld2/w;->i:Ld2/u;

    iget-boolean v2, v0, Ld2/u;->f:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Ld2/u;->i:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Ld2/w;->j:Ld2/t;

    iget-boolean v2, v0, Ld2/t;->e:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Ld2/t;->g:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Ld2/w;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final i(LW1/k;Z)V
    .locals 2

    const-string v0, "headers"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LX1/b;->a:[B

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld2/w;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld2/w;->i:Ld2/u;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iput-boolean v1, p0, Ld2/w;->h:Z

    iget-object v0, p0, Ld2/w;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Ld2/w;->i:Ld2/u;

    iput-boolean v1, p1, Ld2/u;->f:Z

    :cond_2
    invoke-virtual {p0}, Ld2/w;->h()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez p1, :cond_3

    iget-object p1, p0, Ld2/w;->b:Ld2/o;

    iget p2, p0, Ld2/w;->a:I

    invoke-virtual {p1, p2}, Ld2/o;->q(I)Ld2/w;

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p1, v0}, LB1/e;->l(ILjava/lang/String;)V

    iget v0, p0, Ld2/w;->m:I

    if-nez v0, :cond_0

    iput p1, p0, Ld2/w;->m:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
