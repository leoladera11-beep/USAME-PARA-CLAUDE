.class public final Lj2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/x;


# instance fields
.field public final e:Lj2/r;

.field public final f:Ljava/util/zip/Inflater;

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(Lj2/r;Ljava/util/zip/Inflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/m;->e:Lj2/r;

    iput-object p2, p0, Lj2/m;->f:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public final a()Lj2/z;
    .locals 1

    iget-object v0, p0, Lj2/m;->e:Lj2/r;

    iget-object v0, v0, Lj2/r;->e:Lj2/x;

    invoke-interface {v0}, Lj2/x;->a()Lj2/z;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lj2/m;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj2/m;->f:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj2/m;->h:Z

    iget-object v0, p0, Lj2/m;->e:Lj2/r;

    invoke-virtual {v0}, Lj2/r;->close()V

    return-void
.end method

.method public final h(JLj2/g;)J
    .locals 7

    iget-object p1, p0, Lj2/m;->f:Ljava/util/zip/Inflater;

    const-string p2, "sink"

    invoke-static {p3, p2}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-boolean p2, p0, Lj2/m;->h:Z

    if-nez p2, :cond_9

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p3, p2}, Lj2/g;->v(I)Lj2/s;

    move-result-object p2

    iget v0, p2, Lj2/s;->c:I

    rsub-int v0, v0, 0x2000

    int-to-long v0, v0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lj2/m;->e:Lj2/r;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lj2/r;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v2, Lj2/r;->f:Lj2/g;

    iget-object v1, v1, Lj2/g;->e:Lj2/s;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    iget v3, v1, Lj2/s;->c:I

    iget v4, v1, Lj2/s;->b:I

    sub-int/2addr v3, v4

    iput v3, p0, Lj2/m;->g:I

    iget-object v1, v1, Lj2/s;->a:[B

    invoke-virtual {p1, v1, v4, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_1
    iget-object v1, p2, Lj2/s;->a:[B

    iget v3, p2, Lj2/s;->c:I

    invoke-virtual {p1, v1, v3, v0}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    iget v1, p0, Lj2/m;->g:I

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lj2/m;->g:I

    sub-int/2addr v3, v1

    iput v3, p0, Lj2/m;->g:I

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lj2/r;->skip(J)V

    :goto_2
    const-wide/16 v3, 0x0

    if-lez v0, :cond_3

    iget v1, p2, Lj2/s;->c:I

    add-int/2addr v1, v0

    iput v1, p2, Lj2/s;->c:I

    iget-wide v5, p3, Lj2/g;->f:J

    int-to-long v0, v0

    add-long/2addr v5, v0

    iput-wide v5, p3, Lj2/g;->f:J

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_3
    iget v0, p2, Lj2/s;->b:I

    iget v1, p2, Lj2/s;->c:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p2}, Lj2/s;->a()Lj2/s;

    move-result-object v0

    iput-object v0, p3, Lj2/g;->e:Lj2/s;

    invoke-static {p2}, Lj2/t;->a(Lj2/s;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move-wide v0, v3

    :goto_3
    cmp-long p2, v0, v3

    if-lez p2, :cond_5

    return-wide v0

    :cond_5
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->finished()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lj2/r;->c()Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1

    :goto_5
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
