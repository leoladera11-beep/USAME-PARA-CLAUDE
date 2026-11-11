.class public final Lcom/brisa/local/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Lb0/p;


# instance fields
.field public final e:Ljava/io/RandomAccessFile;

.field public final f:Lb0/n;

.field public final g:LL0/e;

.field public final h:I

.field public final i:Ljava/util/ArrayDeque;

.field public j:Lb0/j;

.field public final k:Lb0/r;

.field public l:Z


# direct methods
.method public constructor <init>(Ljava/io/File;LL0/e;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/brisa/local/x;->i:Ljava/util/ArrayDeque;

    new-instance v0, Lb0/r;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/brisa/local/x;->k:Lb0/r;

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brisa/local/x;->e:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lcom/brisa/local/x;->g:LL0/e;

    iput p3, p0, Lcom/brisa/local/x;->h:I

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/brisa/local/x;->r(J)V

    new-instance p3, Lb0/k;

    invoke-direct {p3}, Lb0/k;-><init>()V

    invoke-virtual {p3}, Lb0/k;->d()[Lb0/n;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    invoke-virtual {p0, p1, p2}, Lcom/brisa/local/x;->r(J)V

    :try_start_0
    iget-object v3, p0, Lcom/brisa/local/x;->j:Lb0/j;

    invoke-interface {v2, v3}, Lb0/n;->d(Lb0/o;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    goto :goto_1

    :catch_0
    :cond_0
    invoke-interface {v2}, Lb0/n;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/brisa/local/x;->f:Lb0/n;

    invoke-virtual {p0, p1, p2}, Lcom/brisa/local/x;->r(J)V

    invoke-interface {v2, p0}, Lb0/n;->b(Lb0/p;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/brisa/local/x;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "No se reconoce el contenedor del v\u00eddeo o del audio."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final c(Lb0/z;)V
    .locals 0

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/brisa/local/x;->f:Lb0/n;

    invoke-interface {v0}, Lb0/n;->a()V

    iget-object v0, p0, Lcom/brisa/local/x;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final q(Lcom/brisa/local/p;)Lcom/brisa/local/y;
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/brisa/local/x;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/brisa/local/x;->l:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/brisa/local/p;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/brisa/local/x;->f:Lb0/n;

    iget-object v1, p0, Lcom/brisa/local/x;->j:Lb0/j;

    iget-object v2, p0, Lcom/brisa/local/x;->k:Lb0/r;

    invoke-interface {v0, v1, v2}, Lb0/n;->e(Lb0/o;Lb0/r;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-wide v2, v2, Lb0/r;->a:J

    invoke-virtual {p0, v2, v3}, Lcom/brisa/local/x;->r(J)V

    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/brisa/local/x;->l:Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "Descarga cancelada."

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brisa/local/y;

    return-object p1
.end method

.method public final r(J)V
    .locals 7

    iget-object v0, p0, Lcom/brisa/local/x;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v1, Lb0/j;

    new-instance v2, LI0/E;

    const/16 v3, 0x19

    invoke-direct {v2, p0, v3}, LI0/E;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lb0/j;-><init>(LG/o;JJ)V

    iput-object v1, p0, Lcom/brisa/local/x;->j:Lb0/j;

    return-void
.end method

.method public final v(II)Lb0/G;
    .locals 1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    iget v0, p0, Lcom/brisa/local/x;->h:I

    if-eq v0, p1, :cond_2

    if-eq v0, p2, :cond_2

    :cond_1
    new-instance p1, Lb0/l;

    invoke-direct {p1}, Lb0/l;-><init>()V

    return-object p1

    :cond_2
    new-instance p1, Lcom/brisa/local/w;

    invoke-direct {p1, p0}, Lcom/brisa/local/w;-><init>(Lcom/brisa/local/x;)V

    return-object p1
.end method
