.class public final LL/m;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field public final e:LL/C;

.field public final f:LL/n;

.field public final g:[B

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(LL/C;LL/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LL/m;->h:Z

    iput-boolean v0, p0, LL/m;->i:Z

    iput-object p1, p0, LL/m;->e:LL/C;

    iput-object p2, p0, LL/m;->f:LL/n;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, LL/m;->g:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, LL/m;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LL/m;->e:LL/C;

    invoke-virtual {v0}, LL/C;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LL/m;->i:Z

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 4

    .line 1
    iget-object v0, p0, LL/m;->g:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, LL/m;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v3

    .line 2
    :cond_0
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 3
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, LL/m;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 3

    .line 4
    iget-boolean v0, p0, LL/m;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, LF1/i;->o(Z)V

    .line 5
    iget-boolean v0, p0, LL/m;->h:Z

    iget-object v2, p0, LL/m;->e:LL/C;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, LL/m;->f:LL/n;

    invoke-virtual {v2, v0}, LL/C;->d(LL/n;)J

    .line 7
    iput-boolean v1, p0, LL/m;->h:Z

    .line 8
    :cond_0
    invoke-virtual {v2, p1, p2, p3}, LL/C;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method public final synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
