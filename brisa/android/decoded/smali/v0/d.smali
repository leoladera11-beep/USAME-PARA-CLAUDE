.class public abstract Lv0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "OpusHead"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lv0/d;->a:[B

    return-void
.end method

.method public static a(LJ/D;)V
    .locals 3

    iget v0, p0, LJ/D;->b:I

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, LJ/D;->O(I)V

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    invoke-virtual {p0, v0}, LJ/D;->N(I)V

    return-void
.end method

.method public static b(LJ/D;IIIILjava/lang/String;ZLG/s;LJ/Q;I)V
    .locals 46

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    sget-object v7, Lb0/a;->f:[I

    sget-object v8, Lb0/a;->d:[I

    add-int/lit8 v9, v2, 0x10

    invoke-virtual {v0, v9}, LJ/D;->N(I)V

    const/4 v9, 0x6

    const/16 v10, 0x8

    if-eqz p6, :cond_0

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v12

    invoke-virtual {v0, v9}, LJ/D;->O(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v10}, LJ/D;->O(I)V

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v11, 0x1

    const/16 v15, 0x10

    if-eqz v12, :cond_1

    if-ne v12, v11, :cond_2

    :cond_1
    move/from16 v18, v13

    move/from16 v19, v14

    goto :goto_7

    :cond_2
    if-ne v12, v14, :cond_a3

    invoke-virtual {v0, v15}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->u()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v17

    move/from16 v19, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v12, v14

    invoke-virtual {v0}, LJ/D;->E()I

    move-result v14

    invoke-virtual {v0, v13}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->E()I

    move-result v15

    invoke-virtual {v0}, LJ/D;->E()I

    move-result v17

    and-int/lit8 v18, v17, 0x1

    if-eqz v18, :cond_3

    move/from16 v18, v11

    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    :goto_1
    and-int/lit8 v17, v17, 0x2

    if-eqz v17, :cond_4

    move/from16 v17, v11

    goto :goto_2

    :cond_4
    const/16 v17, 0x0

    :goto_2
    if-eqz v18, :cond_6

    if-eqz v17, :cond_5

    sget-object v17, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_3
    move/from16 v18, v13

    move-object/from16 v13, v17

    goto :goto_4

    :cond_5
    sget-object v17, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_3

    :goto_4
    invoke-static {v15, v13}, LJ/W;->t(ILjava/nio/ByteOrder;)I

    move-result v13

    goto :goto_6

    :cond_6
    move/from16 v18, v13

    if-eqz v17, :cond_7

    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_5

    :cond_7
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_5
    invoke-static {v15, v13}, LJ/W;->v(ILjava/nio/ByteOrder;)I

    move-result v13

    :goto_6
    if-nez v13, :cond_8

    const/4 v13, -0x1

    :cond_8
    invoke-virtual {v0, v10}, LJ/D;->O(I)V

    const/4 v15, 0x0

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, LJ/D;->H()I

    move-result v13

    invoke-virtual {v0, v9}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->B()I

    move-result v14

    iget v15, v0, LJ/D;->b:I

    add-int/lit8 v15, v15, -0x4

    invoke-virtual {v0, v15}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v15

    if-ne v12, v11, :cond_9

    const/16 v12, 0x10

    invoke-virtual {v0, v12}, LJ/D;->O(I)V

    :cond_9
    move v12, v14

    move v14, v13

    const/4 v13, -0x1

    :goto_8
    const v9, 0x73617762

    const v10, 0x73616d72

    const v11, 0x69616d66

    if-ne v1, v11, :cond_a

    const/4 v12, -0x1

    const/4 v14, -0x1

    goto :goto_a

    :cond_a
    if-ne v1, v10, :cond_b

    const/16 v12, 0x1f40

    :goto_9
    const/4 v14, 0x1

    goto :goto_a

    :cond_b
    if-ne v1, v9, :cond_c

    const/16 v12, 0x3e80

    goto :goto_9

    :cond_c
    :goto_a
    iget v11, v0, LJ/D;->b:I

    const v9, 0x656e6361

    if-ne v1, v9, :cond_f

    invoke-static {v0, v2, v3}, Lv0/d;->h(LJ/D;II)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v5, :cond_d

    const/4 v10, 0x0

    goto :goto_b

    :cond_d
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lv0/u;

    iget-object v10, v10, Lv0/u;->b:Ljava/lang/String;

    invoke-virtual {v5, v10}, LG/s;->a(Ljava/lang/String;)LG/s;

    move-result-object v5

    move-object v10, v5

    :goto_b
    iget-object v5, v6, LJ/Q;->c:Ljava/lang/Object;

    check-cast v5, [Lv0/u;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lv0/u;

    aput-object v9, v5, p9

    goto :goto_c

    :cond_e
    move-object v10, v5

    :goto_c
    invoke-virtual {v0, v11}, LJ/D;->N(I)V

    goto :goto_d

    :cond_f
    move-object v10, v5

    :goto_d
    const v5, 0x61632d33

    const-string v9, "audio/mhm1"

    const-string v25, "audio/ac4"

    const-string v26, "audio/eac3"

    const-string v27, "audio/ac3"

    const-string v28, "audio/raw"

    if-ne v1, v5, :cond_10

    move-object/from16 v5, v27

    goto/16 :goto_12

    :cond_10
    const v5, 0x65632d33

    if-ne v1, v5, :cond_11

    move-object/from16 v5, v26

    goto/16 :goto_12

    :cond_11
    const v5, 0x61632d34

    if-ne v1, v5, :cond_12

    move-object/from16 v5, v25

    goto/16 :goto_12

    :cond_12
    const v5, 0x64747363

    if-ne v1, v5, :cond_13

    const-string v5, "audio/vnd.dts"

    goto/16 :goto_12

    :cond_13
    const v5, 0x64747368

    if-eq v1, v5, :cond_28

    const v5, 0x6474736c

    if-ne v1, v5, :cond_14

    goto/16 :goto_11

    :cond_14
    const v5, 0x64747365

    if-ne v1, v5, :cond_15

    const-string v5, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_12

    :cond_15
    const v5, 0x64747378

    if-ne v1, v5, :cond_16

    const-string v5, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_12

    :cond_16
    const v5, 0x73616d72

    if-ne v1, v5, :cond_17

    const-string v5, "audio/3gpp"

    goto/16 :goto_12

    :cond_17
    const v5, 0x73617762

    if-ne v1, v5, :cond_18

    const-string v5, "audio/amr-wb"

    goto/16 :goto_12

    :cond_18
    const v5, 0x736f7774

    if-ne v1, v5, :cond_1a

    :goto_e
    move/from16 v13, v19

    :cond_19
    :goto_f
    move-object/from16 v5, v28

    goto/16 :goto_12

    :cond_1a
    const v5, 0x74776f73

    if-ne v1, v5, :cond_1b

    const/high16 v5, 0x10000000

    move v13, v5

    goto :goto_f

    :cond_1b
    const v5, 0x6c70636d

    if-ne v1, v5, :cond_1c

    const/4 v5, -0x1

    if-ne v13, v5, :cond_19

    goto :goto_e

    :cond_1c
    const v5, 0x2e6d7032

    if-eq v1, v5, :cond_27

    const v5, 0x2e6d7033

    if-ne v1, v5, :cond_1d

    goto :goto_10

    :cond_1d
    const v5, 0x6d686131

    if-ne v1, v5, :cond_1e

    const-string v5, "audio/mha1"

    goto :goto_12

    :cond_1e
    const v5, 0x6d686d31

    if-ne v1, v5, :cond_1f

    move-object v5, v9

    goto :goto_12

    :cond_1f
    const v5, 0x616c6163

    if-ne v1, v5, :cond_20

    const-string v5, "audio/alac"

    goto :goto_12

    :cond_20
    const v5, 0x616c6177

    if-ne v1, v5, :cond_21

    const-string v5, "audio/g711-alaw"

    goto :goto_12

    :cond_21
    const v5, 0x756c6177

    if-ne v1, v5, :cond_22

    const-string v5, "audio/g711-mlaw"

    goto :goto_12

    :cond_22
    const v5, 0x4f707573

    if-ne v1, v5, :cond_23

    const-string v5, "audio/opus"

    goto :goto_12

    :cond_23
    const v5, 0x664c6143

    if-ne v1, v5, :cond_24

    const-string v5, "audio/flac"

    goto :goto_12

    :cond_24
    const v5, 0x6d6c7061

    if-ne v1, v5, :cond_25

    const-string v5, "audio/true-hd"

    goto :goto_12

    :cond_25
    const v5, 0x69616d66

    if-ne v1, v5, :cond_26

    const-string v5, "audio/iamf"

    goto :goto_12

    :cond_26
    const/4 v5, 0x0

    goto :goto_12

    :cond_27
    :goto_10
    const-string v5, "audio/mpeg"

    goto :goto_12

    :cond_28
    :goto_11
    const-string v5, "audio/vnd.dts.hd"

    :goto_12
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    const/16 p7, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v29, 0x0

    :goto_13
    sub-int v8, v11, p2

    if-ge v8, v3, :cond_a0

    invoke-virtual {v0, v11}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v8

    if-lez v8, :cond_29

    const/4 v3, 0x1

    :goto_14
    move/from16 v24, v13

    goto :goto_15

    :cond_29
    const/4 v3, 0x0

    goto :goto_14

    :goto_15
    const-string v13, "childAtomSize must be positive"

    invoke-static {v13, v3}, Lb0/a;->b(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v3

    move-object/from16 p9, v2

    const v2, 0x6d686143

    if-ne v3, v2, :cond_2d

    add-int/lit8 v2, v11, 0x8

    invoke-virtual {v0, v2}, LJ/D;->N(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v3

    invoke-virtual {v0, v2}, LJ/D;->O(I)V

    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mhm1.%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_2a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mha1.%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_16
    invoke-virtual {v0}, LJ/D;->H()I

    move-result v3

    new-array v13, v3, [B

    move-object/from16 p9, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v13, v3}, LJ/D;->k(I[BI)V

    if-nez v7, :cond_2b

    invoke-static {v13}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v3

    move-object v7, v3

    goto :goto_17

    :cond_2b
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v13, v3}, Lu1/P;->p(Ljava/lang/Object;Ljava/lang/Object;)Lu1/C0;

    move-result-object v2

    move-object v7, v2

    :cond_2c
    :goto_17
    move-object/from16 v0, p7

    move-object/from16 v2, p9

    move-object/from16 v34, v5

    move-object/from16 v36, v9

    :goto_18
    const/4 v13, 0x0

    const/16 v17, 0x6

    const/16 v20, 0x8

    move v5, v1

    goto/16 :goto_62

    :cond_2d
    const v2, 0x6d686150

    if-ne v3, v2, :cond_2f

    add-int/lit8 v2, v11, 0x8

    invoke-virtual {v0, v2}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v2

    if-lez v2, :cond_2c

    new-array v3, v2, [B

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v3, v2}, LJ/D;->k(I[BI)V

    if-nez v7, :cond_2e

    invoke-static {v3}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v7

    goto :goto_17

    :cond_2e
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v3}, Lu1/P;->p(Ljava/lang/Object;Ljava/lang/Object;)Lu1/C0;

    move-result-object v7

    goto :goto_17

    :cond_2f
    const v2, 0x65736473

    if-eq v3, v2, :cond_30

    if-eqz p6, :cond_31

    const v2, 0x77617665

    if-ne v3, v2, :cond_31

    :cond_30
    move-object/from16 v34, v5

    move-object/from16 v33, v7

    move/from16 v32, v8

    move-object/from16 v36, v9

    move/from16 v40, v11

    move v2, v12

    const/16 v12, 0x10

    const/16 v17, 0x6

    const/16 v20, 0x8

    move v5, v1

    const v1, 0x65736473

    goto/16 :goto_54

    :cond_31
    const v2, 0x62747274

    if-ne v3, v2, :cond_32

    add-int/lit8 v2, v11, 0x8

    invoke-virtual {v0, v2}, LJ/D;->N(I)V

    move/from16 v2, v18

    invoke-virtual {v0, v2}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v2

    move-object/from16 v33, v7

    move/from16 v32, v8

    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v7

    new-instance v13, LZ/x;

    invoke-direct {v13, v7, v8, v2, v3}, LZ/x;-><init>(JJ)V

    move-object/from16 v0, p7

    move-object/from16 v2, p9

    move-object/from16 v34, v5

    move-object/from16 v36, v9

    move-object/from16 v29, v13

    move/from16 v8, v32

    move-object/from16 v7, v33

    goto/16 :goto_18

    :cond_32
    move-object/from16 v33, v7

    move/from16 v32, v8

    const v2, 0x64616333

    const/4 v8, 0x3

    if-ne v3, v2, :cond_34

    add-int/lit8 v2, v11, 0x8

    invoke-virtual {v0, v2}, LJ/D;->N(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, LJ/B;

    invoke-direct {v3}, LJ/B;-><init>()V

    invoke-virtual {v3, v0}, LJ/B;->k(LJ/D;)V

    move/from16 v13, v19

    invoke-virtual {v3, v13}, LJ/B;->g(I)I

    move-result v30

    aget v13, v23, v30

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, LJ/B;->o(I)V

    invoke-virtual {v3, v8}, LJ/B;->g(I)I

    move-result v7

    aget v7, v22, v7

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, LJ/B;->g(I)I

    move-result v30

    if-eqz v30, :cond_33

    add-int/lit8 v7, v7, 0x1

    :cond_33
    const/4 v8, 0x5

    invoke-virtual {v3, v8}, LJ/B;->g(I)I

    move-result v8

    sget-object v30, Lb0/a;->g:[I

    aget v8, v30, v8

    mul-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v3}, LJ/B;->c()V

    invoke-virtual {v3}, LJ/B;->d()I

    move-result v3

    invoke-virtual {v0, v3}, LJ/D;->N(I)V

    new-instance v3, LG/w;

    invoke-direct {v3}, LG/w;-><init>()V

    iput-object v2, v3, LG/w;->a:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, LG/w;->o:Ljava/lang/String;

    iput v7, v3, LG/w;->I:I

    iput v13, v3, LG/w;->K:I

    iput-object v10, v3, LG/w;->s:LG/s;

    iput-object v4, v3, LG/w;->d:Ljava/lang/String;

    iput v8, v3, LG/w;->i:I

    iput v8, v3, LG/w;->j:I

    new-instance v2, LG/x;

    invoke-direct {v2, v3}, LG/x;-><init>(LG/w;)V

    iput-object v2, v6, LJ/Q;->d:Ljava/lang/Object;

    move-object/from16 v34, v5

    move-object/from16 v36, v9

    move/from16 v40, v11

    move v2, v12

    const/16 v12, 0x10

    const/16 v17, 0x6

    const/16 v20, 0x8

    move v5, v1

    goto/16 :goto_53

    :cond_34
    const v2, 0x64656333

    const/16 v13, 0xd

    if-ne v3, v2, :cond_39

    add-int/lit8 v2, v11, 0x8

    invoke-virtual {v0, v2}, LJ/D;->N(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, LJ/B;

    invoke-direct {v3}, LJ/B;-><init>()V

    invoke-virtual {v3, v0}, LJ/B;->k(LJ/D;)V

    invoke-virtual {v3, v13}, LJ/B;->g(I)I

    move-result v13

    mul-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v3, v8}, LJ/B;->o(I)V

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, LJ/B;->g(I)I

    move-result v30

    aget v7, v23, v30

    move-object/from16 v34, v5

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, LJ/B;->o(I)V

    invoke-virtual {v3, v8}, LJ/B;->g(I)I

    move-result v5

    aget v5, v22, v5

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, LJ/B;->g(I)I

    move-result v21

    if-eqz v21, :cond_35

    add-int/lit8 v5, v5, 0x1

    :cond_35
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, LJ/B;->o(I)V

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, LJ/B;->g(I)I

    move-result v30

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, LJ/B;->o(I)V

    move/from16 v21, v5

    if-lez v30, :cond_37

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, LJ/B;->o(I)V

    invoke-virtual {v3, v8}, LJ/B;->g(I)I

    move-result v5

    if-eqz v5, :cond_36

    add-int/lit8 v5, v21, 0x2

    goto :goto_19

    :cond_36
    move/from16 v5, v21

    :goto_19
    invoke-virtual {v3, v8}, LJ/B;->o(I)V

    :cond_37
    invoke-virtual {v3}, LJ/B;->b()I

    move-result v8

    move-object/from16 v36, v9

    const/4 v9, 0x7

    if-le v8, v9, :cond_38

    invoke-virtual {v3, v9}, LJ/B;->o(I)V

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, LJ/B;->g(I)I

    move-result v9

    if-eqz v9, :cond_38

    const-string v8, "audio/eac3-joc"

    goto :goto_1a

    :cond_38
    move-object/from16 v8, v26

    :goto_1a
    invoke-virtual {v3}, LJ/B;->c()V

    invoke-virtual {v3}, LJ/B;->d()I

    move-result v3

    invoke-virtual {v0, v3}, LJ/D;->N(I)V

    new-instance v3, LG/w;

    invoke-direct {v3}, LG/w;-><init>()V

    iput-object v2, v3, LG/w;->a:Ljava/lang/String;

    invoke-static {v8}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, LG/w;->o:Ljava/lang/String;

    iput v5, v3, LG/w;->I:I

    iput v7, v3, LG/w;->K:I

    iput-object v10, v3, LG/w;->s:LG/s;

    iput-object v4, v3, LG/w;->d:Ljava/lang/String;

    iput v13, v3, LG/w;->j:I

    new-instance v2, LG/x;

    invoke-direct {v2, v3}, LG/x;-><init>(LG/w;)V

    iput-object v2, v6, LJ/Q;->d:Ljava/lang/Object;

    move v5, v1

    move/from16 v40, v11

    move v2, v12

    const/16 v12, 0x10

    const/16 v17, 0x6

    const/16 v20, 0x8

    goto/16 :goto_53

    :cond_39
    move-object/from16 v34, v5

    move-object/from16 v36, v9

    const v2, 0x64616334

    const/16 v9, 0x9

    if-ne v3, v2, :cond_75

    add-int/lit8 v2, v11, 0x8

    invoke-virtual {v0, v2}, LJ/D;->N(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, LJ/B;

    invoke-direct {v3}, LJ/B;-><init>()V

    invoke-virtual {v3, v0}, LJ/B;->k(LJ/D;)V

    invoke-virtual {v3}, LJ/B;->b()I

    move-result v37

    const/4 v13, 0x3

    invoke-virtual {v3, v13}, LJ/B;->g(I)I

    move-result v7

    const/4 v13, 0x1

    if-gt v7, v13, :cond_74

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, LJ/B;->g(I)I

    move-result v8

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v5

    if-eqz v5, :cond_3a

    const v5, 0xbb80

    :goto_1b
    const/4 v13, 0x4

    goto :goto_1c

    :cond_3a
    const v5, 0xac44

    goto :goto_1b

    :goto_1c
    invoke-virtual {v3, v13}, LJ/B;->o(I)V

    invoke-virtual {v3, v9}, LJ/B;->g(I)I

    move-result v9

    const/4 v13, 0x1

    if-le v8, v13, :cond_3c

    if-eqz v7, :cond_3b

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v13

    if-eqz v13, :cond_3c

    const/16 v13, 0x10

    invoke-virtual {v3, v13}, LJ/B;->o(I)V

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v13

    if-eqz v13, :cond_3c

    const/16 v13, 0x80

    invoke-virtual {v3, v13}, LJ/B;->o(I)V

    goto :goto_1d

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_3c
    :goto_1d
    const/4 v13, 0x1

    if-ne v7, v13, :cond_3e

    invoke-virtual {v3}, LJ/B;->b()I

    move-result v13

    move/from16 v39, v8

    const/16 v8, 0x42

    if-lt v13, v8, :cond_3d

    invoke-virtual {v3, v8}, LJ/B;->o(I)V

    invoke-virtual {v3}, LJ/B;->c()V

    goto :goto_1e

    :cond_3d
    const-string v0, "Invalid AC-4 DSI bitrate."

    invoke-static {v0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_3e
    move/from16 v39, v8

    :goto_1e
    new-instance v8, Lb0/b;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x1

    iput-boolean v13, v8, Lb0/b;->a:Z

    const/4 v13, -0x1

    iput v13, v8, Lb0/b;->b:I

    iput v13, v8, Lb0/b;->c:I

    const/4 v13, 0x1

    iput-boolean v13, v8, Lb0/b;->d:Z

    move/from16 v40, v11

    const/4 v11, 0x2

    iput v11, v8, Lb0/b;->e:I

    iput v13, v8, Lb0/b;->f:I

    const/4 v13, 0x0

    iput v13, v8, Lb0/b;->g:I

    const/4 v11, 0x0

    :goto_1f
    if-ge v11, v9, :cond_64

    if-nez v7, :cond_3f

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v9

    const/4 v13, 0x5

    invoke-virtual {v3, v13}, LJ/B;->g(I)I

    move-result v30

    invoke-virtual {v3, v13}, LJ/B;->g(I)I

    move-result v38

    move/from16 v42, v12

    move/from16 v12, v38

    const/4 v13, 0x0

    const/16 v41, 0x0

    move/from16 v38, v9

    move/from16 v9, v30

    const/16 v30, 0x0

    goto :goto_21

    :cond_3f
    move/from16 v41, v9

    const/16 v13, 0x8

    invoke-virtual {v3, v13}, LJ/B;->g(I)I

    move-result v9

    move/from16 v42, v12

    invoke-virtual {v3, v13}, LJ/B;->g(I)I

    move-result v12

    const/16 v13, 0xff

    if-ne v12, v13, :cond_40

    const/16 v13, 0x10

    invoke-virtual {v3, v13}, LJ/B;->g(I)I

    move-result v43

    add-int v43, v43, v12

    move/from16 v12, v43

    :cond_40
    const/4 v13, 0x2

    if-le v9, v13, :cond_41

    mul-int/lit8 v12, v12, 0x8

    invoke-virtual {v3, v12}, LJ/B;->o(I)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v41

    move/from16 v12, v42

    goto :goto_1f

    :cond_41
    invoke-virtual {v3}, LJ/B;->b()I

    move-result v13

    sub-int v13, v37, v13

    const/16 v20, 0x8

    div-int/lit8 v13, v13, 0x8

    move/from16 v41, v9

    move/from16 v43, v12

    const/4 v9, 0x5

    invoke-virtual {v3, v9}, LJ/B;->g(I)I

    move-result v12

    const/16 v9, 0x1f

    if-ne v12, v9, :cond_42

    const/4 v9, 0x1

    goto :goto_20

    :cond_42
    const/4 v9, 0x0

    :goto_20
    move/from16 v30, v41

    move/from16 v41, v9

    move v9, v12

    move/from16 v12, v30

    move/from16 v30, v13

    move/from16 v13, v43

    const/16 v38, 0x0

    :goto_21
    iput v12, v8, Lb0/b;->f:I

    move/from16 v43, v14

    if-nez v38, :cond_43

    if-nez v41, :cond_43

    const/4 v14, 0x6

    if-ne v9, v14, :cond_43

    move/from16 v44, v1

    move/from16 v45, v12

    const/4 v1, 0x1

    goto/16 :goto_34

    :cond_43
    move/from16 v44, v1

    const/4 v14, 0x3

    invoke-virtual {v3, v14}, LJ/B;->g(I)I

    move-result v1

    iput v1, v8, Lb0/b;->g:I

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x5

    invoke-virtual {v3, v1}, LJ/B;->o(I)V

    :cond_44
    const/4 v1, 0x2

    invoke-virtual {v3, v1}, LJ/B;->o(I)V

    const/4 v14, 0x1

    if-ne v7, v14, :cond_45

    if-eq v12, v14, :cond_46

    if-ne v12, v1, :cond_45

    goto :goto_23

    :cond_45
    :goto_22
    const/4 v1, 0x5

    goto :goto_24

    :cond_46
    :goto_23
    invoke-virtual {v3, v1}, LJ/B;->o(I)V

    goto :goto_22

    :goto_24
    invoke-virtual {v3, v1}, LJ/B;->o(I)V

    const/16 v1, 0xa

    invoke-virtual {v3, v1}, LJ/B;->o(I)V

    if-ne v7, v14, :cond_4d

    if-lez v12, :cond_47

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v1

    iput-boolean v1, v8, Lb0/b;->a:Z

    :cond_47
    iget-boolean v1, v8, Lb0/b;->a:Z

    if-eqz v1, :cond_4c

    if-eq v12, v14, :cond_48

    const/4 v1, 0x2

    if-ne v12, v1, :cond_49

    :cond_48
    const/4 v1, 0x5

    goto :goto_26

    :cond_49
    :goto_25
    const/16 v14, 0x18

    goto :goto_27

    :goto_26
    invoke-virtual {v3, v1}, LJ/B;->g(I)I

    move-result v14

    if-ltz v14, :cond_4a

    const/16 v1, 0xf

    if-gt v14, v1, :cond_4a

    iput v14, v8, Lb0/b;->b:I

    :cond_4a
    const/16 v1, 0xb

    if-lt v14, v1, :cond_4b

    const/16 v1, 0xe

    if-gt v14, v1, :cond_4b

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v1

    iput-boolean v1, v8, Lb0/b;->d:Z

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, LJ/B;->g(I)I

    move-result v14

    iput v14, v8, Lb0/b;->e:I

    goto :goto_25

    :cond_4b
    const/4 v1, 0x2

    goto :goto_25

    :goto_27
    invoke-virtual {v3, v14}, LJ/B;->o(I)V

    const/4 v14, 0x1

    goto :goto_28

    :cond_4c
    const/4 v1, 0x2

    :goto_28
    if-eq v12, v14, :cond_4e

    if-ne v12, v1, :cond_4d

    goto :goto_29

    :cond_4d
    move/from16 v45, v12

    goto :goto_2b

    :cond_4e
    :goto_29
    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v14

    if-eqz v14, :cond_4f

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v14

    if-eqz v14, :cond_4f

    invoke-virtual {v3, v1}, LJ/B;->o(I)V

    :cond_4f
    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {v3}, LJ/B;->n()V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, LJ/B;->g(I)I

    move-result v14

    move/from16 v45, v12

    const/4 v12, 0x0

    :goto_2a
    if-ge v12, v14, :cond_50

    invoke-virtual {v3, v1}, LJ/B;->o(I)V

    add-int/lit8 v12, v12, 0x1

    const/16 v1, 0x8

    goto :goto_2a

    :cond_50
    :goto_2b
    if-nez v38, :cond_58

    if-eqz v41, :cond_51

    goto/16 :goto_32

    :cond_51
    invoke-virtual {v3}, LJ/B;->n()V

    if-eqz v9, :cond_56

    const/4 v14, 0x1

    if-eq v9, v14, :cond_56

    const/4 v1, 0x2

    if-eq v9, v1, :cond_56

    const/4 v14, 0x3

    if-eq v9, v14, :cond_54

    const/4 v1, 0x4

    if-eq v9, v1, :cond_54

    const/4 v1, 0x5

    if-eq v9, v1, :cond_52

    const/4 v9, 0x7

    invoke-virtual {v3, v9}, LJ/B;->g(I)I

    move-result v1

    const/4 v9, 0x0

    :goto_2c
    if-ge v9, v1, :cond_5a

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, LJ/B;->o(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    :cond_52
    if-nez v45, :cond_53

    invoke-static {v3, v8}, Lb0/a;->q(LJ/B;Lb0/b;)V

    goto :goto_33

    :cond_53
    const/4 v14, 0x3

    invoke-virtual {v3, v14}, LJ/B;->g(I)I

    move-result v1

    const/4 v9, 0x0

    :goto_2d
    const/16 v19, 0x2

    add-int/lit8 v14, v1, 0x2

    if-ge v9, v14, :cond_5a

    invoke-static {v3, v8}, Lb0/a;->r(LJ/B;Lb0/b;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    :cond_54
    if-nez v45, :cond_55

    const/4 v1, 0x0

    const/4 v14, 0x3

    :goto_2e
    if-ge v1, v14, :cond_5a

    invoke-static {v3, v8}, Lb0/a;->q(LJ/B;Lb0/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_55
    const/4 v1, 0x0

    :goto_2f
    const/4 v14, 0x3

    if-ge v1, v14, :cond_5a

    invoke-static {v3, v8}, Lb0/a;->r(LJ/B;Lb0/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_56
    if-nez v45, :cond_57

    const/4 v1, 0x0

    const/4 v9, 0x2

    :goto_30
    if-ge v1, v9, :cond_5a

    invoke-static {v3, v8}, Lb0/a;->q(LJ/B;Lb0/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_57
    const/4 v1, 0x0

    :goto_31
    const/4 v9, 0x2

    if-ge v1, v9, :cond_5a

    invoke-static {v3, v8}, Lb0/a;->r(LJ/B;Lb0/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_58
    :goto_32
    if-nez v45, :cond_59

    invoke-static {v3, v8}, Lb0/a;->q(LJ/B;Lb0/b;)V

    goto :goto_33

    :cond_59
    invoke-static {v3, v8}, Lb0/a;->r(LJ/B;Lb0/b;)V

    :cond_5a
    :goto_33
    invoke-virtual {v3}, LJ/B;->n()V

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v1

    :goto_34
    const/4 v9, 0x7

    if-eqz v1, :cond_5b

    invoke-virtual {v3, v9}, LJ/B;->g(I)I

    move-result v1

    const/4 v12, 0x0

    :goto_35
    if-ge v12, v1, :cond_5b

    const/16 v14, 0xf

    invoke-virtual {v3, v14}, LJ/B;->o(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_35

    :cond_5b
    if-lez v45, :cond_60

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {v3}, LJ/B;->b()I

    move-result v1

    const/16 v12, 0x42

    if-ge v1, v12, :cond_5c

    const/4 v1, 0x0

    goto :goto_36

    :cond_5c
    invoke-virtual {v3, v12}, LJ/B;->o(I)V

    const/4 v1, 0x1

    :goto_36
    if-eqz v1, :cond_5d

    goto :goto_37

    :cond_5d
    const-string v0, "Can\'t parse bitrate DSI."

    invoke-static {v0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_5e
    :goto_37
    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {v3}, LJ/B;->c()V

    const/16 v12, 0x10

    invoke-virtual {v3, v12}, LJ/B;->g(I)I

    move-result v1

    invoke-virtual {v3, v1}, LJ/B;->p(I)V

    const/4 v1, 0x5

    invoke-virtual {v3, v1}, LJ/B;->g(I)I

    move-result v14

    const/4 v1, 0x0

    :goto_38
    if-ge v1, v14, :cond_5f

    const/4 v9, 0x3

    invoke-virtual {v3, v9}, LJ/B;->o(I)V

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, LJ/B;->o(I)V

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x7

    goto :goto_38

    :cond_5f
    const/16 v9, 0x8

    goto :goto_39

    :cond_60
    const/16 v9, 0x8

    const/16 v12, 0x10

    :goto_39
    invoke-virtual {v3}, LJ/B;->c()V

    const/4 v14, 0x1

    if-ne v7, v14, :cond_62

    invoke-virtual {v3}, LJ/B;->b()I

    move-result v1

    sub-int v37, v37, v1

    div-int/lit8 v37, v37, 0x8

    sub-int v1, v37, v30

    if-lt v13, v1, :cond_61

    sub-int/2addr v13, v1

    invoke-virtual {v3, v13}, LJ/B;->p(I)V

    goto :goto_3a

    :cond_61
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    invoke-static {v0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_62
    :goto_3a
    iget-boolean v1, v8, Lb0/b;->a:Z

    if-eqz v1, :cond_65

    iget v1, v8, Lb0/b;->b:I

    const/4 v13, -0x1

    if-eq v1, v13, :cond_63

    goto :goto_3b

    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t determine channel mode of presentation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_64
    move/from16 v44, v1

    move/from16 v42, v12

    move/from16 v43, v14

    const/16 v9, 0x8

    const/16 v12, 0x10

    :cond_65
    :goto_3b
    iget-boolean v1, v8, Lb0/b;->a:Z

    const/16 v3, 0xc

    if-eqz v1, :cond_6b

    iget v1, v8, Lb0/b;->b:I

    iget-boolean v7, v8, Lb0/b;->d:Z

    iget v11, v8, Lb0/b;->e:I

    packed-switch v1, :pswitch_data_0

    const/16 v13, 0xb

    const/16 v31, -0x1

    goto :goto_3d

    :pswitch_0
    const/16 v13, 0xb

    const/16 v31, 0x18

    goto :goto_3d

    :pswitch_1
    const/16 v13, 0xb

    const/16 v31, 0xe

    goto :goto_3d

    :pswitch_2
    const/16 v13, 0xb

    const/16 v31, 0xd

    goto :goto_3d

    :pswitch_3
    move/from16 v31, v3

    :goto_3c
    const/16 v13, 0xb

    goto :goto_3d

    :pswitch_4
    const/16 v13, 0xb

    const/16 v31, 0xb

    goto :goto_3d

    :pswitch_5
    move/from16 v31, v9

    goto :goto_3c

    :pswitch_6
    const/16 v13, 0xb

    const/16 v31, 0x7

    goto :goto_3d

    :pswitch_7
    const/16 v13, 0xb

    const/16 v31, 0x6

    goto :goto_3d

    :pswitch_8
    const/16 v13, 0xb

    const/16 v31, 0x5

    goto :goto_3d

    :pswitch_9
    const/16 v13, 0xb

    const/16 v31, 0x3

    goto :goto_3d

    :pswitch_a
    const/16 v13, 0xb

    const/16 v31, 0x2

    goto :goto_3d

    :pswitch_b
    const/16 v13, 0xb

    const/16 v31, 0x1

    :goto_3d
    if-eq v1, v13, :cond_66

    if-eq v1, v3, :cond_66

    const/16 v3, 0xd

    if-eq v1, v3, :cond_66

    const/16 v3, 0xe

    if-ne v1, v3, :cond_6a

    :cond_66
    if-nez v7, :cond_67

    add-int/lit8 v31, v31, -0x2

    :cond_67
    if-eqz v11, :cond_69

    const/4 v13, 0x1

    if-eq v11, v13, :cond_68

    goto :goto_3e

    :cond_68
    add-int/lit8 v31, v31, -0x2

    goto :goto_3e

    :cond_69
    add-int/lit8 v31, v31, -0x4

    :cond_6a
    :goto_3e
    move/from16 v1, v31

    goto :goto_3f

    :cond_6b
    iget v1, v8, Lb0/b;->c:I

    if-lez v1, :cond_6c

    add-int/lit8 v1, v1, 0x1

    iget v3, v8, Lb0/b;->g:I

    const/4 v13, 0x4

    if-ne v3, v13, :cond_72

    const/16 v3, 0x11

    if-ne v1, v3, :cond_72

    const/16 v1, 0x15

    goto :goto_3f

    :cond_6c
    iget v1, v8, Lb0/b;->g:I

    if-eqz v1, :cond_6d

    const/4 v13, 0x1

    if-eq v1, v13, :cond_71

    const/4 v13, 0x2

    if-eq v1, v13, :cond_70

    const/4 v14, 0x3

    if-eq v1, v14, :cond_6f

    const/4 v13, 0x4

    if-eq v1, v13, :cond_6e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AC-4 level "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v8, Lb0/b;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has not been defined."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Ac4Util"

    invoke-static {v3, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    const/4 v1, 0x2

    goto :goto_3f

    :cond_6e
    move v1, v3

    goto :goto_3f

    :cond_6f
    const/16 v1, 0xa

    goto :goto_3f

    :cond_70
    move v1, v9

    goto :goto_3f

    :cond_71
    const/4 v1, 0x6

    :cond_72
    :goto_3f
    if-lez v1, :cond_73

    iget v3, v8, Lb0/b;->f:I

    iget v7, v8, Lb0/b;->g:I

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v8, v3, v7}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v7, LJ/W;->a:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "ac-4.%02d.%02d.%02d"

    invoke-static {v7, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, LG/w;

    invoke-direct {v7}, LG/w;-><init>()V

    iput-object v2, v7, LG/w;->a:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, LG/w;->o:Ljava/lang/String;

    iput v1, v7, LG/w;->I:I

    iput v5, v7, LG/w;->K:I

    iput-object v10, v7, LG/w;->s:LG/s;

    iput-object v4, v7, LG/w;->d:Ljava/lang/String;

    iput-object v3, v7, LG/w;->k:Ljava/lang/String;

    new-instance v1, LG/x;

    invoke-direct {v1, v7}, LG/x;-><init>(LG/w;)V

    iput-object v1, v6, LJ/Q;->d:Ljava/lang/Object;

    move/from16 v20, v9

    move/from16 v2, v42

    move/from16 v14, v43

    move/from16 v5, v44

    const/16 v17, 0x6

    goto/16 :goto_53

    :cond_73
    const-string v0, "Cannot determine channel count of presentation."

    invoke-static {v0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_75
    move/from16 v44, v1

    move/from16 v40, v11

    move/from16 v42, v12

    move/from16 v43, v14

    const/16 v12, 0x10

    const/16 v20, 0x8

    const v1, 0x646d6c70

    if-ne v3, v1, :cond_77

    if-lez v15, :cond_76

    move-object/from16 v0, p7

    move-object/from16 v2, p9

    move v12, v15

    move/from16 v8, v32

    move-object/from16 v7, v33

    move/from16 v11, v40

    move/from16 v5, v44

    const/4 v13, 0x0

    const/4 v14, 0x2

    :goto_40
    const/16 v17, 0x6

    goto/16 :goto_62

    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_77
    const v1, 0x64647473

    if-eq v3, v1, :cond_78

    const v1, 0x75647473

    if-ne v3, v1, :cond_79

    :cond_78
    move/from16 v5, v44

    const/16 v17, 0x6

    goto/16 :goto_52

    :cond_79
    const v1, 0x644f7073

    if-ne v3, v1, :cond_7a

    add-int/lit8 v8, v32, -0x8

    sget-object v1, Lv0/d;->a:[B

    array-length v2, v1

    add-int/2addr v2, v8

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    add-int/lit8 v11, v40, 0x8

    invoke-virtual {v0, v11}, LJ/D;->N(I)V

    array-length v1, v1

    invoke-virtual {v0, v1, v2, v8}, LJ/D;->k(I[BI)V

    invoke-static {v2}, LK/t;->a([B)Ljava/util/ArrayList;

    move-result-object v7

    :goto_41
    move-object/from16 v0, p7

    move-object/from16 v2, p9

    move/from16 v8, v32

    move/from16 v11, v40

    move/from16 v12, v42

    move/from16 v14, v43

    move/from16 v5, v44

    const/4 v13, 0x0

    goto :goto_40

    :cond_7a
    const v1, 0x64664c61

    if-ne v3, v1, :cond_7b

    add-int/lit8 v8, v32, -0xc

    add-int/lit8 v1, v32, -0x8

    new-array v1, v1, [B

    const/16 v2, 0x66

    const/16 v16, 0x0

    aput-byte v2, v1, v16

    const/16 v2, 0x4c

    const/16 v21, 0x1

    aput-byte v2, v1, v21

    const/16 v2, 0x61

    const/16 v19, 0x2

    aput-byte v2, v1, v19

    const/16 v2, 0x43

    const/16 v35, 0x3

    aput-byte v2, v1, v35

    add-int/lit8 v11, v40, 0xc

    invoke-virtual {v0, v11}, LJ/D;->N(I)V

    const/4 v13, 0x4

    invoke-virtual {v0, v13, v1, v8}, LJ/D;->k(I[BI)V

    invoke-static {v1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v7

    goto :goto_41

    :cond_7b
    const v5, 0x616c6163

    if-ne v3, v5, :cond_7d

    add-int/lit8 v8, v32, -0xc

    new-array v1, v8, [B

    add-int/lit8 v11, v40, 0xc

    invoke-virtual {v0, v11}, LJ/D;->N(I)V

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v1, v8}, LJ/D;->k(I[BI)V

    sget-object v2, LJ/h;->a:[B

    new-instance v2, LJ/D;

    invoke-direct {v2, v1}, LJ/D;-><init>([B)V

    const/4 v8, 0x5

    invoke-virtual {v2, v8}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->A()I

    move-result v3

    invoke-virtual {v2, v9}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->A()I

    move-result v7

    const/16 v8, 0x14

    invoke-virtual {v2, v8}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->E()I

    move-result v2

    filled-new-array {v2, v7, v3}, [I

    move-result-object v2

    const/16 v16, 0x0

    aget v3, v2, v16

    const/16 v21, 0x1

    aget v7, v2, v21

    const/16 v19, 0x2

    aget v2, v2, v19

    sget-object v8, LJ/W;->a:Ljava/lang/String;

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v8}, LJ/W;->v(ILjava/nio/ByteOrder;)I

    move-result v2

    if-nez v2, :cond_7c

    const/4 v2, -0x1

    :cond_7c
    invoke-static {v1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v1

    move-object/from16 v0, p7

    move/from16 v24, v2

    move v12, v3

    move v14, v7

    move/from16 v8, v32

    move/from16 v11, v40

    move/from16 v5, v44

    const/4 v13, 0x0

    const/16 v17, 0x6

    move-object/from16 v2, p9

    move-object v7, v1

    goto/16 :goto_62

    :cond_7d
    const v1, 0x69616362

    if-ne v3, v1, :cond_8d

    add-int/lit8 v11, v40, 0x9

    invoke-virtual {v0, v11}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->F()I

    move-result v1

    new-array v2, v1, [B

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v2, v1}, LJ/D;->k(I[BI)V

    sget-object v1, LJ/h;->a:[B

    new-instance v1, LJ/D;

    invoke-direct {v1, v2}, LJ/D;-><init>([B)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_42
    invoke-virtual {v1}, LJ/D;->a()I

    move-result v8

    if-lez v8, :cond_7e

    if-eqz v3, :cond_7f

    if-nez v7, :cond_7e

    goto :goto_43

    :cond_7e
    const/16 v17, 0x6

    goto/16 :goto_4d

    :cond_7f
    :goto_43
    invoke-virtual {v1}, LJ/D;->A()I

    move-result v8

    shr-int/lit8 v9, v8, 0x3

    and-int/lit8 v11, v8, 0x2

    if-eqz v11, :cond_80

    const/4 v11, 0x1

    goto :goto_44

    :cond_80
    const/4 v11, 0x0

    :goto_44
    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_81

    const/4 v8, 0x1

    goto :goto_45

    :cond_81
    const/4 v8, 0x0

    :goto_45
    invoke-virtual {v1}, LJ/D;->F()I

    move-result v13

    const/4 v14, 0x4

    if-le v9, v14, :cond_83

    const/16 v14, 0x18

    if-ge v9, v14, :cond_84

    if-eqz v11, :cond_84

    :goto_46
    invoke-virtual {v1}, LJ/D;->A()I

    move-result v11

    const/16 v5, 0x80

    and-int/2addr v11, v5

    if-eqz v11, :cond_82

    const v5, 0x616c6163

    goto :goto_46

    :cond_82
    :goto_47
    invoke-virtual {v1}, LJ/D;->A()I

    move-result v11

    and-int/2addr v11, v5

    if-eqz v11, :cond_84

    const/16 v5, 0x80

    goto :goto_47

    :cond_83
    const/16 v14, 0x18

    :cond_84
    if-eqz v8, :cond_85

    invoke-virtual {v1}, LJ/D;->F()I

    move-result v5

    invoke-virtual {v1, v5}, LJ/D;->O(I)V

    :cond_85
    iget v5, v1, LJ/D;->b:I

    add-int/2addr v5, v13

    const/16 v8, 0x1f

    if-ne v9, v8, :cond_87

    const/4 v13, 0x4

    invoke-virtual {v1, v13}, LJ/D;->O(I)V

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v3

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v8, LJ/W;->a:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "iamf.%03X.%03X"

    invoke-static {v8, v9, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_86
    const/16 v8, 0x1f

    const/16 v13, 0x80

    :goto_48
    const/16 v17, 0x6

    goto :goto_4c

    :cond_87
    if-nez v9, :cond_86

    :goto_49
    invoke-virtual {v1}, LJ/D;->A()I

    move-result v7

    const/16 v13, 0x80

    and-int/2addr v7, v13

    if-eqz v7, :cond_88

    goto :goto_49

    :cond_88
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v8, 0x4

    invoke-virtual {v1, v8, v7}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "mp4a"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8b

    :goto_4a
    invoke-virtual {v1}, LJ/D;->A()I

    move-result v9

    and-int/2addr v9, v13

    if-eqz v9, :cond_89

    goto :goto_4a

    :cond_89
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, LJ/D;->O(I)V

    new-instance v11, LJ/B;

    invoke-direct {v11}, LJ/B;-><init>()V

    invoke-virtual {v11, v1}, LJ/B;->k(LJ/D;)V

    const/4 v8, 0x5

    invoke-virtual {v11, v8}, LJ/B;->g(I)I

    move-result v9

    const/16 v8, 0x1f

    if-ne v9, v8, :cond_8a

    const/4 v9, 0x6

    invoke-virtual {v11, v9}, LJ/B;->g(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x20

    move/from16 v17, v9

    move v9, v11

    goto :goto_4b

    :cond_8a
    const/16 v17, 0x6

    :goto_4b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".40."

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4c

    :cond_8b
    const/16 v8, 0x1f

    goto :goto_48

    :goto_4c
    invoke-virtual {v1, v5}, LJ/D;->N(I)V

    const v5, 0x616c6163

    goto/16 :goto_42

    :goto_4d
    if-eqz v3, :cond_8c

    if-eqz v7, :cond_8c

    const-string v1, "."

    invoke-static {v3, v1, v7}, LB1/e;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_8c
    const/4 v1, 0x0

    :goto_4e
    invoke-static {v2}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v7

    move-object/from16 v0, p7

    move-object v2, v1

    move/from16 v8, v32

    move/from16 v11, v40

    move/from16 v12, v42

    move/from16 v14, v43

    move/from16 v5, v44

    :goto_4f
    const/4 v13, 0x0

    goto/16 :goto_62

    :cond_8d
    const/16 v17, 0x6

    const v1, 0x70636d43

    if-ne v3, v1, :cond_93

    add-int/lit8 v11, v40, 0xc

    invoke-virtual {v0, v11}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v1

    const/16 v21, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8e

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_50

    :cond_8e
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_50
    invoke-virtual {v0}, LJ/D;->A()I

    move-result v2

    const v3, 0x6970636d

    move/from16 v5, v44

    if-ne v5, v3, :cond_8f

    invoke-static {v2, v1}, LJ/W;->v(ILjava/nio/ByteOrder;)I

    move-result v1

    goto :goto_51

    :cond_8f
    const v3, 0x6670636d

    if-ne v5, v3, :cond_90

    invoke-static {v2, v1}, LJ/W;->t(ILjava/nio/ByteOrder;)I

    move-result v1

    goto :goto_51

    :cond_90
    move/from16 v1, v24

    :goto_51
    if-nez v1, :cond_91

    const/4 v1, -0x1

    :cond_91
    const/4 v13, -0x1

    move-object/from16 v0, p7

    move-object/from16 v2, p9

    move/from16 v24, v1

    if-eq v1, v13, :cond_92

    move-object/from16 v34, v28

    :cond_92
    move/from16 v8, v32

    move-object/from16 v7, v33

    move/from16 v11, v40

    move/from16 v12, v42

    move/from16 v14, v43

    goto :goto_4f

    :cond_93
    move/from16 v5, v44

    move/from16 v2, v42

    move/from16 v14, v43

    goto :goto_53

    :goto_52
    new-instance v1, LG/w;

    invoke-direct {v1}, LG/w;-><init>()V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LG/w;->a:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LG/w;->o:Ljava/lang/String;

    move/from16 v14, v43

    iput v14, v1, LG/w;->I:I

    move/from16 v2, v42

    iput v2, v1, LG/w;->K:I

    iput-object v10, v1, LG/w;->s:LG/s;

    iput-object v4, v1, LG/w;->d:Ljava/lang/String;

    new-instance v3, LG/x;

    invoke-direct {v3, v1}, LG/x;-><init>(LG/w;)V

    iput-object v3, v6, LJ/Q;->d:Ljava/lang/Object;

    :goto_53
    move-object/from16 v0, p7

    move v12, v2

    move/from16 v8, v32

    move-object/from16 v7, v33

    move/from16 v11, v40

    const/4 v13, 0x0

    move-object/from16 v2, p9

    goto/16 :goto_62

    :goto_54
    if-ne v3, v1, :cond_94

    move/from16 v8, v32

    move/from16 v1, v40

    move v11, v1

    :goto_55
    const/4 v13, -0x1

    goto :goto_5a

    :cond_94
    iget v1, v0, LJ/D;->b:I

    move/from16 v11, v40

    if-lt v1, v11, :cond_95

    const/4 v3, 0x1

    :goto_56
    const/4 v7, 0x0

    goto :goto_57

    :cond_95
    const/4 v3, 0x0

    goto :goto_56

    :goto_57
    invoke-static {v7, v3}, Lb0/a;->b(Ljava/lang/String;Z)V

    :goto_58
    sub-int v3, v1, v11

    move/from16 v8, v32

    if-ge v3, v8, :cond_98

    invoke-virtual {v0, v1}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v3

    if-lez v3, :cond_96

    const/4 v9, 0x1

    goto :goto_59

    :cond_96
    const/4 v9, 0x0

    :goto_59
    invoke-static {v13, v9}, Lb0/a;->b(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v9

    const v7, 0x65736473

    if-ne v9, v7, :cond_97

    goto :goto_55

    :cond_97
    add-int/2addr v1, v3

    move/from16 v32, v8

    const/4 v7, 0x0

    goto :goto_58

    :cond_98
    const/4 v1, -0x1

    goto :goto_55

    :goto_5a
    if-eq v1, v13, :cond_9f

    invoke-static {v1, v0}, Lv0/d;->c(ILJ/D;)LP/N;

    move-result-object v1

    iget-object v3, v1, LP/N;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v7, v1, LP/N;->e:Ljava/lang/Object;

    check-cast v7, [B

    if-eqz v7, :cond_9e

    const-string v9, "audio/vorbis"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9c

    sget-object v9, Lb0/I;->a:Ly1/a;

    new-instance v9, LJ/D;

    invoke-direct {v9, v7}, LJ/D;-><init>([B)V

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, LJ/D;->O(I)V

    const/4 v13, 0x0

    :goto_5b
    invoke-virtual {v9}, LJ/D;->a()I

    move-result v21

    if-lez v21, :cond_99

    invoke-virtual {v9}, LJ/D;->j()I

    move-result v12

    const/16 v0, 0xff

    if-ne v12, v0, :cond_99

    add-int/lit16 v13, v13, 0xff

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, LJ/D;->O(I)V

    move-object/from16 v0, p0

    goto :goto_5b

    :cond_99
    invoke-virtual {v9}, LJ/D;->A()I

    move-result v0

    add-int/2addr v0, v13

    const/4 v12, 0x0

    :goto_5c
    invoke-virtual {v9}, LJ/D;->a()I

    move-result v13

    if-lez v13, :cond_9b

    invoke-virtual {v9}, LJ/D;->j()I

    move-result v13

    move-object/from16 p7, v1

    const/16 v1, 0xff

    if-ne v13, v1, :cond_9a

    add-int/lit16 v12, v12, 0xff

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, LJ/D;->O(I)V

    move-object/from16 v1, p7

    goto :goto_5c

    :cond_9a
    :goto_5d
    const/4 v13, 0x1

    goto :goto_5e

    :cond_9b
    move-object/from16 p7, v1

    goto :goto_5d

    :goto_5e
    invoke-virtual {v9}, LJ/D;->A()I

    move-result v1

    add-int/2addr v1, v12

    new-array v12, v0, [B

    iget v9, v9, LJ/D;->b:I

    const/4 v13, 0x0

    invoke-static {v7, v9, v12, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v0

    add-int/2addr v9, v1

    array-length v0, v7

    sub-int/2addr v0, v9

    new-array v1, v0, [B

    invoke-static {v7, v9, v1, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v12, v1}, Lu1/P;->p(Ljava/lang/Object;Ljava/lang/Object;)Lu1/C0;

    move-result-object v7

    move-object/from16 v0, p7

    move v12, v2

    :goto_5f
    move-object/from16 v2, p9

    goto :goto_61

    :cond_9c
    move-object/from16 p7, v1

    const/4 v13, 0x0

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    new-instance v0, LJ/B;

    array-length v1, v7

    invoke-direct {v0, v7, v1}, LJ/B;-><init>([BI)V

    invoke-static {v0, v13}, Lb0/a;->p(LJ/B;Z)LA0/d;

    move-result-object v0

    iget v12, v0, LA0/d;->e:I

    iget v14, v0, LA0/d;->f:I

    iget-object v0, v0, LA0/d;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    goto :goto_60

    :cond_9d
    move v12, v2

    move-object/from16 v2, p9

    :goto_60
    invoke-static {v7}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v7

    move-object/from16 v0, p7

    goto :goto_61

    :cond_9e
    move-object/from16 p7, v1

    const/4 v13, 0x0

    move-object/from16 v0, p7

    move v12, v2

    move-object/from16 v7, v33

    goto :goto_5f

    :cond_9f
    const/4 v13, 0x0

    move-object/from16 v0, p7

    move v12, v2

    move-object/from16 v7, v33

    move-object/from16 v3, v34

    goto :goto_5f

    :goto_61
    move-object/from16 v34, v3

    :goto_62
    add-int/2addr v11, v8

    const/16 v18, 0x4

    const/16 v19, 0x2

    move/from16 v3, p3

    move-object/from16 p7, v0

    move v1, v5

    move/from16 v13, v24

    move-object/from16 v5, v34

    move-object/from16 v9, v36

    move-object/from16 v0, p0

    goto/16 :goto_13

    :cond_a0
    move-object/from16 p9, v2

    move-object/from16 v34, v5

    move-object/from16 v33, v7

    move v2, v12

    move/from16 v24, v13

    iget-object v0, v6, LJ/Q;->d:Ljava/lang/Object;

    check-cast v0, LG/x;

    if-nez v0, :cond_a3

    if-eqz v34, :cond_a3

    new-instance v0, LG/w;

    invoke-direct {v0}, LG/w;-><init>()V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LG/w;->a:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LG/w;->o:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, LG/w;->k:Ljava/lang/String;

    iput v14, v0, LG/w;->I:I

    iput v2, v0, LG/w;->K:I

    move/from16 v13, v24

    iput v13, v0, LG/w;->L:I

    move-object/from16 v7, v33

    iput-object v7, v0, LG/w;->r:Ljava/util/List;

    iput-object v10, v0, LG/w;->s:LG/s;

    iput-object v4, v0, LG/w;->d:Ljava/lang/String;

    if-eqz p7, :cond_a1

    move-object/from16 v1, p7

    iget-wide v2, v1, LP/N;->b:J

    invoke-static {v2, v3}, LS1/e;->s(J)I

    move-result v2

    iput v2, v0, LG/w;->i:I

    iget-wide v1, v1, LP/N;->c:J

    invoke-static {v1, v2}, LS1/e;->s(J)I

    move-result v1

    iput v1, v0, LG/w;->j:I

    goto :goto_63

    :cond_a1
    move-object/from16 v1, v29

    if-eqz v1, :cond_a2

    iget-wide v2, v1, LZ/x;->a:J

    invoke-static {v2, v3}, LS1/e;->s(J)I

    move-result v2

    iput v2, v0, LG/w;->i:I

    iget-wide v1, v1, LZ/x;->b:J

    invoke-static {v1, v2}, LS1/e;->s(J)I

    move-result v1

    iput v1, v0, LG/w;->j:I

    :cond_a2
    :goto_63
    new-instance v1, LG/x;

    invoke-direct {v1, v0}, LG/x;-><init>(LG/w;)V

    iput-object v1, v6, LJ/Q;->d:Ljava/lang/Object;

    :cond_a3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(ILJ/D;)LP/N;
    .locals 10

    add-int/lit8 p0, p0, 0xc

    invoke-virtual {p1, p0}, LJ/D;->N(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, LJ/D;->O(I)V

    invoke-static {p1}, Lv0/d;->d(LJ/D;)I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LJ/D;->O(I)V

    invoke-virtual {p1}, LJ/D;->A()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, LJ/D;->O(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p1}, LJ/D;->A()I

    move-result v2

    invoke-virtual {p1, v2}, LJ/D;->O(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, LJ/D;->O(I)V

    :cond_2
    invoke-virtual {p1, p0}, LJ/D;->O(I)V

    invoke-static {p1}, Lv0/d;->d(LJ/D;)I

    invoke-virtual {p1}, LJ/D;->A()I

    move-result v0

    invoke-static {v0}, LG/W;->d(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, LJ/D;->O(I)V

    invoke-virtual {p1}, LJ/D;->C()J

    move-result-wide v0

    invoke-virtual {p1}, LJ/D;->C()J

    move-result-wide v3

    invoke-virtual {p1, p0}, LJ/D;->O(I)V

    invoke-static {p1}, Lv0/d;->d(LJ/D;)I

    move-result p0

    move-wide v4, v3

    new-array v3, p0, [B

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v3, p0}, LJ/D;->k(I[BI)V

    move-wide p0, v0

    new-instance v1, LP/N;

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-wide/16 v8, -0x1

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    move-wide v4, v8

    :goto_0
    cmp-long v0, p0, v6

    if-lez v0, :cond_5

    move-wide v6, p0

    goto :goto_1

    :cond_5
    move-wide v6, v8

    :goto_1
    invoke-direct/range {v1 .. v7}, LP/N;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1

    :cond_6
    :goto_2
    new-instance v1, LP/N;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v7}, LP/N;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1
.end method

.method public static d(LJ/D;)I
    .locals 3

    invoke-virtual {p0}, LJ/D;->A()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, LJ/D;->A()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static e(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static f(LK/d;)LG/V;
    .locals 14

    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, LK/d;->i(I)LK/e;

    move-result-object v0

    const v1, 0x6b657973

    invoke-virtual {p0, v1}, LK/d;->i(I)LK/e;

    move-result-object v1

    const v2, 0x696c7374

    invoke-virtual {p0, v2}, LK/d;->i(I)LK/e;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eqz p0, :cond_8

    iget-object v0, v0, LK/e;->g:LJ/D;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, v1, LK/e;->g:LJ/D;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x8

    if-ge v5, v1, :cond_1

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, LJ/D;->O(I)V

    sub-int/2addr v7, v6

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v7, v6}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, LK/e;->g:LJ/D;

    invoke-virtual {p0, v6}, LJ/D;->N(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, LJ/D;->a()I

    move-result v5

    if-le v5, v6, :cond_6

    iget v5, p0, LJ/D;->b:I

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v7

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_4

    if-ge v8, v1, :cond_4

    aget-object v8, v3, v8

    add-int v9, v5, v7

    :goto_2
    iget v10, p0, LJ/D;->b:I

    if-ge v10, v9, :cond_3

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v11

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v12

    const v13, 0x64617461

    if-ne v12, v13, :cond_2

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v9

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v10

    add-int/lit8 v11, v11, -0x10

    new-array v12, v11, [B

    invoke-virtual {p0, v4, v12, v11}, LJ/D;->k(I[BI)V

    :try_start_0
    new-instance v11, LK/b;

    invoke-direct {v11, v8, v12, v10, v9}, LK/b;-><init>(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v9, "MetadataUtil"

    const-string v10, "Failed to parse metadata entry with key: "

    invoke-static {v10, v8, v9}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    add-int/2addr v10, v11

    invoke-virtual {p0, v10}, LJ/D;->N(I)V

    goto :goto_2

    :cond_3
    :goto_3
    move-object v11, v2

    :goto_4
    if-eqz v11, :cond_5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    const-string v9, "BoxParsers"

    const-string v10, "Skipped metadata with unknown key index: "

    invoke-static {v10, v9, v8}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    :goto_5
    add-int/2addr v5, v7

    invoke-virtual {p0, v5}, LJ/D;->N(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_6

    :cond_7
    new-instance v2, LG/V;

    invoke-direct {v2, v0}, LG/V;-><init>(Ljava/util/List;)V

    :cond_8
    :goto_6
    return-object v2
.end method

.method public static g(LJ/D;)LK/i;
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, LJ/D;->N(I)V

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v0

    invoke-static {v0}, Lv0/d;->e(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LJ/D;->C()J

    move-result-wide v0

    invoke-virtual {p0}, LJ/D;->C()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LJ/D;->u()J

    move-result-wide v0

    invoke-virtual {p0}, LJ/D;->u()J

    move-result-wide v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, LJ/D;->C()J

    move-result-wide v9

    new-instance v4, LK/i;

    invoke-direct/range {v4 .. v10}, LK/i;-><init>(JJJ)V

    return-object v4
.end method

.method public static h(LJ/D;II)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, LJ/D;->b:I

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_10

    invoke-virtual {v0, v1}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    const-string v8, "childAtomSize must be positive"

    invoke-static {v8, v7}, Lb0/a;->b(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v12, v5

    move v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    sub-int v13, v7, v1

    const/4 v14, 0x4

    if-ge v13, v2, :cond_4

    invoke-virtual {v0, v7}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v13

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v15

    const/16 v16, 0x0

    const v3, 0x66726d61

    if-ne v15, v3, :cond_1

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v15, v3, :cond_2

    invoke-virtual {v0, v14}, LJ/D;->O(I)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v14, v3}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v15, v3, :cond_3

    move v9, v7

    move v12, v13

    :cond_3
    :goto_3
    add-int/2addr v7, v13

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    const-string v3, "cenc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v3, v16

    goto/16 :goto_b

    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    move v3, v6

    goto :goto_5

    :cond_7
    move v3, v5

    :goto_5
    const-string v7, "frma atom is mandatory"

    invoke-static {v7, v3}, Lb0/a;->b(Ljava/lang/String;Z)V

    if-eq v9, v8, :cond_8

    move v3, v6

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    const-string v7, "schi atom is mandatory"

    invoke-static {v7, v3}, Lb0/a;->b(Ljava/lang/String;Z)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v12, :cond_d

    invoke-virtual {v0, v3}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v7

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v8

    const v13, 0x74656e63

    if-ne v8, v13, :cond_c

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v3

    invoke-static {v3}, Lv0/d;->e(I)I

    move-result v3

    invoke-virtual {v0, v6}, LJ/D;->O(I)V

    if-nez v3, :cond_9

    invoke-virtual {v0, v6}, LJ/D;->O(I)V

    move v14, v5

    move v15, v14

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, LJ/D;->A()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v14

    and-int/lit8 v3, v3, 0xf

    move v15, v3

    move v14, v7

    :goto_8
    invoke-virtual {v0}, LJ/D;->A()I

    move-result v3

    if-ne v3, v6, :cond_a

    move-object v3, v10

    move v10, v6

    goto :goto_9

    :cond_a
    move-object v3, v10

    move v10, v5

    :goto_9
    invoke-virtual {v0}, LJ/D;->A()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    invoke-virtual {v0, v5, v13, v7}, LJ/D;->k(I[BI)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v0, v5, v8, v7}, LJ/D;->k(I[BI)V

    move-object/from16 v16, v8

    :cond_b
    new-instance v9, Lv0/u;

    move-object v8, v3

    invoke-direct/range {v9 .. v16}, Lv0/u;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v9

    goto :goto_a

    :cond_c
    move-object v8, v10

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v10

    move-object/from16 v3, v16

    :goto_a
    if-eqz v3, :cond_e

    move v5, v6

    :cond_e
    const-string v6, "tenc atom is mandatory"

    invoke-static {v6, v5}, Lb0/a;->b(Ljava/lang/String;Z)V

    sget-object v5, LJ/W;->a:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_b
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_10
    const/16 v16, 0x0

    return-object v16
.end method

.method public static i(LJ/D;Lv0/c;Ljava/lang/String;LG/s;Z)LJ/Q;
    .locals 65

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v5, p2

    iget v11, v10, Lv0/c;->a:I

    const/16 v12, 0xc

    invoke-virtual {v0, v12}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v13

    new-instance v8, LJ/Q;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-array v1, v13, [Lv0/u;

    iput-object v1, v8, LJ/Q;->c:Ljava/lang/Object;

    const/4 v14, 0x0

    iput v14, v8, LJ/Q;->b:I

    move v9, v14

    :goto_0
    if-ge v9, v13, :cond_81

    iget v2, v0, LJ/D;->b:I

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v14

    :goto_1
    const-string v6, "childAtomSize must be positive"

    invoke-static {v6, v4}, Lb0/a;->b(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v4

    const v7, 0x61766331

    const/16 v17, 0x3

    const/16 v18, 0x8

    const v15, 0x48323633

    const v1, 0x6d317620

    const v14, 0x656e6376

    if-eq v4, v7, :cond_1

    const v7, 0x61766333

    if-eq v4, v7, :cond_1

    if-eq v4, v14, :cond_1

    if-eq v4, v1, :cond_1

    const v7, 0x6d703476

    if-eq v4, v7, :cond_1

    const v7, 0x68766331

    if-eq v4, v7, :cond_1

    const v7, 0x68657631

    if-eq v4, v7, :cond_1

    const v7, 0x76766331

    if-eq v4, v7, :cond_1

    const v7, 0x76766931

    if-eq v4, v7, :cond_1

    const v7, 0x73323633

    if-eq v4, v7, :cond_1

    if-eq v4, v15, :cond_1

    const v7, 0x68323633

    if-eq v4, v7, :cond_1

    const v7, 0x76703038

    if-eq v4, v7, :cond_1

    const v7, 0x76703039

    if-eq v4, v7, :cond_1

    const v7, 0x61763031

    if-eq v4, v7, :cond_1

    const v7, 0x64766176

    if-eq v4, v7, :cond_1

    const v7, 0x64766131

    if-eq v4, v7, :cond_1

    const v7, 0x64766865

    if-eq v4, v7, :cond_1

    const v7, 0x64766831

    if-eq v4, v7, :cond_1

    const v7, 0x61707631

    if-eq v4, v7, :cond_1

    const v7, 0x64617631

    if-ne v4, v7, :cond_2

    :cond_1
    move-object/from16 v7, p3

    goto/16 :goto_f

    :cond_2
    const v1, 0x6d703461

    if-eq v4, v1, :cond_3

    const v1, 0x656e6361

    if-eq v4, v1, :cond_3

    const v1, 0x61632d33

    if-eq v4, v1, :cond_3

    const v1, 0x65632d33

    if-eq v4, v1, :cond_3

    const v1, 0x61632d34

    if-eq v4, v1, :cond_3

    const v1, 0x6d6c7061

    if-eq v4, v1, :cond_3

    const v1, 0x64747363

    if-eq v4, v1, :cond_3

    const v1, 0x64747365

    if-eq v4, v1, :cond_3

    const v1, 0x64747368

    if-eq v4, v1, :cond_3

    const v1, 0x6474736c

    if-eq v4, v1, :cond_3

    const v1, 0x64747378

    if-eq v4, v1, :cond_3

    const v1, 0x73616d72

    if-eq v4, v1, :cond_3

    const v1, 0x73617762

    if-eq v4, v1, :cond_3

    const v1, 0x6c70636d

    if-eq v4, v1, :cond_3

    const v1, 0x736f7774

    if-eq v4, v1, :cond_3

    const v1, 0x74776f73

    if-eq v4, v1, :cond_3

    const v1, 0x2e6d7032

    if-eq v4, v1, :cond_3

    const v1, 0x2e6d7033

    if-eq v4, v1, :cond_3

    const v1, 0x6d686131

    if-eq v4, v1, :cond_3

    const v1, 0x6d686d31

    if-eq v4, v1, :cond_3

    const v1, 0x616c6163

    if-eq v4, v1, :cond_3

    const v1, 0x616c6177

    if-eq v4, v1, :cond_3

    const v1, 0x756c6177

    if-eq v4, v1, :cond_3

    const v1, 0x4f707573

    if-eq v4, v1, :cond_3

    const v1, 0x664c6143

    if-eq v4, v1, :cond_3

    const v1, 0x69616d66

    if-eq v4, v1, :cond_3

    const v1, 0x6970636d

    if-eq v4, v1, :cond_3

    const v1, 0x6670636d

    if-ne v4, v1, :cond_4

    :cond_3
    move/from16 v22, v2

    move v1, v4

    goto/16 :goto_d

    :cond_4
    const v6, 0x6d703473

    const v7, 0x63363038

    const v14, 0x73747070

    const v15, 0x77767474

    const v12, 0x74783367

    const v1, 0x54544d4c

    if-eq v4, v1, :cond_a

    if-eq v4, v12, :cond_a

    if-eq v4, v15, :cond_a

    if-eq v4, v14, :cond_a

    if-eq v4, v7, :cond_a

    if-eq v4, v6, :cond_a

    const v6, 0x74657874

    if-ne v4, v6, :cond_5

    goto/16 :goto_4

    :cond_5
    const v1, 0x69743335

    const v6, 0x6d657474

    if-eq v4, v6, :cond_8

    if-ne v4, v1, :cond_6

    goto :goto_3

    :cond_6
    const v1, 0x63616d6d

    if-ne v4, v1, :cond_7

    new-instance v1, LG/w;

    invoke-direct {v1}, LG/w;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, LG/w;->a:Ljava/lang/String;

    const-string v4, "application/x-camera-motion"

    invoke-static {v4}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, LG/w;->o:Ljava/lang/String;

    new-instance v4, LG/x;

    invoke-direct {v4, v1}, LG/x;-><init>(LG/w;)V

    iput-object v4, v8, LJ/Q;->d:Ljava/lang/Object;

    :cond_7
    :goto_2
    move/from16 v29, v2

    move/from16 v49, v3

    move-object v2, v5

    move/from16 v28, v9

    move-object v1, v10

    move/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_5d

    :cond_8
    :goto_3
    add-int/lit8 v7, v2, 0x10

    invoke-virtual {v0, v7}, LJ/D;->N(I)V

    if-ne v4, v6, :cond_9

    invoke-virtual {v0}, LJ/D;->v()Ljava/lang/String;

    invoke-virtual {v0}, LJ/D;->v()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v4, LG/w;

    invoke-direct {v4}, LG/w;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, LG/w;->a:Ljava/lang/String;

    invoke-static {v1}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, LG/w;->o:Ljava/lang/String;

    new-instance v1, LG/x;

    invoke-direct {v1, v4}, LG/x;-><init>(LG/w;)V

    iput-object v1, v8, LJ/Q;->d:Ljava/lang/Object;

    goto :goto_2

    :cond_9
    if-ne v4, v1, :cond_7

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v1

    new-array v4, v1, [B

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4, v1}, LJ/D;->k(I[BI)V

    new-instance v1, LG/w;

    invoke-direct {v1}, LG/w;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, LG/w;->a:Ljava/lang/String;

    const-string v6, "application/x-itut-t35"

    invoke-static {v6}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, LG/w;->o:Ljava/lang/String;

    invoke-static {v4}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v4

    iput-object v4, v1, LG/w;->r:Ljava/util/List;

    new-instance v4, LG/x;

    invoke-direct {v4, v1}, LG/x;-><init>(LG/w;)V

    iput-object v4, v8, LJ/Q;->d:Ljava/lang/Object;

    goto :goto_2

    :cond_a
    :goto_4
    add-int/lit8 v6, v2, 0x10

    invoke-virtual {v0, v6}, LJ/D;->N(I)V

    const-string v6, "application/ttml+xml"

    const-wide v28, 0x7fffffffffffffffL

    if-ne v4, v1, :cond_b

    :goto_5
    move/from16 v22, v2

    :goto_6
    move-wide/from16 v0, v28

    const/4 v15, 0x0

    goto/16 :goto_b

    :cond_b
    if-ne v4, v12, :cond_c

    add-int/lit8 v1, v3, -0x10

    new-array v4, v1, [B

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4, v1}, LJ/D;->k(I[BI)V

    invoke-static {v4}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v15

    const-string v6, "application/x-quicktime-tx3g"

    move/from16 v22, v2

    :goto_7
    move-wide/from16 v0, v28

    goto/16 :goto_b

    :cond_c
    if-ne v4, v15, :cond_d

    const-string v6, "application/x-mp4-vtt"

    goto :goto_5

    :cond_d
    if-ne v4, v14, :cond_e

    const-wide/16 v28, 0x0

    goto :goto_5

    :cond_e
    if-ne v4, v7, :cond_f

    const/4 v1, 0x1

    iput v1, v8, LJ/Q;->b:I

    const-string v6, "application/x-mp4-cea-608"

    goto :goto_5

    :cond_f
    const v1, 0x6d703473

    if-ne v4, v1, :cond_15

    iget v1, v0, LJ/D;->b:I

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v4

    const v6, 0x65736473

    if-ne v4, v6, :cond_14

    invoke-static {v1, v0}, Lv0/d;->c(ILJ/D;)LP/N;

    move-result-object v1

    iget-object v1, v1, LP/N;->e:Ljava/lang/Object;

    check-cast v1, [B

    if-eqz v1, :cond_10

    array-length v4, v1

    const/16 v6, 0x40

    if-eq v4, v6, :cond_11

    :cond_10
    move/from16 v22, v2

    goto/16 :goto_c

    :cond_11
    iget v4, v10, Lv0/c;->e:I

    iget v7, v10, Lv0/c;->f:I

    array-length v12, v1

    if-ne v12, v6, :cond_12

    const/16 v23, 0x1

    goto :goto_8

    :cond_12
    const/16 v23, 0x0

    :goto_8
    invoke-static/range {v23 .. v23}, LF1/i;->o(Z)V

    new-instance v6, Ljava/util/ArrayList;

    const/16 v12, 0x10

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    :goto_9
    array-length v14, v1

    add-int/lit8 v14, v14, -0x3

    if-ge v12, v14, :cond_13

    aget-byte v14, v1, v12

    add-int/lit8 v15, v12, 0x1

    aget-byte v15, v1, v15

    add-int/lit8 v20, v12, 0x2

    aget-byte v0, v1, v20

    add-int/lit8 v20, v12, 0x3

    move-object/from16 v21, v1

    aget-byte v1, v21, v20

    invoke-static {v14, v15, v0, v1}, LS1/e;->i(BBBB)I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    const/16 v14, 0xff

    and-int/2addr v1, v14

    shr-int/lit8 v15, v0, 0x8

    and-int/2addr v15, v14

    and-int/2addr v0, v14

    add-int/lit8 v15, v15, -0x80

    mul-int/lit16 v14, v15, 0x36fb

    div-int/lit16 v14, v14, 0x2710

    add-int/2addr v14, v1

    add-int/lit8 v0, v0, -0x80

    move/from16 v20, v1

    mul-int/lit16 v1, v0, 0xd7f

    div-int/lit16 v1, v1, 0x2710

    sub-int v1, v20, v1

    mul-int/lit16 v15, v15, 0x1c01

    div-int/lit16 v15, v15, 0x2710

    sub-int/2addr v1, v15

    mul-int/lit16 v0, v0, 0x457e

    div-int/lit16 v0, v0, 0x2710

    add-int v0, v0, v20

    move/from16 v22, v2

    const/4 v2, 0x0

    const/16 v15, 0xff

    invoke-static {v14, v2, v15}, LJ/W;->g(III)I

    move-result v14

    const/16 v26, 0x10

    shl-int/lit8 v14, v14, 0x10

    invoke-static {v1, v2, v15}, LJ/W;->g(III)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v14

    invoke-static {v0, v2, v15}, LJ/W;->g(III)I

    move-result v0

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%06x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    goto :goto_9

    :cond_13
    move/from16 v22, v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\npalette: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, LK/a;

    const-string v2, ", "

    invoke-direct {v1, v2}, LK/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4, v2}, LK/a;->b(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v15

    const-string v0, "application/vobsub"

    goto :goto_a

    :cond_14
    move/from16 v22, v2

    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_a
    move-object v6, v0

    goto/16 :goto_7

    :cond_15
    move/from16 v22, v2

    const v6, 0x74657874

    if-ne v4, v6, :cond_17

    const-string v6, "text/x-unknown"

    goto/16 :goto_6

    :goto_b
    if-eqz v6, :cond_16

    new-instance v2, LG/w;

    invoke-direct {v2}, LG/w;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, LG/w;->a:Ljava/lang/String;

    invoke-static {v6}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, LG/w;->o:Ljava/lang/String;

    iput-object v5, v2, LG/w;->d:Ljava/lang/String;

    iput-wide v0, v2, LG/w;->t:J

    iput-object v15, v2, LG/w;->r:Ljava/util/List;

    new-instance v0, LG/x;

    invoke-direct {v0, v2}, LG/x;-><init>(LG/w;)V

    iput-object v0, v8, LJ/Q;->d:Ljava/lang/Object;

    :cond_16
    :goto_c
    move-object/from16 v0, p0

    move/from16 v49, v3

    move-object v2, v5

    move/from16 v28, v9

    move-object v1, v10

    move/from16 v30, v11

    move/from16 v31, v13

    move/from16 v29, v22

    goto/16 :goto_5d

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :goto_d
    iget v4, v10, Lv0/c;->a:I

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move/from16 v6, p4

    move/from16 v2, v22

    invoke-static/range {v0 .. v9}, Lv0/d;->b(LJ/D;IIIILjava/lang/String;ZLG/s;LJ/Q;I)V

    move/from16 v29, v2

    move/from16 v49, v3

    move/from16 v28, v9

    move-object v1, v10

    move/from16 v30, v11

    move/from16 v31, v13

    :goto_e
    move-object/from16 v2, p2

    goto/16 :goto_5d

    :goto_f
    add-int/lit8 v12, v2, 0x10

    invoke-virtual {v0, v12}, LJ/D;->N(I)V

    const/16 v12, 0x10

    invoke-virtual {v0, v12}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v12

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v15

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, LJ/D;->O(I)V

    iget v1, v0, LJ/D;->b:I

    if-ne v4, v14, :cond_1a

    invoke-static {v0, v2, v3}, Lv0/d;->h(LJ/D;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_19

    iget-object v4, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v7, :cond_18

    move/from16 v29, v2

    const/16 v30, 0x0

    goto :goto_10

    :cond_18
    move/from16 v29, v2

    iget-object v2, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lv0/u;

    iget-object v2, v2, Lv0/u;->b:Ljava/lang/String;

    invoke-virtual {v7, v2}, LG/s;->a(Ljava/lang/String;)LG/s;

    move-result-object v2

    move-object/from16 v30, v2

    :goto_10
    iget-object v2, v8, LJ/Q;->c:Ljava/lang/Object;

    check-cast v2, [Lv0/u;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lv0/u;

    aput-object v14, v2, v9

    goto :goto_11

    :cond_19
    move/from16 v29, v2

    move-object/from16 v30, v7

    :goto_11
    invoke-virtual {v0, v1}, LJ/D;->N(I)V

    move-object/from16 v2, v30

    goto :goto_12

    :cond_1a
    move/from16 v29, v2

    move-object v2, v7

    :goto_12
    const-string v14, "video/3gpp"

    move/from16 v30, v1

    const v1, 0x6d317620

    if-ne v4, v1, :cond_1b

    const-string v1, "video/mpeg"

    move-object/from16 v27, v1

    goto :goto_13

    :cond_1b
    const v1, 0x48323633

    if-ne v4, v1, :cond_1c

    move-object/from16 v27, v14

    goto :goto_13

    :cond_1c
    const/16 v27, 0x0

    :goto_13
    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v34, v2

    move/from16 v43, v12

    move/from16 v31, v13

    move-object/from16 v32, v14

    move/from16 v42, v15

    move/from16 v15, v18

    move-object/from16 v7, v27

    move/from16 v38, v28

    move/from16 v1, v30

    const/4 v2, -0x1

    const/4 v5, -0x1

    const/4 v10, -0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v27, 0x0

    const/16 v33, 0x0

    const/16 v35, -0x1

    const/16 v36, -0x1

    const/16 v37, 0x0

    const/16 v39, -0x1

    const/16 v40, 0x0

    const/16 v41, -0x1

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move/from16 v28, v9

    move/from16 v30, v11

    move v9, v15

    const/4 v11, -0x1

    :goto_14
    sub-int v13, v1, v29

    if-ge v13, v3, :cond_1d

    invoke-virtual {v0, v1}, LJ/D;->N(I)V

    iget v13, v0, LJ/D;->b:I

    move/from16 v47, v1

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v1

    move/from16 v48, v13

    if-nez v1, :cond_1e

    iget v13, v0, LJ/D;->b:I

    sub-int v13, v13, v29

    if-ne v13, v3, :cond_1e

    :cond_1d
    move/from16 v49, v3

    move-object/from16 v59, v7

    move/from16 v60, v9

    move/from16 v55, v11

    move/from16 v64, v15

    move v11, v5

    const/4 v5, 0x0

    goto/16 :goto_59

    :cond_1e
    if-lez v1, :cond_1f

    const/4 v13, 0x1

    goto :goto_15

    :cond_1f
    const/4 v13, 0x0

    :goto_15
    invoke-static {v6, v13}, Lb0/a;->b(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v13

    move/from16 v49, v3

    const v3, 0x61766343

    if-ne v13, v3, :cond_22

    if-nez v7, :cond_20

    const/4 v3, 0x1

    :goto_16
    const/4 v5, 0x0

    goto :goto_17

    :cond_20
    const/4 v3, 0x0

    goto :goto_16

    :goto_17
    invoke-static {v5, v3}, Lb0/a;->b(Ljava/lang/String;Z)V

    add-int/lit8 v13, v48, 0x8

    invoke-virtual {v0, v13}, LJ/D;->N(I)V

    invoke-static {v0}, Lb0/c;->a(LJ/D;)Lb0/c;

    move-result-object v3

    iget-object v14, v3, Lb0/c;->a:Ljava/util/ArrayList;

    iget v5, v3, Lb0/c;->b:I

    iput v5, v8, LJ/Q;->a:I

    if-nez v27, :cond_21

    iget v11, v3, Lb0/c;->k:F

    goto :goto_18

    :cond_21
    move/from16 v11, v38

    :goto_18
    iget-object v5, v3, Lb0/c;->l:Ljava/lang/String;

    iget v7, v3, Lb0/c;->j:I

    iget v10, v3, Lb0/c;->g:I

    iget v9, v3, Lb0/c;->h:I

    iget v13, v3, Lb0/c;->i:I

    iget v15, v3, Lb0/c;->e:I

    iget v3, v3, Lb0/c;->f:I

    const-string v33, "video/avc"

    move/from16 v64, v3

    move/from16 v51, v4

    move-object/from16 v58, v6

    move/from16 v36, v7

    move/from16 v38, v11

    move/from16 v56, v13

    move/from16 v60, v15

    move-object/from16 v59, v33

    const/4 v4, 0x4

    const v6, 0x65736473

    const/4 v7, 0x1

    const/16 v15, 0xff

    move-object/from16 v33, v5

    move v11, v9

    move/from16 v9, v18

    const/4 v5, 0x0

    goto/16 :goto_58

    :cond_22
    const v3, 0x68766343

    move/from16 v50, v4

    const-string v4, "video/hevc"

    if-ne v13, v3, :cond_26

    if-nez v7, :cond_23

    const/4 v3, 0x1

    :goto_19
    const/4 v5, 0x0

    goto :goto_1a

    :cond_23
    const/4 v3, 0x0

    goto :goto_19

    :goto_1a
    invoke-static {v5, v3}, Lb0/a;->b(Ljava/lang/String;Z)V

    add-int/lit8 v13, v48, 0x8

    invoke-virtual {v0, v13}, LJ/D;->N(I)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v5}, Lb0/w;->a(LJ/D;ZLB0/b;)Lb0/w;

    move-result-object v7

    iget-object v14, v7, Lb0/w;->a:Ljava/util/List;

    iget v3, v7, Lb0/w;->b:I

    iput v3, v8, LJ/Q;->a:I

    if-nez v27, :cond_24

    iget v11, v7, Lb0/w;->l:F

    goto :goto_1b

    :cond_24
    move/from16 v11, v38

    :goto_1b
    iget v12, v7, Lb0/w;->m:I

    iget v3, v7, Lb0/w;->c:I

    iget-object v5, v7, Lb0/w;->n:Ljava/lang/String;

    iget v9, v7, Lb0/w;->k:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_25

    move v2, v9

    :cond_25
    iget v9, v7, Lb0/w;->d:I

    iget v10, v7, Lb0/w;->e:I

    iget v13, v7, Lb0/w;->h:I

    iget v15, v7, Lb0/w;->i:I

    move/from16 v33, v2

    iget v2, v7, Lb0/w;->j:I

    move/from16 v35, v2

    iget v2, v7, Lb0/w;->f:I

    move/from16 v36, v2

    iget v2, v7, Lb0/w;->g:I

    iget-object v7, v7, Lb0/w;->o:LB0/b;

    move/from16 v64, v2

    move-object/from16 v59, v4

    move-object/from16 v58, v6

    move/from16 v41, v9

    move/from16 v39, v10

    move/from16 v38, v11

    move v10, v13

    move v11, v15

    move/from16 v9, v18

    move/from16 v2, v33

    move/from16 v56, v35

    move/from16 v60, v36

    move/from16 v51, v50

    const/4 v4, 0x4

    const v6, 0x65736473

    const/16 v15, 0xff

    move/from16 v35, v3

    move-object/from16 v33, v5

    move/from16 v36, v12

    const/4 v5, 0x0

    move-object v12, v7

    const/4 v7, 0x1

    goto/16 :goto_58

    :cond_26
    const v3, 0x6c687643

    move/from16 v51, v2

    const/4 v2, 0x2

    if-ne v13, v3, :cond_32

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "lhvC must follow hvcC atom"

    invoke-static {v4, v3}, Lb0/a;->b(Ljava/lang/String;Z)V

    if-eqz v12, :cond_27

    iget-object v3, v12, LB0/b;->e:Ljava/lang/Object;

    check-cast v3, Lu1/P;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-lt v3, v2, :cond_27

    const/4 v2, 0x1

    goto :goto_1c

    :cond_27
    const/4 v2, 0x0

    :goto_1c
    const-string v3, "must have at least two layers"

    invoke-static {v3, v2}, Lb0/a;->b(Ljava/lang/String;Z)V

    add-int/lit8 v13, v48, 0x8

    invoke-virtual {v0, v13}, LJ/D;->N(I)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, v2, v12}, Lb0/w;->a(LJ/D;ZLB0/b;)Lb0/w;

    move-result-object v3

    iget v2, v8, LJ/Q;->a:I

    iget v4, v3, Lb0/w;->b:I

    if-ne v2, v4, :cond_28

    const/4 v2, 0x1

    goto :goto_1d

    :cond_28
    const/4 v2, 0x0

    :goto_1d
    const-string v4, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v4, v2}, Lb0/a;->b(Ljava/lang/String;Z)V

    iget v2, v3, Lb0/w;->h:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2a

    if-ne v10, v2, :cond_29

    const/4 v2, 0x1

    goto :goto_1e

    :cond_29
    const/4 v2, 0x0

    :goto_1e
    const-string v7, "colorSpace must be the same for both views"

    invoke-static {v7, v2}, Lb0/a;->b(Ljava/lang/String;Z)V

    :cond_2a
    iget v2, v3, Lb0/w;->i:I

    if-eq v2, v4, :cond_2c

    if-ne v11, v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_1f

    :cond_2b
    const/4 v2, 0x0

    :goto_1f
    const-string v7, "colorRange must be the same for both views"

    invoke-static {v7, v2}, Lb0/a;->b(Ljava/lang/String;Z)V

    :cond_2c
    iget v2, v3, Lb0/w;->j:I

    if-eq v2, v4, :cond_2e

    if-ne v5, v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_20

    :cond_2d
    const/4 v2, 0x0

    :goto_20
    const-string v4, "colorTransfer must be the same for both views"

    invoke-static {v4, v2}, Lb0/a;->b(Ljava/lang/String;Z)V

    :cond_2e
    iget v2, v3, Lb0/w;->f:I

    if-ne v9, v2, :cond_2f

    const/4 v2, 0x1

    goto :goto_21

    :cond_2f
    const/4 v2, 0x0

    :goto_21
    const-string v4, "bitdepthLuma must be the same for both views"

    invoke-static {v4, v2}, Lb0/a;->b(Ljava/lang/String;Z)V

    iget v2, v3, Lb0/w;->g:I

    if-ne v15, v2, :cond_30

    const/4 v2, 0x1

    goto :goto_22

    :cond_30
    const/4 v2, 0x0

    :goto_22
    const-string v4, "bitdepthChroma must be the same for both views"

    invoke-static {v4, v2}, Lb0/a;->b(Ljava/lang/String;Z)V

    if-eqz v14, :cond_31

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v2

    invoke-virtual {v2, v14}, Lu1/I;->d(Ljava/lang/Iterable;)V

    iget-object v4, v3, Lb0/w;->a:Ljava/util/List;

    invoke-virtual {v2, v4}, Lu1/I;->d(Ljava/lang/Iterable;)V

    invoke-virtual {v2}, Lu1/M;->f()Lu1/C0;

    move-result-object v14

    goto :goto_23

    :cond_31
    const-string v2, "initializationData must be already set from hvcC atom"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lb0/a;->b(Ljava/lang/String;Z)V

    :goto_23
    iget-object v2, v3, Lb0/w;->n:Ljava/lang/String;

    const-string v3, "video/mv-hevc"

    move-object/from16 v33, v2

    move-object/from16 v59, v3

    move/from16 v56, v5

    move-object/from16 v58, v6

    move/from16 v60, v9

    move/from16 v64, v15

    move/from16 v9, v18

    move/from16 v2, v51

    const/4 v4, 0x4

    const/4 v5, 0x0

    const v6, 0x65736473

    const/4 v7, 0x1

    const/16 v15, 0xff

    :goto_24
    move/from16 v51, v50

    goto/16 :goto_58

    :cond_32
    const v3, 0x76766343

    const/16 v52, 0x5

    const/16 v53, 0x7

    if-ne v13, v3, :cond_40

    if-nez v7, :cond_33

    const/4 v2, 0x1

    :goto_25
    const/4 v3, 0x0

    goto :goto_26

    :cond_33
    const/4 v2, 0x0

    goto :goto_25

    :goto_26
    invoke-static {v3, v2}, Lb0/a;->b(Ljava/lang/String;Z)V

    add-int/lit8 v13, v48, 0x8

    invoke-virtual {v0, v13}, LJ/D;->N(I)V

    :try_start_0
    invoke-virtual {v0}, LJ/D;->m()I

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    shr-int/lit8 v3, v2, 0x1

    and-int/lit8 v3, v3, 0x3

    const/4 v7, 0x1

    and-int/2addr v2, v7

    if-eqz v2, :cond_34

    move/from16 v23, v7

    goto :goto_27

    :cond_34
    const/16 v23, 0x0

    :goto_27
    add-int/2addr v3, v7

    const-string v2, "L"

    if-eqz v23, :cond_38

    :try_start_1
    invoke-virtual {v0, v7}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v7

    const/16 v22, 0x4

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x7

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v9

    shr-int/lit8 v9, v9, 0x5

    and-int/lit8 v9, v9, 0x7

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v13

    and-int/lit8 v13, v13, 0x3f

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v14

    shr-int/lit8 v15, v14, 0x1

    and-int/lit8 v15, v15, 0x7f

    const/16 v23, 0x1

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_35

    const-string v2, "H"

    :cond_35
    invoke-virtual {v0}, LJ/D;->A()I

    move-result v14

    invoke-virtual {v0, v13}, LJ/D;->O(I)V

    const/4 v13, 0x1

    if-le v7, v13, :cond_37

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v33

    const/4 v4, 0x0

    :goto_28
    move/from16 v23, v13

    add-int/lit8 v13, v7, -0x1

    if-ge v4, v13, :cond_37

    rsub-int/lit8 v13, v4, 0x7

    shr-int v13, v33, v13

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_36

    move/from16 v13, v23

    invoke-virtual {v0, v13}, LJ/D;->O(I)V

    :cond_36
    add-int/lit8 v4, v4, 0x1

    const/4 v13, 0x1

    goto :goto_28

    :cond_37
    invoke-virtual {v0}, LJ/D;->A()I

    move-result v4

    const/16 v22, 0x4

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v4}, LJ/D;->O(I)V

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, LJ/D;->O(I)V

    goto :goto_29

    :cond_38
    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_29
    invoke-virtual {v0}, LJ/D;->A()I

    move-result v4

    iget v7, v0, LJ/D;->b:I

    move/from16 v33, v9

    move/from16 v55, v11

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_2a
    const/16 v11, 0xd

    if-ge v13, v4, :cond_3b

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v36

    move/from16 v48, v13

    and-int/lit8 v13, v36, 0x1f

    if-eq v13, v11, :cond_39

    const/16 v11, 0xc

    if-eq v13, v11, :cond_39

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v11

    goto :goto_2b

    :cond_39
    const/4 v11, 0x1

    :goto_2b
    const/4 v13, 0x0

    :goto_2c
    if-ge v13, v11, :cond_3a

    move/from16 v36, v9

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v9

    add-int/lit8 v52, v9, 0x4

    add-int v36, v52, v36

    invoke-virtual {v0, v9}, LJ/D;->O(I)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v36

    goto :goto_2c

    :cond_3a
    move/from16 v36, v9

    add-int/lit8 v13, v48, 0x1

    goto :goto_2a

    :cond_3b
    invoke-virtual {v0, v7}, LJ/D;->N(I)V

    new-array v7, v9, [B

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_2d
    if-ge v9, v4, :cond_3e

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v36

    move/from16 v48, v4

    and-int/lit8 v4, v36, 0x1f

    if-eq v4, v11, :cond_3c

    const/16 v11, 0xc

    if-eq v4, v11, :cond_3c

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v4

    goto :goto_2e

    :cond_3c
    const/4 v4, 0x1

    :goto_2e
    const/4 v11, 0x0

    :goto_2f
    if-ge v11, v4, :cond_3d

    move/from16 v52, v4

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v4

    move/from16 v53, v9

    sget-object v9, LK/t;->a:[B

    move/from16 v56, v5

    move/from16 v54, v11

    const/4 v5, 0x0

    const/4 v11, 0x4

    invoke-static {v9, v5, v7, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v13, 0x4

    invoke-virtual {v0, v13, v7, v4}, LJ/D;->k(I[BI)V

    add-int/2addr v13, v4

    add-int/lit8 v11, v54, 0x1

    move/from16 v4, v52

    move/from16 v9, v53

    move/from16 v5, v56

    goto :goto_2f

    :cond_3d
    move/from16 v56, v5

    move/from16 v53, v9

    add-int/lit8 v9, v53, 0x1

    move/from16 v4, v48

    const/16 v11, 0xd

    goto :goto_2d

    :cond_3e
    move/from16 v56, v5

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vvc1."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v9, v33, 0x8

    iput v3, v8, LJ/Q;->a:I

    const-string v3, "video/vvc"

    move-object/from16 v33, v2

    move-object/from16 v59, v3

    move-object/from16 v58, v6

    move/from16 v60, v9

    move/from16 v64, v60

    move/from16 v9, v18

    move/from16 v2, v51

    move/from16 v11, v55

    const/4 v4, 0x4

    const/4 v5, 0x0

    const v6, 0x65736473

    const/4 v7, 0x1

    const/16 v15, 0xff

    const/16 v36, 0x10

    goto/16 :goto_24

    :cond_3f
    :try_start_2
    const-string v0, "Unsupported VVC version"

    const/4 v5, 0x0

    invoke-static {v5, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Error parsing VVC configuration"

    invoke-static {v0, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_40
    move/from16 v56, v5

    move/from16 v55, v11

    const v3, 0x76657875

    if-ne v13, v3, :cond_50

    add-int/lit8 v13, v48, 0x8

    invoke-virtual {v0, v13}, LJ/D;->N(I)V

    iget v3, v0, LJ/D;->b:I

    const/4 v4, 0x0

    :goto_30
    sub-int v5, v3, v48

    if-ge v5, v1, :cond_49

    invoke-virtual {v0, v3}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v5

    if-lez v5, :cond_41

    const/4 v11, 0x1

    goto :goto_31

    :cond_41
    const/4 v11, 0x0

    :goto_31
    invoke-static {v6, v11}, Lb0/a;->b(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v11

    const v13, 0x65796573

    if-ne v11, v13, :cond_48

    add-int/lit8 v4, v3, 0x8

    invoke-virtual {v0, v4}, LJ/D;->N(I)V

    iget v4, v0, LJ/D;->b:I

    :goto_32
    sub-int v11, v4, v3

    if-ge v11, v5, :cond_47

    invoke-virtual {v0, v4}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v11

    if-lez v11, :cond_42

    const/4 v13, 0x1

    goto :goto_33

    :cond_42
    const/4 v13, 0x0

    :goto_33
    invoke-static {v6, v13}, Lb0/a;->b(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v13

    const v2, 0x73747269

    if-ne v13, v2, :cond_46

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v2

    new-instance v4, LZ0/i;

    new-instance v11, LP/g;

    and-int/lit8 v13, v2, 0x1

    move/from16 v53, v2

    const/4 v2, 0x1

    if-ne v13, v2, :cond_43

    const/4 v2, 0x1

    goto :goto_34

    :cond_43
    const/4 v2, 0x0

    :goto_34
    and-int/lit8 v13, v53, 0x2

    move/from16 v54, v3

    const/4 v3, 0x2

    if-ne v13, v3, :cond_44

    const/4 v3, 0x1

    goto :goto_35

    :cond_44
    const/4 v3, 0x0

    :goto_35
    and-int/lit8 v13, v53, 0x8

    move/from16 v53, v5

    move/from16 v5, v18

    if-ne v13, v5, :cond_45

    const/4 v5, 0x1

    goto :goto_36

    :cond_45
    const/4 v5, 0x0

    :goto_36
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, v11, LP/g;->a:Z

    iput-boolean v3, v11, LP/g;->b:Z

    iput-boolean v5, v11, LP/g;->c:Z

    invoke-direct {v4, v11}, LZ0/i;-><init>(Ljava/lang/Object;)V

    goto :goto_37

    :cond_46
    move/from16 v54, v3

    move/from16 v53, v5

    add-int/2addr v4, v11

    const/4 v2, 0x2

    const/16 v18, 0x8

    goto :goto_32

    :cond_47
    move/from16 v54, v3

    move/from16 v53, v5

    const/4 v4, 0x0

    goto :goto_37

    :cond_48
    move/from16 v54, v3

    move/from16 v53, v5

    :goto_37
    add-int v3, v54, v53

    const/4 v2, 0x2

    const/16 v18, 0x8

    goto/16 :goto_30

    :cond_49
    if-nez v4, :cond_4a

    const/4 v2, 0x0

    goto :goto_38

    :cond_4a
    new-instance v2, La1/g;

    invoke-direct {v2, v4}, La1/g;-><init>(Ljava/lang/Object;)V

    :goto_38
    if-eqz v2, :cond_4c

    iget-object v2, v2, La1/g;->e:Ljava/lang/Object;

    check-cast v2, LZ0/i;

    iget-object v2, v2, LZ0/i;->e:Ljava/lang/Object;

    check-cast v2, LP/g;

    iget-boolean v3, v2, LP/g;->c:Z

    if-eqz v12, :cond_4d

    iget-object v4, v12, LB0/b;->e:Ljava/lang/Object;

    check-cast v4, Lu1/P;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4d

    iget-boolean v4, v2, LP/g;->a:Z

    if-eqz v4, :cond_4b

    iget-boolean v2, v2, LP/g;->b:Z

    if-eqz v2, :cond_4b

    const/4 v2, 0x1

    goto :goto_39

    :cond_4b
    const/4 v2, 0x0

    :goto_39
    const-string v4, "both eye views must be marked as available"

    invoke-static {v4, v2}, Lb0/a;->b(Ljava/lang/String;Z)V

    xor-int/lit8 v2, v3, 0x1

    const-string v3, "for MV-HEVC, eye_views_reversed must be set to false"

    invoke-static {v3, v2}, Lb0/a;->b(Ljava/lang/String;Z)V

    :cond_4c
    move/from16 v2, v51

    goto :goto_3b

    :cond_4d
    move/from16 v2, v51

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4f

    if-eqz v3, :cond_4e

    goto :goto_3a

    :cond_4e
    const/16 v52, 0x4

    :goto_3a
    move/from16 v2, v52

    :cond_4f
    :goto_3b
    move-object/from16 v58, v6

    move-object/from16 v59, v7

    move/from16 v60, v9

    move/from16 v64, v15

    move/from16 v51, v50

    :goto_3c
    move/from16 v11, v55

    :goto_3d
    const/4 v4, 0x4

    const/4 v5, 0x0

    :goto_3e
    const v6, 0x65736473

    :goto_3f
    const/4 v7, 0x1

    const/16 v9, 0x8

    const/16 v15, 0xff

    goto/16 :goto_58

    :cond_50
    move/from16 v2, v51

    const v3, 0x64766343

    if-eq v13, v3, :cond_51

    const v3, 0x64767643

    if-eq v13, v3, :cond_51

    const v3, 0x64767743

    if-ne v13, v3, :cond_52

    :cond_51
    move-object/from16 v58, v6

    move-object/from16 v59, v7

    move/from16 v60, v9

    move-object/from16 v61, v12

    move/from16 v64, v15

    move/from16 v51, v50

    move/from16 v11, v56

    const/4 v4, 0x4

    const/4 v5, 0x0

    const v6, 0x65736473

    const/4 v7, 0x1

    const/16 v9, 0x8

    const/16 v15, 0xff

    goto/16 :goto_57

    :cond_52
    const v3, 0x76706343

    if-ne v13, v3, :cond_58

    if-nez v7, :cond_53

    const/4 v3, 0x1

    :goto_40
    const/4 v5, 0x0

    goto :goto_41

    :cond_53
    const/4 v3, 0x0

    goto :goto_40

    :goto_41
    invoke-static {v5, v3}, Lb0/a;->b(Ljava/lang/String;Z)V

    const-string v3, "video/x-vnd.on2.vp9"

    move/from16 v5, v50

    const v11, 0x76703038

    if-ne v5, v11, :cond_54

    const-string v7, "video/x-vnd.on2.vp8"

    goto :goto_42

    :cond_54
    move-object v7, v3

    :goto_42
    add-int/lit8 v13, v48, 0xc

    invoke-virtual {v0, v13}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v13

    shr-int/lit8 v15, v13, 0x4

    shr-int/lit8 v25, v13, 0x1

    and-int/lit8 v11, v25, 0x7

    int-to-byte v11, v11

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    int-to-byte v3, v15

    sget-object v14, LJ/h;->a:[B

    const/16 v14, 0xc

    const/16 v16, 0xb

    new-array v4, v14, [B

    const/16 v23, 0x1

    const/16 v24, 0x0

    aput-byte v23, v4, v24

    aput-byte v23, v4, v23

    const/16 v57, 0x2

    aput-byte v9, v4, v57

    aput-byte v57, v4, v17

    const/16 v22, 0x4

    aput-byte v23, v4, v22

    aput-byte v10, v4, v52

    const/16 v54, 0x6

    aput-byte v17, v4, v54

    aput-byte v23, v4, v53

    const/16 v18, 0x8

    aput-byte v3, v4, v18

    const/16 v3, 0x9

    aput-byte v22, v4, v3

    const/16 v3, 0xa

    aput-byte v23, v4, v3

    aput-byte v11, v4, v16

    invoke-static {v4}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v3

    move v11, v14

    move-object v14, v3

    goto :goto_43

    :cond_55
    const/16 v11, 0xc

    :goto_43
    and-int/lit8 v3, v13, 0x1

    if-eqz v3, :cond_56

    const/4 v3, 0x1

    goto :goto_44

    :cond_56
    const/4 v3, 0x0

    :goto_44
    invoke-virtual {v0}, LJ/D;->A()I

    move-result v4

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v9

    invoke-static {v4}, LG/n;->g(I)I

    move-result v10

    if-eqz v3, :cond_57

    const/16 v57, 0x1

    goto :goto_45

    :cond_57
    const/16 v57, 0x2

    :goto_45
    invoke-static {v9}, LG/n;->h(I)I

    move-result v3

    move/from16 v56, v3

    move/from16 v51, v5

    move-object/from16 v58, v6

    move-object/from16 v59, v7

    move/from16 v60, v15

    move/from16 v64, v60

    move/from16 v11, v57

    goto/16 :goto_3d

    :cond_58
    move/from16 v5, v50

    const/16 v11, 0xc

    const/16 v16, 0xb

    const v3, 0x61763143

    if-ne v13, v3, :cond_5a

    add-int/lit8 v3, v1, -0x8

    new-array v4, v3, [B

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4, v3}, LJ/D;->k(I[BI)V

    invoke-static {v4}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v14

    invoke-static {v4}, LJ/v;->h([B)LJ/v;

    move-result-object v3

    if-eqz v3, :cond_59

    iget v9, v3, LJ/v;->e:I

    iget v10, v3, LJ/v;->f:I

    iget v4, v3, LJ/v;->g:I

    iget v7, v3, LJ/v;->h:I

    iget-object v3, v3, LJ/v;->i:Ljava/lang/Object;

    move-object/from16 v33, v3

    check-cast v33, Ljava/lang/String;

    move v15, v9

    goto :goto_46

    :cond_59
    move/from16 v4, v55

    move/from16 v7, v56

    :goto_46
    const-string v3, "video/av01"

    move-object/from16 v59, v3

    move v11, v4

    move/from16 v51, v5

    move-object/from16 v58, v6

    move/from16 v56, v7

    move/from16 v60, v9

    move/from16 v64, v15

    goto/16 :goto_3d

    :cond_5a
    const v3, 0x636c6c69

    const/16 v4, 0x19

    if-ne v13, v3, :cond_5c

    if-nez v40, :cond_5b

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v40

    :cond_5b
    move-object/from16 v3, v40

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, LJ/D;->x()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, LJ/D;->x()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v40, v3

    move/from16 v51, v5

    move-object/from16 v58, v6

    move-object/from16 v59, v7

    move/from16 v60, v9

    move/from16 v64, v15

    goto/16 :goto_3c

    :cond_5c
    const v3, 0x6d646376

    if-ne v13, v3, :cond_5e

    if-nez v40, :cond_5d

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v40

    :cond_5d
    move-object/from16 v3, v40

    invoke-virtual {v0}, LJ/D;->x()S

    move-result v4

    invoke-virtual {v0}, LJ/D;->x()S

    move-result v13

    invoke-virtual {v0}, LJ/D;->x()S

    move-result v11

    move/from16 v51, v5

    invoke-virtual {v0}, LJ/D;->x()S

    move-result v5

    move-object/from16 v58, v6

    invoke-virtual {v0}, LJ/D;->x()S

    move-result v6

    move-object/from16 v59, v7

    invoke-virtual {v0}, LJ/D;->x()S

    move-result v7

    move/from16 v60, v9

    invoke-virtual {v0}, LJ/D;->x()S

    move-result v9

    move-object/from16 v61, v12

    invoke-virtual {v0}, LJ/D;->x()S

    move-result v12

    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v52

    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v62

    move/from16 v64, v15

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x2710

    div-long v6, v52, v4

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    div-long v4, v62, v4

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v40, v3

    move/from16 v11, v55

    move-object/from16 v12, v61

    goto/16 :goto_3d

    :cond_5e
    move/from16 v51, v5

    move-object/from16 v58, v6

    move-object/from16 v59, v7

    move/from16 v60, v9

    move-object/from16 v61, v12

    move/from16 v64, v15

    const v3, 0x64323633

    if-ne v13, v3, :cond_60

    if-nez v59, :cond_5f

    const/4 v3, 0x1

    :goto_47
    const/4 v5, 0x0

    goto :goto_48

    :cond_5f
    const/4 v3, 0x0

    goto :goto_47

    :goto_48
    invoke-static {v5, v3}, Lb0/a;->b(Ljava/lang/String;Z)V

    move-object/from16 v59, v32

    move/from16 v11, v55

    move-object/from16 v12, v61

    const/4 v4, 0x4

    goto/16 :goto_3e

    :cond_60
    const/4 v5, 0x0

    const v6, 0x65736473

    if-ne v13, v6, :cond_64

    if-nez v59, :cond_61

    const/4 v3, 0x1

    goto :goto_49

    :cond_61
    const/4 v3, 0x0

    :goto_49
    invoke-static {v5, v3}, Lb0/a;->b(Ljava/lang/String;Z)V

    move/from16 v3, v48

    invoke-static {v3, v0}, Lv0/d;->c(ILJ/D;)LP/N;

    move-result-object v3

    iget-object v4, v3, LP/N;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v7, v3, LP/N;->e:Ljava/lang/Object;

    check-cast v7, [B

    if-eqz v7, :cond_62

    invoke-static {v7}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v14

    :cond_62
    move-object/from16 v46, v3

    move-object/from16 v59, v4

    :cond_63
    :goto_4a
    move/from16 v11, v55

    move-object/from16 v12, v61

    const/4 v4, 0x4

    goto/16 :goto_3f

    :cond_64
    move/from16 v3, v48

    const v4, 0x62747274

    if-ne v13, v4, :cond_65

    add-int/lit8 v13, v3, 0x8

    invoke-virtual {v0, v13}, LJ/D;->N(I)V

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v3

    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v11

    new-instance v7, LZ/x;

    invoke-direct {v7, v11, v12, v3, v4}, LZ/x;-><init>(JJ)V

    move-object/from16 v45, v7

    goto :goto_4a

    :cond_65
    const v4, 0x70617370

    if-ne v13, v4, :cond_66

    add-int/lit8 v13, v3, 0x8

    invoke-virtual {v0, v13}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->E()I

    move-result v3

    invoke-virtual {v0}, LJ/D;->E()I

    move-result v4

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    move/from16 v38, v3

    move/from16 v11, v55

    move-object/from16 v12, v61

    const/4 v4, 0x4

    const/4 v7, 0x1

    const/16 v9, 0x8

    const/16 v15, 0xff

    const/16 v27, 0x1

    goto/16 :goto_58

    :cond_66
    const v4, 0x73763364

    if-ne v13, v4, :cond_69

    add-int/lit8 v13, v3, 0x8

    :goto_4b
    sub-int v4, v13, v3

    if-ge v4, v1, :cond_68

    invoke-virtual {v0, v13}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v4

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v7

    const v9, 0x70726f6a

    if-ne v7, v9, :cond_67

    iget-object v3, v0, LJ/D;->a:[B

    add-int/2addr v4, v13

    invoke-static {v3, v13, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    goto :goto_4c

    :cond_67
    add-int/2addr v13, v4

    goto :goto_4b

    :cond_68
    move-object v3, v5

    :goto_4c
    move-object/from16 v37, v3

    goto :goto_4a

    :cond_69
    const v4, 0x73743364

    if-ne v13, v4, :cond_6e

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v3

    move/from16 v4, v17

    invoke-virtual {v0, v4}, LJ/D;->O(I)V

    if-nez v3, :cond_63

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v3

    if-eqz v3, :cond_6d

    const/4 v13, 0x1

    if-eq v3, v13, :cond_6c

    const/4 v7, 0x2

    if-eq v3, v7, :cond_6b

    if-eq v3, v4, :cond_6a

    goto/16 :goto_4a

    :cond_6a
    move v2, v4

    goto/16 :goto_4a

    :cond_6b
    const/4 v2, 0x2

    goto/16 :goto_4a

    :cond_6c
    const/4 v2, 0x1

    goto/16 :goto_4a

    :cond_6d
    const/4 v2, 0x0

    goto/16 :goto_4a

    :cond_6e
    move/from16 v4, v17

    const v7, 0x61707643

    if-ne v13, v7, :cond_75

    add-int/lit8 v7, v1, -0xc

    new-array v9, v7, [B

    add-int/lit8 v13, v3, 0xc

    invoke-virtual {v0, v13}, LJ/D;->N(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v9, v7}, LJ/D;->k(I[BI)V

    sget-object v10, LJ/h;->a:[B

    const/16 v10, 0x11

    if-lt v7, v10, :cond_6f

    const/4 v10, 0x1

    goto :goto_4d

    :cond_6f
    move v10, v3

    :goto_4d
    const-string v11, "Invalid APV CSD length: %s"

    invoke-static {v7, v11, v10}, LF1/i;->d(ILjava/lang/String;Z)V

    aget-byte v10, v9, v3

    const/4 v13, 0x1

    if-ne v10, v13, :cond_70

    const/4 v11, 0x1

    goto :goto_4e

    :cond_70
    move v11, v3

    :goto_4e
    const-string v12, "Invalid APV CSD version: %s"

    invoke-static {v10, v12, v11}, LF1/i;->d(ILjava/lang/String;Z)V

    aget-byte v10, v9, v52

    const/16 v15, 0xff

    and-int/2addr v10, v15

    const/16 v54, 0x6

    aget-byte v11, v9, v54

    and-int/2addr v11, v15

    aget-byte v12, v9, v53

    and-int/2addr v12, v15

    sget-object v13, LJ/W;->a:Ljava/lang/String;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "apv1.apvf"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ".apvl"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ".apvb"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static {v9}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v14

    new-instance v10, LJ/D;

    invoke-direct {v10, v9}, LJ/D;-><init>([B)V

    new-instance v11, LJ/B;

    invoke-direct {v11, v9, v7}, LJ/B;-><init>([BI)V

    iget v7, v10, LJ/D;->b:I

    const/16 v9, 0x8

    mul-int/2addr v7, v9

    invoke-virtual {v11, v7}, LJ/B;->m(I)V

    const/4 v7, 0x1

    invoke-virtual {v11, v7}, LJ/B;->p(I)V

    invoke-virtual {v11, v9}, LJ/B;->g(I)I

    move-result v10

    move v13, v3

    const/4 v12, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    :goto_4f
    if-ge v13, v10, :cond_74

    invoke-virtual {v11, v7}, LJ/B;->p(I)V

    invoke-virtual {v11, v9}, LJ/B;->g(I)I

    move-result v3

    move/from16 v21, v20

    move/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v12

    const/4 v12, 0x0

    :goto_50
    if-ge v12, v3, :cond_73

    const/4 v4, 0x6

    invoke-virtual {v11, v4}, LJ/B;->o(I)V

    invoke-virtual {v11}, LJ/B;->f()Z

    move-result v18

    invoke-virtual {v11}, LJ/B;->n()V

    move/from16 v4, v16

    invoke-virtual {v11, v4}, LJ/B;->p(I)V

    const/4 v4, 0x4

    invoke-virtual {v11, v4}, LJ/B;->o(I)V

    invoke-virtual {v11, v4}, LJ/B;->g(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x8

    invoke-virtual {v11, v7}, LJ/B;->p(I)V

    if-eqz v18, :cond_72

    invoke-virtual {v11, v9}, LJ/B;->g(I)I

    move-result v17

    invoke-virtual {v11, v9}, LJ/B;->g(I)I

    move-result v18

    invoke-virtual {v11, v7}, LJ/B;->p(I)V

    invoke-virtual {v11}, LJ/B;->f()Z

    move-result v19

    invoke-static/range {v17 .. v17}, LG/n;->g(I)I

    move-result v17

    if-eqz v19, :cond_71

    move/from16 v19, v7

    goto :goto_51

    :cond_71
    const/16 v19, 0x2

    :goto_51
    invoke-static/range {v18 .. v18}, LG/n;->h(I)I

    move-result v18

    move/from16 v20, v19

    move/from16 v19, v17

    move/from16 v17, v18

    :cond_72
    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v21

    const/4 v4, 0x3

    const/16 v16, 0xb

    goto :goto_50

    :cond_73
    const/4 v4, 0x4

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/16 v16, 0xb

    goto :goto_4f

    :cond_74
    const/4 v4, 0x4

    new-instance v3, LG/n;

    const-string v3, "video/apv"

    move-object/from16 v59, v3

    move/from16 v56, v12

    move/from16 v60, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v64, v20

    :goto_52
    move-object/from16 v12, v61

    goto/16 :goto_58

    :cond_75
    const/4 v4, 0x4

    const/4 v7, 0x1

    const/16 v9, 0x8

    const/16 v15, 0xff

    const v3, 0x636f6c72

    if-ne v13, v3, :cond_7a

    const/4 v3, -0x1

    if-ne v10, v3, :cond_7a

    move/from16 v11, v56

    if-ne v11, v3, :cond_7b

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v12

    const v13, 0x6e636c78

    if-eq v12, v13, :cond_77

    const v13, 0x6e636c63

    if-ne v12, v13, :cond_76

    goto :goto_53

    :cond_76
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported color type: "

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, LK/f;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "BoxParsers"

    invoke-static {v12, v3}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_77
    :goto_53
    invoke-virtual {v0}, LJ/D;->H()I

    move-result v3

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, LJ/D;->O(I)V

    const/16 v12, 0x13

    if-ne v1, v12, :cond_78

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_78

    move v12, v7

    goto :goto_54

    :cond_78
    const/4 v12, 0x0

    :goto_54
    invoke-static {v3}, LG/n;->g(I)I

    move-result v3

    if-eqz v12, :cond_79

    move v11, v7

    :cond_79
    invoke-static {v10}, LG/n;->h(I)I

    move-result v10

    move/from16 v56, v10

    move-object/from16 v12, v61

    move v10, v3

    goto :goto_58

    :cond_7a
    move/from16 v11, v56

    :cond_7b
    :goto_55
    move/from16 v56, v11

    :goto_56
    move/from16 v11, v55

    goto :goto_52

    :goto_57
    invoke-static {v0}, LK/a;->c(LJ/D;)LK/a;

    move-result-object v13

    move/from16 v56, v11

    move-object/from16 v44, v13

    goto :goto_56

    :goto_58
    add-int v1, v47, v1

    move/from16 v18, v9

    move/from16 v3, v49

    move/from16 v4, v51

    move/from16 v5, v56

    move-object/from16 v6, v58

    move-object/from16 v7, v59

    move/from16 v9, v60

    move/from16 v15, v64

    const/16 v17, 0x3

    goto/16 :goto_14

    :goto_59
    if-eqz v44, :cond_7c

    move-object/from16 v1, v44

    iget-object v1, v1, LK/a;->e:Ljava/lang/String;

    const-string v7, "video/dolby-vision"

    goto :goto_5a

    :cond_7c
    move-object/from16 v1, v33

    move-object/from16 v7, v59

    :goto_5a
    if-nez v7, :cond_7d

    move-object/from16 v1, p1

    goto/16 :goto_e

    :cond_7d
    new-instance v3, LG/w;

    invoke-direct {v3}, LG/w;-><init>()V

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LG/w;->a:Ljava/lang/String;

    invoke-static {v7}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LG/w;->o:Ljava/lang/String;

    iput-object v1, v3, LG/w;->k:Ljava/lang/String;

    move/from16 v1, v43

    iput v1, v3, LG/w;->v:I

    move/from16 v1, v42

    iput v1, v3, LG/w;->w:I

    move/from16 v1, v41

    iput v1, v3, LG/w;->y:I

    move/from16 v1, v39

    iput v1, v3, LG/w;->z:I

    move/from16 v1, v38

    iput v1, v3, LG/w;->D:F

    move-object/from16 v1, p1

    iget v4, v1, Lv0/c;->c:I

    iput v4, v3, LG/w;->B:I

    iget-boolean v4, v1, Lv0/c;->d:Z

    iput-boolean v4, v3, LG/w;->C:Z

    move-object/from16 v4, v37

    iput-object v4, v3, LG/w;->E:[B

    iput v2, v3, LG/w;->F:I

    iput-object v14, v3, LG/w;->r:Ljava/util/List;

    move/from16 v2, v36

    iput v2, v3, LG/w;->q:I

    move/from16 v2, v35

    iput v2, v3, LG/w;->H:I

    move-object/from16 v7, v34

    iput-object v7, v3, LG/w;->s:LG/s;

    move-object/from16 v2, p2

    iput-object v2, v3, LG/w;->d:Ljava/lang/String;

    if-eqz v40, :cond_7e

    invoke-virtual/range {v40 .. v40}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    move-object/from16 v42, v15

    goto :goto_5b

    :cond_7e
    move-object/from16 v42, v5

    :goto_5b
    new-instance v38, LG/n;

    move/from16 v39, v10

    move/from16 v41, v11

    move/from16 v40, v55

    move/from16 v43, v60

    move/from16 v44, v64

    invoke-direct/range {v38 .. v44}, LG/n;-><init>(III[BII)V

    move-object/from16 v4, v38

    iput-object v4, v3, LG/w;->G:LG/n;

    move-object/from16 v4, v45

    if-eqz v4, :cond_7f

    iget-wide v5, v4, LZ/x;->a:J

    invoke-static {v5, v6}, LS1/e;->s(J)I

    move-result v5

    iput v5, v3, LG/w;->i:I

    iget-wide v4, v4, LZ/x;->b:J

    invoke-static {v4, v5}, LS1/e;->s(J)I

    move-result v4

    iput v4, v3, LG/w;->j:I

    goto :goto_5c

    :cond_7f
    move-object/from16 v4, v46

    if-eqz v4, :cond_80

    iget-wide v5, v4, LP/N;->b:J

    invoke-static {v5, v6}, LS1/e;->s(J)I

    move-result v5

    iput v5, v3, LG/w;->i:I

    iget-wide v4, v4, LP/N;->c:J

    invoke-static {v4, v5}, LS1/e;->s(J)I

    move-result v4

    iput v4, v3, LG/w;->j:I

    :cond_80
    :goto_5c
    new-instance v4, LG/x;

    invoke-direct {v4, v3}, LG/x;-><init>(LG/w;)V

    iput-object v4, v8, LJ/Q;->d:Ljava/lang/Object;

    :goto_5d
    add-int v3, v29, v49

    invoke-virtual {v0, v3}, LJ/D;->N(I)V

    add-int/lit8 v9, v28, 0x1

    move-object v10, v1

    move-object v5, v2

    move/from16 v11, v30

    move/from16 v13, v31

    const/16 v12, 0xc

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_81
    return-object v8
.end method

.method public static j(LK/d;Lb0/v;JLG/s;ZZLt1/j;Z)Ljava/util/ArrayList;
    .locals 58

    move-object/from16 v0, p0

    iget-object v2, v0, LK/d;->i:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_89

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LK/d;

    iget v7, v6, LK/f;->f:I

    const v8, 0x7472616b

    if-eq v7, v8, :cond_0

    move-object/from16 v34, v2

    move-object v9, v3

    move/from16 v21, v5

    const/16 v16, 0x0

    goto/16 :goto_64

    :cond_0
    const v7, 0x6d766864

    invoke-virtual {v0, v7}, LK/d;->i(I)LK/e;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, 0x6d646961

    invoke-virtual {v6, v8}, LK/d;->h(I)LK/d;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x68646c72    # 4.3148E24f

    invoke-virtual {v9, v10}, LK/d;->i(I)LK/e;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, LK/e;->g:LJ/D;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, LJ/D;->N(I)V

    invoke-virtual {v10}, LJ/D;->m()I

    move-result v10

    const v12, 0x736f756e

    const/4 v14, -0x1

    const/16 v16, 0x0

    if-ne v10, v12, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const v12, 0x76696465

    if-ne v10, v12, :cond_2

    const/4 v10, 0x2

    goto :goto_2

    :cond_2
    const v12, 0x74657874

    if-eq v10, v12, :cond_5

    const v12, 0x7362746c

    if-eq v10, v12, :cond_5

    const v12, 0x73756274

    if-eq v10, v12, :cond_5

    const v12, 0x636c6370

    if-eq v10, v12, :cond_5

    const v12, 0x73756270

    if-ne v10, v12, :cond_3

    goto :goto_1

    :cond_3
    const v12, 0x6d657461

    if-ne v10, v12, :cond_4

    const/4 v10, 0x5

    goto :goto_2

    :cond_4
    move v10, v14

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v10, 0x3

    :goto_2
    const-string v12, "BoxParsers"

    const/16 v18, 0x1

    const/4 v13, 0x4

    move/from16 v21, v5

    if-ne v10, v14, :cond_6

    move-object/from16 v1, p7

    move-object/from16 v34, v2

    move-object/from16 v19, v3

    move-object/from16 v27, v6

    move-object/from16 v26, v12

    const/4 v0, 0x0

    const-wide/16 v23, 0x0

    goto/16 :goto_29

    :cond_6
    const-wide/16 v23, 0x0

    const v4, 0x746b6864

    invoke-virtual {v6, v4}, LK/d;->i(I)LK/e;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, LK/e;->g:LJ/D;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, LJ/D;->N(I)V

    invoke-virtual {v4}, LJ/D;->m()I

    move-result v25

    invoke-static/range {v25 .. v25}, Lv0/d;->e(I)I

    move-result v25

    if-nez v25, :cond_7

    goto :goto_3

    :cond_7
    move v5, v11

    :goto_3
    invoke-virtual {v4, v5}, LJ/D;->O(I)V

    invoke-virtual {v4}, LJ/D;->m()I

    move-result v28

    invoke-virtual {v4, v13}, LJ/D;->O(I)V

    iget v5, v4, LJ/D;->b:I

    if-nez v25, :cond_8

    move v8, v13

    goto :goto_4

    :cond_8
    const/16 v8, 0x8

    :goto_4
    move/from16 v15, v16

    :goto_5
    const-wide v38, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v15, v8, :cond_b

    iget-object v11, v4, LJ/D;->a:[B

    add-int v27, v5, v15

    aget-byte v11, v11, v27

    if-eq v11, v14, :cond_a

    if-nez v25, :cond_9

    invoke-virtual {v4}, LJ/D;->C()J

    move-result-wide v29

    goto :goto_6

    :cond_9
    invoke-virtual {v4}, LJ/D;->G()J

    move-result-wide v29

    :goto_6
    cmp-long v5, v29, v23

    if-nez v5, :cond_c

    :goto_7
    move-wide/from16 v29, v38

    goto :goto_8

    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/16 v11, 0x10

    goto :goto_5

    :cond_b
    invoke-virtual {v4, v8}, LJ/D;->O(I)V

    goto :goto_7

    :cond_c
    :goto_8
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, LJ/D;->O(I)V

    invoke-virtual {v4}, LJ/D;->H()I

    move-result v31

    invoke-virtual {v4, v13}, LJ/D;->O(I)V

    invoke-virtual {v4}, LJ/D;->m()I

    move-result v5

    invoke-virtual {v4}, LJ/D;->m()I

    move-result v8

    invoke-virtual {v4, v13}, LJ/D;->O(I)V

    invoke-virtual {v4}, LJ/D;->m()I

    move-result v11

    invoke-virtual {v4}, LJ/D;->m()I

    move-result v15

    const/high16 v13, -0x10000

    const/high16 v14, 0x10000

    if-nez v5, :cond_e

    if-ne v8, v14, :cond_e

    if-eq v11, v13, :cond_d

    if-ne v11, v14, :cond_e

    :cond_d
    if-nez v15, :cond_e

    const/16 v13, 0x5a

    :goto_9
    move/from16 v32, v13

    :goto_a
    const/16 v13, 0x10

    goto :goto_b

    :cond_e
    if-nez v5, :cond_10

    if-ne v8, v13, :cond_10

    if-eq v11, v14, :cond_f

    if-ne v11, v13, :cond_10

    :cond_f
    if-nez v15, :cond_10

    const/16 v13, 0x10e

    goto :goto_9

    :cond_10
    if-eq v5, v13, :cond_11

    if-ne v5, v14, :cond_12

    :cond_11
    if-nez v8, :cond_12

    if-nez v11, :cond_12

    if-ne v15, v13, :cond_12

    const/16 v13, 0xb4

    goto :goto_9

    :cond_12
    move/from16 v32, v16

    goto :goto_a

    :goto_b
    invoke-virtual {v4, v13}, LJ/D;->O(I)V

    invoke-virtual {v4}, LJ/D;->x()S

    move-result v34

    const/4 v14, 0x2

    invoke-virtual {v4, v14}, LJ/D;->O(I)V

    invoke-virtual {v4}, LJ/D;->x()S

    move-result v35

    int-to-long v4, v5

    int-to-long v14, v15

    mul-long/2addr v4, v14

    int-to-long v14, v8

    move-wide/from16 v42, v14

    int-to-long v13, v11

    mul-long v14, v42, v13

    sub-long/2addr v4, v14

    cmp-long v4, v4, v23

    if-gez v4, :cond_13

    move/from16 v33, v18

    goto :goto_c

    :cond_13
    move/from16 v33, v16

    :goto_c
    new-instance v27, Lv0/c;

    invoke-direct/range {v27 .. v35}, Lv0/c;-><init>(IJIIZII)V

    move-object/from16 v4, v27

    cmp-long v5, p2, v38

    if-nez v5, :cond_14

    move-wide/from16 v42, v29

    goto :goto_d

    :cond_14
    move-wide/from16 v42, p2

    :goto_d
    iget-object v5, v7, LK/e;->g:LJ/D;

    invoke-static {v5}, Lv0/d;->g(LJ/D;)LK/i;

    move-result-object v5

    iget-wide v7, v5, LK/i;->c:J

    cmp-long v5, v42, v38

    if-nez v5, :cond_15

    move-wide v13, v7

    move-wide/from16 v7, v38

    :goto_e
    const v5, 0x6d696e66

    goto :goto_f

    :cond_15
    sget-object v5, LJ/W;->a:Ljava/lang/String;

    sget-object v48, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v44, 0xf4240

    move-wide/from16 v46, v7

    invoke-static/range {v42 .. v48}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    move-wide/from16 v13, v46

    goto :goto_e

    :goto_f
    invoke-virtual {v9, v5}, LK/d;->h(I)LK/d;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x7374626c

    invoke-virtual {v11, v5}, LK/d;->h(I)LK/d;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x6d646864

    invoke-virtual {v9, v5}, LK/d;->i(I)LK/e;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, LK/e;->g:LJ/D;

    const/16 v9, 0x8

    invoke-virtual {v5, v9}, LJ/D;->N(I)V

    invoke-virtual {v5}, LJ/D;->m()I

    move-result v9

    invoke-static {v9}, Lv0/d;->e(I)I

    move-result v9

    if-nez v9, :cond_16

    const/16 v15, 0x8

    goto :goto_10

    :cond_16
    const/16 v15, 0x10

    :goto_10
    invoke-virtual {v5, v15}, LJ/D;->O(I)V

    invoke-virtual {v5}, LJ/D;->C()J

    move-result-wide v31

    iget v15, v5, LJ/D;->b:I

    if-nez v9, :cond_17

    const/4 v0, 0x4

    goto :goto_11

    :cond_17
    const/16 v0, 0x8

    :goto_11
    move-object/from16 v34, v2

    move/from16 v2, v16

    :goto_12
    if-ge v2, v0, :cond_1b

    move/from16 v27, v2

    iget-object v2, v5, LJ/D;->a:[B

    add-int v28, v15, v27

    aget-byte v2, v2, v28

    move/from16 v28, v9

    const/4 v9, -0x1

    if-eq v2, v9, :cond_1a

    if-nez v28, :cond_18

    invoke-virtual {v5}, LJ/D;->C()J

    move-result-wide v27

    goto :goto_13

    :cond_18
    invoke-virtual {v5}, LJ/D;->G()J

    move-result-wide v27

    :goto_13
    cmp-long v0, v27, v23

    if-nez v0, :cond_19

    :goto_14
    move-object v9, v3

    move-wide/from16 v2, v31

    :goto_15
    move-wide/from16 v0, v38

    goto :goto_16

    :cond_19
    sget-object v0, LJ/W;->a:Ljava/lang/String;

    sget-object v33, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v29, 0xf4240

    invoke-static/range {v27 .. v33}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v38

    goto :goto_14

    :cond_1a
    move-object v9, v3

    move-wide/from16 v2, v31

    add-int/lit8 v27, v27, 0x1

    move-object v3, v9

    move/from16 v2, v27

    move/from16 v9, v28

    goto :goto_12

    :cond_1b
    move-object v9, v3

    move-wide/from16 v2, v31

    invoke-virtual {v5, v0}, LJ/D;->O(I)V

    goto :goto_15

    :goto_16
    invoke-virtual {v5}, LJ/D;->H()I

    move-result v5

    shr-int/lit8 v15, v5, 0xa

    and-int/lit8 v15, v15, 0x1f

    add-int/lit8 v15, v15, 0x60

    int-to-char v15, v15

    shr-int/lit8 v27, v5, 0x5

    and-int/lit8 v27, v27, 0x1f

    move/from16 v28, v5

    add-int/lit8 v5, v27, 0x60

    int-to-char v5, v5

    and-int/lit8 v27, v28, 0x1f

    move/from16 v28, v5

    add-int/lit8 v5, v27, 0x60

    int-to-char v5, v5

    move/from16 v27, v5

    move-object/from16 v19, v9

    const/4 v5, 0x3

    new-array v9, v5, [C

    aput-char v15, v9, v16

    aput-char v28, v9, v18

    const/16 v37, 0x2

    aput-char v27, v9, v37

    move/from16 v15, v16

    :goto_17
    if-ge v15, v5, :cond_1e

    aget-char v5, v9, v15

    move/from16 v28, v15

    const/16 v15, 0x61

    if-lt v5, v15, :cond_1d

    const/16 v15, 0x7a

    if-le v5, v15, :cond_1c

    goto :goto_18

    :cond_1c
    add-int/lit8 v15, v28, 0x1

    const/4 v5, 0x3

    goto :goto_17

    :cond_1d
    :goto_18
    const/4 v5, 0x0

    goto :goto_19

    :cond_1e
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([C)V

    :goto_19
    const v9, 0x73747364

    invoke-virtual {v11, v9}, LK/d;->i(I)LK/e;

    move-result-object v9

    if-nez v9, :cond_1f

    const-string v0, "Ignoring track where sample table (stbl) box is missing a sample description (stsd)."

    invoke-static {v12, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p7

    move-object/from16 v27, v6

    move-object/from16 v26, v12

    :goto_1a
    const/4 v0, 0x0

    goto/16 :goto_29

    :cond_1f
    iget-object v9, v9, LK/e;->g:LJ/D;

    move-object/from16 v11, p4

    move/from16 v15, p6

    invoke-static {v9, v4, v5, v11, v15}, Lv0/d;->i(LJ/D;Lv0/c;Ljava/lang/String;LG/s;Z)LJ/Q;

    move-result-object v5

    const v9, 0x74726566

    invoke-virtual {v6, v9}, LK/d;->h(I)LK/d;

    move-result-object v9

    if-eqz v9, :cond_20

    const v11, 0x63686170

    invoke-virtual {v9, v11}, LK/d;->i(I)LK/e;

    move-result-object v9

    if-eqz v9, :cond_20

    iget-object v9, v9, LK/e;->g:LJ/D;

    const/16 v11, 0x8

    invoke-virtual {v9, v11}, LJ/D;->N(I)V

    invoke-virtual {v9}, LJ/D;->a()I

    move-result v11

    move-object/from16 v27, v9

    const/4 v9, 0x4

    if-lt v11, v9, :cond_20

    invoke-virtual/range {v27 .. v27}, LJ/D;->m()I

    move-result v9

    goto :goto_1b

    :cond_20
    const/4 v9, -0x1

    :goto_1b
    if-nez p5, :cond_32

    const v11, 0x65647473

    invoke-virtual {v6, v11}, LK/d;->h(I)LK/d;

    move-result-object v11

    if-eqz v11, :cond_32

    const v15, 0x656c7374

    invoke-virtual {v11, v15}, LK/d;->i(I)LK/e;

    move-result-object v11

    if-nez v11, :cond_21

    move-wide/from16 v29, v0

    move-object/from16 v27, v6

    move-wide/from16 v31, v7

    move/from16 v28, v9

    move-object/from16 v26, v12

    const/4 v0, 0x0

    goto/16 :goto_26

    :cond_21
    iget-object v11, v11, LK/e;->g:LJ/D;

    const/16 v15, 0x8

    invoke-virtual {v11, v15}, LJ/D;->N(I)V

    invoke-virtual {v11}, LJ/D;->m()I

    move-result v15

    invoke-static {v15}, Lv0/d;->e(I)I

    move-result v15

    move-object/from16 v26, v12

    invoke-virtual {v11}, LJ/D;->E()I

    move-result v12

    move-object/from16 v27, v6

    if-ltz v12, :cond_22

    move/from16 v6, v18

    :goto_1c
    move/from16 v28, v9

    goto :goto_1d

    :cond_22
    move/from16 v6, v16

    goto :goto_1c

    :goto_1d
    const-string v9, "Invalid initialCapacity: %s"

    invoke-static {v12, v9, v6}, LF1/i;->d(ILjava/lang/String;Z)V

    new-array v6, v12, [J

    move-object/from16 v29, v6

    if-ltz v12, :cond_23

    move/from16 v6, v18

    goto :goto_1e

    :cond_23
    move/from16 v6, v16

    :goto_1e
    invoke-static {v12, v9, v6}, LF1/i;->d(ILjava/lang/String;Z)V

    new-array v6, v12, [J

    move-object v9, v6

    move-wide/from16 v31, v7

    move/from16 v7, v16

    move-object/from16 v6, v29

    move-wide/from16 v29, v0

    move v0, v7

    move v1, v0

    :goto_1f
    if-ge v0, v12, :cond_2f

    move/from16 v8, v18

    if-ne v15, v8, :cond_24

    invoke-virtual {v11}, LJ/D;->G()J

    move-result-wide v38

    goto :goto_20

    :cond_24
    invoke-virtual {v11}, LJ/D;->C()J

    move-result-wide v38

    :goto_20
    add-int/lit8 v8, v1, 0x1

    move/from16 v33, v0

    array-length v0, v6

    move/from16 v35, v12

    const-string v12, "cannot store more than MAX_VALUE elements"

    const v40, 0x7fffffff

    if-le v8, v0, :cond_28

    array-length v0, v6

    if-ltz v8, :cond_27

    shr-int/lit8 v42, v0, 0x1

    add-int v0, v0, v42

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_25

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    :cond_25
    if-gez v0, :cond_26

    move/from16 v0, v40

    :cond_26
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    move-object v6, v0

    goto :goto_21

    :cond_27
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_28
    :goto_21
    aput-wide v38, v6, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x1

    if-ne v15, v8, :cond_29

    invoke-virtual {v11}, LJ/D;->u()J

    move-result-wide v38

    move v8, v1

    goto :goto_22

    :cond_29
    invoke-virtual {v11}, LJ/D;->m()I

    move-result v0

    move v8, v1

    int-to-long v0, v0

    move-wide/from16 v38, v0

    :goto_22
    add-int/lit8 v0, v7, 0x1

    array-length v1, v9

    if-le v0, v1, :cond_2d

    array-length v1, v9

    if-ltz v0, :cond_2c

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v1, v12

    const/16 v18, 0x1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_2a

    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v1, v0, 0x1

    :cond_2a
    if-gez v1, :cond_2b

    move/from16 v1, v40

    :cond_2b
    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    move-object v9, v0

    goto :goto_23

    :cond_2c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2d
    :goto_23
    aput-wide v38, v9, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v11}, LJ/D;->x()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x2

    invoke-virtual {v11, v0}, LJ/D;->O(I)V

    add-int/lit8 v0, v33, 0x1

    move v1, v8

    move/from16 v12, v35

    const/16 v18, 0x1

    goto/16 :goto_1f

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    sget-object v0, Ly1/b;->g:Ly1/b;

    if-nez v1, :cond_30

    move-object v8, v0

    goto :goto_24

    :cond_30
    new-instance v8, Ly1/b;

    invoke-direct {v8, v6, v1}, Ly1/b;-><init>([JI)V

    :goto_24
    if-nez v7, :cond_31

    goto :goto_25

    :cond_31
    new-instance v0, Ly1/b;

    invoke-direct {v0, v9, v7}, Ly1/b;-><init>([JI)V

    :goto_25
    invoke-static {v8, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_26
    if-eqz v0, :cond_33

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ly1/b;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ly1/b;

    goto :goto_27

    :cond_32
    move-wide/from16 v29, v0

    move-object/from16 v27, v6

    move-wide/from16 v31, v7

    move/from16 v28, v9

    move-object/from16 v26, v12

    :cond_33
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_27
    iget-object v6, v5, LJ/Q;->d:Ljava/lang/Object;

    check-cast v6, LG/x;

    if-nez v6, :cond_34

    move-object/from16 v1, p7

    goto/16 :goto_1a

    :cond_34
    iget v7, v4, Lv0/c;->b:I

    if-eqz v7, :cond_36

    new-instance v8, LK/c;

    invoke-direct {v8, v7}, LK/c;-><init>(I)V

    invoke-virtual {v6}, LG/x;->a()LG/w;

    move-result-object v6

    iget-object v7, v5, LJ/Q;->d:Ljava/lang/Object;

    check-cast v7, LG/x;

    iget-object v7, v7, LG/x;->m:LG/V;

    if-eqz v7, :cond_35

    const/4 v9, 0x1

    new-array v11, v9, [LG/U;

    aput-object v8, v11, v16

    invoke-virtual {v7, v11}, LG/V;->a([LG/U;)LG/V;

    move-result-object v7

    goto :goto_28

    :cond_35
    const/4 v9, 0x1

    new-instance v7, LG/V;

    new-array v11, v9, [LG/U;

    aput-object v8, v11, v16

    invoke-direct {v7, v11}, LG/V;-><init>([LG/U;)V

    :goto_28
    iput-object v7, v6, LG/w;->l:LG/V;

    new-instance v7, LG/x;

    invoke-direct {v7, v6}, LG/x;-><init>(LG/w;)V

    move-object v6, v7

    :cond_36
    iget-object v7, v6, LG/x;->p:Ljava/lang/String;

    const-string v8, "text/x-unknown"

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    new-instance v9, Lv0/s;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-boolean v8, v9, Lv0/s;->m:Z

    const/4 v8, -0x1

    iput v8, v9, Lv0/s;->n:I

    iget v4, v4, Lv0/c;->a:I

    iput v4, v9, Lv0/s;->a:I

    iput v10, v9, Lv0/s;->b:I

    iput-wide v2, v9, Lv0/s;->c:J

    iput-wide v13, v9, Lv0/s;->d:J

    move-wide/from16 v2, v31

    iput-wide v2, v9, Lv0/s;->e:J

    move-wide/from16 v2, v29

    iput-wide v2, v9, Lv0/s;->f:J

    iput-object v6, v9, Lv0/s;->g:LG/x;

    iget v2, v5, LJ/Q;->b:I

    iput v2, v9, Lv0/s;->h:I

    iget-object v2, v5, LJ/Q;->c:Ljava/lang/Object;

    check-cast v2, [Lv0/u;

    invoke-virtual {v2}, [Lv0/u;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lv0/u;

    iput-object v2, v9, Lv0/s;->i:[Lv0/u;

    iget v2, v5, LJ/Q;->a:I

    iput v2, v9, Lv0/s;->j:I

    iput-object v1, v9, Lv0/s;->k:Ly1/b;

    iput-object v0, v9, Lv0/s;->l:Ly1/b;

    iput-boolean v7, v9, Lv0/s;->m:Z

    move/from16 v0, v28

    iput v0, v9, Lv0/s;->n:I

    iget-object v0, v9, Lv0/s;->g:LG/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lv0/t;

    invoke-direct {v0, v9}, Lv0/t;-><init>(Lv0/s;)V

    move-object/from16 v1, p7

    :goto_29
    invoke-interface {v1, v0}, Lt1/j;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lv0/t;

    if-nez v3, :cond_37

    move-object/from16 v9, v19

    goto/16 :goto_64

    :cond_37
    iget-object v0, v3, Lv0/t;->g:LG/x;

    move-object/from16 v6, v27

    const v2, 0x6d646961

    invoke-virtual {v6, v2}, LK/d;->h(I)LK/d;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x6d696e66

    invoke-virtual {v2, v5}, LK/d;->h(I)LK/d;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x7374626c

    invoke-virtual {v2, v5}, LK/d;->h(I)LK/d;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7374737a

    invoke-virtual {v2, v4}, LK/d;->i(I)LK/e;

    move-result-object v4

    const/16 v5, 0xc

    if-eqz v4, :cond_38

    new-instance v6, LA0/d;

    invoke-direct {v6, v4, v0}, LA0/d;-><init>(LK/e;LG/x;)V

    goto :goto_2a

    :cond_38
    const v4, 0x73747a32

    invoke-virtual {v2, v4}, LK/d;->i(I)LK/e;

    move-result-object v4

    if-eqz v4, :cond_88

    new-instance v6, LJ/v;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v4, v4, LK/e;->g:LJ/D;

    iput-object v4, v6, LJ/v;->i:Ljava/lang/Object;

    invoke-virtual {v4, v5}, LJ/D;->N(I)V

    invoke-virtual {v4}, LJ/D;->E()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    iput v7, v6, LJ/v;->f:I

    invoke-virtual {v4}, LJ/D;->E()I

    move-result v4

    iput v4, v6, LJ/v;->e:I

    :goto_2a
    invoke-interface {v6}, Lv0/b;->b()I

    move-result v4

    if-nez v4, :cond_39

    new-instance v2, Lv0/w;

    move/from16 v0, v16

    new-array v4, v0, [J

    new-array v5, v0, [I

    new-array v7, v0, [J

    new-array v8, v0, [I

    new-array v9, v0, [I

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v13}, Lv0/w;-><init>(Lv0/t;[J[II[J[I[IZJI)V

    move-object/from16 v9, v19

    :goto_2b
    const/16 v16, 0x0

    goto/16 :goto_63

    :cond_39
    iget v7, v3, Lv0/t;->b:I

    const/4 v14, 0x2

    if-ne v7, v14, :cond_3c

    iget-wide v7, v3, Lv0/t;->f:J

    cmp-long v9, v7, v23

    if-lez v9, :cond_3c

    int-to-float v9, v4

    long-to-float v7, v7

    const v8, 0x49742400    # 1000000.0f

    div-float/2addr v7, v8

    div-float/2addr v9, v7

    invoke-virtual {v0}, LG/x;->a()LG/w;

    move-result-object v0

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v9, v7

    if-eqz v7, :cond_3b

    const/4 v7, 0x0

    cmpl-float v7, v9, v7

    if-lez v7, :cond_3a

    goto :goto_2c

    :cond_3a
    const/4 v7, 0x0

    goto :goto_2d

    :cond_3b
    :goto_2c
    const/4 v7, 0x1

    :goto_2d
    invoke-static {v7}, LF1/i;->g(Z)V

    iput v9, v0, LG/w;->A:F

    new-instance v7, LG/x;

    invoke-direct {v7, v0}, LG/x;-><init>(LG/w;)V

    invoke-virtual {v3}, Lv0/t;->a()Lv0/s;

    move-result-object v0

    iput-object v7, v0, Lv0/s;->g:LG/x;

    new-instance v3, Lv0/t;

    invoke-direct {v3, v0}, Lv0/t;-><init>(Lv0/s;)V

    :cond_3c
    iget-object v0, v3, Lv0/t;->g:LG/x;

    const v7, 0x7374636f

    invoke-virtual {v2, v7}, LK/d;->i(I)LK/e;

    move-result-object v7

    if-nez v7, :cond_3d

    const v7, 0x636f3634

    invoke-virtual {v2, v7}, LK/d;->i(I)LK/e;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    goto :goto_2e

    :cond_3d
    const/4 v8, 0x0

    :goto_2e
    iget-object v7, v7, LK/e;->g:LJ/D;

    const v9, 0x73747363

    invoke-virtual {v2, v9}, LK/d;->i(I)LK/e;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, LK/e;->g:LJ/D;

    const v10, 0x73747473

    invoke-virtual {v2, v10}, LK/d;->i(I)LK/e;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, LK/e;->g:LJ/D;

    const v11, 0x73747373

    invoke-virtual {v2, v11}, LK/d;->i(I)LK/e;

    move-result-object v11

    if-eqz v11, :cond_3e

    iget-object v11, v11, LK/e;->g:LJ/D;

    goto :goto_2f

    :cond_3e
    const/4 v11, 0x0

    :goto_2f
    const v12, 0x63747473

    invoke-virtual {v2, v12}, LK/d;->i(I)LK/e;

    move-result-object v2

    if-eqz v2, :cond_3f

    iget-object v2, v2, LK/e;->g:LJ/D;

    goto :goto_30

    :cond_3f
    const/4 v2, 0x0

    :goto_30
    new-instance v12, Lv0/a;

    invoke-direct {v12, v9, v7, v8}, Lv0/a;-><init>(LJ/D;LJ/D;Z)V

    invoke-virtual {v10, v5}, LJ/D;->N(I)V

    invoke-virtual {v10}, LJ/D;->E()I

    move-result v7

    const/16 v18, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v10}, LJ/D;->E()I

    move-result v8

    invoke-virtual {v10}, LJ/D;->E()I

    move-result v9

    if-eqz v2, :cond_40

    invoke-virtual {v2, v5}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->E()I

    move-result v13

    goto :goto_31

    :cond_40
    const/4 v13, 0x0

    :goto_31
    if-eqz v11, :cond_42

    invoke-virtual {v11, v5}, LJ/D;->N(I)V

    invoke-virtual {v11}, LJ/D;->E()I

    move-result v5

    if-lez v5, :cond_41

    invoke-virtual {v11}, LJ/D;->E()I

    move-result v14

    const/16 v18, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_33

    :cond_41
    const/4 v11, 0x0

    :goto_32
    const/4 v14, -0x1

    goto :goto_33

    :cond_42
    const/4 v5, 0x0

    goto :goto_32

    :goto_33
    invoke-interface {v6}, Lv0/b;->a()I

    move-result v15

    iget-object v1, v0, LG/x;->p:Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v0, -0x1

    if-eq v15, v0, :cond_44

    const-string v0, "audio/raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "audio/g711-mlaw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "audio/g711-alaw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_43
    if-nez v7, :cond_44

    if-nez v13, :cond_44

    if-nez v5, :cond_44

    const/4 v0, 0x1

    goto :goto_34

    :cond_44
    const/4 v0, 0x0

    :goto_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v11, :cond_45

    const/16 v46, 0x1

    goto :goto_35

    :cond_45
    const/16 v46, 0x0

    :goto_35
    if-eqz v0, :cond_4e

    iget v0, v12, Lv0/a;->a:I

    new-array v2, v0, [J

    new-array v4, v0, [I

    :goto_36
    invoke-virtual {v12}, Lv0/a;->a()Z

    move-result v5

    if-eqz v5, :cond_46

    iget v5, v12, Lv0/a;->b:I

    iget-wide v6, v12, Lv0/a;->d:J

    aput-wide v6, v2, v5

    iget v6, v12, Lv0/a;->c:I

    aput v6, v4, v5

    goto :goto_36

    :cond_46
    int-to-long v5, v9

    const/16 v7, 0x2000

    div-int/2addr v7, v15

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_37
    if-ge v8, v0, :cond_47

    aget v10, v4, v8

    invoke-static {v10, v7}, LJ/W;->e(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_47
    new-array v8, v9, [J

    new-array v10, v9, [I

    new-array v11, v9, [J

    new-array v12, v9, [I

    move-object/from16 v22, v2

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v26, 0x0

    :goto_38
    if-ge v13, v0, :cond_49

    aget v27, v4, v13

    aget-wide v28, v22, v13

    move/from16 v57, v26

    move/from16 v26, v0

    move/from16 v0, v20

    move/from16 v20, v57

    move/from16 v57, v27

    move/from16 v27, v2

    move/from16 v2, v57

    :goto_39
    if-lez v2, :cond_48

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v30

    aput-wide v28, v8, v20

    move/from16 v31, v2

    mul-int v2, v15, v30

    aput v2, v10, v20

    add-int v27, v27, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v32, v4

    move-wide/from16 v35, v5

    int-to-long v4, v14

    mul-long v5, v35, v4

    aput-wide v5, v11, v20

    const/16 v18, 0x1

    aput v18, v12, v20

    aget v2, v10, v20

    int-to-long v4, v2

    add-long v28, v28, v4

    add-int v14, v14, v30

    sub-int v2, v31, v30

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v4, v32

    move-wide/from16 v5, v35

    goto :goto_39

    :cond_48
    move-object/from16 v32, v4

    move-wide/from16 v35, v5

    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v20

    move/from16 v20, v0

    move/from16 v0, v26

    move/from16 v26, v2

    move/from16 v2, v27

    goto :goto_38

    :cond_49
    move-wide/from16 v35, v5

    int-to-long v4, v14

    mul-long v5, v35, v4

    int-to-long v13, v2

    const/4 v0, 0x0

    if-eqz p8, :cond_4a

    new-array v8, v0, [J

    :cond_4a
    if-eqz p8, :cond_4b

    new-array v10, v0, [I

    :cond_4b
    if-eqz p8, :cond_4c

    new-array v11, v0, [J

    :cond_4c
    if-eqz p8, :cond_4d

    new-array v12, v0, [I

    :cond_4d
    move-wide/from16 v26, v5

    move/from16 v49, v9

    move/from16 v42, v20

    :goto_3a
    move-object/from16 v40, v8

    move-object/from16 v41, v10

    move-object/from16 v44, v12

    goto/16 :goto_49

    :cond_4e
    const/4 v0, 0x0

    if-eqz p8, :cond_4f

    new-array v15, v0, [J

    goto :goto_3b

    :cond_4f
    new-array v15, v4, [J

    :goto_3b
    move-object/from16 v22, v2

    if-eqz p8, :cond_50

    new-array v2, v0, [I

    goto :goto_3c

    :cond_50
    new-array v2, v4, [I

    :goto_3c
    move/from16 v20, v5

    if-eqz p8, :cond_51

    new-array v5, v0, [J

    goto :goto_3d

    :cond_51
    new-array v5, v4, [J

    :goto_3d
    move-object/from16 v27, v6

    if-eqz p8, :cond_52

    new-array v6, v0, [I

    goto :goto_3e

    :cond_52
    new-array v6, v4, [I

    :goto_3e
    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move/from16 v30, v13

    move/from16 v0, v20

    move-wide/from16 v32, v23

    move-wide/from16 v35, v32

    move-wide/from16 v38, v35

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v31, 0x0

    :goto_3f
    if-ge v10, v4, :cond_5e

    move-wide/from16 v39, v38

    move/from16 v38, v20

    const/16 v20, 0x1

    :goto_40
    if-nez v38, :cond_53

    invoke-virtual {v12}, Lv0/a;->a()Z

    move-result v20

    if-eqz v20, :cond_53

    move/from16 v41, v7

    move/from16 v42, v8

    iget-wide v7, v12, Lv0/a;->d:J

    move/from16 v43, v4

    iget v4, v12, Lv0/a;->c:I

    move/from16 v38, v4

    move-wide/from16 v39, v7

    move/from16 v7, v41

    move/from16 v8, v42

    move/from16 v4, v43

    goto :goto_40

    :cond_53
    move/from16 v43, v4

    move/from16 v41, v7

    move/from16 v42, v8

    if-nez v20, :cond_55

    const-string v4, "Unexpected end of chunk data"

    move-object/from16 v7, v26

    invoke-static {v7, v4}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p8, :cond_54

    invoke-static {v15, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    move-object v8, v4

    move-object v12, v6

    move v4, v10

    :goto_41
    move-object v10, v2

    move/from16 v2, v38

    goto/16 :goto_45

    :cond_54
    move-object v12, v6

    move v4, v10

    move-object v8, v15

    goto :goto_41

    :cond_55
    move-object/from16 v7, v26

    if-eqz v22, :cond_57

    :goto_42
    if-nez v31, :cond_56

    if-lez v30, :cond_56

    invoke-virtual/range {v22 .. v22}, LJ/D;->E()I

    move-result v31

    invoke-virtual/range {v22 .. v22}, LJ/D;->m()I

    move-result v11

    add-int/lit8 v30, v30, -0x1

    goto :goto_42

    :cond_56
    add-int/lit8 v31, v31, -0x1

    :cond_57
    invoke-interface/range {v27 .. v27}, Lv0/b;->c()I

    move-result v4

    move-object v8, v5

    move-object/from16 v26, v6

    int-to-long v5, v4

    add-long v35, v35, v5

    if-le v4, v13, :cond_58

    move v13, v4

    :cond_58
    if-nez p8, :cond_5a

    aput-wide v39, v15, v10

    aput v4, v2, v10

    move-wide/from16 v44, v5

    int-to-long v4, v11

    add-long v4, v32, v4

    aput-wide v4, v8, v10

    if-nez v29, :cond_59

    const/4 v4, 0x1

    goto :goto_43

    :cond_59
    const/4 v4, 0x0

    :goto_43
    aput v4, v26, v10

    if-ne v10, v14, :cond_5b

    const/16 v18, 0x1

    aput v18, v26, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_5a
    move-wide/from16 v44, v5

    :cond_5b
    :goto_44
    if-eqz v29, :cond_5c

    if-ne v10, v14, :cond_5c

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_5c

    invoke-virtual/range {v29 .. v29}, LJ/D;->E()I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    move v14, v4

    :cond_5c
    int-to-long v4, v9

    add-long v32, v32, v4

    add-int/lit8 v4, v42, -0x1

    if-nez v4, :cond_5d

    if-lez v41, :cond_5d

    invoke-virtual/range {v28 .. v28}, LJ/D;->E()I

    move-result v4

    invoke-virtual/range {v28 .. v28}, LJ/D;->m()I

    move-result v5

    add-int/lit8 v6, v41, -0x1

    move v9, v5

    move/from16 v41, v6

    :cond_5d
    add-long v5, v39, v44

    add-int/lit8 v20, v38, -0x1

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v38, v5

    move-object v5, v8

    move-object/from16 v6, v26

    move v8, v4

    move-object/from16 v26, v7

    move/from16 v7, v41

    move/from16 v4, v43

    goto/16 :goto_3f

    :cond_5e
    move/from16 v43, v4

    move/from16 v41, v7

    move/from16 v42, v8

    move-object/from16 v7, v26

    move-object v8, v5

    move-object/from16 v26, v6

    move-object v10, v2

    move-object v8, v15

    move/from16 v2, v20

    move-object/from16 v12, v26

    :goto_45
    int-to-long v14, v11

    add-long v14, v32, v14

    if-eqz v22, :cond_60

    :goto_46
    if-lez v30, :cond_60

    invoke-virtual/range {v22 .. v22}, LJ/D;->E()I

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v6, 0x0

    goto :goto_47

    :cond_5f
    invoke-virtual/range {v22 .. v22}, LJ/D;->m()I

    add-int/lit8 v30, v30, -0x1

    goto :goto_46

    :cond_60
    const/4 v6, 0x1

    :goto_47
    if-nez v0, :cond_61

    if-nez v42, :cond_61

    if-nez v2, :cond_61

    if-nez v41, :cond_61

    if-nez v31, :cond_61

    if-nez v6, :cond_63

    :cond_61
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Inconsistent stbl box for track "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v3, Lv0/t;->a:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": remainingSynchronizationSamples "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v42

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesInChunk "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v6, :cond_62

    const-string v0, ", ctts invalid"

    goto :goto_48

    :cond_62
    const-string v0, ""

    :goto_48
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    move/from16 v49, v4

    move-object v11, v5

    move/from16 v42, v13

    move-wide/from16 v26, v14

    move-wide/from16 v13, v35

    goto/16 :goto_3a

    :goto_49
    iget-wide v8, v3, Lv0/t;->f:J

    cmp-long v0, v8, v23

    const-wide/32 v35, 0x7fffffff

    if-lez v0, :cond_64

    const-wide/16 v4, 0x8

    mul-long/2addr v4, v13

    const-wide/32 v6, 0xf4240

    sget-object v10, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v4 .. v10}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    cmp-long v0, v4, v23

    if-lez v0, :cond_64

    cmp-long v0, v4, v35

    if-gez v0, :cond_64

    invoke-virtual/range {v17 .. v17}, LG/x;->a()LG/w;

    move-result-object v0

    long-to-int v2, v4

    iput v2, v0, LG/w;->i:I

    new-instance v2, LG/x;

    invoke-direct {v2, v0}, LG/x;-><init>(LG/w;)V

    invoke-virtual {v3}, Lv0/t;->a()Lv0/s;

    move-result-object v0

    iput-object v2, v0, Lv0/s;->g:LG/x;

    new-instance v3, Lv0/t;

    invoke-direct {v3, v0}, Lv0/t;-><init>(Lv0/s;)V

    :cond_64
    iget v0, v3, Lv0/t;->b:I

    iget-wide v4, v3, Lv0/t;->c:J

    iget-object v2, v3, Lv0/t;->g:LG/x;

    iget-object v6, v3, Lv0/t;->j:Ly1/b;

    iget-object v7, v3, Lv0/t;->i:Ly1/b;

    sget-object v56, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v28, 0xf4240

    move-wide/from16 v30, v4

    move-object/from16 v32, v56

    invoke-static/range {v26 .. v32}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v47

    invoke-static {v1}, LS1/e;->t(Ljava/util/Collection;)[I

    move-result-object v45

    if-nez v7, :cond_66

    if-nez p8, :cond_65

    invoke-static {v11, v4, v5}, LJ/W;->M([JJ)V

    :cond_65
    new-instance v38, Lv0/w;

    move-object/from16 v39, v3

    move-object/from16 v43, v11

    invoke-direct/range {v38 .. v49}, Lv0/w;-><init>(Lv0/t;[J[II[J[I[IZJI)V

    :goto_4a
    move-object/from16 v9, v19

    move-object/from16 v2, v38

    goto/16 :goto_2b

    :cond_66
    move-object/from16 v43, v11

    iget v8, v7, Ly1/b;->f:I

    const-wide/16 v9, -0x1

    if-eqz p8, :cond_6a

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne v8, v1, :cond_67

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ly1/b;->a(I)J

    move-result-wide v1

    cmp-long v1, v1, v23

    if-nez v1, :cond_67

    invoke-virtual {v6, v0}, Ly1/b;->a(I)J

    move-result-wide v1

    sub-long v50, v26, v1

    const-wide/32 v52, 0xf4240

    iget-wide v0, v3, Lv0/t;->c:J

    move-wide/from16 v54, v0

    invoke-static/range {v50 .. v56}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    :goto_4b
    move-wide/from16 v47, v0

    goto :goto_4d

    :cond_67
    move-wide/from16 v4, v23

    const/4 v0, 0x0

    :goto_4c
    if-ge v0, v8, :cond_69

    invoke-virtual {v6, v0}, Ly1/b;->a(I)J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-eqz v1, :cond_68

    invoke-virtual {v7, v0}, Ly1/b;->a(I)J

    move-result-wide v1

    add-long/2addr v1, v4

    move-wide v4, v1

    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_69
    iget-wide v8, v3, Lv0/t;->d:J

    sget-object v10, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v10}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    goto :goto_4b

    :goto_4d
    new-instance v38, Lv0/w;

    move-object/from16 v39, v3

    invoke-direct/range {v38 .. v49}, Lv0/w;-><init>(Lv0/t;[J[II[J[I[IZJI)V

    goto :goto_4a

    :cond_6a
    move-object/from16 v11, v43

    const/4 v12, 0x1

    if-ne v8, v12, :cond_6e

    if-ne v0, v12, :cond_6e

    array-length v13, v11

    const/4 v14, 0x2

    if-lt v13, v14, :cond_6e

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ly1/b;->a(I)J

    move-result-wide v14

    invoke-virtual {v7, v13}, Ly1/b;->a(I)J

    move-result-wide v50

    move-wide/from16 v28, v9

    iget-wide v9, v3, Lv0/t;->c:J

    move/from16 v18, v12

    iget-wide v12, v3, Lv0/t;->d:J

    move-wide/from16 v52, v9

    move-wide/from16 v54, v12

    invoke-static/range {v50 .. v56}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    add-long/2addr v9, v14

    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v17, v1

    const/4 v1, 0x0

    const/4 v13, 0x4

    invoke-static {v13, v1, v12}, LJ/W;->g(III)I

    move-result v20

    move/from16 v25, v13

    array-length v13, v11

    add-int/lit8 v13, v13, -0x4

    invoke-static {v13, v1, v12}, LJ/W;->g(III)I

    move-result v12

    aget-wide v30, v11, v1

    cmp-long v1, v30, v14

    if-gtz v1, :cond_6b

    aget-wide v30, v11, v20

    cmp-long v1, v14, v30

    if-gez v1, :cond_6b

    aget-wide v12, v11, v12

    cmp-long v1, v12, v9

    if-gez v1, :cond_6b

    const-wide/16 v12, 0x2

    add-long v12, v26, v12

    cmp-long v1, v9, v12

    if-gtz v1, :cond_6b

    const/4 v1, 0x1

    goto :goto_4e

    :cond_6b
    const/4 v1, 0x0

    :goto_4e
    if-eqz v1, :cond_6c

    sub-long v9, v26, v9

    move-wide/from16 v12, v23

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const/16 v16, 0x0

    aget-wide v22, v11, v16

    sub-long v50, v14, v22

    iget v1, v2, LG/x;->L:I

    int-to-long v14, v1

    move-wide/from16 v23, v12

    iget-wide v12, v3, Lv0/t;->c:J

    move-wide/from16 v54, v12

    move-wide/from16 v52, v14

    invoke-static/range {v50 .. v56}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    iget v1, v2, LG/x;->L:I

    int-to-long v14, v1

    move-wide/from16 v50, v9

    iget-wide v9, v3, Lv0/t;->c:J

    move-wide/from16 v54, v9

    move-wide/from16 v52, v14

    invoke-static/range {v50 .. v56}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    cmp-long v1, v12, v23

    if-nez v1, :cond_6d

    cmp-long v1, v9, v23

    if-eqz v1, :cond_6c

    goto :goto_4f

    :cond_6c
    move-object/from16 v1, p1

    const/4 v9, 0x1

    goto :goto_50

    :cond_6d
    :goto_4f
    cmp-long v1, v12, v35

    if-gtz v1, :cond_6c

    cmp-long v1, v9, v35

    if-gtz v1, :cond_6c

    long-to-int v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lb0/v;->a:I

    long-to-int v0, v9

    iput v0, v1, Lb0/v;->b:I

    invoke-static {v11, v4, v5}, LJ/W;->M([JJ)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ly1/b;->a(I)J

    move-result-wide v50

    const-wide/32 v52, 0xf4240

    iget-wide v4, v3, Lv0/t;->d:J

    move-wide/from16 v54, v4

    invoke-static/range {v50 .. v56}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v47

    new-instance v38, Lv0/w;

    move-object/from16 v39, v3

    move-object/from16 v43, v11

    invoke-direct/range {v38 .. v49}, Lv0/w;-><init>(Lv0/t;[J[II[J[I[IZJI)V

    goto/16 :goto_4a

    :cond_6e
    move-object/from16 v17, v1

    move-wide/from16 v28, v9

    move-object/from16 v1, p1

    move v9, v12

    :goto_50
    if-ne v8, v9, :cond_70

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ly1/b;->a(I)J

    move-result-wide v4

    const-wide/16 v23, 0x0

    cmp-long v4, v4, v23

    if-nez v4, :cond_70

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v13}, Ly1/b;->a(I)J

    move-result-wide v4

    const/4 v0, 0x0

    :goto_51
    array-length v2, v11

    if-ge v0, v2, :cond_6f

    aget-wide v6, v11, v0

    sub-long v50, v6, v4

    iget-wide v6, v3, Lv0/t;->c:J

    sget-object v56, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v52, 0xf4240

    move-wide/from16 v54, v6

    invoke-static/range {v50 .. v56}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    aput-wide v6, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_6f
    sub-long v50, v26, v4

    iget-wide v4, v3, Lv0/t;->c:J

    sget-object v56, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v52, 0xf4240

    move-wide/from16 v54, v4

    invoke-static/range {v50 .. v56}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v47

    new-instance v38, Lv0/w;

    move-object/from16 v39, v3

    move-object/from16 v43, v11

    invoke-direct/range {v38 .. v49}, Lv0/w;-><init>(Lv0/t;[J[II[J[I[IZJI)V

    goto/16 :goto_4a

    :cond_70
    move-object/from16 v4, v40

    move-object/from16 v10, v41

    move-object/from16 v12, v44

    move/from16 v9, v49

    const/4 v5, 0x1

    if-ne v0, v5, :cond_71

    const/4 v0, 0x1

    goto :goto_52

    :cond_71
    const/4 v0, 0x0

    :goto_52
    new-array v5, v8, [I

    new-array v13, v8, [I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v5

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_53
    if-ge v14, v8, :cond_7a

    move-object/from16 v44, v12

    move-object/from16 v22, v13

    invoke-virtual {v6, v14}, Ly1/b;->a(I)J

    move-result-wide v12

    cmp-long v25, v12, v28

    if-eqz v25, :cond_79

    invoke-virtual {v7, v14}, Ly1/b;->a(I)J

    move-result-wide v35

    move/from16 v25, v14

    move/from16 v26, v15

    iget-wide v14, v3, Lv0/t;->c:J

    move-wide/from16 v37, v14

    iget-wide v14, v3, Lv0/t;->d:J

    sget-object v41, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v39, v14

    invoke-static/range {v35 .. v41}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v14

    add-long/2addr v14, v12

    move-object/from16 v27, v7

    const/4 v7, 0x1

    invoke-static {v11, v12, v13, v7}, LJ/W;->d([JJZ)I

    move-result v12

    aput v12, v20, v25

    invoke-static {v11, v14, v15, v0}, LJ/W;->a([JJZ)I

    move-result v7

    add-int/lit8 v12, v7, -0x1

    move/from16 v30, v0

    move v13, v12

    move v12, v7

    const/4 v7, 0x0

    :goto_54
    array-length v0, v11

    if-ge v12, v0, :cond_74

    aget-wide v31, v11, v12

    cmp-long v0, v31, v14

    if-gez v0, :cond_72

    move v13, v12

    goto :goto_55

    :cond_72
    add-int/lit8 v7, v7, 0x1

    iget v0, v2, LG/x;->r:I

    if-le v7, v0, :cond_73

    goto :goto_56

    :cond_73
    :goto_55
    add-int/lit8 v12, v12, 0x1

    goto :goto_54

    :cond_74
    :goto_56
    add-int/lit8 v13, v13, 0x1

    aput v13, v22, v25

    aget v0, v20, v25

    :goto_57
    aget v7, v20, v25

    if-lez v7, :cond_75

    aget v12, v44, v7

    const/16 v18, 0x1

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_76

    add-int/lit8 v7, v7, -0x1

    aput v7, v20, v25

    goto :goto_57

    :cond_75
    const/16 v18, 0x1

    :cond_76
    const/16 v16, 0x0

    if-nez v7, :cond_77

    aget v7, v44, v16

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_77

    aput v0, v20, v25

    :goto_58
    aget v0, v20, v25

    aget v7, v22, v25

    if-ge v0, v7, :cond_77

    aget v7, v44, v0

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_77

    add-int/lit8 v0, v0, 0x1

    aput v0, v20, v25

    const/16 v18, 0x1

    goto :goto_58

    :cond_77
    aget v0, v22, v25

    aget v7, v20, v25

    sub-int v12, v0, v7

    add-int/2addr v12, v1

    if-eq v5, v7, :cond_78

    const/4 v1, 0x1

    goto :goto_59

    :cond_78
    move/from16 v1, v16

    :goto_59
    or-int v1, v26, v1

    move v5, v0

    move v15, v1

    move v1, v12

    goto :goto_5a

    :cond_79
    move/from16 v30, v0

    move-object/from16 v27, v7

    move/from16 v25, v14

    move/from16 v26, v15

    const/16 v16, 0x0

    :goto_5a
    add-int/lit8 v14, v25, 0x1

    move-object/from16 v13, v22

    move-object/from16 v7, v27

    move/from16 v0, v30

    move-object/from16 v12, v44

    goto/16 :goto_53

    :cond_7a
    move-object/from16 v27, v7

    move-object/from16 v44, v12

    move-object/from16 v22, v13

    move/from16 v26, v15

    const/16 v16, 0x0

    if-eq v1, v9, :cond_7b

    const/4 v0, 0x1

    goto :goto_5b

    :cond_7b
    move/from16 v0, v16

    :goto_5b
    or-int v0, v26, v0

    if-eqz v0, :cond_7c

    new-array v5, v1, [J

    goto :goto_5c

    :cond_7c
    move-object v5, v4

    :goto_5c
    if-eqz v0, :cond_7d

    new-array v7, v1, [I

    goto :goto_5d

    :cond_7d
    move-object v7, v10

    :goto_5d
    if-eqz v0, :cond_7e

    move/from16 v42, v16

    :cond_7e
    if-eqz v0, :cond_7f

    new-array v9, v1, [I

    goto :goto_5e

    :cond_7f
    move-object/from16 v9, v44

    :goto_5e
    if-eqz v0, :cond_80

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5f

    :cond_80
    move-object/from16 v12, v17

    :goto_5f
    new-array v1, v1, [J

    move/from16 v13, v16

    move v14, v13

    move v15, v14

    const-wide/16 v35, 0x0

    :goto_60
    if-ge v13, v8, :cond_86

    invoke-virtual {v6, v13}, Ly1/b;->a(I)J

    move-result-wide v25

    move/from16 v17, v0

    aget v0, v20, v13

    move-object/from16 v43, v1

    aget v1, v22, v13

    move-object/from16 v28, v2

    if-eqz v17, :cond_81

    sub-int v2, v1, v0

    invoke-static {v4, v0, v5, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10, v0, v7, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v29, v4

    move-object/from16 v4, v44

    invoke-static {v4, v0, v9, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_61

    :cond_81
    move-object/from16 v29, v4

    move-object/from16 v4, v44

    :goto_61
    move/from16 v2, v42

    :goto_62
    if-ge v0, v1, :cond_85

    move/from16 v31, v0

    move/from16 v30, v1

    iget-wide v0, v3, Lv0/t;->d:J

    sget-object v41, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v37, 0xf4240

    move-wide/from16 v39, v0

    invoke-static/range {v35 .. v41}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    aget-wide v32, v11, v31

    sub-long v47, v32, v25

    const-wide/32 v49, 0xf4240

    move-wide/from16 v32, v0

    iget-wide v0, v3, Lv0/t;->c:J

    move-wide/from16 v51, v0

    move-object/from16 v53, v41

    invoke-static/range {v47 .. v53}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    const-wide/16 v23, 0x0

    cmp-long v37, v0, v23

    if-gez v37, :cond_82

    const/4 v14, 0x1

    :cond_82
    add-long v0, v32, v0

    aput-wide v0, v43, v15

    if-eqz v17, :cond_83

    aget v0, v7, v15

    if-le v0, v2, :cond_83

    aget v2, v10, v31

    :cond_83
    if-eqz v17, :cond_84

    if-nez v46, :cond_84

    aget v0, v9, v15

    const/16 v18, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_84

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_84
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v31, 0x1

    move/from16 v1, v30

    goto :goto_62

    :cond_85
    move-object/from16 v0, v27

    const-wide/16 v23, 0x0

    invoke-virtual {v0, v13}, Ly1/b;->a(I)J

    move-result-wide v25

    add-long v35, v25, v35

    add-int/lit8 v13, v13, 0x1

    move/from16 v42, v2

    move-object/from16 v44, v4

    move/from16 v0, v17

    move-object/from16 v2, v28

    move-object/from16 v4, v29

    move-object/from16 v1, v43

    goto/16 :goto_60

    :cond_86
    move-object/from16 v43, v1

    move-object/from16 v28, v2

    iget-wide v0, v3, Lv0/t;->d:J

    sget-object v41, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v37, 0xf4240

    move-wide/from16 v39, v0

    invoke-static/range {v35 .. v41}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v47

    if-eqz v14, :cond_87

    invoke-virtual/range {v28 .. v28}, LG/x;->a()LG/w;

    move-result-object v0

    const/4 v8, 0x1

    iput-boolean v8, v0, LG/w;->u:Z

    new-instance v1, LG/x;

    invoke-direct {v1, v0}, LG/x;-><init>(LG/w;)V

    invoke-virtual {v3}, Lv0/t;->a()Lv0/s;

    move-result-object v0

    iput-object v1, v0, Lv0/s;->g:LG/x;

    new-instance v3, Lv0/t;

    invoke-direct {v3, v0}, Lv0/t;-><init>(Lv0/s;)V

    :cond_87
    move-object/from16 v39, v3

    new-instance v38, Lv0/w;

    invoke-static {v12}, LS1/e;->t(Ljava/util/Collection;)[I

    move-result-object v45

    array-length v0, v5

    move/from16 v49, v0

    move-object/from16 v40, v5

    move-object/from16 v41, v7

    move-object/from16 v44, v9

    invoke-direct/range {v38 .. v49}, Lv0/w;-><init>(Lv0/t;[J[II[J[I[IZJI)V

    move-object/from16 v9, v19

    move-object/from16 v2, v38

    :goto_63
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_64
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v0, p0

    move-object v3, v9

    move-object/from16 v2, v34

    goto/16 :goto_0

    :cond_88
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v1, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_89
    move-object v9, v3

    return-object v9
.end method

.method public static k(LK/e;Z)LG/V;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, LK/e;->g:LJ/D;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, LJ/D;->N(I)V

    new-instance v2, LG/V;

    const/4 v3, 0x0

    new-array v4, v3, [LG/U;

    invoke-direct {v2, v4}, LG/V;-><init>([LG/U;)V

    :goto_0
    invoke-virtual {v1}, LJ/D;->a()I

    move-result v4

    if-lt v4, v0, :cond_44

    iget v4, v1, LJ/D;->b:I

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v5

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v6

    const v7, 0x6d657461

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v6, v7, :cond_30

    invoke-virtual {v1, v4}, LJ/D;->N(I)V

    add-int v6, v4, v5

    invoke-virtual {v1, v0}, LJ/D;->O(I)V

    invoke-static {v1}, Lv0/d;->a(LJ/D;)V

    :goto_1
    iget v7, v1, LJ/D;->b:I

    if-ge v7, v6, :cond_2d

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v13

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v14

    const v15, 0x696c7374

    if-ne v14, v15, :cond_2f

    invoke-virtual {v1, v7}, LJ/D;->N(I)V

    add-int/2addr v7, v13

    invoke-virtual {v1, v0}, LJ/D;->O(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iget v13, v1, LJ/D;->b:I

    if-ge v13, v7, :cond_2c

    const-string v14, "Skipped unknown metadata entry: "

    const-string v15, "Skipped empty metadata entry: "

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v10

    const-string v9, "MetadataUtil"

    if-ge v10, v0, :cond_0

    const-string v10, "Skipped empty metadata entry"

    invoke-static {v9, v10}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v8, v12

    :goto_4
    const/4 v0, -0x1

    goto/16 :goto_10

    :cond_0
    add-int/2addr v13, v10

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v10

    shr-int/lit8 v8, v10, 0x18

    and-int/lit16 v8, v8, 0xff

    :try_start_0
    iget v3, v1, LJ/D;->b:I

    sub-int v3, v13, v3

    if-ge v3, v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, LK/f;->d(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_1
    const/16 v3, 0xa9

    const-string v15, "TCON"

    if-eq v8, v3, :cond_2

    const/16 v3, 0xfd

    if-ne v8, v3, :cond_3

    :cond_2
    const/4 v0, -0x1

    goto/16 :goto_c

    :cond_3
    const v3, 0x676e7265

    if-ne v10, v3, :cond_5

    :try_start_1
    invoke-static {v1}, Lv0/r;->f(LJ/D;)I

    move-result v3

    sub-int/2addr v3, v11

    invoke-static {v3}, Lp0/j;->a(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v8, Lp0/n;

    invoke-static {v3}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v3

    invoke-direct {v8, v15, v12, v3}, Lp0/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lu1/C0;)V

    goto :goto_6

    :cond_4
    const-string v3, "Failed to parse standard genre code"

    invoke-static {v9, v3}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    move-object v8, v12

    :goto_6
    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    goto :goto_4

    :cond_5
    const v3, 0x6469736b

    if-ne v10, v3, :cond_6

    :try_start_2
    const-string v3, "TPOS"

    invoke-static {v10, v1, v3}, Lv0/r;->e(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_6

    :cond_6
    const v3, 0x74726b6e

    if-ne v10, v3, :cond_7

    const-string v3, "TRCK"

    invoke-static {v10, v1, v3}, Lv0/r;->e(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_6

    :cond_7
    const v3, 0x746d706f

    if-ne v10, v3, :cond_8

    const-string v3, "TBPM"

    const/4 v8, 0x0

    invoke-static {v10, v3, v1, v11, v8}, Lv0/r;->g(ILjava/lang/String;LJ/D;ZZ)Lp0/i;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_7
    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    move-object v8, v3

    goto/16 :goto_4

    :cond_8
    const v3, 0x6370696c

    if-ne v10, v3, :cond_9

    :try_start_3
    const-string v3, "TCMP"

    invoke-static {v10, v3, v1, v11, v11}, Lv0/r;->g(ILjava/lang/String;LJ/D;ZZ)Lp0/i;

    move-result-object v8

    goto :goto_6

    :cond_9
    const v3, 0x636f7672

    if-ne v10, v3, :cond_b

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v1}, Lv0/r;->d(LJ/D;)Lp0/a;

    move-result-object v3

    move-object v8, v3

    goto :goto_6

    :cond_b
    const v3, 0x61415254

    if-ne v10, v3, :cond_c

    const-string v3, "TPE2"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_6

    :cond_c
    const v3, 0x736f6e6d

    if-ne v10, v3, :cond_d

    const-string v3, "TSOT"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_6

    :cond_d
    const v3, 0x736f616c

    if-ne v10, v3, :cond_e

    const-string v3, "TSOA"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_6

    :cond_e
    const v3, 0x736f6172

    if-ne v10, v3, :cond_f

    const-string v3, "TSOP"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_6

    :cond_f
    const v3, 0x736f6161

    if-ne v10, v3, :cond_10

    const-string v3, "TSO2"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto/16 :goto_6

    :cond_10
    const v3, 0x736f636f

    if-ne v10, v3, :cond_11

    const-string v3, "TSOC"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto/16 :goto_6

    :cond_11
    const v3, 0x72746e67

    if-ne v10, v3, :cond_12

    const-string v3, "ITUNESADVISORY"

    const/4 v8, 0x0

    invoke-static {v10, v3, v1, v8, v8}, Lv0/r;->g(ILjava/lang/String;LJ/D;ZZ)Lp0/i;

    move-result-object v3

    goto :goto_7

    :cond_12
    const v3, 0x70676170

    if-ne v10, v3, :cond_13

    const-string v3, "ITUNESGAPLESS"

    const/4 v8, 0x0

    invoke-static {v10, v3, v1, v8, v11}, Lv0/r;->g(ILjava/lang/String;LJ/D;ZZ)Lp0/i;

    move-result-object v3

    goto/16 :goto_7

    :cond_13
    const v3, 0x736f736e

    if-ne v10, v3, :cond_14

    const-string v3, "TVSHOWSORT"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto/16 :goto_6

    :cond_14
    const v3, 0x74767368

    if-ne v10, v3, :cond_15

    const-string v3, "TVSHOW"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto/16 :goto_6

    :cond_15
    const v3, 0x2d2d2d2d

    if-ne v10, v3, :cond_1c

    move-object v3, v12

    move-object v8, v3

    const/4 v9, -0x1

    const/4 v10, -0x1

    :goto_8
    iget v14, v1, LJ/D;->b:I

    if-ge v14, v13, :cond_19

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v15

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v12

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, LJ/D;->O(I)V

    const v0, 0x6d65616e

    if-ne v12, v0, :cond_16

    add-int/lit8 v15, v15, -0xc

    invoke-virtual {v1, v15}, LJ/D;->w(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_16
    const v0, 0x6e616d65

    if-ne v12, v0, :cond_17

    add-int/lit8 v15, v15, -0xc

    invoke-virtual {v1, v15}, LJ/D;->w(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_17
    const v0, 0x64617461

    if-ne v12, v0, :cond_18

    move v9, v14

    move v10, v15

    :cond_18
    add-int/lit8 v15, v15, -0xc

    invoke-virtual {v1, v15}, LJ/D;->O(I)V

    :goto_9
    const/16 v0, 0x8

    const/4 v12, 0x0

    goto :goto_8

    :cond_19
    if-eqz v3, :cond_1b

    if-eqz v8, :cond_1b

    const/4 v0, -0x1

    if-ne v9, v0, :cond_1a

    goto :goto_a

    :cond_1a
    invoke-virtual {v1, v9}, LJ/D;->N(I)V

    const/16 v9, 0x10

    invoke-virtual {v1, v9}, LJ/D;->O(I)V

    add-int/lit8 v10, v10, -0x10

    invoke-virtual {v1, v10}, LJ/D;->w(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lp0/k;

    invoke-direct {v10, v3, v8, v9}, Lp0/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v10

    goto :goto_b

    :cond_1b
    const/4 v0, -0x1

    :goto_a
    const/4 v8, 0x0

    :goto_b
    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    goto/16 :goto_10

    :cond_1c
    const/4 v0, -0x1

    goto/16 :goto_d

    :goto_c
    const v3, 0xffffff

    and-int/2addr v3, v10

    const v8, 0x636d74

    if-ne v3, v8, :cond_1d

    :try_start_4
    invoke-static {v10, v1}, Lv0/r;->c(ILJ/D;)Lp0/e;

    move-result-object v8

    goto :goto_b

    :cond_1d
    const v8, 0x6e616d

    if-eq v3, v8, :cond_2a

    const v8, 0x74726b

    if-ne v3, v8, :cond_1e

    goto/16 :goto_f

    :cond_1e
    const v8, 0x636f6d

    if-eq v3, v8, :cond_29

    const v8, 0x777274

    if-ne v3, v8, :cond_1f

    goto/16 :goto_e

    :cond_1f
    const v8, 0x646179

    if-ne v3, v8, :cond_20

    const-string v3, "TDRC"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_b

    :cond_20
    const v8, 0x415254

    if-ne v3, v8, :cond_21

    const-string v3, "TPE1"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_b

    :cond_21
    const v8, 0x746f6f

    if-ne v3, v8, :cond_22

    const-string v3, "TSSE"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_b

    :cond_22
    const v8, 0x616c62

    if-ne v3, v8, :cond_23

    const-string v3, "TALB"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_b

    :cond_23
    const v8, 0x6c7972

    if-ne v3, v8, :cond_24

    const-string v3, "USLT"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_b

    :cond_24
    const v8, 0x67656e

    if-ne v3, v8, :cond_25

    invoke-static {v10, v1, v15}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_b

    :cond_25
    const v8, 0x677270

    if-ne v3, v8, :cond_26

    const-string v3, "TIT1"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto :goto_b

    :cond_26
    const v8, 0x6d766e

    if-ne v3, v8, :cond_27

    const-string v3, "MVNM"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto/16 :goto_b

    :cond_27
    const v8, 0x6d7669

    if-ne v3, v8, :cond_28

    const-string v3, "MVIN"

    const/4 v8, 0x0

    invoke-static {v10, v3, v1, v11, v8}, Lv0/r;->g(ILjava/lang/String;LJ/D;ZZ)Lp0/i;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    move-object v8, v3

    goto :goto_10

    :cond_28
    :goto_d
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, LK/f;->d(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, LJ/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    const/4 v8, 0x0

    goto :goto_10

    :cond_29
    :goto_e
    :try_start_6
    const-string v3, "TCOM"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8

    goto/16 :goto_b

    :cond_2a
    :goto_f
    const-string v3, "TIT2"

    invoke-static {v10, v1, v3}, Lv0/r;->j(ILJ/D;Ljava/lang/String;)Lp0/n;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_b

    :goto_10
    if-eqz v8, :cond_2b

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    const/16 v0, 0x8

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto/16 :goto_2

    :goto_11
    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    throw v0

    :cond_2c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2d
    const/4 v12, 0x0

    goto :goto_12

    :cond_2e
    new-instance v12, LG/V;

    invoke-direct {v12, v6}, LG/V;-><init>(Ljava/util/List;)V

    goto :goto_12

    :cond_2f
    const/4 v0, -0x1

    add-int/2addr v7, v13

    invoke-virtual {v1, v7}, LJ/D;->N(I)V

    const/16 v0, 0x8

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1

    :goto_12
    invoke-virtual {v2, v12}, LG/V;->b(LG/V;)LG/V;

    move-result-object v0

    move-object v2, v0

    const/16 v13, 0x8

    :goto_13
    const/16 v16, 0x0

    goto/16 :goto_22

    :cond_30
    const/4 v0, -0x1

    const v3, 0x736d7461

    const/4 v7, 0x2

    if-ne v6, v3, :cond_3e

    invoke-virtual {v1, v4}, LJ/D;->N(I)V

    add-int v3, v4, v5

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, LJ/D;->O(I)V

    :goto_14
    iget v8, v1, LJ/D;->b:I

    if-ge v8, v3, :cond_3d

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v9

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v10

    const v12, 0x73617574

    if-ne v10, v12, :cond_3c

    const/16 v10, 0x10

    if-ge v9, v10, :cond_31

    const/4 v12, 0x0

    const/16 v13, 0x8

    goto/16 :goto_1b

    :cond_31
    const/4 v12, 0x4

    invoke-virtual {v1, v12}, LJ/D;->O(I)V

    move v9, v0

    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_15
    if-ge v0, v7, :cond_34

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v10

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v12

    if-nez v10, :cond_32

    move v9, v12

    goto :goto_16

    :cond_32
    if-ne v10, v11, :cond_33

    move v8, v12

    :cond_33
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_34
    const v0, -0x7fffffff

    if-ne v9, v6, :cond_35

    const/16 v3, 0xf0

    :goto_17
    const/16 v13, 0x8

    goto :goto_19

    :cond_35
    const/16 v7, 0xd

    if-ne v9, v7, :cond_36

    const/16 v3, 0x78

    goto :goto_17

    :cond_36
    const/16 v7, 0x15

    if-eq v9, v7, :cond_37

    move v3, v0

    goto :goto_17

    :cond_37
    invoke-virtual {v1}, LJ/D;->a()I

    move-result v7

    const/16 v13, 0x8

    if-lt v7, v13, :cond_3a

    iget v7, v1, LJ/D;->b:I

    add-int/2addr v7, v13

    if-le v7, v3, :cond_38

    goto :goto_18

    :cond_38
    invoke-virtual {v1}, LJ/D;->m()I

    move-result v3

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v7

    if-lt v3, v6, :cond_3a

    const v3, 0x73726672

    if-eq v7, v3, :cond_39

    goto :goto_18

    :cond_39
    invoke-virtual {v1}, LJ/D;->B()I

    move-result v3

    goto :goto_19

    :cond_3a
    :goto_18
    move v3, v0

    :goto_19
    if-ne v3, v0, :cond_3b

    :goto_1a
    const/4 v12, 0x0

    goto :goto_1b

    :cond_3b
    new-instance v12, LG/V;

    new-instance v0, Lq0/c;

    int-to-float v3, v3

    invoke-direct {v0, v3, v8}, Lq0/c;-><init>(FI)V

    new-array v3, v11, [LG/U;

    const/16 v16, 0x0

    aput-object v0, v3, v16

    invoke-direct {v12, v3}, LG/V;-><init>([LG/U;)V

    goto :goto_1b

    :cond_3c
    const/16 v10, 0x10

    const/4 v12, 0x4

    const/16 v13, 0x8

    add-int/2addr v8, v9

    invoke-virtual {v1, v8}, LJ/D;->N(I)V

    goto/16 :goto_14

    :cond_3d
    const/16 v13, 0x8

    goto :goto_1a

    :goto_1b
    invoke-virtual {v2, v12}, LG/V;->b(LG/V;)LG/V;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_13

    :cond_3e
    const/16 v13, 0x8

    const v0, -0x56878686

    if-ne v6, v0, :cond_3f

    invoke-virtual {v1}, LJ/D;->x()S

    move-result v0

    invoke-virtual {v1, v7}, LJ/D;->O(I)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0, v3}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/16 v6, 0x2d

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v8, 0x0

    :try_start_7
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v11

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    new-instance v3, LG/V;

    new-instance v7, LK/g;

    invoke-direct {v7, v6, v0}, LK/g;-><init>(FF)V

    new-array v0, v11, [LG/U;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0

    const/16 v16, 0x0

    :try_start_9
    aput-object v7, v0, v16

    invoke-direct {v3, v0}, LG/V;-><init>([LG/U;)V
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2

    move-object v12, v3

    goto :goto_1d

    :catch_0
    const/16 v16, 0x0

    goto :goto_1c

    :catch_1
    move/from16 v16, v8

    :catch_2
    :goto_1c
    const/4 v12, 0x0

    :goto_1d
    invoke-virtual {v2, v12}, LG/V;->b(LG/V;)LG/V;

    move-result-object v0

    :goto_1e
    move-object v2, v0

    goto :goto_22

    :cond_3f
    const/16 v16, 0x0

    const v0, 0x6368706c

    if-ne v6, v0, :cond_43

    const/4 v0, 0x5

    :try_start_a
    invoke-virtual {v1, v0}, LJ/D;->O(I)V

    invoke-virtual {v1}, LJ/D;->m()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move/from16 v8, v16

    :goto_1f
    if-ge v8, v0, :cond_41

    invoke-virtual {v1}, LJ/D;->u()J

    move-result-wide v6

    const-wide/16 v9, 0x2710

    div-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-gez v9, :cond_40

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :cond_40
    move-wide/from16 v18, v6

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v6, v7}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, LG/B;
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3

    const/4 v9, 0x0

    :try_start_b
    invoke-direct {v7, v9, v6}, LG/B;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Lk0/b;

    const/16 v22, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v23, v7

    invoke-direct/range {v17 .. v23}, Lk0/b;-><init>(JJZLG/B;)V

    move-object/from16 v6, v17

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    :catch_3
    const/4 v9, 0x0

    goto :goto_20

    :cond_41
    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    :catch_4
    :goto_20
    move-object v12, v9

    goto :goto_21

    :cond_42
    new-instance v0, LG/V;

    invoke-direct {v0, v3}, LG/V;-><init>(Ljava/util/List;)V
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_4

    move-object v12, v0

    :goto_21
    invoke-virtual {v2, v12}, LG/V;->b(LG/V;)LG/V;

    move-result-object v0

    goto :goto_1e

    :cond_43
    :goto_22
    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, LJ/D;->N(I)V

    move v0, v13

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_44
    return-object v2
.end method
