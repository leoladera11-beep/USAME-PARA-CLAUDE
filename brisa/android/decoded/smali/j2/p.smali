.class public final Lj2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/h;


# instance fields
.field public final e:Lj2/v;

.field public final f:Lj2/g;

.field public g:Z


# direct methods
.method public constructor <init>(Lj2/v;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/p;->e:Lj2/v;

    new-instance p1, Lj2/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/p;->f:Lj2/g;

    return-void
.end method


# virtual methods
.method public final a()Lj2/z;
    .locals 1

    iget-object v0, p0, Lj2/p;->e:Lj2/v;

    invoke-interface {v0}, Lj2/v;->a()Lj2/z;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Lj2/h;
    .locals 1

    iget-boolean v0, p0, Lj2/p;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj2/p;->f:Lj2/g;

    invoke-virtual {v0, p1, p2}, Lj2/g;->A(J)V

    invoke-virtual {p0}, Lj2/p;->c()Lj2/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Lj2/h;
    .locals 8

    iget-boolean v0, p0, Lj2/p;->g:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lj2/p;->f:Lj2/g;

    iget-wide v1, v0, Lj2/g;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lj2/g;->e:Lj2/s;

    invoke-static {v5}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v5, v5, Lj2/s;->g:Lj2/s;

    invoke-static {v5}, LO1/d;->b(Ljava/lang/Object;)V

    iget v6, v5, Lj2/s;->c:I

    const/16 v7, 0x2000

    if-ge v6, v7, :cond_1

    iget-boolean v7, v5, Lj2/s;->e:Z

    if-eqz v7, :cond_1

    iget v5, v5, Lj2/s;->b:I

    sub-int/2addr v6, v5

    int-to-long v5, v6

    sub-long/2addr v1, v5

    :cond_1
    :goto_0
    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lj2/p;->e:Lj2/v;

    invoke-interface {v3, v1, v2, v0}, Lj2/v;->k(JLj2/g;)V

    :cond_2
    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, Lj2/p;->e:Lj2/v;

    iget-boolean v1, p0, Lj2/p;->g:Z

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lj2/p;->f:Lj2/g;

    iget-wide v2, v1, Lj2/g;->f:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-interface {v0, v2, v3, v1}, Lj2/v;->k(JLj2/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    :try_start_1
    invoke-interface {v0}, Lj2/v;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj2/p;->g:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    throw v1

    :cond_3
    :goto_3
    return-void
.end method

.method public final e([BI)Lj2/h;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lj2/p;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj2/p;->f:Lj2/g;

    invoke-virtual {v0, p1, p2}, Lj2/g;->x([BI)V

    invoke-virtual {p0}, Lj2/p;->c()Lj2/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final flush()V
    .locals 5

    iget-boolean v0, p0, Lj2/p;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lj2/p;->f:Lj2/g;

    iget-wide v1, v0, Lj2/g;->f:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    iget-object v4, p0, Lj2/p;->e:Lj2/v;

    if-lez v3, :cond_0

    invoke-interface {v4, v1, v2, v0}, Lj2/v;->k(JLj2/g;)V

    :cond_0
    invoke-interface {v4}, Lj2/v;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Lj2/j;)Lj2/h;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lj2/p;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj2/p;->f:Lj2/g;

    invoke-virtual {v0, p1}, Lj2/g;->w(Lj2/j;)V

    invoke-virtual {p0}, Lj2/p;->c()Lj2/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lj2/p;->g:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final k(JLj2/g;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p3, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lj2/p;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj2/p;->f:Lj2/g;

    invoke-virtual {v0, p1, p2, p3}, Lj2/g;->k(JLj2/g;)V

    invoke-virtual {p0}, Lj2/p;->c()Lj2/h;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Ljava/lang/String;)Lj2/h;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lj2/p;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj2/p;->f:Lj2/g;

    invoke-virtual {v0, p1}, Lj2/g;->E(Ljava/lang/String;)V

    invoke-virtual {p0}, Lj2/p;->c()Lj2/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj2/p;->e:Lj2/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lj2/p;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lj2/p;->f:Lj2/g;

    .line 3
    invoke-virtual {v0, p1}, Lj2/g;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lj2/p;->c()Lj2/h;

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([B)Lj2/h;
    .locals 2

    .line 6
    iget-boolean v0, p0, Lj2/p;->g:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lj2/p;->f:Lj2/g;

    .line 8
    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lj2/g;->x([BI)V

    .line 9
    invoke-virtual {p0}, Lj2/p;->c()Lj2/h;

    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeByte(I)Lj2/h;
    .locals 1

    iget-boolean v0, p0, Lj2/p;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj2/p;->f:Lj2/g;

    invoke-virtual {v0, p1}, Lj2/g;->z(I)V

    invoke-virtual {p0}, Lj2/p;->c()Lj2/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeInt(I)Lj2/h;
    .locals 1

    iget-boolean v0, p0, Lj2/p;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj2/p;->f:Lj2/g;

    invoke-virtual {v0, p1}, Lj2/g;->B(I)V

    invoke-virtual {p0}, Lj2/p;->c()Lj2/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeShort(I)Lj2/h;
    .locals 1

    iget-boolean v0, p0, Lj2/p;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj2/p;->f:Lj2/g;

    invoke-virtual {v0, p1}, Lj2/g;->C(I)V

    invoke-virtual {p0}, Lj2/p;->c()Lj2/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
