.class public final Lj$/io/DesugarInputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    .line 57
    const-string v0, "out"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x2000

    .line 59
    new-array v1, v0, [B

    const-wide/16 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 61
    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_0

    .line 62
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v5

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method
