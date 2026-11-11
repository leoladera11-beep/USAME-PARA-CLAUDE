.class public final Lj2/q;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field public final synthetic e:Lj2/r;


# direct methods
.method public constructor <init>(Lj2/r;)V
    .locals 0

    iput-object p1, p0, Lj2/q;->e:Lj2/r;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget-object v0, p0, Lj2/q;->e:Lj2/r;

    iget-boolean v1, v0, Lj2/r;->g:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lj2/r;->f:Lj2/g;

    iget-wide v0, v0, Lj2/g;->f:J

    const v2, 0x7fffffff

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lj2/q;->e:Lj2/r;

    invoke-virtual {v0}, Lj2/r;->close()V

    return-void
.end method

.method public final read()I
    .locals 6

    .line 1
    iget-object v0, p0, Lj2/q;->e:Lj2/r;

    iget-object v1, v0, Lj2/r;->f:Lj2/g;

    iget-boolean v2, v0, Lj2/r;->g:Z

    if-nez v2, :cond_1

    .line 2
    iget-wide v2, v1, Lj2/g;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3
    iget-object v0, v0, Lj2/r;->e:Lj2/x;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v2, v3, v1}, Lj2/x;->h(JLj2/g;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lj2/g;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 5
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lj2/q;->e:Lj2/r;

    iget-object v1, v0, Lj2/r;->f:Lj2/g;

    iget-boolean v2, v0, Lj2/r;->g:Z

    if-nez v2, :cond_1

    .line 7
    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, p2

    int-to-long v7, p3

    invoke-static/range {v3 .. v8}, LS1/e;->d(JJJ)V

    .line 8
    iget-wide v2, v1, Lj2/g;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 9
    iget-object v0, v0, Lj2/r;->e:Lj2/x;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v2, v3, v1}, Lj2/x;->h(JLj2/g;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 10
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lj2/g;->read([BII)I

    move-result p1

    return p1

    .line 11
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj2/q;->e:Lj2/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
