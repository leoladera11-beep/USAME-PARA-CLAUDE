.class public final LJ/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/d;
.implements Lb0/D;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(CI)V
    .locals 0

    iput p2, p0, LJ/u;->e:I

    packed-switch p2, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 2
    new-array p1, p1, [I

    iput-object p1, p0, LJ/u;->g:Ljava/lang/Object;

    return-void

    .line 3
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, LJ/D;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, LJ/D;-><init>(I)V

    iput-object p1, p0, LJ/u;->g:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(II)V
    .locals 0

    iput p2, p0, LJ/u;->e:I

    packed-switch p2, :pswitch_data_0

    .line 5
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-array p1, p1, [J

    iput-object p1, p0, LJ/u;->g:Ljava/lang/Object;

    return-void

    .line 7
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, LJ/u;->g:Ljava/lang/Object;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The max pool size must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, LJ/u;->g:Ljava/lang/Object;

    .line 12
    iput p1, p0, LJ/u;->f:I

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(I[I)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, LJ/u;->e:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, LJ/u;->f:I

    .line 15
    sget-object p1, Ly1/a;->g:Ly1/a;

    if-eqz p2, :cond_1

    .line 16
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ly1/a;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    .line 17
    array-length v0, p2

    invoke-direct {p1, v0, p2}, Ly1/a;-><init>(I[I)V

    .line 18
    :cond_1
    :goto_0
    iput-object p1, p0, LJ/u;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I[Lq/e;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, LJ/u;->e:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, LJ/u;->f:I

    .line 31
    iput-object p2, p0, LJ/u;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LJ/d;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LJ/u;->e:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, LJ/u;->g:Ljava/lang/Object;

    .line 21
    iput p2, p0, LJ/u;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LJ/u;->e:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, LJ/u;->g:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 24
    iput p1, p0, LJ/u;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, LJ/u;->e:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, LJ/u;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 28
    iput p1, p0, LJ/u;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LJ/u;->e:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/u;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LJ/u;->e:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    iput p1, p0, LJ/u;->f:I

    return-void
.end method


# virtual methods
.method public B(Landroid/net/Uri;)Lz1/B;
    .locals 2

    iget-object v0, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v0, LJ/d;

    invoke-interface {v0, p1}, LJ/d;->B(Landroid/net/Uri;)Lz1/B;

    move-result-object p1

    new-instance v0, LI0/E;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Lz1/s;->e:Lz1/s;

    invoke-static {p1, v0, v1}, Lcom/brisa/local/v;->x(Lz1/B;Lt1/j;Ljava/util/concurrent/Executor;)Lz1/q;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LJ/u;->f:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v1, v3, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LJ/u;->f:I

    return-object v4

    :cond_0
    return-object v1
.end method

.method public b(J)V
    .locals 3

    iget v0, p0, LJ/u;->f:I

    iget-object v1, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v1, [J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, LJ/u;->g:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, LJ/u;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LJ/u;->f:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public c([J)V
    .locals 5

    iget v0, p0, LJ/u;->f:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v1, [J

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, LJ/u;->g:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v1, [J

    iget v2, p0, LJ/u;->f:I

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, LJ/u;->f:I

    return-void
.end method

.method public d(I)J
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, LJ/u;->f:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid index "

    const-string v2, ", size is "

    invoke-static {v1, v2, p1}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, LJ/u;->f:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()I
    .locals 2

    iget v0, p0, LJ/u;->f:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0

    :cond_0
    const v0, 0xffff

    return v0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, LJ/u;->f:I

    iget-object v1, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g(LJ/u;)V
    .locals 5

    const-string v0, "other"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    shl-int v3, v2, v1

    iget v4, p1, LJ/u;->f:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    iget-object v2, p1, LJ/u;->g:Ljava/lang/Object;

    check-cast v2, [I

    aget v2, v2, v1

    invoke-virtual {p0, v1, v2}, LJ/u;->j(II)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public h(Lb0/o;)J
    .locals 7

    iget-object v0, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v0, LJ/D;

    iget-object v1, v0, LJ/D;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v2, v1, v3}, Lb0/o;->l(I[BI)V

    iget-object v1, v0, LJ/D;->a:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const/16 v4, 0x80

    move v5, v2

    :goto_0
    and-int v6, v1, v4

    if-nez v6, :cond_1

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    not-int v4, v4

    and-int/2addr v1, v4

    iget-object v4, v0, LJ/D;->a:[B

    invoke-interface {p1, v3, v4, v5}, Lb0/o;->l(I[BI)V

    :goto_1
    if-ge v2, v5, :cond_2

    shl-int/lit8 p1, v1, 0x8

    iget-object v1, v0, LJ/D;->a:[B

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p1

    goto :goto_1

    :cond_2
    iget p1, p0, LJ/u;->f:I

    add-int/2addr v5, v3

    add-int/2addr v5, p1

    iput v5, p0, LJ/u;->f:I

    int-to-long v0, v1

    return-wide v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, LJ/u;->f:I

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    if-eq v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in the pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    array-length v1, v0

    if-ge v2, v1, :cond_2

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LJ/u;->f:I

    :cond_2
    return-void
.end method

.method public j(II)V
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v0, [I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    iget v2, p0, LJ/u;->f:I

    or-int/2addr v1, v2

    iput v1, p0, LJ/u;->f:I

    aput p2, v0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public m(LG/T;)Lz1/B;
    .locals 2

    iget-object v0, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v0, LJ/d;

    invoke-interface {v0, p1}, LJ/d;->m(LG/T;)Lz1/B;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, LI0/E;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Lz1/s;->e:Lz1/s;

    invoke-static {p1, v0, v1}, Lcom/brisa/local/v;->x(Lz1/B;Lt1/j;Ljava/util/concurrent/Executor;)Lz1/q;

    move-result-object p1

    return-object p1
.end method

.method public s([B)Lz1/B;
    .locals 2

    iget-object v0, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v0, LJ/d;

    invoke-interface {v0, p1}, LJ/d;->s([B)Lz1/B;

    move-result-object p1

    new-instance v0, LI0/E;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Lz1/s;->e:Lz1/s;

    invoke-static {p1, v0, v1}, Lcom/brisa/local/v;->x(Lz1/B;Lt1/j;Ljava/util/concurrent/Executor;)Lz1/q;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget v0, p0, LJ/u;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast v1, Ly1/a;

    iget v2, v1, Ly1/a;->f:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v1, Ly1/a;->f:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v3}, Ly1/a;->b(I)I

    move-result v4

    sget-object v9, LJ/W;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/String;

    shr-int/lit8 v10, v4, 0x18

    int-to-byte v10, v10

    shr-int/lit8 v11, v4, 0x10

    int-to-byte v11, v11

    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    int-to-byte v4, v4

    new-array v7, v7, [B

    aput-byte v10, v7, v2

    aput-byte v11, v7, v8

    aput-byte v12, v7, v6

    aput-byte v4, v7, v5

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v9, v7, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedBrands{major="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, LJ/u;->f:I

    sget-object v4, LJ/W;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    shr-int/lit8 v9, v3, 0x18

    int-to-byte v9, v9

    shr-int/lit8 v10, v3, 0x10

    int-to-byte v10, v10

    shr-int/lit8 v11, v3, 0x8

    int-to-byte v11, v11

    int-to-byte v3, v3

    new-array v7, v7, [B

    aput-byte v9, v7, v2

    aput-byte v10, v7, v8

    aput-byte v11, v7, v6

    aput-byte v3, v7, v5

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", compatible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
