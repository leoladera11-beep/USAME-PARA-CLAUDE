.class public final Ld2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final D:LJ/u;


# instance fields
.field public final A:Ld2/x;

.field public final B:Ld2/k;

.field public final C:Ljava/util/LinkedHashSet;

.field public final e:Ld2/h;

.field public final f:Ljava/util/LinkedHashMap;

.field public final g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Z

.field public final k:LZ1/d;

.field public final l:LZ1/c;

.field public final m:LZ1/c;

.field public final n:LZ1/c;

.field public final o:Ld2/z;

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public final t:LJ/u;

.field public u:LJ/u;

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public final z:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJ/u;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, LJ/u;-><init>(CI)V

    const/4 v1, 0x7

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, LJ/u;->j(II)V

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, LJ/u;->j(II)V

    sput-object v0, Ld2/o;->D:LJ/u;

    return-void
.end method

.method public constructor <init>(LM0/r0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LM0/r0;->g:Ljava/lang/Object;

    check-cast v0, Ld2/h;

    iput-object v0, p0, Ld2/o;->e:Ld2/h;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ld2/o;->f:Ljava/util/LinkedHashMap;

    iget-object v0, p1, LM0/r0;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-object v0, p0, Ld2/o;->g:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Ld2/o;->i:I

    iget-object v0, p1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LZ1/d;

    iput-object v0, p0, Ld2/o;->k:LZ1/d;

    invoke-virtual {v0}, LZ1/d;->e()LZ1/c;

    move-result-object v2

    iput-object v2, p0, Ld2/o;->l:LZ1/c;

    invoke-virtual {v0}, LZ1/d;->e()LZ1/c;

    move-result-object v2

    iput-object v2, p0, Ld2/o;->m:LZ1/c;

    invoke-virtual {v0}, LZ1/d;->e()LZ1/c;

    move-result-object v0

    iput-object v0, p0, Ld2/o;->n:LZ1/c;

    sget-object v0, Ld2/z;->a:Ld2/z;

    iput-object v0, p0, Ld2/o;->o:Ld2/z;

    new-instance v0, LJ/u;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, LJ/u;-><init>(CI)V

    const/4 v2, 0x7

    const/high16 v3, 0x1000000

    invoke-virtual {v0, v2, v3}, LJ/u;->j(II)V

    iput-object v0, p0, Ld2/o;->t:LJ/u;

    sget-object v0, Ld2/o;->D:LJ/u;

    iput-object v0, p0, Ld2/o;->u:LJ/u;

    invoke-virtual {v0}, LJ/u;->e()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Ld2/o;->y:J

    iget-object v0, p1, LM0/r0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_2

    iput-object v0, p0, Ld2/o;->z:Ljava/net/Socket;

    new-instance v0, Ld2/x;

    iget-object v2, p1, LM0/r0;->f:Ljava/lang/Object;

    check-cast v2, Lj2/p;

    if-eqz v2, :cond_1

    invoke-direct {v0, v2}, Ld2/x;-><init>(Lj2/p;)V

    iput-object v0, p0, Ld2/o;->A:Ld2/x;

    new-instance v0, Ld2/k;

    new-instance v2, Ld2/s;

    iget-object p1, p1, LM0/r0;->b:Ljava/lang/Object;

    check-cast p1, Lj2/r;

    if-eqz p1, :cond_0

    invoke-direct {v2, p1}, Ld2/s;-><init>(Lj2/r;)V

    invoke-direct {v0, p0, v2}, Ld2/k;-><init>(Ld2/o;Ld2/s;)V

    iput-object v0, p0, Ld2/o;->B:Ld2/k;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Ld2/o;->C:Ljava/util/LinkedHashSet;

    return-void

    :cond_0
    const-string p1, "source"

    invoke-static {p1}, LO1/d;->i(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "sink"

    invoke-static {p1}, LO1/d;->i(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "socket"

    invoke-static {p1}, LO1/d;->i(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "connectionName"

    invoke-static {p1}, LO1/d;->i(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final c(IILjava/io/IOException;)V
    .locals 3

    const-string v0, "connectionCode"

    invoke-static {p1, v0}, LB1/e;->l(ILjava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, LB1/e;->l(ILjava/lang/String;)V

    sget-object v0, LX1/b;->a:[B

    :try_start_0
    invoke-virtual {p0, p1}, Ld2/o;->r(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Ld2/o;->f:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Ld2/o;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v1, v0, [Ld2/w;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Ld2/o;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    check-cast p1, [Ld2/w;

    if-eqz p1, :cond_1

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    :try_start_2
    invoke-virtual {v2, p2, p3}, Ld2/w;->c(ILjava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object p1, p0, Ld2/o;->A:Ld2/x;

    invoke-virtual {p1}, Ld2/x;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    iget-object p1, p0, Ld2/o;->z:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    iget-object p1, p0, Ld2/o;->l:LZ1/c;

    invoke-virtual {p1}, LZ1/c;->e()V

    iget-object p1, p0, Ld2/o;->m:LZ1/c;

    invoke-virtual {p1}, LZ1/c;->e()V

    iget-object p1, p0, Ld2/o;->n:LZ1/c;

    invoke-virtual {p1}, LZ1/c;->e()V

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final close()V
    .locals 3

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Ld2/o;->c(IILjava/io/IOException;)V

    return-void
.end method

.method public final declared-synchronized e(I)Ld2/w;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld2/o;->f:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld2/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Ld2/o;->A:Ld2/x;

    invoke-virtual {v0}, Ld2/x;->flush()V

    return-void
.end method

.method public final declared-synchronized q(I)Ld2/w;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld2/o;->f:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld2/w;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final r(I)V
    .locals 4

    const-string v0, "statusCode"

    invoke-static {p1, v0}, LB1/e;->l(ILjava/lang/String;)V

    iget-object v0, p0, Ld2/o;->A:Ld2/x;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v1, p0, Ld2/o;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Ld2/o;->j:Z

    iget v1, p0, Ld2/o;->h:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0

    iget-object v2, p0, Ld2/o;->A:Ld2/x;

    sget-object v3, LX1/b;->a:[B

    invoke-virtual {v2, v1, v3, p1}, Ld2/x;->r(I[BI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public final declared-synchronized s(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ld2/o;->v:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ld2/o;->v:J

    iget-wide p1, p0, Ld2/o;->w:J

    sub-long/2addr v0, p1

    iget-object p1, p0, Ld2/o;->t:LJ/u;

    invoke-virtual {p1}, LJ/u;->e()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ld2/o;->v(IJ)V

    iget-wide p1, p0, Ld2/o;->w:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Ld2/o;->w:J
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

.method public final t(IZLj2/g;J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object p4, p0, Ld2/o;->A:Ld2/x;

    invoke-virtual {p4, p2, p1, p3, v3}, Ld2/x;->e(ZILj2/g;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v4, p0, Ld2/o;->x:J

    iget-wide v6, p0, Ld2/o;->y:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    iget-object v2, p0, Ld2/o;->f:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sub-long/2addr v6, v4

    :try_start_1
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, p0, Ld2/o;->A:Ld2/x;

    iget v4, v4, Ld2/x;->g:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Ld2/o;->x:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Ld2/o;->x:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sub-long/2addr p4, v6

    iget-object v4, p0, Ld2/o;->A:Ld2/x;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Ld2/x;->e(ZILj2/g;I)V

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final u(II)V
    .locals 8

    const-string v0, "errorCode"

    invoke-static {p2, v0}, LB1/e;->l(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ld2/o;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] writeSynReset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ld2/j;

    const/4 v7, 0x2

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Ld2/j;-><init>(Ljava/lang/String;Ld2/o;III)V

    iget-object p1, v4, Ld2/o;->l:LZ1/c;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, LZ1/c;->c(LZ1/a;J)V

    return-void
.end method

.method public final v(IJ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ld2/o;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] windowUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ld2/n;

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Ld2/n;-><init>(Ljava/lang/String;Ld2/o;IJ)V

    iget-object p1, v4, Ld2/o;->l:LZ1/c;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, v2, p2, p3}, LZ1/c;->c(LZ1/a;J)V

    return-void
.end method
