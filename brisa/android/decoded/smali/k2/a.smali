.class public abstract Lk2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0123456789abcdef"

    sget-object v1, LS1/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lk2/a;->a:[B

    return-void
.end method

.method public static final a(JLj2/g;)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p0, v1

    invoke-virtual {p2, v3, v4}, Lj2/g;->q(J)B

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_0

    sget-object p0, LS1/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v3, v4, p0}, Lj2/g;->t(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x2

    invoke-virtual {p2, v0, v1}, Lj2/g;->skip(J)V

    return-object p0

    :cond_0
    sget-object v0, LS1/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p0, p1, v0}, Lj2/g;->t(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, v2}, Lj2/g;->skip(J)V

    return-object p0
.end method

.method public static final b(Lj2/g;Lj2/o;Z)I
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "options"

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    iget-object v1, v1, Lj2/g;->e:Lj2/s;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_4

    :cond_0
    return v2

    :cond_1
    iget-object v3, v1, Lj2/s;->a:[B

    iget v4, v1, Lj2/s;->b:I

    iget v5, v1, Lj2/s;->c:I

    iget-object v0, v0, Lj2/o;->f:[I

    const/4 v6, 0x0

    move-object v8, v1

    move v9, v2

    move v7, v6

    :goto_0
    add-int/lit8 v10, v7, 0x1

    aget v11, v0, v7

    add-int/lit8 v7, v7, 0x2

    aget v10, v0, v10

    if-eq v10, v2, :cond_2

    move v9, v10

    :cond_2
    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    if-gez v11, :cond_a

    mul-int/lit8 v11, v11, -0x1

    add-int v12, v11, v7

    :goto_1
    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v13, v7, 0x1

    aget v7, v0, v7

    if-eq v4, v7, :cond_4

    goto :goto_7

    :cond_4
    if-ne v13, v12, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    move v4, v6

    :goto_2
    if-ne v11, v5, :cond_8

    invoke-static {v8}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v3, v8, Lj2/s;->f:Lj2/s;

    invoke-static {v3}, LO1/d;->b(Ljava/lang/Object;)V

    iget v5, v3, Lj2/s;->b:I

    iget-object v7, v3, Lj2/s;->a:[B

    iget v8, v3, Lj2/s;->c:I

    if-ne v3, v1, :cond_7

    if-eqz v4, :cond_6

    move-object v3, v7

    move-object v7, v10

    goto :goto_5

    :cond_6
    :goto_3
    if-eqz p2, :cond_b

    :goto_4
    const/4 v0, -0x2

    return v0

    :cond_7
    move-object v15, v7

    move-object v7, v3

    move-object v3, v15

    goto :goto_5

    :cond_8
    move-object v7, v8

    move v8, v5

    move v5, v11

    :goto_5
    if-eqz v4, :cond_9

    aget v4, v0, v13

    move v15, v8

    move-object v8, v7

    move v7, v15

    goto :goto_8

    :cond_9
    move v4, v5

    move v5, v8

    move-object v8, v7

    move v7, v13

    goto :goto_1

    :cond_a
    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    add-int v13, v7, v11

    :goto_6
    if-ne v7, v13, :cond_c

    :cond_b
    :goto_7
    return v9

    :cond_c
    aget v14, v0, v7

    if-ne v4, v14, :cond_10

    add-int/2addr v7, v11

    aget v4, v0, v7

    if-ne v12, v5, :cond_e

    iget-object v8, v8, Lj2/s;->f:Lj2/s;

    invoke-static {v8}, LO1/d;->b(Ljava/lang/Object;)V

    iget v3, v8, Lj2/s;->b:I

    iget-object v5, v8, Lj2/s;->a:[B

    iget v7, v8, Lj2/s;->c:I

    if-ne v8, v1, :cond_d

    move-object v8, v5

    move v5, v3

    move-object v3, v8

    move-object v8, v10

    goto :goto_8

    :cond_d
    move-object v15, v5

    move v5, v3

    move-object v3, v15

    goto :goto_8

    :cond_e
    move v7, v5

    move v5, v12

    :goto_8
    if-ltz v4, :cond_f

    return v4

    :cond_f
    neg-int v4, v4

    move v15, v7

    move v7, v4

    move v4, v5

    move v5, v15

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_6
.end method
