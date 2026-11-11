.class public abstract LB1/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, LB1/u;->a:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    new-instance v2, LB1/k;

    invoke-direct {v2, v1, v0, v0, v0}, LB1/k;-><init>([BIIZ)V

    :try_start_0
    iget v0, v2, LB1/k;->b:I

    add-int/lit8 v1, v0, 0x0

    if-gez v1, :cond_1

    iget v1, v2, LB1/k;->c:I

    sub-int/2addr v0, v1

    const v1, 0x7fffffff

    sub-int v0, v1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LB1/v;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter()."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, v2, LB1/k;->d:I

    if-gt v1, v0, :cond_2

    iput v1, v2, LB1/k;->d:I

    return-void

    :cond_2
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v0

    throw v0
    :try_end_0
    .catch LB1/v; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static b(III[B)I
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    mul-int/lit8 p0, p0, 0x1f

    aget-byte v1, p3, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method
