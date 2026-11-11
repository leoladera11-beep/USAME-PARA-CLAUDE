.class public abstract La0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:D

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, La0/g;->a:D

    return-void
.end method

.method public static a(LJ/D;)Ljava/util/ArrayList;
    .locals 30

    move-object/from16 v0, p0

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    move-object/from16 v18, v2

    goto/16 :goto_c

    :cond_1
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v3

    const v4, 0x64666c38

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    new-instance v3, LJ/D;

    invoke-direct {v3}, LJ/D;-><init>()V

    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    :try_start_0
    invoke-static {v0, v3, v4}, LJ/W;->B(LJ/D;LJ/D;Ljava/util/zip/Inflater;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    return-object v2

    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    throw v0

    :cond_3
    const v4, 0x72617720

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v4, v0, LJ/D;->b:I

    iget v6, v0, LJ/D;->c:I

    :goto_2
    if-ge v4, v6, :cond_15

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v7

    add-int/2addr v7, v4

    if-le v7, v4, :cond_0

    if-le v7, v6, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, LJ/D;->m()I

    move-result v4

    const v8, 0x6d657368

    if-ne v4, v8, :cond_14

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v4

    if-lez v4, :cond_8

    const/16 v8, 0x2710

    if-le v4, v8, :cond_6

    goto :goto_4

    :cond_6
    new-array v8, v4, [F

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v4, :cond_7

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, LJ/D;->m()I

    move-result v10

    if-lez v10, :cond_8

    const/16 v11, 0x7d00

    if-le v10, v11, :cond_9

    :cond_8
    :goto_4
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v5

    goto :goto_7

    :cond_9
    int-to-double v11, v4

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    sget-wide v15, La0/g;->a:D

    div-double/2addr v11, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    new-instance v12, LJ/B;

    move/from16 v17, v1

    iget-object v1, v0, LJ/D;->a:[B

    move-object/from16 v18, v2

    array-length v2, v1

    invoke-direct {v12, v1, v2}, LJ/B;-><init>([BI)V

    iget v1, v0, LJ/D;->b:I

    const/16 v2, 0x8

    mul-int/2addr v1, v2

    invoke-virtual {v12, v1}, LJ/B;->m(I)V

    mul-int/lit8 v1, v10, 0x5

    new-array v1, v1, [F

    move/from16 v19, v5

    const/4 v5, 0x5

    new-array v9, v5, [I

    move-wide/from16 v20, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_5
    if-ge v13, v10, :cond_d

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v5, :cond_c

    aget v22, v9, v2

    invoke-virtual {v12, v11}, LJ/B;->g(I)I

    move-result v23

    shr-int/lit8 v24, v23, 0x1

    and-int/lit8 v5, v23, 0x1

    neg-int v5, v5

    xor-int v5, v24, v5

    add-int v5, v5, v22

    if-ge v5, v4, :cond_b

    if-gez v5, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v22, v14, 0x1

    aget v23, v8, v5

    aput v23, v1, v14

    aput v5, v9, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v14, v22

    const/4 v5, 0x5

    goto :goto_6

    :cond_b
    :goto_7
    move-object/from16 v1, v18

    goto/16 :goto_a

    :cond_c
    add-int/lit8 v13, v13, 0x1

    const/16 v2, 0x8

    const/4 v5, 0x5

    goto :goto_5

    :cond_d
    invoke-virtual {v12}, LJ/B;->e()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    and-int/lit8 v2, v2, -0x8

    invoke-virtual {v12, v2}, LJ/B;->m(I)V

    const/16 v2, 0x20

    invoke-virtual {v12, v2}, LJ/B;->g(I)I

    move-result v4

    if-gtz v4, :cond_e

    goto :goto_7

    :cond_e
    new-array v5, v4, [LJ/Q;

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v4, :cond_12

    const/16 v9, 0x8

    invoke-virtual {v12, v9}, LJ/B;->g(I)I

    move-result v11

    invoke-virtual {v12, v9}, LJ/B;->g(I)I

    move-result v13

    invoke-virtual {v12, v2}, LJ/B;->g(I)I

    move-result v14

    if-lez v14, :cond_b

    const v2, 0x1f400

    if-le v14, v2, :cond_f

    goto :goto_7

    :cond_f
    move-object/from16 v22, v1

    int-to-double v1, v10

    mul-double v1, v1, v20

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    div-double/2addr v1, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v2, v14, 0x3

    new-array v2, v2, [F

    mul-int/lit8 v9, v14, 0x2

    new-array v9, v9, [F

    move/from16 v24, v4

    const/4 v4, 0x0

    const/16 v25, 0x0

    :goto_9
    if-ge v4, v14, :cond_11

    invoke-virtual {v12, v1}, LJ/B;->g(I)I

    move-result v26

    shr-int/lit8 v27, v26, 0x1

    move/from16 v28, v1

    and-int/lit8 v1, v26, 0x1

    neg-int v1, v1

    xor-int v1, v27, v1

    add-int v1, v1, v25

    if-ltz v1, :cond_b

    if-lt v1, v10, :cond_10

    goto :goto_7

    :cond_10
    mul-int/lit8 v25, v4, 0x3

    mul-int/lit8 v26, v1, 0x5

    aget v27, v22, v26

    aput v27, v2, v25

    add-int/lit8 v27, v25, 0x1

    add-int/lit8 v29, v26, 0x1

    aget v29, v22, v29

    aput v29, v2, v27

    add-int/lit8 v25, v25, 0x2

    add-int/lit8 v27, v26, 0x2

    aget v27, v22, v27

    aput v27, v2, v25

    mul-int/lit8 v25, v4, 0x2

    add-int/lit8 v27, v26, 0x3

    aget v27, v22, v27

    aput v27, v9, v25

    add-int/lit8 v25, v25, 0x1

    add-int/lit8 v26, v26, 0x4

    aget v26, v22, v26

    aput v26, v9, v25

    add-int/lit8 v4, v4, 0x1

    move/from16 v25, v1

    move/from16 v1, v28

    goto :goto_9

    :cond_11
    new-instance v1, LJ/Q;

    invoke-direct {v1, v11, v2, v9, v13}, LJ/Q;-><init>(I[F[FI)V

    aput-object v1, v5, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v22

    move/from16 v4, v24

    const/16 v2, 0x20

    goto/16 :goto_8

    :cond_12
    new-instance v1, La0/e;

    invoke-direct {v1, v5}, La0/e;-><init>([LJ/Q;)V

    :goto_a
    if-nez v1, :cond_13

    goto :goto_c

    :cond_13
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v5

    :goto_b
    invoke-virtual {v0, v7}, LJ/D;->N(I)V

    move v4, v7

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v5, v19

    goto/16 :goto_2

    :goto_c
    return-object v18

    :cond_15
    return-object v3
.end method
