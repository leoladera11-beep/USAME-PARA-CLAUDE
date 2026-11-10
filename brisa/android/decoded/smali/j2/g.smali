.class public final Lj2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/i;
.implements Lj2/h;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public e:Lj2/s;

.field public f:J


# virtual methods
.method public final A(J)V
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lj2/g;->z(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const/4 v1, 0x3

    int-to-long v1, v1

    add-long/2addr v8, v1

    int-to-long v1, v4

    div-long/2addr v8, v1

    long-to-int v1, v8

    invoke-virtual {p0, v1}, Lj2/g;->v(I)Lj2/s;

    move-result-object v2

    iget-object v3, v2, Lj2/s;->a:[B

    iget v5, v2, Lj2/s;->c:I

    add-int v6, v5, v1

    sub-int/2addr v6, v0

    :goto_0
    if-lt v6, v5, :cond_1

    sget-object v0, Lk2/a;->a:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    aget-byte v0, v0, v7

    aput-byte v0, v3, v6

    ushr-long/2addr p1, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    iget p1, v2, Lj2/s;->c:I

    add-int/2addr p1, v1

    iput p1, v2, Lj2/s;->c:I

    iget-wide p1, p0, Lj2/g;->f:J

    int-to-long v0, v1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lj2/g;->f:J

    return-void
.end method

.method public final B(I)V
    .locals 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lj2/g;->v(I)Lj2/s;

    move-result-object v1

    iget-object v2, v1, Lj2/s;->a:[B

    iget v3, v1, Lj2/s;->c:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x2

    ushr-int/lit8 v6, p1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x3

    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    iput v3, v1, Lj2/s;->c:I

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj2/g;->f:J

    return-void
.end method

.method public final C(I)V
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lj2/g;->v(I)Lj2/s;

    move-result-object v1

    iget-object v2, v1, Lj2/s;->a:[B

    iget v3, v1, Lj2/s;->c:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    iput v3, v1, Lj2/s;->c:I

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj2/g;->f:J

    return-void
.end method

.method public final D(IILjava/lang/String;)V
    .locals 9

    const-string v0, "string"

    invoke-static {p3, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_a

    if-lt p2, p1, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_8

    :goto_0
    if-ge p1, p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lj2/g;->v(I)Lj2/s;

    move-result-object v2

    iget-object v3, v2, Lj2/s;->a:[B

    iget v4, v2, Lj2/s;->c:I

    sub-int/2addr v4, p1

    rsub-int v5, v4, 0x2000

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p1, 0x1

    add-int/2addr p1, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p1

    :goto_1
    move p1, v6

    if-ge p1, v5, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v1, :cond_0

    add-int/lit8 v6, p1, 0x1

    add-int/2addr p1, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p1

    goto :goto_1

    :cond_0
    add-int/2addr v4, p1

    iget v0, v2, Lj2/s;->c:I

    sub-int/2addr v4, v0

    add-int/2addr v0, v4

    iput v0, v2, Lj2/s;->c:I

    iget-wide v0, p0, Lj2/g;->f:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj2/g;->f:J

    goto :goto_0

    :cond_1
    const/16 v2, 0x800

    if-ge v0, v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lj2/g;->v(I)Lj2/s;

    move-result-object v3

    iget-object v4, v3, Lj2/s;->a:[B

    iget v5, v3, Lj2/s;->c:I

    shr-int/lit8 v6, v0, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    add-int/2addr v5, v2

    iput v5, v3, Lj2/s;->c:I

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj2/g;->f:J

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_6

    const v2, 0xdfff

    if-le v0, v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_4

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    const v5, 0xdbff

    if-gt v0, v5, :cond_5

    const v5, 0xdc00

    if-gt v5, v4, :cond_5

    const v5, 0xe000

    if-ge v4, v5, :cond_5

    and-int/lit16 v0, v0, 0x3ff

    shl-int/lit8 v0, v0, 0xa

    and-int/lit16 v2, v4, 0x3ff

    or-int/2addr v0, v2

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lj2/g;->v(I)Lj2/s;

    move-result-object v4

    iget-object v5, v4, Lj2/s;->a:[B

    iget v6, v4, Lj2/s;->c:I

    shr-int/lit8 v7, v0, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v0, 0xc

    and-int/2addr v8, v3

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x2

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v3

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x3

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v7

    add-int/2addr v6, v2

    iput v6, v4, Lj2/s;->c:I

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj2/g;->f:J

    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lj2/g;->z(I)V

    move p1, v2

    goto/16 :goto_0

    :cond_6
    :goto_4
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lj2/g;->v(I)Lj2/s;

    move-result-object v4

    iget-object v5, v4, Lj2/s;->a:[B

    iget v6, v4, Lj2/s;->c:I

    shr-int/lit8 v7, v0, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v3, v8

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v5, v7

    add-int/lit8 v3, v6, 0x2

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v3

    add-int/2addr v6, v2

    iput v6, v4, Lj2/s;->c:I

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj2/g;->f:J

    goto/16 :goto_2

    :cond_7
    return-void

    :cond_8
    const-string p1, "endIndex > string.length: "

    const-string v0, " > "

    invoke-static {p1, v0, p2}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "endIndex < beginIndex: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    const-string p2, "beginIndex < 0: "

    invoke-static {p1, p2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final E(Ljava/lang/String;)V
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lj2/g;->D(IILjava/lang/String;)V

    return-void
.end method

.method public final F(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lj2/g;->z(I)V

    return-void

    :cond_0
    const/16 v3, 0x800

    const/4 v4, 0x2

    const/16 v5, 0x3f

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v4}, Lj2/g;->v(I)Lj2/s;

    move-result-object v3

    iget-object v6, v3, Lj2/s;->a:[B

    iget v7, v3, Lj2/s;->c:I

    shr-int/lit8 v8, v1, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v6, v8

    add-int/2addr v7, v4

    iput v7, v3, Lj2/s;->c:I

    iget-wide v1, v0, Lj2/g;->f:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    iput-wide v1, v0, Lj2/g;->f:J

    return-void

    :cond_1
    const v3, 0xd800

    if-gt v3, v1, :cond_2

    const v3, 0xe000

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v5}, Lj2/g;->z(I)V

    return-void

    :cond_2
    const/high16 v3, 0x10000

    const/4 v6, 0x3

    if-ge v1, v3, :cond_3

    invoke-virtual {v0, v6}, Lj2/g;->v(I)Lj2/s;

    move-result-object v3

    iget-object v4, v3, Lj2/s;->a:[B

    iget v7, v3, Lj2/s;->c:I

    shr-int/lit8 v8, v1, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v9, v1, 0x6

    and-int/2addr v9, v5

    or-int/2addr v9, v2

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    add-int/lit8 v8, v7, 0x2

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v4, v8

    add-int/2addr v7, v6

    iput v7, v3, Lj2/s;->c:I

    iget-wide v1, v0, Lj2/g;->f:J

    const-wide/16 v3, 0x3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lj2/g;->f:J

    return-void

    :cond_3
    const v3, 0x10ffff

    const/4 v7, 0x4

    if-gt v1, v3, :cond_4

    invoke-virtual {v0, v7}, Lj2/g;->v(I)Lj2/s;

    move-result-object v3

    iget-object v4, v3, Lj2/s;->a:[B

    iget v6, v3, Lj2/s;->c:I

    shr-int/lit8 v8, v1, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v1, 0xc

    and-int/2addr v9, v5

    or-int/2addr v9, v2

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    add-int/lit8 v8, v6, 0x2

    shr-int/lit8 v9, v1, 0x6

    and-int/2addr v9, v5

    or-int/2addr v9, v2

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    add-int/lit8 v8, v6, 0x3

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v4, v8

    add-int/2addr v6, v7

    iput v6, v3, Lj2/s;->c:I

    iget-wide v1, v0, Lj2/g;->f:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, v0, Lj2/g;->f:J

    return-void

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected code point: 0x"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_8

    shr-int/lit8 v5, v1, 0x1c

    and-int/lit8 v5, v5, 0xf

    sget-object v8, Lk2/b;->a:[C

    aget-char v5, v8, v5

    shr-int/lit8 v9, v1, 0x18

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v8, v9

    shr-int/lit8 v10, v1, 0x14

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v8, v10

    shr-int/lit8 v11, v1, 0x10

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v8, v11

    shr-int/lit8 v12, v1, 0xc

    and-int/lit8 v12, v12, 0xf

    aget-char v12, v8, v12

    shr-int/lit8 v13, v1, 0x8

    and-int/lit8 v13, v13, 0xf

    aget-char v13, v8, v13

    shr-int/lit8 v14, v1, 0x4

    and-int/lit8 v14, v14, 0xf

    aget-char v14, v8, v14

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v8, v1

    const/16 v8, 0x8

    new-array v15, v8, [C

    const/16 v16, 0x0

    aput-char v5, v15, v16

    const/4 v5, 0x1

    aput-char v9, v15, v5

    aput-char v10, v15, v4

    aput-char v11, v15, v6

    aput-char v12, v15, v7

    const/4 v4, 0x5

    aput-char v13, v15, v4

    const/4 v4, 0x6

    aput-char v14, v15, v4

    const/4 v4, 0x7

    aput-char v1, v15, v4

    move/from16 v1, v16

    :goto_0
    if-ge v1, v8, :cond_5

    aget-char v4, v15, v1

    const/16 v5, 0x30

    if-ne v4, v5, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const-string v4, "startIndex: "

    if-ltz v1, :cond_7

    if-gt v1, v8, :cond_6

    new-instance v4, Ljava/lang/String;

    rsub-int/lit8 v5, v1, 0x8

    invoke-direct {v4, v15, v1, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, " > endIndex: 8"

    invoke-static {v4, v3, v1}, LB1/e;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, ", endIndex: 8, size: 8"

    invoke-static {v4, v3, v1}, LB1/e;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string v4, "0"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final a()Lj2/z;
    .locals 1

    sget-object v0, Lj2/z;->d:Lj2/y;

    return-object v0
.end method

.method public final bridge synthetic b(J)Lj2/h;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj2/g;->A(J)V

    return-object p0
.end method

.method public final c(Lj2/g;JJ)V
    .locals 7

    const-string v0, "out"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Lj2/g;->f:J

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, LS1/e;->d(JJJ)V

    const-wide/16 p2, 0x0

    cmp-long p4, v5, p2

    if-nez p4, :cond_0

    goto :goto_3

    :cond_0
    iget-wide p4, p1, Lj2/g;->f:J

    add-long/2addr p4, v5

    iput-wide p4, p1, Lj2/g;->f:J

    iget-object p4, p0, Lj2/g;->e:Lj2/s;

    :goto_0
    invoke-static {p4}, LO1/d;->b(Ljava/lang/Object;)V

    iget p5, p4, Lj2/s;->c:I

    iget v0, p4, Lj2/s;->b:I

    sub-int/2addr p5, v0

    int-to-long v0, p5

    cmp-long p5, v3, v0

    if-ltz p5, :cond_1

    sub-long/2addr v3, v0

    iget-object p4, p4, Lj2/s;->f:Lj2/s;

    goto :goto_0

    :cond_1
    move-object v0, p4

    move-wide p4, v5

    :goto_1
    cmp-long v1, p4, p2

    if-lez v1, :cond_3

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lj2/s;->c()Lj2/s;

    move-result-object v1

    iget v2, v1, Lj2/s;->b:I

    long-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lj2/s;->b:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lj2/s;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lj2/s;->c:I

    iget-object v2, p1, Lj2/g;->e:Lj2/s;

    if-nez v2, :cond_2

    iput-object v1, v1, Lj2/s;->g:Lj2/s;

    iput-object v1, v1, Lj2/s;->f:Lj2/s;

    iput-object v1, p1, Lj2/g;->e:Lj2/s;

    goto :goto_2

    :cond_2
    iget-object v2, v2, Lj2/s;->g:Lj2/s;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lj2/s;->b(Lj2/s;)V

    :goto_2
    iget v2, v1, Lj2/s;->c:I

    iget v1, v1, Lj2/s;->b:I

    sub-int/2addr v2, v1

    int-to-long v1, v2

    sub-long/2addr p4, v1

    iget-object v0, v0, Lj2/s;->f:Lj2/s;

    move-wide v3, p2

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lj2/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-wide v1, p0, Lj2/g;->f:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lj2/g;->e:Lj2/s;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lj2/s;->c()Lj2/s;

    move-result-object v2

    iput-object v2, v0, Lj2/g;->e:Lj2/s;

    iput-object v2, v2, Lj2/s;->g:Lj2/s;

    iput-object v2, v2, Lj2/s;->f:Lj2/s;

    iget-object v3, v1, Lj2/s;->f:Lj2/s;

    :goto_0
    if-eq v3, v1, :cond_1

    iget-object v4, v2, Lj2/s;->g:Lj2/s;

    invoke-static {v4}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-static {v3}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lj2/s;->c()Lj2/s;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj2/s;->b(Lj2/s;)V

    iget-object v3, v3, Lj2/s;->f:Lj2/s;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lj2/g;->f:J

    iput-wide v1, v0, Lj2/g;->f:J

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(J)Lj2/j;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lj2/g;->f:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lj2/g;->u(I)Lj2/j;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lj2/g;->skip(J)V

    return-object v0

    :cond_0
    new-instance v0, Lj2/j;

    invoke-virtual {p0, p1, p2}, Lj2/g;->s(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lj2/j;-><init>([B)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final e()Z
    .locals 4

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    instance-of v3, v1, Lj2/g;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    :cond_1
    iget-wide v5, v0, Lj2/g;->f:J

    check-cast v1, Lj2/g;

    iget-wide v7, v1, Lj2/g;->f:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    return v4

    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, v0, Lj2/g;->e:Lj2/s;

    invoke-static {v3}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Lj2/g;->e:Lj2/s;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    iget v5, v3, Lj2/s;->b:I

    iget v6, v1, Lj2/s;->b:I

    move-wide v9, v7

    :goto_0
    iget-wide v11, v0, Lj2/g;->f:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_8

    iget v11, v3, Lj2/s;->c:I

    sub-int/2addr v11, v5

    iget v12, v1, Lj2/s;->c:I

    sub-int/2addr v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    move-wide v13, v7

    :goto_1
    cmp-long v15, v13, v11

    if-gez v15, :cond_5

    iget-object v15, v3, Lj2/s;->a:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    iget-object v15, v1, Lj2/s;->a:[B

    add-int/lit8 v17, v6, 0x1

    aget-byte v6, v15, v6

    if-eq v5, v6, :cond_4

    return v4

    :cond_4
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_1

    :cond_5
    iget v13, v3, Lj2/s;->c:I

    if-ne v5, v13, :cond_6

    iget-object v3, v3, Lj2/s;->f:Lj2/s;

    invoke-static {v3}, LO1/d;->b(Ljava/lang/Object;)V

    iget v5, v3, Lj2/s;->b:I

    :cond_6
    iget v13, v1, Lj2/s;->c:I

    if-ne v6, v13, :cond_7

    iget-object v1, v1, Lj2/s;->f:Lj2/s;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    iget v6, v1, Lj2/s;->b:I

    :cond_7
    add-long/2addr v9, v11

    goto :goto_0

    :cond_8
    return v2
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj2/g;->j(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic g(Lj2/j;)Lj2/h;
    .locals 0

    invoke-virtual {p0, p1}, Lj2/g;->w(Lj2/j;)V

    return-object p0
.end method

.method public final h(JLj2/g;)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p3, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lj2/g;->f:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    move-wide p1, v2

    :cond_1
    invoke-virtual {p3, p1, p2, p0}, Lj2/g;->k(JLj2/g;)V

    return-wide p1

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "byteCount < 0: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lj2/g;->e:Lj2/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget v2, v0, Lj2/s;->b:I

    iget v3, v0, Lj2/s;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lj2/s;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lj2/s;->f:Lj2/s;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lj2/g;->e:Lj2/s;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public final i(Lj2/o;)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lk2/a;->b(Lj2/g;Lj2/o;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object p1, p1, Lj2/o;->e:[Lj2/j;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lj2/j;->a()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lj2/g;->skip(J)V

    return v0
.end method

.method public final isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v6, 0x1

    if-nez v2, :cond_0

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    add-long v0, p1, v6

    goto :goto_0

    :goto_1
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lj2/g;->r(BJJ)J

    move-result-wide v1

    const-wide/16 v8, -0x1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_1

    invoke-static {v1, v2, p0}, Lk2/a;->a(JLj2/g;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-wide v1, p0, Lj2/g;->f:J

    cmp-long v1, v4, v1

    if-gez v1, :cond_2

    sub-long v1, v4, v6

    invoke-virtual {p0, v1, v2}, Lj2/g;->q(J)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v4, v5}, Lj2/g;->q(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    invoke-static {v4, v5, p0}, Lk2/a;->a(JLj2/g;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Lj2/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-wide v2, p0, Lj2/g;->f:J

    const/16 v4, 0x20

    int-to-long v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lj2/g;->c(Lj2/g;JJ)V

    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\\n not found: limit="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lj2/g;->f:J

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lj2/g;->f:J

    invoke-virtual {v1, v4, v5}, Lj2/g;->d(J)Lj2/j;

    move-result-object v1

    invoke-virtual {v1}, Lj2/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2026

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "limit < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final k(JLj2/g;)V
    .locals 8

    const-string v0, "source"

    invoke-static {p3, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p3, p0, :cond_c

    iget-wide v1, p3, Lj2/g;->f:J

    const-wide/16 v3, 0x0

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, LS1/e;->d(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_b

    iget-object v0, p3, Lj2/g;->e:Lj2/s;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iget v0, v0, Lj2/s;->c:I

    iget-object v1, p3, Lj2/g;->e:Lj2/s;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    iget v1, v1, Lj2/s;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_5

    iget-object v0, p0, Lj2/g;->e:Lj2/s;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lj2/s;->g:Lj2/s;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lj2/s;->e:Z

    if-eqz v2, :cond_2

    iget v2, v0, Lj2/s;->c:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    iget-boolean v4, v0, Lj2/s;->d:Z

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    iget v4, v0, Lj2/s;->b:I

    :goto_2
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v1, p3, Lj2/g;->e:Lj2/s;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    long-to-int v2, p1

    invoke-virtual {v1, v0, v2}, Lj2/s;->d(Lj2/s;I)V

    iget-wide v0, p3, Lj2/g;->f:J

    sub-long/2addr v0, p1

    iput-wide v0, p3, Lj2/g;->f:J

    iget-wide v0, p0, Lj2/g;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lj2/g;->f:J

    return-void

    :cond_2
    iget-object v0, p3, Lj2/g;->e:Lj2/s;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    long-to-int v2, p1

    if-lez v2, :cond_4

    iget v3, v0, Lj2/s;->c:I

    iget v4, v0, Lj2/s;->b:I

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_4

    const/16 v3, 0x400

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Lj2/s;->c()Lj2/s;

    move-result-object v3

    goto :goto_3

    :cond_3
    invoke-static {}, Lj2/t;->b()Lj2/s;

    move-result-object v3

    iget-object v4, v0, Lj2/s;->a:[B

    iget-object v5, v3, Lj2/s;->a:[B

    iget v6, v0, Lj2/s;->b:I

    add-int v7, v6, v2

    invoke-static {v1, v6, v7, v4, v5}, LF1/g;->p(III[B[B)V

    :goto_3
    iget v4, v3, Lj2/s;->b:I

    add-int/2addr v4, v2

    iput v4, v3, Lj2/s;->c:I

    iget v4, v0, Lj2/s;->b:I

    add-int/2addr v4, v2

    iput v4, v0, Lj2/s;->b:I

    iget-object v0, v0, Lj2/s;->g:Lj2/s;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lj2/s;->b(Lj2/s;)V

    iput-object v3, p3, Lj2/g;->e:Lj2/s;

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteCount out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_4
    iget-object v0, p3, Lj2/g;->e:Lj2/s;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iget v2, v0, Lj2/s;->c:I

    iget v3, v0, Lj2/s;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0}, Lj2/s;->a()Lj2/s;

    move-result-object v4

    iput-object v4, p3, Lj2/g;->e:Lj2/s;

    iget-object v4, p0, Lj2/g;->e:Lj2/s;

    if-nez v4, :cond_6

    iput-object v0, p0, Lj2/g;->e:Lj2/s;

    iput-object v0, v0, Lj2/s;->g:Lj2/s;

    iput-object v0, v0, Lj2/s;->f:Lj2/s;

    goto :goto_6

    :cond_6
    iget-object v4, v4, Lj2/s;->g:Lj2/s;

    invoke-static {v4}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lj2/s;->b(Lj2/s;)V

    iget-object v4, v0, Lj2/s;->g:Lj2/s;

    if-eq v4, v0, :cond_a

    invoke-static {v4}, LO1/d;->b(Ljava/lang/Object;)V

    iget-boolean v4, v4, Lj2/s;->e:Z

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    iget v4, v0, Lj2/s;->c:I

    iget v5, v0, Lj2/s;->b:I

    sub-int/2addr v4, v5

    iget-object v5, v0, Lj2/s;->g:Lj2/s;

    invoke-static {v5}, LO1/d;->b(Ljava/lang/Object;)V

    iget v5, v5, Lj2/s;->c:I

    rsub-int v5, v5, 0x2000

    iget-object v6, v0, Lj2/s;->g:Lj2/s;

    invoke-static {v6}, LO1/d;->b(Ljava/lang/Object;)V

    iget-boolean v6, v6, Lj2/s;->d:Z

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lj2/s;->g:Lj2/s;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    iget v1, v1, Lj2/s;->b:I

    :goto_5
    add-int/2addr v5, v1

    if-le v4, v5, :cond_9

    goto :goto_6

    :cond_9
    iget-object v1, v0, Lj2/s;->g:Lj2/s;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v4}, Lj2/s;->d(Lj2/s;I)V

    invoke-virtual {v0}, Lj2/s;->a()Lj2/s;

    invoke-static {v0}, Lj2/t;->a(Lj2/s;)V

    :goto_6
    iget-wide v0, p3, Lj2/g;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p3, Lj2/g;->f:J

    iget-wide v0, p0, Lj2/g;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj2/g;->f:J

    sub-long/2addr p1, v2

    goto/16 :goto_0

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot compact"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(J)V
    .locals 2

    iget-wide v0, p0, Lj2/g;->f:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic m(Ljava/lang/String;)Lj2/h;
    .locals 0

    invoke-virtual {p0, p1}, Lj2/g;->E(Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()J
    .locals 15

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    move v1, v0

    move v6, v1

    move-wide v4, v2

    :cond_0
    iget-object v7, p0, Lj2/g;->e:Lj2/s;

    invoke-static {v7}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v8, v7, Lj2/s;->a:[B

    iget v9, v7, Lj2/s;->b:I

    iget v10, v7, Lj2/s;->c:I

    :goto_0
    if-ge v9, v10, :cond_6

    aget-byte v11, v8, v9

    const/16 v12, 0x30

    if-lt v11, v12, :cond_1

    const/16 v12, 0x39

    if-gt v11, v12, :cond_1

    add-int/lit8 v12, v11, -0x30

    goto :goto_1

    :cond_1
    const/16 v12, 0x61

    if-lt v11, v12, :cond_2

    const/16 v12, 0x66

    if-gt v11, v12, :cond_2

    add-int/lit8 v12, v11, -0x57

    goto :goto_1

    :cond_2
    const/16 v12, 0x41

    if-lt v11, v12, :cond_4

    const/16 v12, 0x46

    if-gt v11, v12, :cond_4

    add-int/lit8 v12, v11, -0x37

    :goto_1
    const-wide/high16 v13, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v13, v4

    cmp-long v13, v13, v2

    if-nez v13, :cond_3

    const/4 v11, 0x4

    shl-long/2addr v4, v11

    int-to-long v11, v12

    or-long/2addr v4, v11

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lj2/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v4, v5}, Lj2/g;->A(J)V

    invoke-virtual {v0, v11}, Lj2/g;->z(I)V

    new-instance v1, Ljava/lang/NumberFormatException;

    iget-wide v2, v0, Lj2/g;->f:J

    sget-object v4, LS1/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2, v3, v4}, Lj2/g;->t(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Number too large: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v6, 0x1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    shr-int/lit8 v2, v11, 0x4

    and-int/lit8 v2, v2, 0xf

    sget-object v3, Lk2/b;->a:[C

    aget-char v2, v3, v2

    and-int/lit8 v4, v11, 0xf

    aget-char v3, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [C

    aput-char v2, v4, v0

    aput-char v3, v4, v6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    if-ne v9, v10, :cond_7

    invoke-virtual {v7}, Lj2/s;->a()Lj2/s;

    move-result-object v8

    iput-object v8, p0, Lj2/g;->e:Lj2/s;

    invoke-static {v7}, Lj2/t;->a(Lj2/s;)V

    goto :goto_3

    :cond_7
    iput v9, v7, Lj2/s;->b:I

    :goto_3
    if-nez v6, :cond_8

    iget-object v7, p0, Lj2/g;->e:Lj2/s;

    if-nez v7, :cond_0

    :cond_8
    iget-wide v2, p0, Lj2/g;->f:J

    int-to-long v0, v1

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lj2/g;->f:J

    return-wide v4

    :cond_9
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final o(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lj2/g;->f:J

    invoke-virtual {p0, v0, v1, p1}, Lj2/g;->t(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final p()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lj2/f;

    invoke-direct {v0, p0}, Lj2/f;-><init>(Lj2/g;)V

    return-object v0
.end method

.method public final q(J)B
    .locals 7

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, LS1/e;->d(JJJ)V

    iget-object p1, p0, Lj2/g;->e:Lj2/s;

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lj2/g;->f:J

    sub-long v4, v0, v2

    cmp-long p2, v4, v2

    if-gez p2, :cond_1

    :goto_0
    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    iget-object p1, p1, Lj2/s;->g:Lj2/s;

    invoke-static {p1}, LO1/d;->b(Ljava/lang/Object;)V

    iget p2, p1, Lj2/s;->c:I

    iget v4, p1, Lj2/s;->b:I

    sub-int/2addr p2, v4

    int-to-long v4, p2

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lj2/s;->a:[B

    iget p1, p1, Lj2/s;->b:I

    int-to-long v4, p1

    add-long/2addr v4, v2

    sub-long/2addr v4, v0

    long-to-int p1, v4

    aget-byte p1, p2, p1

    return p1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    iget p2, p1, Lj2/s;->c:I

    iget v4, p1, Lj2/s;->b:I

    sub-int/2addr p2, v4

    int-to-long v5, p2

    add-long/2addr v5, v0

    cmp-long p2, v5, v2

    if-gtz p2, :cond_2

    iget-object p1, p1, Lj2/s;->f:Lj2/s;

    invoke-static {p1}, LO1/d;->b(Ljava/lang/Object;)V

    move-wide v0, v5

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lj2/s;->a:[B

    int-to-long v4, v4

    add-long/2addr v4, v2

    sub-long/2addr v4, v0

    long-to-int p2, v4

    aget-byte p1, p1, p2

    return p1

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, LO1/d;->b(Ljava/lang/Object;)V

    throw p1
.end method

.method public final r(BJJ)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p2

    if-gtz v2, :cond_b

    cmp-long v2, p2, p4

    if-gtz v2, :cond_b

    iget-wide v2, p0, Lj2/g;->f:J

    cmp-long v4, p4, v2

    if-lez v4, :cond_0

    move-wide p4, v2

    :cond_0
    cmp-long v4, p2, p4

    if-nez v4, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v4, p0, Lj2/g;->e:Lj2/s;

    if-nez v4, :cond_2

    goto/16 :goto_6

    :cond_2
    sub-long v5, v2, p2

    cmp-long v5, v5, p2

    if-gez v5, :cond_6

    :goto_0
    cmp-long v0, v2, p2

    if-lez v0, :cond_3

    iget-object v4, v4, Lj2/s;->g:Lj2/s;

    invoke-static {v4}, LO1/d;->b(Ljava/lang/Object;)V

    iget v0, v4, Lj2/s;->c:I

    iget v1, v4, Lj2/s;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v2, v0

    goto :goto_0

    :cond_3
    :goto_1
    cmp-long v0, v2, p4

    if-gez v0, :cond_a

    iget-object v0, v4, Lj2/s;->a:[B

    iget v1, v4, Lj2/s;->c:I

    int-to-long v5, v1

    iget v1, v4, Lj2/s;->b:I

    int-to-long v7, v1

    add-long/2addr v7, p4

    sub-long/2addr v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v1, v5

    iget v5, v4, Lj2/s;->b:I

    int-to-long v5, v5

    add-long/2addr v5, p2

    sub-long/2addr v5, v2

    long-to-int p2, v5

    :goto_2
    if-ge p2, v1, :cond_5

    aget-byte p3, v0, p2

    if-ne p3, p1, :cond_4

    iget p1, v4, Lj2/s;->b:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v2

    return-wide p1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    iget p2, v4, Lj2/s;->c:I

    iget p3, v4, Lj2/s;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v2, p2

    iget-object v4, v4, Lj2/s;->f:Lj2/s;

    invoke-static {v4}, LO1/d;->b(Ljava/lang/Object;)V

    move-wide p2, v2

    goto :goto_1

    :cond_6
    :goto_3
    iget v2, v4, Lj2/s;->c:I

    iget v3, v4, Lj2/s;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-gtz v5, :cond_7

    iget-object v4, v4, Lj2/s;->f:Lj2/s;

    invoke-static {v4}, LO1/d;->b(Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_3

    :cond_7
    :goto_4
    cmp-long v2, v0, p4

    if-gez v2, :cond_a

    iget-object v2, v4, Lj2/s;->a:[B

    iget v3, v4, Lj2/s;->c:I

    int-to-long v5, v3

    iget v3, v4, Lj2/s;->b:I

    int-to-long v7, v3

    add-long/2addr v7, p4

    sub-long/2addr v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v3, v5

    iget v5, v4, Lj2/s;->b:I

    int-to-long v5, v5

    add-long/2addr v5, p2

    sub-long/2addr v5, v0

    long-to-int p2, v5

    :goto_5
    if-ge p2, v3, :cond_9

    aget-byte p3, v2, p2

    if-ne p3, p1, :cond_8

    iget p1, v4, Lj2/s;->b:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v0

    return-wide p1

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    iget p2, v4, Lj2/s;->c:I

    iget p3, v4, Lj2/s;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v4, v4, Lj2/s;->f:Lj2/s;

    invoke-static {v4}, LO1/d;->b(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_4

    :cond_a
    :goto_6
    const-wide/16 p1, -0x1

    return-wide p1

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "size="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lj2/g;->f:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " fromIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lj2/g;->e:Lj2/s;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lj2/s;->c:I

    iget v3, v0, Lj2/s;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, v0, Lj2/s;->a:[B

    iget v3, v0, Lj2/s;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4
    iget p1, v0, Lj2/s;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lj2/s;->b:I

    .line 5
    iget-wide v2, p0, Lj2/g;->f:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lj2/g;->f:J

    .line 6
    iget v2, v0, Lj2/s;->c:I

    if-ne p1, v2, :cond_1

    .line 7
    invoke-virtual {v0}, Lj2/s;->a()Lj2/s;

    move-result-object p1

    iput-object p1, p0, Lj2/g;->e:Lj2/s;

    .line 8
    invoke-static {v0}, Lj2/t;->a(Lj2/s;)V

    :cond_1
    return v1
.end method

.method public final read([BII)I
    .locals 7

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, LS1/e;->d(JJJ)V

    .line 10
    iget-object v0, p0, Lj2/g;->e:Lj2/s;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 11
    :cond_0
    iget v1, v0, Lj2/s;->c:I

    iget v2, v0, Lj2/s;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 12
    iget-object v1, v0, Lj2/s;->a:[B

    .line 13
    iget v2, v0, Lj2/s;->b:I

    add-int v3, v2, p3

    .line 14
    invoke-static {p2, v2, v3, v1, p1}, LF1/g;->p(III[B[B)V

    .line 15
    iget p1, v0, Lj2/s;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lj2/s;->b:I

    .line 16
    iget-wide v1, p0, Lj2/g;->f:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 17
    iput-wide v1, p0, Lj2/g;->f:J

    .line 18
    iget p2, v0, Lj2/s;->c:I

    if-ne p1, p2, :cond_1

    .line 19
    invoke-virtual {v0}, Lj2/s;->a()Lj2/s;

    move-result-object p1

    iput-object p1, p0, Lj2/g;->e:Lj2/s;

    .line 20
    invoke-static {v0}, Lj2/t;->a(Lj2/s;)V

    :cond_1
    return p3
.end method

.method public final readByte()B
    .locals 9

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj2/g;->e:Lj2/s;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iget v1, v0, Lj2/s;->b:I

    iget v2, v0, Lj2/s;->c:I

    iget-object v3, v0, Lj2/s;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v5, p0, Lj2/g;->f:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lj2/g;->f:J

    if-ne v4, v2, :cond_0

    invoke-virtual {v0}, Lj2/s;->a()Lj2/s;

    move-result-object v2

    iput-object v2, p0, Lj2/g;->e:Lj2/s;

    invoke-static {v0}, Lj2/t;->a(Lj2/s;)V

    return v1

    :cond_0
    iput v4, v0, Lj2/s;->b:I

    return v1

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readInt()I
    .locals 9

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lj2/g;->e:Lj2/s;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iget v1, v0, Lj2/s;->b:I

    iget v4, v0, Lj2/s;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lj2/g;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lj2/g;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lj2/g;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lj2/g;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v5, v0, Lj2/s;->a:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v7, v5, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, v1, 0x2

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x3

    aget-byte v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    add-int/lit8 v1, v1, 0x4

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    iget-wide v6, p0, Lj2/g;->f:J

    sub-long/2addr v6, v2

    iput-wide v6, p0, Lj2/g;->f:J

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lj2/s;->a()Lj2/s;

    move-result-object v1

    iput-object v1, p0, Lj2/g;->e:Lj2/s;

    invoke-static {v0}, Lj2/t;->a(Lj2/s;)V

    return v5

    :cond_1
    iput v1, v0, Lj2/s;->b:I

    return v5

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readShort()S
    .locals 9

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lj2/g;->e:Lj2/s;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iget v1, v0, Lj2/s;->b:I

    iget v4, v0, Lj2/s;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Lj2/g;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lj2/g;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_0
    iget-object v5, v0, Lj2/s;->a:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v8, v5, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v1, v6

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v8

    iget-wide v6, p0, Lj2/g;->f:J

    sub-long/2addr v6, v2

    iput-wide v6, p0, Lj2/g;->f:J

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lj2/s;->a()Lj2/s;

    move-result-object v1

    iput-object v1, p0, Lj2/g;->e:Lj2/s;

    invoke-static {v0}, Lj2/t;->a(Lj2/s;)V

    goto :goto_0

    :cond_1
    iput v1, v0, Lj2/s;->b:I

    :goto_0
    int-to-short v0, v5

    return v0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final s(J)[B
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    iget-wide v0, p0, Lj2/g;->f:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    long-to-int p1, p1

    new-array p2, p1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    sub-int v1, p1, v0

    invoke-virtual {p0, p2, v0, v1}, Lj2/g;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-object p2

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final skip(J)V
    .locals 6

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lj2/g;->e:Lj2/s;

    if-eqz v0, :cond_1

    iget v1, v0, Lj2/s;->c:I

    iget v2, v0, Lj2/s;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-wide v2, p0, Lj2/g;->f:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lj2/g;->f:J

    sub-long/2addr p1, v4

    iget v2, v0, Lj2/s;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lj2/s;->b:I

    iget v1, v0, Lj2/s;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lj2/s;->a()Lj2/s;

    move-result-object v1

    iput-object v1, p0, Lj2/g;->e:Lj2/s;

    invoke-static {v0}, Lj2/t;->a(Lj2/s;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public final t(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    const-string v0, "charset"

    invoke-static {p3, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    iget-wide v1, p0, Lj2/g;->f:J

    cmp-long v1, v1, p1

    if-ltz v1, :cond_3

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lj2/g;->e:Lj2/s;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iget v1, v0, Lj2/s;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lj2/s;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lj2/g;->s(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lj2/s;->a:[B

    long-to-int v4, p1

    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Lj2/s;->b:I

    add-int/2addr p3, v4

    iput p3, v0, Lj2/s;->b:I

    iget-wide v3, p0, Lj2/g;->f:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lj2/g;->f:J

    iget p1, v0, Lj2/s;->c:I

    if-ne p3, p1, :cond_2

    invoke-virtual {v0}, Lj2/s;->a()Lj2/s;

    move-result-object p1

    iput-object p1, p0, Lj2/g;->e:Lj2/s;

    invoke-static {v0}, Lj2/t;->a(Lj2/s;)V

    :cond_2
    return-object v2

    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "byteCount: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lj2/g;->u(I)Lj2/j;

    move-result-object v0

    invoke-virtual {v0}, Lj2/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size > Int.MAX_VALUE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lj2/g;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final u(I)Lj2/j;
    .locals 8

    if-nez p1, :cond_0

    sget-object p1, Lj2/j;->h:Lj2/j;

    return-object p1

    :cond_0
    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, LS1/e;->d(JJJ)V

    iget-object v0, p0, Lj2/g;->e:Lj2/s;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iget v4, v0, Lj2/s;->c:I

    iget v5, v0, Lj2/s;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lj2/s;->f:Lj2/s;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "s.limit == s.pos"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    iget-object v4, p0, Lj2/g;->e:Lj2/s;

    move-object v5, v4

    move v4, v1

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-static {v5}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v6, v5, Lj2/s;->a:[B

    aput-object v6, v0, v4

    iget v6, v5, Lj2/s;->c:I

    iget v7, v5, Lj2/s;->b:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v4

    add-int v6, v4, v3

    iget v7, v5, Lj2/s;->b:I

    aput v7, v2, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lj2/s;->d:Z

    add-int/2addr v4, v6

    iget-object v5, v5, Lj2/s;->f:Lj2/s;

    goto :goto_1

    :cond_3
    new-instance p1, Lj2/u;

    invoke-direct {p1, v0, v2}, Lj2/u;-><init>([[B[I)V

    return-object p1
.end method

.method public final v(I)Lj2/s;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    iget-object v1, p0, Lj2/g;->e:Lj2/s;

    if-nez v1, :cond_0

    invoke-static {}, Lj2/t;->b()Lj2/s;

    move-result-object p1

    iput-object p1, p0, Lj2/g;->e:Lj2/s;

    iput-object p1, p1, Lj2/s;->g:Lj2/s;

    iput-object p1, p1, Lj2/s;->f:Lj2/s;

    return-object p1

    :cond_0
    iget-object v1, v1, Lj2/s;->g:Lj2/s;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    iget v2, v1, Lj2/s;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2

    iget-boolean p1, v1, Lj2/s;->e:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    invoke-static {}, Lj2/t;->b()Lj2/s;

    move-result-object p1

    invoke-virtual {v1, p1}, Lj2/s;->b(Lj2/s;)V

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(Lj2/j;)V
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lj2/j;->a()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lj2/j;->i(Lj2/g;I)V

    return-void
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v2}, Lj2/g;->v(I)Lj2/s;

    move-result-object v2

    .line 3
    iget v3, v2, Lj2/s;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4
    iget-object v4, v2, Lj2/s;->a:[B

    iget v5, v2, Lj2/s;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 5
    iget v4, v2, Lj2/s;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lj2/s;->c:I

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v1, p0, Lj2/g;->f:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lj2/g;->f:J

    return v0
.end method

.method public final write([B)Lj2/h;
    .locals 1

    .line 7
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lj2/g;->x([BI)V

    return-object p0
.end method

.method public final bridge synthetic writeByte(I)Lj2/h;
    .locals 0

    invoke-virtual {p0, p1}, Lj2/g;->z(I)V

    return-object p0
.end method

.method public final bridge synthetic writeInt(I)Lj2/h;
    .locals 0

    invoke-virtual {p0, p1}, Lj2/g;->B(I)V

    return-object p0
.end method

.method public final bridge synthetic writeShort(I)Lj2/h;
    .locals 0

    invoke-virtual {p0, p1}, Lj2/g;->C(I)V

    return-object p0
.end method

.method public final x([BI)V
    .locals 8

    const-string v0, "source"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    const/4 v0, 0x0

    int-to-long v3, v0

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, LS1/e;->d(JJJ)V

    :goto_0
    if-ge v0, p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lj2/g;->v(I)Lj2/s;

    move-result-object v1

    sub-int v2, p2, v0

    iget v3, v1, Lj2/s;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lj2/s;->a:[B

    iget v4, v1, Lj2/s;->c:I

    add-int v7, v0, v2

    invoke-static {v4, v0, v7, p1, v3}, LF1/g;->p(III[B[B)V

    iget v0, v1, Lj2/s;->c:I

    add-int/2addr v0, v2

    iput v0, v1, Lj2/s;->c:I

    move v0, v7

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lj2/g;->f:J

    add-long/2addr p1, v5

    iput-wide p1, p0, Lj2/g;->f:J

    return-void
.end method

.method public final y(Lj2/x;)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v0, 0x2000

    invoke-interface {p1, v0, v1, p0}, Lj2/x;->h(JLj2/g;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lj2/g;->v(I)Lj2/s;

    move-result-object v0

    iget-object v1, v0, Lj2/s;->a:[B

    iget v2, v0, Lj2/s;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lj2/s;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget-wide v0, p0, Lj2/g;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj2/g;->f:J

    return-void
.end method
