.class public final Ld2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final j:Ljava/util/logging/Logger;


# instance fields
.field public final e:Lj2/h;

.field public final f:Lj2/g;

.field public g:I

.field public h:Z

.field public final i:Ld2/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ld2/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ld2/x;->j:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lj2/p;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/x;->e:Lj2/h;

    new-instance p1, Lj2/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/x;->f:Lj2/g;

    const/16 v0, 0x4000

    iput v0, p0, Ld2/x;->g:I

    new-instance v0, Ld2/d;

    invoke-direct {v0, p1}, Ld2/d;-><init>(Lj2/g;)V

    iput-object v0, p0, Ld2/x;->i:Ld2/d;

    return-void
.end method


# virtual methods
.method public final declared-synchronized c(LJ/u;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "peerSettings"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ld2/x;->h:Z

    if-nez v0, :cond_7

    iget v0, p0, Ld2/x;->g:I

    iget v1, p1, LJ/u;->f:I

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    iget-object v0, p1, LJ/u;->g:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v2, 0x5

    aget v0, v0, v2

    :cond_0
    iput v0, p0, Ld2/x;->g:I

    and-int/lit8 v0, v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, LJ/u;->g:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v4, 0x0

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Ld2/x;->i:Ld2/d;

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJ/u;->g:Ljava/lang/Object;

    check-cast p1, [I

    aget v2, p1, v3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x4000

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v1, v0, Ld2/d;->d:I

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    if-ge p1, v1, :cond_4

    iget v1, v0, Ld2/d;->b:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Ld2/d;->b:I

    :cond_4
    iput-boolean v3, v0, Ld2/d;->c:Z

    iput p1, v0, Ld2/d;->d:I

    iget v1, v0, Ld2/d;->h:I

    if-ge p1, v1, :cond_6

    if-nez p1, :cond_5

    iget-object p1, v0, Ld2/d;->e:[Ld2/b;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v4, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object p1, v0, Ld2/d;->e:[Ld2/b;

    array-length p1, p1

    sub-int/2addr p1, v3

    iput p1, v0, Ld2/d;->f:I

    iput v4, v0, Ld2/d;->g:I

    iput v4, v0, Ld2/d;->h:I

    goto :goto_1

    :cond_5
    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ld2/d;->a(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x4

    invoke-virtual {p0, v4, v4, p1, v3}, Ld2/x;->q(IIII)V

    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    invoke-interface {p1}, Lj2/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ld2/x;->h:Z

    iget-object v0, p0, Ld2/x;->e:Lj2/h;

    invoke-interface {v0}, Lj2/v;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e(ZILj2/g;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld2/x;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p4, v0, p1}, Ld2/x;->q(IIII)V

    if-lez p4, :cond_0

    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    invoke-static {p3}, LO1/d;->b(Ljava/lang/Object;)V

    int-to-long v0, p4

    invoke-interface {p1, v0, v1, p3}, Lj2/v;->k(JLj2/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized flush()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld2/x;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld2/x;->e:Lj2/h;

    invoke-interface {v0}, Lj2/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final q(IIII)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sget-object v1, Ld2/x;->j:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p3, p4}, Ld2/f;->a(ZIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Ld2/x;->g:I

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    sget-object v0, LX1/b;->a:[B

    const-string v0, "<this>"

    iget-object v1, p0, Ld2/x;->e:Lj2/h;

    invoke-static {v1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    ushr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {v1, v0}, Lj2/h;->writeByte(I)Lj2/h;

    ushr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {v1, v0}, Lj2/h;->writeByte(I)Lj2/h;

    and-int/lit16 p2, p2, 0xff

    invoke-interface {v1, p2}, Lj2/h;->writeByte(I)Lj2/h;

    and-int/lit16 p2, p3, 0xff

    invoke-interface {v1, p2}, Lj2/h;->writeByte(I)Lj2/h;

    and-int/lit16 p2, p4, 0xff

    invoke-interface {v1, p2}, Lj2/h;->writeByte(I)Lj2/h;

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    invoke-interface {v1, p1}, Lj2/h;->writeInt(I)Lj2/h;

    return-void

    :cond_1
    const-string p2, "reserved bit set: "

    invoke-static {p1, p2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "FRAME_SIZE_ERROR length > "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Ld2/x;->g:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final declared-synchronized r(I[BI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p3, v0}, LB1/e;->l(ILjava/lang/String;)V

    iget-boolean v0, p0, Ld2/x;->h:Z

    if-nez v0, :cond_2

    invoke-static {p3}, Lz/K;->b(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    array-length v0, p2

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Ld2/x;->q(IIII)V

    iget-object v0, p0, Ld2/x;->e:Lj2/h;

    invoke-interface {v0, p1}, Lj2/h;->writeInt(I)Lj2/h;

    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    invoke-static {p3}, Lz/K;->b(I)I

    move-result p3

    invoke-interface {p1, p3}, Lj2/h;->writeInt(I)Lj2/h;

    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    invoke-interface {p1, p2}, Lj2/h;->write([B)Lj2/h;

    :goto_0
    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    invoke-interface {p1}, Lj2/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized s(ZILjava/util/ArrayList;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld2/x;->h:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ld2/x;->i:Ld2/d;

    invoke-virtual {v0, p3}, Ld2/d;->d(Ljava/util/ArrayList;)V

    iget-object p3, p0, Ld2/x;->f:Lj2/g;

    iget-wide v0, p3, Lj2/g;->f:J

    iget p3, p0, Ld2/x;->g:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long p3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-nez p3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 v6, v6, 0x1

    :cond_1
    long-to-int p1, v2

    const/4 v7, 0x1

    invoke-virtual {p0, p2, p1, v7, v6}, Ld2/x;->q(IIII)V

    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    iget-object v6, p0, Ld2/x;->f:Lj2/g;

    invoke-interface {p1, v2, v3, v6}, Lj2/v;->k(JLj2/g;)V

    if-lez p3, :cond_3

    sub-long/2addr v0, v2

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    iget p1, p0, Ld2/x;->g:I

    int-to-long v6, p1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long/2addr v0, v6

    long-to-int p1, v6

    cmp-long p3, v0, v2

    if-nez p3, :cond_2

    move p3, v5

    goto :goto_2

    :cond_2
    move p3, v4

    :goto_2
    const/16 v2, 0x9

    invoke-virtual {p0, p2, p1, v2, p3}, Ld2/x;->q(IIII)V

    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    iget-object p3, p0, Ld2/x;->f:Lj2/g;

    invoke-interface {p1, v6, v7, p3}, Lj2/v;->k(JLj2/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized t(IIZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld2/x;->h:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, p3}, Ld2/x;->q(IIII)V

    iget-object p3, p0, Ld2/x;->e:Lj2/h;

    invoke-interface {p3, p1}, Lj2/h;->writeInt(I)Lj2/h;

    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    invoke-interface {p1, p2}, Lj2/h;->writeInt(I)Lj2/h;

    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    invoke-interface {p1}, Lj2/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized u(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p2, v0}, LB1/e;->l(ILjava/lang/String;)V

    iget-boolean v0, p0, Ld2/x;->h:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Lz/K;->b(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, v0, v1}, Ld2/x;->q(IIII)V

    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    invoke-static {p2}, Lz/K;->b(I)I

    move-result p2

    invoke-interface {p1, p2}, Lj2/h;->writeInt(I)Lj2/h;

    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    invoke-interface {p1}, Lj2/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p1, "Failed requirement."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized v(IJ)V
    .locals 3

    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ld2/x;->h:Z

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, v0, v1}, Ld2/x;->q(IIII)V

    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lj2/h;->writeInt(I)Lj2/h;

    iget-object p1, p0, Ld2/x;->e:Lj2/h;

    invoke-interface {p1}, Lj2/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
