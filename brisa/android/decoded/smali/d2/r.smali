.class public final Ld2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/x;


# instance fields
.field public final e:Lj2/i;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Lj2/i;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/r;->e:Lj2/i;

    return-void
.end method


# virtual methods
.method public final a()Lj2/z;
    .locals 1

    iget-object v0, p0, Ld2/r;->e:Lj2/i;

    invoke-interface {v0}, Lj2/x;->a()Lj2/z;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final h(JLj2/g;)J
    .locals 6

    const-string p1, "sink"

    invoke-static {p3, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Ld2/r;->i:I

    const-wide/16 v0, -0x1

    iget-object p2, p0, Ld2/r;->e:Lj2/i;

    if-nez p1, :cond_4

    iget p1, p0, Ld2/r;->j:I

    int-to-long v2, p1

    invoke-interface {p2, v2, v3}, Lj2/i;->skip(J)V

    const/4 p1, 0x0

    iput p1, p0, Ld2/r;->j:I

    iget p1, p0, Ld2/r;->g:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Ld2/r;->h:I

    invoke-static {p2}, LX1/b;->s(Lj2/i;)I

    move-result v0

    iput v0, p0, Ld2/r;->i:I

    iput v0, p0, Ld2/r;->f:I

    invoke-interface {p2}, Lj2/i;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p2}, Lj2/i;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Ld2/r;->g:I

    sget-object v1, Ld2/s;->h:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ld2/f;->a:Lj2/j;

    iget v2, p0, Ld2/r;->h:I

    iget v3, p0, Ld2/r;->f:I

    iget v4, p0, Ld2/r;->g:I

    const/4 v5, 0x1

    invoke-static {v5, v2, v3, v0, v4}, Ld2/f;->a(ZIIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p2}, Lj2/i;->readInt()I

    move-result p2

    const v1, 0x7fffffff

    and-int/2addr p2, v1

    iput p2, p0, Ld2/r;->h:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_CONTINUATION streamId changed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " != TYPE_CONTINUATION"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    int-to-long v2, p1

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-interface {p2, v2, v3, p3}, Lj2/x;->h(JLj2/g;)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-nez p3, :cond_5

    :goto_1
    return-wide v0

    :cond_5
    iget p3, p0, Ld2/r;->i:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Ld2/r;->i:I

    return-wide p1
.end method
