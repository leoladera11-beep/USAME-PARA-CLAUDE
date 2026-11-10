.class public final Lp0/h;
.super Lcom/brisa/local/a;
.source "SourceFile"


# static fields
.field public static final d:Lorg/mozilla/javascript/typedarrays/c;

.field public static final e:Lorg/mozilla/javascript/typedarrays/c;


# instance fields
.field public final c:Lorg/mozilla/javascript/typedarrays/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/typedarrays/c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/typedarrays/c;-><init>(I)V

    sput-object v0, Lp0/h;->d:Lorg/mozilla/javascript/typedarrays/c;

    new-instance v0, Lorg/mozilla/javascript/typedarrays/c;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/typedarrays/c;-><init>(I)V

    sput-object v0, Lp0/h;->e:Lorg/mozilla/javascript/typedarrays/c;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/typedarrays/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/h;->c:Lorg/mozilla/javascript/typedarrays/c;

    return-void
.end method

.method public static F(LJ/D;II)Lp0/a;
    .locals 7

    invoke-virtual {p0}, LJ/D;->A()I

    move-result v0

    invoke-static {v0}, Lp0/h;->U(I)Ljava/nio/charset/Charset;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    new-array v2, p1, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, p1}, LJ/D;->k(I[BI)V

    const-string p0, "image/"

    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/String;

    const/4 v5, 0x3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, v3, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {p0}, Lcom/brisa/local/d0;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "image/jpg"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "image/jpeg"

    :cond_0
    move p2, v4

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lp0/h;->X([BI)I

    move-result p2

    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v3, p2, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v5}, Lcom/brisa/local/d0;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v3

    :goto_0
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr p2, v4

    invoke-static {p2, v2, v0}, Lp0/h;->W(I[BI)I

    move-result v4

    new-instance v5, Ljava/lang/String;

    sub-int v6, v4, p2

    invoke-direct {v5, v2, p2, v6, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v0}, Lp0/h;->T(I)I

    move-result p2

    add-int/2addr p2, v4

    if-gt p1, p2, :cond_3

    sget-object p1, LJ/W;->b:[B

    goto :goto_1

    :cond_3
    invoke-static {v2, p2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    :goto_1
    new-instance p2, Lp0/a;

    invoke-direct {p2, p0, v5, v3, p1}, Lp0/a;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p2
.end method

.method public static G(LJ/D;IIZILorg/mozilla/javascript/typedarrays/c;)Lp0/c;
    .locals 14

    iget v0, p0, LJ/D;->b:I

    iget-object v1, p0, LJ/D;->a:[B

    invoke-static {v1, v0}, Lp0/h;->X([BI)I

    move-result v1

    new-instance v3, Ljava/lang/String;

    iget-object v2, p0, LJ/D;->a:[B

    sub-int v4, v1, v0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v0, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, LJ/D;->N(I)V

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v4

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v5

    if-le v4, v5, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LJ/D;->C()J

    move-result-wide v1

    const-wide v6, 0xffffffffL

    cmp-long v8, v1, v6

    const-wide/16 v9, -0x1

    if-nez v8, :cond_1

    move-wide v1, v9

    :cond_1
    invoke-virtual {p0}, LJ/D;->C()J

    move-result-wide v11

    cmp-long v6, v11, v6

    if-nez v6, :cond_2

    move-wide v8, v9

    goto :goto_0

    :cond_2
    move-wide v8, v11

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v0, p1

    :cond_3
    :goto_1
    iget v7, p0, LJ/D;->b:I

    if-ge v7, v0, :cond_4

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    invoke-static {v7, p0, v10, v11, v12}, Lp0/h;->J(ILJ/D;ZILorg/mozilla/javascript/typedarrays/c;)Lp0/i;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    new-array p0, p0, [Lp0/i;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, [Lp0/i;

    move-wide v6, v1

    new-instance v2, Lp0/c;

    invoke-direct/range {v2 .. v10}, Lp0/c;-><init>(Ljava/lang/String;IIJJ[Lp0/i;)V

    return-object v2
.end method

.method public static H(LJ/D;IIZILorg/mozilla/javascript/typedarrays/c;)Lp0/d;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, LJ/D;->b:I

    iget-object v2, v0, LJ/D;->a:[B

    invoke-static {v2, v1}, Lp0/h;->X([BI)I

    move-result v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, LJ/D;->a:[B

    sub-int v5, v2, v1

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v2

    and-int/lit8 v5, v2, 0x2

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    invoke-virtual {v0}, LJ/D;->A()I

    move-result v7

    new-array v8, v7, [Ljava/lang/String;

    move v9, v6

    :goto_2
    if-ge v9, v7, :cond_2

    iget v10, v0, LJ/D;->b:I

    iget-object v11, v0, LJ/D;->a:[B

    invoke-static {v11, v10}, Lp0/h;->X([BI)I

    move-result v11

    new-instance v12, Ljava/lang/String;

    iget-object v13, v0, LJ/D;->a:[B

    sub-int v14, v11, v10

    sget-object v15, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v12, v13, v10, v14, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    aput-object v12, v8, v9

    add-int/2addr v11, v4

    invoke-virtual {v0, v11}, LJ/D;->N(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    :cond_3
    :goto_3
    iget v7, v0, LJ/D;->b:I

    if-ge v7, v1, :cond_4

    move/from16 v7, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static {v7, v0, v9, v10, v11}, Lp0/h;->J(ILJ/D;ZILorg/mozilla/javascript/typedarrays/c;)Lp0/i;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-array v0, v6, [Lp0/i;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp0/i;

    new-instance v1, Lp0/d;

    move-object/from16 p5, v0

    move-object/from16 p0, v1

    move/from16 p3, v2

    move-object/from16 p1, v3

    move/from16 p2, v5

    move-object/from16 p4, v8

    invoke-direct/range {p0 .. p5}, Lp0/d;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lp0/i;)V

    move-object/from16 v0, p0

    return-object v0
.end method

.method public static I(ILJ/D;)Lp0/e;
    .locals 7

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, LJ/D;->A()I

    move-result v1

    invoke-static {v1}, Lp0/h;->U(I)Ljava/nio/charset/Charset;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4, v3}, LJ/D;->k(I[BI)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    sub-int/2addr p0, v0

    new-array v0, p0, [B

    invoke-virtual {p1, v5, v0, p0}, LJ/D;->k(I[BI)V

    invoke-static {v5, v0, v1}, Lp0/h;->W(I[BI)I

    move-result p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v5, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v1}, Lp0/h;->T(I)I

    move-result v3

    add-int/2addr v3, p0

    invoke-static {v3, v0, v1}, Lp0/h;->W(I[BI)I

    move-result p0

    invoke-static {v0, v3, p0, v2}, Lp0/h;->N([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lp0/e;

    invoke-direct {v0, v6, p1, p0}, Lp0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static J(ILJ/D;ZILorg/mozilla/javascript/typedarrays/c;)Lp0/i;
    .locals 18

    move/from16 v3, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v7

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v8

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v9

    const/4 v2, 0x3

    if-lt v3, v2, :cond_0

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v4

    move v10, v4

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, LJ/D;->E()I

    move-result v5

    if-nez p2, :cond_3

    and-int/lit16 v11, v5, 0xff

    shr-int/lit8 v12, v5, 0x8

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x7

    or-int/2addr v11, v12

    shr-int/lit8 v12, v5, 0x10

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0xe

    or-int/2addr v11, v12

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x15

    or-int/2addr v5, v11

    goto :goto_1

    :cond_1
    if-ne v3, v2, :cond_2

    invoke-virtual {v1}, LJ/D;->E()I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, LJ/D;->D()I

    move-result v5

    :cond_3
    :goto_1
    if-lt v3, v2, :cond_4

    invoke-virtual {v1}, LJ/D;->H()I

    move-result v11

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    const/4 v12, 0x0

    if-nez v7, :cond_5

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    if-nez v10, :cond_5

    if-nez v5, :cond_5

    if-nez v11, :cond_5

    iget v0, v1, LJ/D;->c:I

    invoke-virtual {v1, v0}, LJ/D;->N(I)V

    return-object v12

    :cond_5
    iget v13, v1, LJ/D;->b:I

    add-int/2addr v13, v5

    iget v14, v1, LJ/D;->c:I

    const-string v15, "Id3Decoder"

    if-le v13, v14, :cond_6

    const-string v0, "Frame size exceeds remaining tag data"

    invoke-static {v15, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, LJ/D;->c:I

    invoke-virtual {v1, v0}, LJ/D;->N(I)V

    return-object v12

    :cond_6
    if-eqz v6, :cond_b

    iget v14, v6, Lorg/mozilla/javascript/typedarrays/c;->e:I

    packed-switch v14, :pswitch_data_0

    const/16 v14, 0x43

    move-object/from16 v16, v12

    const/4 v12, 0x2

    const/16 v0, 0x4d

    if-ne v7, v14, :cond_7

    const/16 v14, 0x4f

    if-ne v8, v14, :cond_7

    if-ne v9, v0, :cond_7

    if-eq v10, v0, :cond_8

    if-eq v3, v12, :cond_8

    :cond_7
    if-ne v7, v0, :cond_a

    const/16 v0, 0x4c

    if-ne v8, v0, :cond_a

    if-ne v9, v0, :cond_a

    const/16 v0, 0x54

    if-eq v10, v0, :cond_8

    if-ne v3, v12, :cond_a

    :cond_8
    :goto_3
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_0
    move-object/from16 v16, v12

    const/4 v0, 0x2

    const/16 v12, 0x43

    const/16 v14, 0x49

    const/16 v4, 0x50

    if-ne v3, v0, :cond_9

    if-ne v7, v4, :cond_8

    if-ne v8, v14, :cond_8

    if-eq v9, v12, :cond_a

    goto :goto_3

    :cond_9
    const/16 v0, 0x41

    if-ne v7, v0, :cond_8

    if-ne v8, v4, :cond_8

    if-ne v9, v14, :cond_8

    if-eq v10, v12, :cond_a

    goto :goto_3

    :pswitch_1
    move-object/from16 v16, v12

    :cond_a
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_c

    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    return-object v16

    :cond_b
    move-object/from16 v16, v12

    :cond_c
    const/4 v0, 0x1

    if-ne v3, v2, :cond_10

    and-int/lit16 v2, v11, 0x80

    if-eqz v2, :cond_d

    move v2, v0

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    :goto_5
    and-int/lit8 v4, v11, 0x40

    if-eqz v4, :cond_e

    move v4, v0

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    :goto_6
    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_f

    move v11, v0

    goto :goto_7

    :cond_f
    const/4 v11, 0x0

    :goto_7
    move v12, v11

    const/4 v14, 0x0

    move v11, v2

    goto :goto_d

    :cond_10
    const/4 v2, 0x4

    if-ne v3, v2, :cond_16

    and-int/lit8 v2, v11, 0x40

    if-eqz v2, :cond_11

    move v2, v0

    goto :goto_8

    :cond_11
    const/4 v2, 0x0

    :goto_8
    and-int/lit8 v4, v11, 0x8

    if-eqz v4, :cond_12

    move v4, v0

    goto :goto_9

    :cond_12
    const/4 v4, 0x0

    :goto_9
    and-int/lit8 v12, v11, 0x4

    if-eqz v12, :cond_13

    move v12, v0

    goto :goto_a

    :cond_13
    const/4 v12, 0x0

    :goto_a
    and-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_14

    move v14, v0

    goto :goto_b

    :cond_14
    const/4 v14, 0x0

    :goto_b
    and-int/2addr v11, v0

    if-eqz v11, :cond_15

    move v11, v0

    goto :goto_c

    :cond_15
    const/4 v11, 0x0

    :goto_c
    move/from16 v17, v12

    move v12, v2

    move v2, v4

    move/from16 v4, v17

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_d
    if-nez v2, :cond_2c

    if-eqz v4, :cond_17

    goto/16 :goto_14

    :cond_17
    if-eqz v12, :cond_18

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v0}, LJ/D;->O(I)V

    :cond_18
    if-eqz v11, :cond_19

    add-int/lit8 v5, v5, -0x4

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, LJ/D;->O(I)V

    :cond_19
    if-eqz v14, :cond_1a

    invoke-static {v5, v1}, Lp0/h;->Y(ILJ/D;)I

    move-result v5

    :cond_1a
    move v2, v5

    const/16 v0, 0x54

    const/16 v4, 0x58

    const/4 v5, 0x2

    if-ne v7, v0, :cond_1c

    if-ne v8, v4, :cond_1c

    if-ne v9, v4, :cond_1c

    if-eq v3, v5, :cond_1b

    if-ne v10, v4, :cond_1c

    :cond_1b
    :try_start_0
    invoke-static {v2, v1}, Lp0/h;->Q(ILJ/D;)Lp0/n;

    move-result-object v0

    goto/16 :goto_10

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :catch_0
    move-exception v0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    goto/16 :goto_12

    :cond_1c
    if-ne v7, v0, :cond_1d

    invoke-static {v3, v7, v8, v9, v10}, Lp0/h;->V(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lp0/h;->O(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v0

    goto/16 :goto_10

    :cond_1d
    const/16 v11, 0x57

    if-ne v7, v11, :cond_1f

    if-ne v8, v4, :cond_1f

    if-ne v9, v4, :cond_1f

    if-eq v3, v5, :cond_1e

    if-ne v10, v4, :cond_1f

    :cond_1e
    invoke-static {v2, v1}, Lp0/h;->S(ILJ/D;)Lp0/o;

    move-result-object v0

    goto/16 :goto_10

    :cond_1f
    if-ne v7, v11, :cond_20

    invoke-static {v3, v7, v8, v9, v10}, Lp0/h;->V(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lp0/h;->R(ILJ/D;Ljava/lang/String;)Lp0/o;

    move-result-object v0

    goto/16 :goto_10

    :cond_20
    const/16 v4, 0x49

    const/16 v11, 0x50

    if-ne v7, v11, :cond_21

    const/16 v12, 0x52

    if-ne v8, v12, :cond_21

    if-ne v9, v4, :cond_21

    const/16 v12, 0x56

    if-ne v10, v12, :cond_21

    invoke-static {v2, v1}, Lp0/h;->M(ILJ/D;)Lp0/m;

    move-result-object v0

    goto/16 :goto_10

    :cond_21
    const/16 v12, 0x47

    const/16 v14, 0x4f

    if-ne v7, v12, :cond_23

    const/16 v12, 0x45

    if-ne v8, v12, :cond_23

    if-ne v9, v14, :cond_23

    const/16 v12, 0x42

    if-eq v10, v12, :cond_22

    if-ne v3, v5, :cond_23

    :cond_22
    invoke-static {v2, v1}, Lp0/h;->K(ILJ/D;)Lp0/f;

    move-result-object v0

    goto/16 :goto_10

    :cond_23
    const/16 v12, 0x41

    const/16 v0, 0x43

    if-ne v3, v5, :cond_24

    if-ne v7, v11, :cond_25

    if-ne v8, v4, :cond_25

    if-ne v9, v0, :cond_25

    goto :goto_e

    :cond_24
    if-ne v7, v12, :cond_25

    if-ne v8, v11, :cond_25

    if-ne v9, v4, :cond_25

    if-ne v10, v0, :cond_25

    :goto_e
    invoke-static {v1, v2, v3}, Lp0/h;->F(LJ/D;II)Lp0/a;

    move-result-object v0

    goto/16 :goto_10

    :cond_25
    const/16 v4, 0x4d

    if-ne v7, v0, :cond_27

    if-ne v8, v14, :cond_27

    if-ne v9, v4, :cond_27

    if-eq v10, v4, :cond_26

    if-ne v3, v5, :cond_27

    :cond_26
    invoke-static {v2, v1}, Lp0/h;->I(ILJ/D;)Lp0/e;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_10

    :cond_27
    if-ne v7, v0, :cond_28

    const/16 v5, 0x48

    if-ne v8, v5, :cond_28

    if-ne v9, v12, :cond_28

    if-ne v10, v11, :cond_28

    move/from16 v4, p2

    move/from16 v5, p3

    :try_start_1
    invoke-static/range {v1 .. v6}, Lp0/h;->G(LJ/D;IIZILorg/mozilla/javascript/typedarrays/c;)Lp0/c;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v3, p0

    move-object/from16 v1, p1

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_11

    :catch_2
    move-exception v0

    :goto_f
    move/from16 v3, p0

    move-object/from16 v1, p1

    goto :goto_12

    :catch_3
    move-exception v0

    goto :goto_f

    :cond_28
    move v11, v4

    if-ne v7, v0, :cond_29

    const/16 v1, 0x54

    if-ne v8, v1, :cond_29

    if-ne v9, v14, :cond_29

    if-ne v10, v0, :cond_29

    move/from16 v3, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    :try_start_2
    invoke-static/range {v1 .. v6}, Lp0/h;->H(LJ/D;IIZILorg/mozilla/javascript/typedarrays/c;)Lp0/d;

    move-result-object v0

    goto :goto_10

    :cond_29
    move/from16 v3, p0

    move-object/from16 v1, p1

    if-ne v7, v11, :cond_2a

    const/16 v0, 0x4c

    if-ne v8, v0, :cond_2a

    if-ne v9, v0, :cond_2a

    const/16 v0, 0x54

    if-ne v10, v0, :cond_2a

    invoke-static {v2, v1}, Lp0/h;->L(ILJ/D;)Lp0/l;

    move-result-object v0

    goto :goto_10

    :cond_2a
    invoke-static {v3, v7, v8, v9, v10}, Lp0/h;->V(IIIII)Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4, v2}, LJ/D;->k(I[BI)V

    new-instance v5, Lp0/b;

    invoke-direct {v5, v0, v4}, Lp0/b;-><init>(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v5

    :goto_10
    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    move-object v12, v0

    move-object/from16 v0, v16

    goto :goto_13

    :goto_11
    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    throw v0

    :goto_12
    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    move-object/from16 v12, v16

    :goto_13
    if-nez v12, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Failed to decode frame: id="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v7, v8, v9, v10}, Lp0/h;->V(IIIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", frameSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    return-object v12

    :cond_2c
    :goto_14
    const-string v0, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v15, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    return-object v16

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static K(ILJ/D;)Lp0/f;
    .locals 6

    invoke-virtual {p1}, LJ/D;->A()I

    move-result v0

    invoke-static {v0}, Lp0/h;->U(I)Ljava/nio/charset/Charset;

    move-result-object v1

    add-int/lit8 p0, p0, -0x1

    new-array v2, p0, [B

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, p0}, LJ/D;->k(I[BI)V

    invoke-static {v2, v3}, Lp0/h;->X([BI)I

    move-result p1

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v3, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v4}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1, v2, v0}, Lp0/h;->W(I[BI)I

    move-result v4

    invoke-static {v2, p1, v4, v1}, Lp0/h;->N([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lp0/h;->T(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5, v2, v0}, Lp0/h;->W(I[BI)I

    move-result v4

    invoke-static {v2, v5, v4, v1}, Lp0/h;->N([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lp0/h;->T(I)I

    move-result v0

    add-int/2addr v0, v4

    if-gt p0, v0, :cond_0

    sget-object p0, LJ/W;->b:[B

    goto :goto_0

    :cond_0
    invoke-static {v2, v0, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    :goto_0
    new-instance v0, Lp0/f;

    invoke-direct {v0, v3, p1, v1, p0}, Lp0/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static L(ILJ/D;)Lp0/l;
    .locals 10

    invoke-virtual {p1}, LJ/D;->H()I

    move-result v1

    invoke-virtual {p1}, LJ/D;->D()I

    move-result v2

    invoke-virtual {p1}, LJ/D;->D()I

    move-result v3

    invoke-virtual {p1}, LJ/D;->A()I

    move-result v0

    invoke-virtual {p1}, LJ/D;->A()I

    move-result v4

    new-instance v5, LJ/B;

    invoke-direct {v5}, LJ/B;-><init>()V

    invoke-virtual {v5, p1}, LJ/B;->k(LJ/D;)V

    add-int/lit8 p0, p0, -0xa

    mul-int/lit8 p0, p0, 0x8

    add-int p1, v0, v4

    div-int/2addr p0, p1

    move p1, v4

    new-array v4, p0, [I

    move-object v6, v5

    new-array v5, p0, [I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p0, :cond_0

    invoke-virtual {v6, v0}, LJ/B;->g(I)I

    move-result v8

    invoke-virtual {v6, p1}, LJ/B;->g(I)I

    move-result v9

    aput v8, v4, v7

    aput v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lp0/l;

    invoke-direct/range {v0 .. v5}, Lp0/l;-><init>(III[I[I)V

    return-object v0
.end method

.method public static M(ILJ/D;)Lp0/m;
    .locals 4

    new-array v0, p0, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p0}, LJ/D;->k(I[BI)V

    invoke-static {v0, v1}, Lp0/h;->X([BI)I

    move-result p1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v1, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 p1, p1, 0x1

    if-gt p0, p1, :cond_0

    sget-object p0, LJ/W;->b:[B

    goto :goto_0

    :cond_0
    invoke-static {v0, p1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    :goto_0
    new-instance p1, Lp0/m;

    invoke-direct {p1, v2, p0}, Lp0/m;-><init>(Ljava/lang/String;[B)V

    return-object p1
.end method

.method public static N([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-le p2, p1, :cond_1

    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static O(ILJ/D;Ljava/lang/String;)Lp0/n;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, LJ/D;->A()I

    move-result v2

    sub-int/2addr p0, v1

    new-array v1, p0, [B

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, p0}, LJ/D;->k(I[BI)V

    invoke-static {v2, v1, v3}, Lp0/h;->P(I[BI)Lu1/C0;

    move-result-object p0

    new-instance p1, Lp0/n;

    invoke-direct {p1, p2, v0, p0}, Lp0/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lu1/C0;)V

    return-object p1
.end method

.method public static P(I[BI)Lu1/C0;
    .locals 6

    array-length v0, p1

    const-string v1, ""

    if-lt p2, v0, :cond_0

    invoke-static {v1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    invoke-static {p2, p1, p0}, Lp0/h;->W(I[BI)I

    move-result v2

    :goto_0
    if-ge p2, v2, :cond_1

    new-instance v3, Ljava/lang/String;

    sub-int v4, v2, p2

    invoke-static {p0}, Lp0/h;->U(I)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, p1, p2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Lu1/I;->c(Ljava/lang/Object;)V

    invoke-static {p0}, Lp0/h;->T(I)I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p2, p1, p0}, Lp0/h;->W(I[BI)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static Q(ILJ/D;)Lp0/n;
    .locals 4

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, LJ/D;->A()I

    move-result v1

    sub-int/2addr p0, v0

    new-array v0, p0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, p0}, LJ/D;->k(I[BI)V

    invoke-static {v2, v0, v1}, Lp0/h;->W(I[BI)I

    move-result p0

    new-instance p1, Ljava/lang/String;

    invoke-static {v1}, Lp0/h;->U(I)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {p1, v0, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v1}, Lp0/h;->T(I)I

    move-result v2

    add-int/2addr v2, p0

    invoke-static {v1, v0, v2}, Lp0/h;->P(I[BI)Lu1/C0;

    move-result-object p0

    new-instance v0, Lp0/n;

    const-string v1, "TXXX"

    invoke-direct {v0, v1, p1, p0}, Lp0/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lu1/C0;)V

    return-object v0
.end method

.method public static R(ILJ/D;Ljava/lang/String;)Lp0/o;
    .locals 3

    new-array v0, p0, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p0}, LJ/D;->k(I[BI)V

    invoke-static {v0, v1}, Lp0/h;->X([BI)I

    move-result p0

    new-instance p1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    new-instance p0, Lp0/o;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lp0/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static S(ILJ/D;)Lp0/o;
    .locals 4

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, LJ/D;->A()I

    move-result v1

    sub-int/2addr p0, v0

    new-array v0, p0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, p0}, LJ/D;->k(I[BI)V

    invoke-static {v2, v0, v1}, Lp0/h;->W(I[BI)I

    move-result p0

    new-instance p1, Ljava/lang/String;

    invoke-static {v1}, Lp0/h;->U(I)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {p1, v0, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v1}, Lp0/h;->T(I)I

    move-result v1

    add-int/2addr v1, p0

    invoke-static {v0, v1}, Lp0/h;->X([BI)I

    move-result p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, p0, v2}, Lp0/h;->N([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lp0/o;

    const-string v1, "WXXX"

    invoke-direct {v0, v1, p1, p0}, Lp0/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static T(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static U(I)Ljava/nio/charset/Charset;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object p0

    :cond_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0

    :cond_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    return-object p0

    :cond_2
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public static V(IIIII)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%c%c%c"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%c%c%c%c"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static W(I[BI)I
    .locals 2

    invoke-static {p1, p0}, Lp0/h;->X([BI)I

    move-result v0

    if-eqz p2, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    if-ge v0, p2, :cond_2

    sub-int p2, v0, p0

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1

    add-int/lit8 p2, v0, 0x1

    aget-byte p2, p1, p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lp0/h;->X([BI)I

    move-result v0

    goto :goto_0

    :cond_2
    array-length p0, p1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static X([BI)I
    .locals 1

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p0

    return p0
.end method

.method public static Y(ILJ/D;)I
    .locals 5

    iget-object v0, p1, LJ/D;->a:[B

    iget p1, p1, LJ/D;->b:I

    move v1, p1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    add-int v3, p1, p0

    if-ge v2, v3, :cond_1

    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    sub-int v3, v1, p1

    add-int/lit8 v1, v1, 0x2

    sub-int v3, p0, v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, p0, -0x1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static Z(LJ/D;IIZ)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget v2, v1, LJ/D;->b:I

    :goto_0
    :try_start_0
    invoke-virtual {v1}, LJ/D;->a()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_c

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_0

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v7

    invoke-virtual {v1}, LJ/D;->C()J

    move-result-wide v8

    invoke-virtual {v1}, LJ/D;->H()I

    move-result v10

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v1}, LJ/D;->D()I

    move-result v7

    invoke-virtual {v1}, LJ/D;->D()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    move v10, v6

    :goto_1
    const-wide/16 v11, 0x0

    if-nez v7, :cond_1

    cmp-long v7, v8, v11

    if-nez v7, :cond_1

    if-nez v10, :cond_1

    invoke-virtual {v1, v2}, LJ/D;->N(I)V

    return v4

    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_3

    if-nez p3, :cond_3

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v11, v13, v11

    if-eqz v11, :cond_2

    invoke-virtual {v1, v2}, LJ/D;->N(I)V

    return v6

    :cond_2
    const-wide/16 v11, 0xff

    and-long v13, v8, v11

    const/16 v15, 0x8

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0x7

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x10

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0xe

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x18

    shr-long/2addr v8, v15

    and-long/2addr v8, v11

    const/16 v11, 0x15

    shl-long/2addr v8, v11

    or-long/2addr v8, v13

    :cond_3
    if-ne v0, v7, :cond_6

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    and-int/lit8 v7, v10, 0x1

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    move v4, v6

    goto :goto_4

    :cond_6
    if-ne v0, v3, :cond_8

    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_3

    :cond_7
    move v3, v6

    :goto_3
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_8
    move v3, v6

    move v4, v3

    :goto_4
    if-eqz v4, :cond_9

    add-int/lit8 v3, v3, 0x4

    :cond_9
    int-to-long v3, v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_a

    invoke-virtual {v1, v2}, LJ/D;->N(I)V

    return v6

    :cond_a
    :try_start_1
    invoke-virtual {v1}, LJ/D;->a()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    cmp-long v3, v3, v8

    if-gez v3, :cond_b

    invoke-virtual {v1, v2}, LJ/D;->N(I)V

    return v6

    :cond_b
    long-to-int v3, v8

    :try_start_2
    invoke-virtual {v1, v3}, LJ/D;->O(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v1, v2}, LJ/D;->N(I)V

    return v4

    :goto_5
    invoke-virtual {v1, v2}, LJ/D;->N(I)V

    throw v0
.end method


# virtual methods
.method public final E([BI)LG/V;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, LJ/D;

    invoke-direct {v1, p1, p2}, LJ/D;-><init>([BI)V

    invoke-virtual {v1}, LJ/D;->a()I

    move-result p1

    const/4 p2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "Id3Decoder"

    const/16 v7, 0xa

    if-ge p1, v7, :cond_0

    const-string p1, "Data too short to be an ID3 tag"

    invoke-static {v6, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v10, v5

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, LJ/D;->D()I

    move-result p1

    const v8, 0x494433

    if-eq p1, v8, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v8, "%06X"

    invoke-static {v8, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "Unexpected first three bytes of ID3 tag header: 0x"

    invoke-virtual {v8, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, LJ/D;->A()I

    move-result p1

    if-lt p1, p2, :cond_7

    if-gt p1, v4, :cond_7

    invoke-virtual {v1, v3}, LJ/D;->O(I)V

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v8

    invoke-virtual {v1}, LJ/D;->z()I

    move-result v9

    if-ne p1, p2, :cond_2

    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_5

    const-string p1, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v6, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v10, 0x3

    if-ne p1, v10, :cond_3

    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_5

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v10

    invoke-virtual {v1, v10}, LJ/D;->O(I)V

    add-int/2addr v10, v4

    sub-int/2addr v9, v10

    goto :goto_1

    :cond_3
    if-ne p1, v4, :cond_5

    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_4

    invoke-virtual {v1}, LJ/D;->z()I

    move-result v10

    add-int/lit8 v11, v10, -0x4

    invoke-virtual {v1, v11}, LJ/D;->O(I)V

    sub-int/2addr v9, v10

    :cond_4
    and-int/lit8 v10, v8, 0x10

    if-eqz v10, :cond_5

    add-int/lit8 v9, v9, -0xa

    :cond_5
    :goto_1
    if-ge p1, v4, :cond_6

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_6

    move v8, v3

    goto :goto_2

    :cond_6
    move v8, v2

    :goto_2
    new-instance v10, Lp0/g;

    invoke-direct {v10, p1, v9, v8}, Lp0/g;-><init>(IIZ)V

    goto :goto_3

    :cond_7
    const-string v8, "Skipped ID3 tag with unsupported majorVersion="

    invoke-static {v8, v6, p1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :goto_3
    if-nez v10, :cond_8

    return-object v5

    :cond_8
    iget p1, v10, Lp0/g;->a:I

    iget v8, v1, LJ/D;->b:I

    if-ne p1, p2, :cond_9

    const/4 v7, 0x6

    :cond_9
    iget p2, v10, Lp0/g;->c:I

    iget-boolean v9, v10, Lp0/g;->b:Z

    if-eqz v9, :cond_a

    invoke-static {p2, v1}, Lp0/h;->Y(ILJ/D;)I

    move-result p2

    :cond_a
    add-int/2addr v8, p2

    invoke-virtual {v1, v8}, LJ/D;->M(I)V

    invoke-static {v1, p1, v7, v2}, Lp0/h;->Z(LJ/D;IIZ)Z

    move-result p2

    if-nez p2, :cond_c

    if-ne p1, v4, :cond_b

    invoke-static {v1, v4, v7, v3}, Lp0/h;->Z(LJ/D;IIZ)Z

    move-result p2

    if-eqz p2, :cond_b

    move v2, v3

    goto :goto_4

    :cond_b
    const-string p2, "Failed to validate ID3 tag with majorVersion="

    invoke-static {p2, v6, p1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v5

    :cond_c
    :goto_4
    invoke-virtual {v1}, LJ/D;->a()I

    move-result p2

    if-lt p2, v7, :cond_d

    iget-object p2, p0, Lp0/h;->c:Lorg/mozilla/javascript/typedarrays/c;

    invoke-static {p1, v1, v2, v7, p2}, Lp0/h;->J(ILJ/D;ZILorg/mozilla/javascript/typedarrays/c;)Lp0/i;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    new-instance p1, LG/V;

    invoke-direct {p1, v0}, LG/V;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final i(Lk0/c;Ljava/nio/ByteBuffer;)LG/V;
    .locals 0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lp0/h;->E([BI)LG/V;

    move-result-object p1

    return-object p1
.end method
