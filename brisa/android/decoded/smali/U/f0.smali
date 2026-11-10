.class public final LU/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX/j;


# instance fields
.field public final a:J

.field public final b:LL/n;

.field public final c:LL/C;

.field public d:[B


# direct methods
.method public constructor <init>(LL/n;LL/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LU/r;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, LU/f0;->a:J

    iput-object p1, p0, LU/f0;->b:LL/n;

    new-instance p1, LL/C;

    invoke-direct {p1, p2}, LL/C;-><init>(LL/h;)V

    iput-object p1, p0, LU/f0;->c:LL/C;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, LU/f0;->c:LL/C;

    iput-wide v0, v2, LL/C;->f:J

    :try_start_0
    iget-object v0, p0, LU/f0;->b:LL/n;

    invoke-virtual {v2, v0}, LL/C;->d(LL/n;)J

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-wide v0, v2, LL/C;->f:J

    long-to-int v0, v0

    iget-object v1, p0, LU/f0;->d:[B

    if-nez v1, :cond_0

    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, LU/f0;->d:[B

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    array-length v3, v1

    if-ne v0, v3, :cond_1

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, LU/f0;->d:[B

    :cond_1
    :goto_1
    iget-object v1, p0, LU/f0;->d:[B

    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, LL/C;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, LL/C;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :goto_2
    :try_start_2
    invoke-virtual {v2}, LL/C;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method
