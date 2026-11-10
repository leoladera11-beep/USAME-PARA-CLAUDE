.class public final LB1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB1/E;


# static fields
.field public static final j:[I

.field public static final k:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:LB1/a;

.field public final f:[I

.field public final g:I

.field public final h:I

.field public final i:LB1/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, LB1/z;->j:[I

    invoke-static {}, LB1/M;->k()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, LB1/z;->k:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILB1/a;[IIILB1/p;LB1/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB1/z;->a:[I

    iput-object p2, p0, LB1/z;->b:[Ljava/lang/Object;

    iput p3, p0, LB1/z;->c:I

    iput p4, p0, LB1/z;->d:I

    iput-object p6, p0, LB1/z;->f:[I

    iput p7, p0, LB1/z;->g:I

    iput p8, p0, LB1/z;->h:I

    iput-object p9, p0, LB1/z;->i:LB1/p;

    iput-object p5, p0, LB1/z;->e:LB1/a;

    return-void
.end method

.method public static F(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 3

    invoke-static {p0}, LB1/z;->o(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mutating immutable message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static o(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, LB1/r;

    if-eqz v0, :cond_1

    check-cast p0, LB1/r;

    invoke-virtual {p0}, LB1/r;->d()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static u(LB1/D;LB1/p;LB1/p;)LB1/z;
    .locals 33

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v5, 0xd800

    if-lt v3, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_1

    move v3, v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_3

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_1
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_2

    and-int/lit16 v3, v3, 0x1fff

    shl-int/2addr v3, v8

    or-int/2addr v6, v3

    add-int/lit8 v8, v8, 0xd

    move v3, v9

    goto :goto_1

    :cond_2
    shl-int/2addr v3, v8

    or-int/2addr v6, v3

    move v3, v9

    :cond_3
    if-nez v6, :cond_4

    sget-object v6, LB1/z;->j:[I

    move v8, v2

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v15, v12

    move-object v14, v6

    move v6, v15

    goto/16 :goto_b

    :cond_4
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_6

    and-int/lit16 v3, v3, 0x1fff

    const/16 v8, 0xd

    :goto_2
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_5

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v3, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_2

    :cond_5
    shl-int/2addr v6, v8

    or-int/2addr v3, v6

    move v6, v9

    :cond_6
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_8

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_7

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v10

    goto :goto_3

    :cond_7
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v10

    :cond_8
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_a

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_4

    :cond_9
    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v9, v11

    :cond_a
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_c

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_5

    :cond_b
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_c
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_e

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_d

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_d
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_e
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_10

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_f
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_10
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_12

    :goto_8
    add-int/lit8 v12, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_11

    move v13, v12

    goto :goto_8

    :cond_11
    move v13, v12

    :cond_12
    add-int/lit8 v12, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_14

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_9
    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_13

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v14

    or-int/2addr v13, v12

    add-int/lit8 v14, v14, 0xd

    move v12, v15

    goto :goto_9

    :cond_13
    shl-int/2addr v12, v14

    or-int/2addr v13, v12

    goto :goto_a

    :cond_14
    move v15, v12

    :goto_a
    add-int v12, v13, v11

    add-int/2addr v12, v3

    new-array v12, v12, [I

    mul-int/lit8 v14, v3, 0x2

    add-int/2addr v14, v6

    move v6, v11

    move v11, v8

    move v8, v6

    move-object v6, v12

    move v12, v9

    move v9, v14

    move-object v14, v6

    move v6, v3

    move v3, v15

    move v15, v13

    :goto_b
    sget-object v13, LB1/z;->k:Lsun/misc/Unsafe;

    iget-object v2, v0, LB1/D;->b:[Ljava/lang/Object;

    iget-object v7, v0, LB1/D;->a:LB1/a;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    mul-int/lit8 v4, v10, 0x3

    new-array v4, v4, [I

    mul-int/lit8 v10, v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    add-int/2addr v8, v15

    move/from16 v21, v8

    move/from16 v22, v15

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_c
    const/16 v5, 0xc

    if-ge v3, v5, :cond_36

    add-int/lit8 v24, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v5, 0xd800

    if-lt v3, v5, :cond_16

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_d
    add-int/lit8 v26, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object/from16 v27, v2

    const v2, 0xd800

    if-lt v5, v2, :cond_15

    and-int/lit16 v2, v5, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v3, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v26

    move-object/from16 v2, v27

    goto :goto_d

    :cond_15
    shl-int v2, v5, v24

    or-int/2addr v3, v2

    move/from16 v2, v26

    goto :goto_e

    :cond_16
    move-object/from16 v27, v2

    move/from16 v2, v24

    :goto_e
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v24, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_18

    and-int/lit16 v2, v2, 0x1fff

    const/16 v26, 0xd

    :goto_f
    add-int/lit8 v28, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v3, :cond_17

    and-int/lit16 v3, v5, 0x1fff

    shl-int v3, v3, v26

    or-int/2addr v2, v3

    add-int/lit8 v26, v26, 0xd

    move/from16 v5, v28

    const v3, 0xd800

    goto :goto_f

    :cond_17
    shl-int v3, v5, v26

    or-int/2addr v2, v3

    move/from16 v5, v28

    :cond_18
    and-int/lit16 v3, v2, 0xff

    move-object/from16 v26, v4

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_19

    add-int/lit8 v4, v19, 0x1

    aput v20, v14, v19

    move/from16 v19, v4

    :cond_19
    const/16 v4, 0x33

    move/from16 v29, v6

    if-lt v3, v4, :cond_24

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1b

    and-int/lit16 v5, v5, 0x1fff

    const/16 v31, 0xd

    :goto_10
    add-int/lit8 v32, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1a

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v31

    or-int/2addr v5, v4

    add-int/lit8 v31, v31, 0xd

    move/from16 v4, v32

    const v6, 0xd800

    goto :goto_10

    :cond_1a
    shl-int v4, v4, v31

    or-int/2addr v5, v4

    move/from16 v4, v32

    :cond_1b
    add-int/lit8 v6, v3, -0x33

    move/from16 v31, v4

    const/16 v4, 0x9

    if-eq v6, v4, :cond_20

    const/16 v4, 0x11

    if-ne v6, v4, :cond_1c

    goto :goto_13

    :cond_1c
    const/16 v4, 0xc

    if-ne v6, v4, :cond_21

    invoke-virtual {v0}, LB1/D;->a()I

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1d

    const/4 v4, 0x1

    goto :goto_11

    :cond_1d
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_1e

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_21

    :cond_1e
    div-int/lit8 v4, v20, 0x3

    mul-int/lit8 v4, v4, 0x2

    const/16 v18, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v9, 0x1

    aget-object v9, v27, v9

    aput-object v9, v10, v4

    :goto_12
    move v9, v6

    goto :goto_14

    :cond_1f
    const/4 v0, 0x0

    throw v0

    :cond_20
    :goto_13
    div-int/lit8 v4, v20, 0x3

    mul-int/lit8 v4, v4, 0x2

    const/16 v18, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v9, 0x1

    aget-object v9, v27, v9

    aput-object v9, v10, v4

    goto :goto_12

    :cond_21
    :goto_14
    mul-int/lit8 v5, v5, 0x2

    aget-object v4, v27, v5

    instance-of v6, v4, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_22

    check-cast v4, Ljava/lang/reflect/Field;

    :goto_15
    move v6, v5

    goto :goto_16

    :cond_22
    check-cast v4, Ljava/lang/String;

    invoke-static {v7, v4}, LB1/z;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v27, v5

    add-int/lit8 v6, v21, 0x1

    aput v20, v14, v21

    move/from16 v21, v6

    goto :goto_15

    :goto_16
    invoke-virtual {v13, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v5, v6, 0x1

    aget-object v6, v27, v5

    move/from16 v25, v4

    instance-of v4, v6, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_23

    check-cast v6, Ljava/lang/reflect/Field;

    goto :goto_17

    :cond_23
    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, LB1/z;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    aput-object v6, v27, v5

    :goto_17
    invoke-virtual {v13, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v30, v1

    move v1, v3

    move v5, v4

    move/from16 v4, v25

    move/from16 v3, v31

    const/4 v6, 0x0

    move/from16 v25, v8

    goto/16 :goto_21

    :cond_24
    add-int/lit8 v4, v9, 0x1

    aget-object v6, v27, v9

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, LB1/z;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move/from16 v31, v4

    const/16 v4, 0x9

    if-eq v3, v4, :cond_25

    const/16 v4, 0x11

    if-ne v3, v4, :cond_26

    :cond_25
    move/from16 v25, v8

    const/4 v8, 0x1

    goto/16 :goto_1b

    :cond_26
    const/16 v4, 0x1b

    if-eq v3, v4, :cond_27

    const/16 v4, 0x31

    if-ne v3, v4, :cond_28

    :cond_27
    move/from16 v25, v8

    const/4 v8, 0x1

    goto :goto_1a

    :cond_28
    const/16 v4, 0xc

    if-eq v3, v4, :cond_2c

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2c

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_29

    goto :goto_18

    :cond_29
    const/16 v4, 0x32

    if-ne v3, v4, :cond_2b

    add-int/lit8 v4, v22, 0x1

    aput v20, v14, v22

    div-int/lit8 v22, v20, 0x3

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v25, v9, 0x2

    aget-object v28, v27, v31

    aput-object v28, v10, v22

    move/from16 v28, v4

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_2a

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v4, v9, 0x3

    aget-object v9, v27, v25

    aput-object v9, v10, v22

    move/from16 v25, v8

    move/from16 v22, v28

    goto :goto_1d

    :cond_2a
    move/from16 v4, v25

    move/from16 v22, v28

    move/from16 v25, v8

    goto :goto_1d

    :cond_2b
    move/from16 v25, v8

    const/4 v8, 0x1

    goto :goto_1c

    :cond_2c
    :goto_18
    invoke-virtual {v0}, LB1/D;->a()I

    move-result v4

    move/from16 v25, v8

    const/4 v8, 0x1

    if-eq v4, v8, :cond_2d

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_2e

    :cond_2d
    div-int/lit8 v4, v20, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    add-int/lit8 v9, v9, 0x2

    aget-object v18, v27, v31

    aput-object v18, v10, v4

    :goto_19
    move v4, v9

    goto :goto_1d

    :goto_1a
    div-int/lit8 v4, v20, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    add-int/lit8 v9, v9, 0x2

    aget-object v18, v27, v31

    aput-object v18, v10, v4

    goto :goto_19

    :goto_1b
    div-int/lit8 v4, v20, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v10, v4

    :cond_2e
    :goto_1c
    move/from16 v4, v31

    :goto_1d
    invoke-virtual {v13, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v6, v8

    and-int/lit16 v8, v2, 0x1000

    if-eqz v8, :cond_32

    const/16 v8, 0x11

    if-gt v3, v8, :cond_32

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v9, 0xd800

    if-lt v5, v9, :cond_30

    and-int/lit16 v5, v5, 0x1fff

    const/16 v23, 0xd

    :goto_1e
    add-int/lit8 v28, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v9, :cond_2f

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v23

    or-int/2addr v5, v8

    add-int/lit8 v23, v23, 0xd

    move/from16 v8, v28

    goto :goto_1e

    :cond_2f
    shl-int v8, v8, v23

    or-int/2addr v5, v8

    move/from16 v8, v28

    :cond_30
    mul-int/lit8 v23, v29, 0x2

    div-int/lit8 v28, v5, 0x20

    add-int v28, v28, v23

    aget-object v9, v27, v28

    move-object/from16 v30, v1

    instance-of v1, v9, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_31

    check-cast v9, Ljava/lang/reflect/Field;

    :goto_1f
    move v1, v3

    move/from16 v28, v4

    goto :goto_20

    :cond_31
    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v9}, LB1/z;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v27, v28

    goto :goto_1f

    :goto_20
    invoke-virtual {v13, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v4, v3

    rem-int/lit8 v5, v5, 0x20

    move v3, v5

    move v5, v4

    move v4, v6

    move v6, v3

    move v3, v8

    move/from16 v9, v28

    goto :goto_21

    :cond_32
    move-object/from16 v30, v1

    move v1, v3

    move/from16 v28, v4

    const v4, 0xfffff

    move v3, v5

    move/from16 v9, v28

    move v5, v4

    move v4, v6

    const/4 v6, 0x0

    :goto_21
    add-int/lit8 v8, v20, 0x1

    aput v24, v26, v20

    add-int/lit8 v24, v20, 0x2

    move/from16 v28, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_33

    const/high16 v1, 0x20000000

    goto :goto_22

    :cond_33
    const/4 v1, 0x0

    :goto_22
    move/from16 v31, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_34

    const/high16 v1, 0x10000000

    goto :goto_23

    :cond_34
    const/4 v1, 0x0

    :goto_23
    or-int v1, v31, v1

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_35

    const/high16 v2, -0x80000000

    goto :goto_24

    :cond_35
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v1, v2

    shl-int/lit8 v2, v28, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    aput v1, v26, v8

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v1, v6, 0x14

    or-int/2addr v1, v5

    aput v1, v26, v24

    move/from16 v8, v25

    move-object/from16 v4, v26

    move-object/from16 v2, v27

    move/from16 v6, v29

    move-object/from16 v1, v30

    goto/16 :goto_c

    :cond_36
    move-object/from16 v26, v4

    move/from16 v25, v8

    new-instance v8, LB1/z;

    iget-object v13, v0, LB1/D;->a:LB1/a;

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move/from16 v16, v25

    move-object/from16 v9, v26

    invoke-direct/range {v8 .. v18}, LB1/z;-><init>([I[Ljava/lang/Object;IILB1/a;[IIILB1/p;LB1/p;)V

    return-object v8
.end method

.method public static z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Field "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final A(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, LB1/z;->a:[I

    aget p1, v0, p1

    const v0, 0xfffff

    and-int/2addr v0, p1

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p1, p1, 0x14

    const/4 v2, 0x1

    shl-int p1, v2, p1

    sget-object v2, LB1/M;->c:LB1/L;

    invoke-virtual {v2, v0, v1, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v2

    or-int/2addr p1, v2

    invoke-static {p1, v0, v1, p2}, LB1/M;->l(IJLjava/lang/Object;)V

    return-void
.end method

.method public final B(Ljava/lang/Object;II)V
    .locals 2

    add-int/lit8 p3, p3, 0x2

    iget-object v0, p0, LB1/z;->a:[I

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p2, v0, v1, p1}, LB1/M;->l(IJLjava/lang/Object;)V

    return-void
.end method

.method public final C(II)I
    .locals 5

    iget-object v0, p0, LB1/z;->a:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v2, v1, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final D(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    sget-object v0, LB1/z;->k:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, LB1/z;->G(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p3, p1}, LB1/z;->A(ILjava/lang/Object;)V

    return-void
.end method

.method public final E(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    sget-object v0, LB1/z;->k:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4}, LB1/z;->G(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p2, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p1, p4}, LB1/z;->B(Ljava/lang/Object;II)V

    return-void
.end method

.method public final G(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, LB1/z;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    invoke-static {p1}, LB1/z;->i(Ljava/lang/Object;)V

    sget-object v0, LB1/u;->a:[B

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LB1/z;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, LB1/z;->G(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    aget v1, v1, v0

    invoke-static {v2}, LB1/z;->F(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, LB1/z;->r(Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, p2, v1, v0}, LB1/z;->p(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, LB1/M;->c:LB1/L;

    invoke-virtual {v2, v6, v7, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v6, v7, v2}, LB1/M;->n(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, LB1/z;->B(Ljava/lang/Object;II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, LB1/z;->r(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p2, v1, v0}, LB1/z;->p(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, LB1/M;->c:LB1/L;

    invoke-virtual {v2, v6, v7, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v6, v7, v2}, LB1/M;->n(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, LB1/z;->B(Ljava/lang/Object;II)V

    goto :goto_1

    :pswitch_4
    sget-object v1, LB1/F;->a:Ljava/lang/Class;

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, LB1/N;->o(Ljava/lang/Object;Ljava/lang/Object;)LB1/x;

    move-result-object v1

    invoke-static {p1, v6, v7, v1}, LB1/M;->n(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB1/t;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB1/t;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v3, :cond_2

    if-lez v4, :cond_2

    move-object v5, v2

    check-cast v5, LB1/b;

    iget-boolean v5, v5, LB1/b;->e:Z

    if-nez v5, :cond_1

    add-int/2addr v4, v3

    invoke-interface {v2, v4}, LB1/t;->c(I)LB1/t;

    move-result-object v2

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-lez v3, :cond_3

    move-object v1, v2

    :cond_3
    invoke-static {p1, v6, v7, v1}, LB1/M;->n(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, LB1/z;->q(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, LB1/M;->m(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, LB1/M;->l(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, LB1/M;->m(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, LB1/M;->l(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, LB1/M;->l(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, LB1/M;->l(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v6, v7, v1}, LB1/M;->n(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, LB1/z;->q(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v6, v7, v1}, LB1/M;->n(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->c(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, LB1/L;->j(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, LB1/M;->l(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, LB1/M;->m(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, LB1/M;->l(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, LB1/M;->m(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, LB1/M;->m(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LB1/M;->c:LB1/L;

    invoke-virtual {v1, v6, v7, p2}, LB1/L;->e(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, LB1/L;->l(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, LB1/z;->A(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v6, v7, p2}, LB1/L;->d(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, LB1/L;->k(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v5}, LB1/z;->A(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_4
    move-object v5, p1

    iget-object p1, p0, LB1/z;->i:LB1/p;

    invoke-static {p1, v5, p2}, LB1/F;->a(LB1/p;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;[BIILB1/d;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, LB1/z;->w(Ljava/lang/Object;[BIIILB1/d;)I

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 9

    invoke-static {p1}, LB1/z;->o(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, LB1/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LB1/r;

    const v2, 0x7fffffff

    iget v3, v0, LB1/r;->b:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    const v4, 0x7fffffff

    and-int/2addr v4, v2

    or-int/2addr v3, v4

    iput v3, v0, LB1/r;->b:I

    iput v1, v0, LB1/a;->a:I

    iget v3, v0, LB1/r;->b:I

    and-int/2addr v2, v3

    iput v2, v0, LB1/r;->b:I

    :cond_1
    iget-object v0, p0, LB1/z;->a:[I

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p0, v3}, LB1/z;->G(I)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v5, v4

    int-to-long v5, v5

    invoke-static {v4}, LB1/z;->F(I)I

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_3

    const/16 v7, 0x3c

    if-eq v4, v7, :cond_2

    const/16 v7, 0x44

    if-eq v4, v7, :cond_2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v4, LB1/z;->k:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    move-object v8, v7

    check-cast v8, LB1/x;

    iput-boolean v1, v8, LB1/x;->e:Z

    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v5, v6, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LB1/t;

    check-cast v4, LB1/b;

    iget-boolean v5, v4, LB1/b;->e:Z

    if-eqz v5, :cond_4

    iput-boolean v1, v4, LB1/b;->e:Z

    goto :goto_1

    :cond_2
    aget v4, v0, v3

    invoke-virtual {p0, p1, v4, v3}, LB1/z;->p(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, LB1/z;->l(I)LB1/E;

    move-result-object v4

    sget-object v7, LB1/z;->k:Lsun/misc/Unsafe;

    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, LB1/E;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v3, p1}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, LB1/z;->l(I)LB1/E;

    move-result-object v4

    sget-object v7, LB1/z;->k:Lsun/misc/Unsafe;

    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, LB1/E;->c(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, LB1/z;->i:LB1/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, LB1/r;

    iget-object p1, p1, LB1/r;->c:LB1/H;

    iget-boolean v0, p1, LB1/H;->d:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p1, LB1/H;->d:Z

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 14

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget v5, p0, LB1/z;->g:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_c

    iget-object v5, p0, LB1/z;->f:[I

    aget v9, v5, v2

    invoke-virtual {p0, v9}, LB1/z;->G(I)I

    move-result v5

    add-int/lit8 v7, v9, 0x2

    iget-object v13, p0, LB1/z;->a:[I

    aget v7, v13, v7

    and-int v8, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v12, v6, v7

    if-eq v8, v3, :cond_1

    if-eq v8, v0, :cond_0

    sget-object v3, LB1/z;->k:Lsun/misc/Unsafe;

    int-to-long v6, v8

    invoke-virtual {v3, p1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v11, v4

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v3

    move v11, v4

    :goto_1
    const/high16 v3, 0x10000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, LB1/z;->n(Ljava/lang/Object;IIII)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_3

    :cond_2
    move-object v7, p0

    move-object v8, p1

    :cond_3
    invoke-static {v5}, LB1/z;->F(I)I

    move-result p1

    const/16 v3, 0x9

    if-eq p1, v3, :cond_a

    const/16 v3, 0x11

    if-eq p1, v3, :cond_a

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_7

    const/16 v3, 0x3c

    if-eq p1, v3, :cond_6

    const/16 v3, 0x44

    if-eq p1, v3, :cond_6

    const/16 v3, 0x31

    if-eq p1, v3, :cond_7

    const/16 v3, 0x32

    if-eq p1, v3, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int p1, v5, v0

    int-to-long v3, p1

    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v3, v4, v8}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB1/x;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v9}, LB1/z;->k(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LB1/e;->o(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_6
    aget p1, v13, v9

    invoke-virtual {p0, v8, p1, v9}, LB1/z;->p(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, v9}, LB1/z;->l(I)LB1/E;

    move-result-object p1

    and-int v3, v5, v0

    int-to-long v3, v3

    sget-object v5, LB1/M;->c:LB1/L;

    invoke-virtual {v5, v3, v4, v8}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, LB1/E;->d(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_3

    :cond_7
    and-int p1, v5, v0

    int-to-long v3, p1

    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v3, v4, v8}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v9}, LB1/z;->l(I)LB1/E;

    move-result-object v3

    move v4, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, LB1/E;->d(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual/range {v7 .. v12}, LB1/z;->n(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, v9}, LB1/z;->l(I)LB1/E;

    move-result-object p1

    and-int v3, v5, v0

    int-to-long v3, v3

    sget-object v5, LB1/M;->c:LB1/L;

    invoke-virtual {v5, v3, v4, v8}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, LB1/E;->d(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :goto_3
    return v1

    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object p1, v8

    move v3, v10

    move v4, v11

    goto/16 :goto_0

    :cond_c
    move-object v7, p0

    return v6
.end method

.method public final e(LB1/r;LB1/r;)Z
    .locals 11

    iget-object v0, p0, LB1/z;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const v4, 0xfffff

    const/4 v5, 0x1

    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, LB1/z;->G(I)I

    move-result v6

    invoke-static {v6}, LB1/z;->F(I)I

    move-result v7

    const/16 v8, 0x32

    if-le v7, v8, :cond_0

    const/16 v8, 0x45

    if-ge v7, v8, :cond_0

    goto/16 :goto_2

    :cond_0
    and-int/2addr v6, v4

    int-to-long v8, v6

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v6, v3, 0x2

    aget v6, v0, v6

    and-int/2addr v4, v6

    int-to-long v6, v4

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v6, v7, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v4, v6, v7, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v6

    if-ne v10, v6, :cond_1

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, LB1/F;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    move v5, v2

    goto/16 :goto_1

    :pswitch_1
    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, LB1/F;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto/16 :goto_1

    :pswitch_2
    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, LB1/F;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, LB1/F;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v4

    if-ne v6, v4, :cond_1

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v4

    if-ne v6, v4, :cond_1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v4

    if-ne v6, v4, :cond_1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v4

    if-ne v6, v4, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, LB1/F;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, LB1/F;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, LB1/F;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->c(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->c(JLjava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v4

    if-ne v6, v4, :cond_1

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v4

    if-ne v6, v4, :cond_1

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->e(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->e(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v6, v4, :cond_1

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, LB1/z;->h(LB1/r;LB1/r;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v8, v9, p1}, LB1/L;->d(JLjava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-virtual {v4, v8, v9, p2}, LB1/L;->d(JLjava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    :goto_1
    if-nez v5, :cond_2

    goto :goto_6

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_3
    iget v1, p0, LB1/z;->h:I

    :goto_3
    iget-object v3, p0, LB1/z;->f:[I

    array-length v6, v3

    if-ge v1, v6, :cond_8

    aget v3, v3, v1

    add-int/lit8 v6, v3, 0x2

    aget v6, v0, v6

    and-int/2addr v6, v4

    int-to-long v6, v6

    sget-object v8, LB1/M;->c:LB1/L;

    invoke-virtual {v8, v6, v7, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v6, v7, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v6

    if-ne v9, v6, :cond_4

    move v6, v5

    goto :goto_4

    :cond_4
    move v6, v2

    :goto_4
    if-nez v6, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {p0, p1, v2, v3}, LB1/z;->p(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v3}, LB1/z;->G(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v6, v3

    invoke-virtual {v8, v6, v7, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v6, v7, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, LB1/F;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    iget-object v0, p0, LB1/z;->i:LB1/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LB1/r;->c:LB1/H;

    iget-object p2, p2, LB1/r;->c:LB1/H;

    invoke-virtual {p1, p2}, LB1/H;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_6
    return v2

    :cond_9
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(LB1/r;)I
    .locals 8

    iget-object v0, p0, LB1/z;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const v4, 0xfffff

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, LB1/z;->G(I)I

    move-result v5

    invoke-static {v5}, LB1/z;->F(I)I

    move-result v6

    const/16 v7, 0x32

    if-le v6, v7, :cond_0

    const/16 v7, 0x45

    if-ge v6, v7, :cond_0

    goto/16 :goto_3

    :cond_0
    and-int/2addr v4, v5

    int-to-long v4, v4

    const/16 v7, 0x25

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    goto/16 :goto_3

    :pswitch_1
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_2
    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1
    :goto_2
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v7

    goto/16 :goto_3

    :pswitch_3
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, LB1/u;->a(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_5
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, LB1/u;->a(J)I

    move-result v4

    goto :goto_1

    :pswitch_6
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_7
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_8
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_9
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_a
    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_2

    :pswitch_b
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->c(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, LB1/u;->a:[B

    if-eqz v4, :cond_2

    const/16 v4, 0x4cf

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x4d5

    goto/16 :goto_1

    :pswitch_d
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, LB1/u;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, LB1/u;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, LB1/u;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->e(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v6, LB1/M;->c:LB1/L;

    invoke-virtual {v6, v4, v5, p1}, LB1/L;->d(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, LB1/u;->a(J)I

    move-result v4

    goto/16 :goto_1

    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    iget v0, p0, LB1/z;->h:I

    :goto_4
    iget-object v2, p0, LB1/z;->f:[I

    array-length v5, v2

    if-ge v0, v5, :cond_5

    aget v2, v2, v0

    invoke-virtual {p0, p1, v1, v2}, LB1/z;->p(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_5

    :cond_4
    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {p0, v2}, LB1/z;->G(I)I

    move-result v2

    and-int/2addr v2, v4

    int-to-long v5, v2

    sget-object v2, LB1/M;->c:LB1/L;

    invoke-virtual {v2, v5, v6, p1}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v3

    move v3, v2

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, LB1/z;->i:LB1/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LB1/r;->c:LB1/H;

    invoke-virtual {p1}, LB1/H;->hashCode()I

    move-result p1

    add-int/2addr p1, v3

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()LB1/r;
    .locals 1

    iget-object v0, p0, LB1/z;->e:LB1/a;

    check-cast v0, LB1/r;

    invoke-virtual {v0}, LB1/r;->e()LB1/r;

    move-result-object v0

    return-object v0
.end method

.method public final h(LB1/r;LB1/r;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final j(I)V
    .locals 1

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, LB1/z;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final k(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, LB1/z;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final l(I)LB1/E;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, LB1/z;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, LB1/E;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, LB1/B;->c:LB1/B;

    add-int/lit8 v2, p1, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v1, v2}, LB1/B;->a(Ljava/lang/Class;)LB1/E;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v1
.end method

.method public final m(ILjava/lang/Object;)Z
    .locals 6

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, LB1/z;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, LB1/z;->G(I)I

    move-result p1

    and-int v0, p1, v1

    int-to-long v0, v0

    invoke-static {p1}, LB1/z;->F(I)I

    move-result p1

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_1
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_3
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_5
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_6
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, LB1/i;->f:LB1/j;

    sget-object v2, LB1/M;->c:LB1/L;

    invoke-virtual {v2, v0, v1, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, LB1/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :pswitch_8
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_9
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_0
    instance-of p2, p1, LB1/i;

    if-eqz p2, :cond_1

    sget-object p2, LB1/i;->f:LB1/j;

    invoke-virtual {p2, p1}, LB1/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->c(JLjava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_b
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_c
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_d
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_e
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_f
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->e(JLjava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p1, LB1/M;->c:LB1/L;

    invoke-virtual {p1, v0, v1, p2}, LB1/L;->d(JLjava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v5, p1

    sget-object v0, LB1/M;->c:LB1/L;

    invoke-virtual {v0, v2, v3, p2}, LB1/L;->f(JLjava/lang/Object;)I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, p1}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final p(Ljava/lang/Object;II)Z
    .locals 2

    add-int/lit8 p3, p3, 0x2

    iget-object v0, p0, LB1/z;->a:[I

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    sget-object p3, LB1/M;->c:LB1/L;

    invoke-virtual {p3, v0, v1, p1}, LB1/L;->f(JLjava/lang/Object;)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final q(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-virtual {p0, p3, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, LB1/z;->G(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, LB1/z;->k:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p3}, LB1/z;->l(I)LB1/E;

    move-result-object p2

    invoke-virtual {p0, p3, p1}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, LB1/z;->o(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, LB1/E;->g()LB1/r;

    move-result-object v4

    invoke-interface {p2, v4, v3}, LB1/E;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p3, p1}, LB1/z;->A(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, LB1/z;->o(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p2}, LB1/E;->g()LB1/r;

    move-result-object v4

    invoke-interface {p2, v4, p3}, LB1/E;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    :cond_3
    invoke-interface {p2, p3, v3}, LB1/E;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LB1/z;->a:[I

    aget p3, v1, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, LB1/z;->a:[I

    aget v1, v0, p3

    invoke-virtual {p0, p2, v1, p3}, LB1/z;->p(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, LB1/z;->G(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, LB1/z;->k:Lsun/misc/Unsafe;

    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p3}, LB1/z;->l(I)LB1/E;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p3}, LB1/z;->p(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, LB1/z;->o(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, LB1/E;->g()LB1/r;

    move-result-object v0

    invoke-interface {p2, v0, v5}, LB1/E;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, v1, p3}, LB1/z;->B(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, LB1/z;->o(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, LB1/E;->g()LB1/r;

    move-result-object v0

    invoke-interface {p2, v0, p3}, LB1/E;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    :cond_3
    invoke-interface {p2, p3, v5}, LB1/E;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source subfield "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p3, v0, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, LB1/z;->l(I)LB1/E;

    move-result-object v0

    invoke-virtual {p0, p1}, LB1/z;->G(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, LB1/z;->m(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, LB1/E;->g()LB1/r;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, LB1/z;->k:Lsun/misc/Unsafe;

    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LB1/z;->o(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, LB1/E;->g()LB1/r;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, LB1/E;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final t(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p3}, LB1/z;->l(I)LB1/E;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, LB1/z;->p(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, LB1/E;->g()LB1/r;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, LB1/z;->k:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, LB1/z;->G(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LB1/z;->o(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, LB1/E;->g()LB1/r;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, LB1/E;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final v(IJLjava/lang/Object;)V
    .locals 3

    sget-object v0, LB1/z;->k:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, LB1/z;->k(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p4, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LB1/x;

    iget-boolean v2, v2, LB1/x;->e:Z

    if-nez v2, :cond_0

    sget-object v2, LB1/x;->f:LB1/x;

    invoke-virtual {v2}, LB1/x;->b()LB1/x;

    move-result-object v2

    invoke-static {v2, v1}, LB1/N;->o(Ljava/lang/Object;Ljava/lang/Object;)LB1/x;

    invoke-virtual {v0, p4, p2, p3, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    invoke-static {p1}, LB1/e;->o(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final w(Ljava/lang/Object;[BIIILB1/d;)I
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v14, p5

    move-object/from16 v13, p6

    invoke-static {v2}, LB1/z;->i(Ljava/lang/Object;)V

    sget-object v1, LB1/z;->k:Lsun/misc/Unsafe;

    move/from16 v5, p3

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffff

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_0
    const v16, 0xfffff

    :goto_1
    iget-object v15, v0, LB1/z;->a:[I

    if-ge v5, v4, :cond_34

    add-int/lit8 v12, v5, 0x1

    aget-byte v5, v3, v5

    if-gez v5, :cond_0

    invoke-static {v5, v3, v12, v13}, LB1/N;->h(I[BILB1/d;)I

    move-result v12

    iget v5, v13, LB1/d;->b:I

    :cond_0
    move/from16 v29, v12

    move v12, v5

    move/from16 v5, v29

    ushr-int/lit8 v11, v12, 0x3

    and-int/lit8 v10, v12, 0x7

    iget v3, v0, LB1/z;->d:I

    iget v4, v0, LB1/z;->c:I

    move/from16 p3, v5

    const/4 v5, 0x3

    if-le v11, v6, :cond_2

    div-int/2addr v7, v5

    if-lt v11, v4, :cond_1

    if-gt v11, v3, :cond_1

    invoke-virtual {v0, v11, v7}, LB1/z;->C(II)I

    move-result v3

    goto :goto_2

    :cond_1
    const/4 v3, -0x1

    :goto_2
    const/4 v4, -0x1

    goto :goto_4

    :cond_2
    if-lt v11, v4, :cond_3

    if-gt v11, v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v3}, LB1/z;->C(II)I

    move-result v4

    goto :goto_3

    :cond_3
    const/4 v4, -0x1

    :goto_3
    move v3, v4

    goto :goto_2

    :goto_4
    if-ne v3, v4, :cond_4

    move/from16 v5, p3

    move-object v6, v0

    move/from16 v20, v4

    move/from16 v26, v8

    move/from16 v21, v11

    move-object/from16 v18, v15

    const/4 v7, 0x0

    const/16 v19, 0x0

    move-object v15, v1

    move-object v8, v2

    move v2, v12

    goto/16 :goto_20

    :cond_4
    add-int/lit8 v6, v3, 0x1

    aget v6, v15, v6

    invoke-static {v6}, LB1/z;->F(I)I

    move-result v7

    and-int v4, v6, v16

    move/from16 v20, v6

    int-to-long v5, v4

    const/16 v4, 0x11

    move-wide/from16 v21, v5

    if-gt v7, v4, :cond_28

    add-int/lit8 v4, v3, 0x2

    aget v4, v15, v4

    ushr-int/lit8 v6, v4, 0x14

    const/4 v5, 0x1

    shl-int v24, v5, v6

    and-int v4, v4, v16

    if-eq v4, v8, :cond_7

    move/from16 v6, v16

    if-eq v8, v6, :cond_5

    int-to-long v5, v8

    invoke-virtual {v1, v2, v5, v6, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v6, 0xfffff

    :cond_5
    if-ne v4, v6, :cond_6

    const/4 v9, 0x0

    goto :goto_5

    :cond_6
    int-to-long v5, v4

    invoke-virtual {v1, v2, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v9, v5

    :goto_5
    move/from16 v26, v4

    :goto_6
    move/from16 v27, v9

    goto :goto_7

    :cond_7
    move/from16 v26, v8

    goto :goto_6

    :goto_7
    const/4 v4, 0x5

    packed-switch v7, :pswitch_data_0

    move-object/from16 v9, p2

    move/from16 v8, p3

    move-object v10, v1

    move-object v1, v2

    move/from16 v21, v11

    move-object v7, v13

    const/4 v11, 0x0

    const/16 v17, -0x1

    move v13, v3

    goto/16 :goto_1b

    :pswitch_0
    const/4 v4, 0x3

    if-ne v10, v4, :cond_8

    invoke-virtual {v0, v3, v2}, LB1/z;->s(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    shl-int/lit8 v5, v11, 0x3

    or-int/lit8 v8, v5, 0x4

    move-object v5, v4

    invoke-virtual {v0, v3}, LB1/z;->l(I)LB1/E;

    move-result-object v4

    move/from16 v6, p3

    move/from16 v7, p4

    move-object v9, v13

    const/16 v17, -0x1

    move v13, v3

    move-object v3, v5

    move-object/from16 v5, p2

    invoke-static/range {v3 .. v9}, LB1/N;->p(Ljava/lang/Object;LB1/E;[BIIILB1/d;)I

    move-result v4

    move-object v7, v5

    invoke-virtual {v0, v2, v3, v13}, LB1/z;->D(Ljava/lang/Object;Ljava/lang/Object;I)V

    or-int v3, v27, v24

    move-object v5, v9

    move v9, v3

    move-object v3, v7

    move v7, v13

    move-object v13, v5

    move v5, v4

    move v6, v11

    move/from16 v8, v26

    const v16, 0xfffff

    :goto_8
    move/from16 v4, p4

    goto/16 :goto_1

    :cond_8
    move-object v9, v13

    const/16 v17, -0x1

    move v13, v3

    move/from16 v8, p3

    move-object v10, v1

    move-object v1, v2

    move-object v7, v9

    move/from16 v21, v11

    const/4 v11, 0x0

    move-object/from16 v9, p2

    goto/16 :goto_1b

    :pswitch_1
    move-object/from16 v7, p2

    move-object v9, v13

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, p3

    if-nez v10, :cond_9

    invoke-static {v7, v3, v9}, LB1/N;->k([BILB1/d;)I

    move-result v8

    iget-wide v3, v9, LB1/d;->a:J

    invoke-static {v3, v4}, LB1/k;->b(J)J

    move-result-wide v5

    move-wide/from16 v3, v21

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v29, v2

    move-object v2, v1

    move-object/from16 v1, v29

    or-int v3, v27, v24

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object v4, v9

    move v9, v3

    move-object v3, v7

    move v7, v13

    move-object v13, v4

    move/from16 v4, p4

    move v5, v8

    move v6, v11

    :goto_9
    move/from16 v8, v26

    goto/16 :goto_0

    :cond_9
    move-object/from16 v29, v2

    move-object v2, v1

    move-object/from16 v1, v29

    :cond_a
    move-object v8, v9

    move-object v9, v7

    move-object v7, v8

    move-object v10, v2

    move v8, v3

    move/from16 v21, v11

    const/4 v11, 0x0

    goto/16 :goto_1b

    :pswitch_2
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v7, p2

    move-object v9, v13

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, p3

    if-nez v10, :cond_a

    invoke-static {v7, v3, v9}, LB1/N;->i([BILB1/d;)I

    move-result v3

    iget v4, v9, LB1/d;->b:I

    invoke-static {v4}, LB1/k;->a(I)I

    move-result v4

    invoke-virtual {v2, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a
    or-int v4, v27, v24

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move v5, v3

    move-object v3, v7

    move v6, v11

    move v7, v13

    move/from16 v8, v26

    const v16, 0xfffff

    move-object v13, v9

    move v9, v4

    goto :goto_8

    :pswitch_3
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v7, p2

    move-object v9, v13

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, p3

    if-nez v10, :cond_a

    invoke-static {v7, v3, v9}, LB1/N;->i([BILB1/d;)I

    move-result v3

    iget v4, v9, LB1/d;->b:I

    invoke-virtual {v0, v13}, LB1/z;->j(I)V

    invoke-virtual {v2, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_4
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v7, p2

    move-object v9, v13

    move-wide/from16 v5, v21

    const/4 v4, 0x2

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, p3

    if-ne v10, v4, :cond_a

    invoke-static {v7, v3, v9}, LB1/N;->a([BILB1/d;)I

    move-result v3

    iget-object v4, v9, LB1/d;->d:Ljava/lang/Object;

    invoke-virtual {v2, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_5
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v7, p2

    move-object v9, v13

    const/4 v4, 0x2

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, p3

    if-ne v10, v4, :cond_b

    move-object v4, v1

    invoke-virtual {v0, v13, v4}, LB1/z;->s(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v2

    invoke-virtual {v0, v13}, LB1/z;->l(I)LB1/E;

    move-result-object v2

    move-object v6, v4

    move v4, v3

    move-object v3, v7

    move-object v7, v6

    move-object v8, v5

    move-object v6, v9

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, LB1/N;->q(Ljava/lang/Object;LB1/E;[BIILB1/d;)I

    move-result v2

    move-object v9, v3

    move-object v3, v1

    move-object v1, v6

    invoke-virtual {v0, v7, v3, v13}, LB1/z;->D(Ljava/lang/Object;Ljava/lang/Object;I)V

    or-int v3, v27, v24

    move-object v4, v9

    move v9, v3

    move-object v3, v4

    move/from16 v4, p4

    move v5, v2

    move-object v2, v7

    move v6, v11

    move v7, v13

    :goto_b
    const v16, 0xfffff

    :goto_c
    move-object v13, v1

    move-object v1, v8

    :goto_d
    move/from16 v8, v26

    goto/16 :goto_1

    :cond_b
    move-object v8, v7

    move-object v7, v1

    move-object v1, v9

    move-object v9, v8

    move-object v8, v2

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    move-object v10, v8

    move/from16 v21, v11

    const/4 v11, 0x0

    move v8, v3

    goto/16 :goto_1b

    :pswitch_6
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v7, v2

    move-object v1, v13

    move-wide/from16 v5, v21

    const/4 v4, 0x2

    const/16 v17, -0x1

    move/from16 v2, p3

    move v13, v3

    if-ne v10, v4, :cond_23

    const/high16 v3, 0x20000000

    and-int v3, v20, v3

    const-string v4, ""

    if-eqz v3, :cond_20

    invoke-static {v9, v2, v1}, LB1/N;->i([BILB1/d;)I

    move-result v2

    iget v3, v1, LB1/d;->b:I

    if-ltz v3, :cond_1f

    if-nez v3, :cond_c

    iput-object v4, v1, LB1/d;->d:Ljava/lang/Object;

    move/from16 v21, v11

    const/4 v11, 0x0

    goto/16 :goto_16

    :cond_c
    if-nez v3, :cond_d

    sget-object v10, LB1/P;->a:LB1/N;

    :goto_e
    move/from16 p3, v2

    move/from16 v20, v3

    move/from16 v21, v11

    const/4 v11, 0x0

    goto/16 :goto_15

    :cond_d
    sget-object v4, LB1/P;->a:LB1/N;

    iget v4, v4, LB1/N;->a:I

    packed-switch v4, :pswitch_data_1

    new-instance v4, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v9, v2, v3, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const v15, 0xfffd

    invoke-virtual {v4, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-gez v15, :cond_e

    goto :goto_f

    :cond_e
    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    add-int v15, v2, v3

    invoke-static {v9, v2, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v10, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_f

    :goto_f
    goto :goto_e

    :cond_f
    invoke-static {}, LB1/v;->a()LB1/v;

    move-result-object v1

    throw v1

    :pswitch_7
    or-int v4, v2, v3

    array-length v10, v9

    sub-int/2addr v10, v2

    sub-int/2addr v10, v3

    or-int/2addr v4, v10

    if-ltz v4, :cond_1e

    add-int v4, v2, v3

    new-array v10, v3, [C

    move/from16 p3, v2

    const/4 v15, 0x0

    :goto_10
    move/from16 v19, v2

    if-ge v2, v4, :cond_10

    aget-byte v2, v9, v19

    if-ltz v2, :cond_10

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v15, 0x1

    int-to-char v2, v2

    aput-char v2, v10, v15

    move/from16 v2, v19

    move/from16 v15, v20

    goto :goto_10

    :cond_10
    move/from16 v2, v19

    :goto_11
    if-ge v2, v4, :cond_1d

    move/from16 v19, v2

    add-int/lit8 v2, v19, 0x1

    move/from16 v20, v3

    aget-byte v3, v9, v19

    if-ltz v3, :cond_12

    add-int/lit8 v19, v15, 0x1

    int-to-char v3, v3

    aput-char v3, v10, v15

    :goto_12
    if-ge v2, v4, :cond_11

    aget-byte v3, v9, v2

    if-ltz v3, :cond_11

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v15, v19, 0x1

    int-to-char v3, v3

    aput-char v3, v10, v19

    move/from16 v19, v15

    goto :goto_12

    :cond_11
    move/from16 v25, v4

    move/from16 v21, v11

    :goto_13
    move/from16 v15, v19

    goto/16 :goto_14

    :cond_12
    move/from16 v21, v11

    const/16 v11, -0x20

    if-ge v3, v11, :cond_15

    if-ge v2, v4, :cond_14

    add-int/lit8 v11, v19, 0x2

    aget-byte v2, v9, v2

    add-int/lit8 v19, v15, 0x1

    move/from16 v22, v2

    const/16 v2, -0x3e

    if-lt v3, v2, :cond_13

    invoke-static/range {v22 .. v22}, LB1/N;->n(B)Z

    move-result v2

    if-nez v2, :cond_13

    and-int/lit8 v2, v3, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v3, v22, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v10, v15

    move/from16 v25, v4

    move v2, v11

    goto :goto_13

    :cond_13
    invoke-static {}, LB1/v;->a()LB1/v;

    move-result-object v1

    throw v1

    :cond_14
    invoke-static {}, LB1/v;->a()LB1/v;

    move-result-object v1

    throw v1

    :cond_15
    const/16 v11, -0x10

    if-ge v3, v11, :cond_1a

    add-int/lit8 v11, v4, -0x1

    if-ge v2, v11, :cond_19

    add-int/lit8 v11, v19, 0x2

    aget-byte v2, v9, v2

    add-int/lit8 v19, v19, 0x3

    aget-byte v11, v9, v11

    add-int/lit8 v23, v15, 0x1

    invoke-static {v2}, LB1/N;->n(B)Z

    move-result v25

    if-nez v25, :cond_18

    move/from16 v25, v4

    const/16 v4, -0x60

    move/from16 v28, v11

    const/16 v11, -0x20

    if-ne v3, v11, :cond_16

    if-lt v2, v4, :cond_18

    :cond_16
    const/16 v11, -0x13

    if-ne v3, v11, :cond_17

    if-ge v2, v4, :cond_18

    :cond_17
    invoke-static/range {v28 .. v28}, LB1/N;->n(B)Z

    move-result v4

    if-nez v4, :cond_18

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v3

    and-int/lit8 v3, v28, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v10, v15

    move/from16 v2, v19

    move/from16 v15, v23

    goto :goto_14

    :cond_18
    invoke-static {}, LB1/v;->a()LB1/v;

    move-result-object v1

    throw v1

    :cond_19
    invoke-static {}, LB1/v;->a()LB1/v;

    move-result-object v1

    throw v1

    :cond_1a
    move/from16 v25, v4

    add-int/lit8 v4, v25, -0x2

    if-ge v2, v4, :cond_1c

    add-int/lit8 v4, v19, 0x2

    aget-byte v2, v9, v2

    add-int/lit8 v11, v19, 0x3

    aget-byte v4, v9, v4

    add-int/lit8 v19, v19, 0x4

    aget-byte v11, v9, v11

    add-int/lit8 v22, v15, 0x1

    invoke-static {v2}, LB1/N;->n(B)Z

    move-result v23

    if-nez v23, :cond_1b

    shl-int/lit8 v23, v3, 0x1c

    add-int/lit8 v28, v2, 0x70

    add-int v28, v28, v23

    shr-int/lit8 v23, v28, 0x1e

    if-nez v23, :cond_1b

    invoke-static {v4}, LB1/N;->n(B)Z

    move-result v23

    if-nez v23, :cond_1b

    invoke-static {v11}, LB1/N;->n(B)Z

    move-result v23

    if-nez v23, :cond_1b

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x12

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v2, v3

    and-int/lit8 v3, v4, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    and-int/lit8 v3, v11, 0x3f

    or-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0xa

    const v4, 0xd7c0

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v10, v15

    and-int/lit16 v2, v2, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v10, v22

    add-int/lit8 v15, v15, 0x2

    move/from16 v2, v19

    :goto_14
    move/from16 v3, v20

    move/from16 v11, v21

    move/from16 v4, v25

    goto/16 :goto_11

    :cond_1b
    invoke-static {}, LB1/v;->a()LB1/v;

    move-result-object v1

    throw v1

    :cond_1c
    invoke-static {}, LB1/v;->a()LB1/v;

    move-result-object v1

    throw v1

    :cond_1d
    move/from16 v20, v3

    move/from16 v21, v11

    new-instance v2, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v2, v10, v11, v15}, Ljava/lang/String;-><init>([CII)V

    move-object v4, v2

    :goto_15
    iput-object v4, v1, LB1/d;->d:Ljava/lang/Object;

    add-int v2, p3, v20

    goto :goto_16

    :cond_1e
    move/from16 p3, v2

    move/from16 v20, v3

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "buffer length=%d, index=%d, size=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_20
    move/from16 v21, v11

    const/4 v11, 0x0

    invoke-static {v9, v2, v1}, LB1/N;->i([BILB1/d;)I

    move-result v2

    iget v3, v1, LB1/d;->b:I

    if-ltz v3, :cond_22

    if-nez v3, :cond_21

    iput-object v4, v1, LB1/d;->d:Ljava/lang/Object;

    goto :goto_16

    :cond_21
    new-instance v4, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v9, v2, v3, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v4, v1, LB1/d;->d:Ljava/lang/Object;

    add-int/2addr v2, v3

    :goto_16
    iget-object v3, v1, LB1/d;->d:Ljava/lang/Object;

    invoke-virtual {v8, v7, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_17
    or-int v3, v27, v24

    move-object v4, v9

    move v9, v3

    move-object v3, v4

    move/from16 v4, p4

    move v5, v2

    move-object v2, v7

    move v7, v13

    move/from16 v6, v21

    goto/16 :goto_b

    :cond_22
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_23
    move/from16 v21, v11

    const/4 v11, 0x0

    :cond_24
    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    move-object v10, v8

    move v8, v2

    goto/16 :goto_1b

    :pswitch_8
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v7, v2

    move-object v1, v13

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move/from16 v2, p3

    move v13, v3

    move/from16 v21, v11

    const/4 v11, 0x0

    if-nez v10, :cond_24

    invoke-static {v9, v2, v1}, LB1/N;->k([BILB1/d;)I

    move-result v2

    iget-wide v3, v1, LB1/d;->a:J

    const-wide/16 v18, 0x0

    cmp-long v3, v3, v18

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_18

    :cond_25
    move v3, v11

    :goto_18
    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v7, v5, v6, v3}, LB1/L;->j(Ljava/lang/Object;JZ)V

    goto :goto_17

    :pswitch_9
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v7, v2

    move-object v1, v13

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move/from16 v2, p3

    move v13, v3

    move/from16 v21, v11

    const/4 v11, 0x0

    if-ne v10, v4, :cond_24

    invoke-static {v9, v2}, LB1/N;->b([BI)I

    move-result v3

    invoke-virtual {v8, v7, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v5, v2, 0x4

    or-int v2, v27, v24

    move/from16 v4, p4

    move-object v3, v9

    move/from16 v6, v21

    const v16, 0xfffff

    move v9, v2

    move-object v2, v7

    move v7, v13

    goto/16 :goto_c

    :pswitch_a
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v7, v2

    move-object v1, v13

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move/from16 v2, p3

    move v13, v3

    move/from16 v21, v11

    const/4 v3, 0x1

    const/4 v11, 0x0

    if-ne v10, v3, :cond_26

    move-wide v3, v5

    invoke-static {v9, v2}, LB1/N;->c([BI)J

    move-result-wide v5

    move-object/from16 v29, v7

    move-object v7, v1

    move-object v1, v8

    move v8, v2

    move-object/from16 v2, v29

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v5, v8, 0x8

    :goto_19
    or-int v3, v27, v24

    move-object v4, v9

    move v9, v3

    move-object v3, v4

    move v4, v13

    move-object v13, v7

    move v7, v4

    move/from16 v4, p4

    :goto_1a
    move/from16 v6, v21

    goto/16 :goto_9

    :cond_26
    move-object/from16 v29, v7

    move-object v7, v1

    move-object v1, v8

    move v8, v2

    move-object/from16 v2, v29

    :cond_27
    move-object v10, v1

    move-object v1, v2

    goto/16 :goto_1b

    :pswitch_b
    move-object/from16 v9, p2

    move/from16 v8, p3

    move-object v7, v13

    const/16 v17, -0x1

    move v13, v3

    move-wide/from16 v3, v21

    move/from16 v21, v11

    const/4 v11, 0x0

    if-nez v10, :cond_27

    invoke-static {v9, v8, v7}, LB1/N;->i([BILB1/d;)I

    move-result v5

    iget v6, v7, LB1/d;->b:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_19

    :pswitch_c
    move-object/from16 v9, p2

    move/from16 v8, p3

    move-object v7, v13

    const/16 v17, -0x1

    move v13, v3

    move-wide/from16 v3, v21

    move/from16 v21, v11

    const/4 v11, 0x0

    if-nez v10, :cond_27

    invoke-static {v9, v8, v7}, LB1/N;->k([BILB1/d;)I

    move-result v8

    iget-wide v5, v7, LB1/d;->a:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v3, v27, v24

    move-object v4, v9

    move v9, v3

    move-object v3, v4

    move v4, v13

    move-object v13, v7

    move v7, v4

    move/from16 v4, p4

    move v5, v8

    goto :goto_1a

    :pswitch_d
    move-object/from16 v9, p2

    move/from16 v8, p3

    move-object v7, v13

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move v13, v3

    move/from16 v21, v11

    const/4 v11, 0x0

    if-ne v10, v4, :cond_27

    invoke-static {v9, v8}, LB1/N;->b([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    sget-object v4, LB1/M;->c:LB1/L;

    invoke-virtual {v4, v2, v5, v6, v3}, LB1/L;->l(Ljava/lang/Object;JF)V

    add-int/lit8 v5, v8, 0x4

    goto :goto_19

    :pswitch_e
    move-object/from16 v9, p2

    move/from16 v8, p3

    move-object v7, v13

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move v13, v3

    move/from16 v21, v11

    const/4 v3, 0x1

    const/4 v11, 0x0

    if-ne v10, v3, :cond_27

    invoke-static {v9, v8}, LB1/N;->c([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    move-object v10, v1

    sget-object v1, LB1/M;->c:LB1/L;

    move-wide/from16 v29, v5

    move-wide v5, v3

    move-wide/from16 v3, v29

    invoke-virtual/range {v1 .. v6}, LB1/L;->k(Ljava/lang/Object;JD)V

    move-object v1, v2

    add-int/lit8 v5, v8, 0x8

    or-int v2, v27, v24

    move v3, v13

    move-object v13, v7

    move v7, v3

    move/from16 v4, p4

    move-object v3, v9

    move/from16 v6, v21

    move/from16 v8, v26

    const v16, 0xfffff

    move v9, v2

    move-object v2, v1

    move-object v1, v10

    goto/16 :goto_1

    :goto_1b
    move-object v6, v0

    move v5, v8

    move/from16 v19, v11

    move v2, v12

    move v7, v13

    move-object/from16 v18, v15

    move/from16 v20, v17

    move/from16 v9, v27

    move-object v8, v1

    move-object v15, v10

    goto/16 :goto_20

    :cond_28
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move v13, v3

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move/from16 v3, p3

    move/from16 v21, v11

    const/4 v11, 0x0

    const/16 v4, 0x1b

    if-ne v7, v4, :cond_2c

    const/4 v4, 0x2

    if-ne v10, v4, :cond_2b

    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LB1/t;

    move-object v7, v4

    check-cast v7, LB1/b;

    iget-boolean v7, v7, LB1/b;->e:Z

    if-nez v7, :cond_2a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_29

    const/16 v7, 0xa

    goto :goto_1c

    :cond_29
    mul-int/lit8 v7, v7, 0x2

    :goto_1c
    invoke-interface {v4, v7}, LB1/t;->c(I)LB1/t;

    move-result-object v4

    invoke-virtual {v2, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2a
    move-object v6, v4

    invoke-virtual {v0, v13}, LB1/z;->l(I)LB1/E;

    move-result-object v1

    move v4, v12

    move-object v12, v2

    move v2, v4

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v7}, LB1/N;->e(LB1/E;I[BIILB1/t;LB1/d;)I

    move-result v1

    move/from16 v4, p4

    move v5, v1

    move-object v1, v12

    move v7, v13

    move/from16 v6, v21

    const v16, 0xfffff

    move-object/from16 v13, p6

    move v12, v2

    move-object/from16 v2, p1

    goto/16 :goto_1

    :cond_2b
    move/from16 v29, v12

    move-object v12, v2

    move/from16 v2, v29

    move-object/from16 v4, p1

    move/from16 v26, v8

    move/from16 v19, v11

    move-object/from16 v18, v15

    move/from16 v20, v17

    move/from16 v17, v9

    move-object v15, v12

    move v12, v13

    goto/16 :goto_1d

    :cond_2c
    move/from16 v29, v12

    move-object v12, v2

    move/from16 v2, v29

    const/16 v1, 0x31

    if-gt v7, v1, :cond_2e

    move/from16 v26, v8

    move v4, v9

    move/from16 v1, v20

    int-to-long v8, v1

    move-object/from16 v1, p1

    move/from16 v19, v11

    move-object/from16 v18, v15

    move/from16 v20, v17

    move/from16 v17, v4

    move-object v15, v12

    move/from16 v4, p4

    move-wide v11, v5

    move v6, v10

    move v5, v2

    move v10, v7

    move v7, v13

    move-object/from16 v2, p2

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, LB1/z;->y(Ljava/lang/Object;[BIIIIIJIJLB1/d;)I

    move-result v6

    move-object v4, v1

    move v2, v5

    move v12, v7

    if-eq v6, v3, :cond_2d

    move-object/from16 v3, p2

    move-object/from16 v13, p6

    move v5, v6

    move v7, v12

    move-object v1, v15

    move/from16 v9, v17

    move/from16 v6, v21

    move/from16 v8, v26

    const v16, 0xfffff

    move v12, v2

    move-object v2, v4

    goto/16 :goto_8

    :cond_2d
    move-object v8, v4

    move v5, v6

    move v7, v12

    move/from16 v9, v17

    move-object v6, v0

    goto/16 :goto_20

    :cond_2e
    move-object/from16 v4, p1

    move/from16 v26, v8

    move/from16 v19, v11

    move-object/from16 v18, v15

    move/from16 v1, v20

    move-object v15, v12

    move v12, v13

    move/from16 v20, v17

    move/from16 v17, v9

    move v9, v7

    move-wide/from16 v29, v5

    move v6, v10

    move-wide/from16 v10, v29

    const/16 v5, 0x32

    if-ne v9, v5, :cond_30

    const/4 v5, 0x2

    if-eq v6, v5, :cond_2f

    :goto_1d
    move-object v6, v0

    move v5, v3

    move-object v8, v4

    :goto_1e
    move v7, v12

    move/from16 v9, v17

    goto :goto_20

    :cond_2f
    invoke-virtual {v0, v12, v10, v11, v4}, LB1/z;->v(IJLjava/lang/Object;)V

    const/4 v1, 0x0

    throw v1

    :cond_30
    move-object/from16 v13, p6

    move v8, v1

    move v5, v2

    move-object v1, v4

    move v7, v6

    move/from16 v6, v21

    move-object/from16 v2, p2

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v13}, LB1/z;->x(Ljava/lang/Object;[BIIIIIIIJILB1/d;)I

    move-result v7

    move-object v8, v1

    move v2, v5

    move-object v6, v0

    if-eq v7, v3, :cond_31

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v13, p6

    move-object v0, v6

    move v5, v7

    move v7, v12

    move-object v1, v15

    move/from16 v9, v17

    move/from16 v6, v21

    const v16, 0xfffff

    move v12, v2

    :goto_1f
    move-object v2, v8

    goto/16 :goto_d

    :cond_31
    move v5, v7

    goto :goto_1e

    :goto_20
    if-ne v2, v14, :cond_32

    if-eqz v14, :cond_32

    move/from16 v4, p4

    move v12, v2

    :goto_21
    move/from16 v0, v26

    const v1, 0xfffff

    goto :goto_22

    :cond_32
    move-object v0, v8

    check-cast v0, LB1/r;

    iget-object v1, v0, LB1/r;->c:LB1/H;

    sget-object v3, LB1/H;->e:LB1/H;

    if-ne v1, v3, :cond_33

    invoke-static {}, LB1/H;->b()LB1/H;

    move-result-object v1

    iput-object v1, v0, LB1/r;->c:LB1/H;

    :cond_33
    move/from16 v3, p4

    move-object v4, v1

    move v0, v2

    move v2, v5

    move-object/from16 v1, p2

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, LB1/N;->g(I[BIILB1/H;LB1/d;)I

    move-result v2

    move v5, v0

    move-object/from16 v13, p6

    move v4, v3

    move v12, v5

    move-object v0, v6

    move-object v1, v15

    move/from16 v6, v21

    const v16, 0xfffff

    move-object/from16 v3, p2

    move v5, v2

    goto :goto_1f

    :cond_34
    move-object v6, v0

    move/from16 v26, v8

    move/from16 v17, v9

    move-object/from16 v18, v15

    move-object v15, v1

    move-object v8, v2

    goto :goto_21

    :goto_22
    if-eq v0, v1, :cond_35

    int-to-long v0, v0

    invoke-virtual {v15, v8, v0, v1, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_35
    iget v0, v6, LB1/z;->g:I

    :goto_23
    iget v1, v6, LB1/z;->h:I

    if-ge v0, v1, :cond_37

    iget-object v1, v6, LB1/z;->f:[I

    aget v1, v1, v0

    aget v2, v18, v1

    invoke-virtual {v6, v1}, LB1/z;->G(I)I

    move-result v2

    const v16, 0xfffff

    and-int v2, v2, v16

    int-to-long v2, v2

    sget-object v7, LB1/M;->c:LB1/L;

    invoke-virtual {v7, v2, v3, v8}, LB1/L;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_36

    goto :goto_24

    :cond_36
    invoke-virtual {v6, v1}, LB1/z;->j(I)V

    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_37
    if-nez v14, :cond_39

    if-ne v5, v4, :cond_38

    goto :goto_25

    :cond_38
    invoke-static {}, LB1/v;->c()LB1/v;

    move-result-object v0

    throw v0

    :cond_39
    if-gt v5, v4, :cond_3a

    if-ne v12, v14, :cond_3a

    :goto_25
    return v5

    :cond_3a
    invoke-static {}, LB1/v;->c()LB1/v;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public final x(Ljava/lang/Object;[BIIIIIIIJILB1/d;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p6

    move/from16 v2, p7

    move-wide/from16 v3, p10

    move/from16 v10, p12

    sget-object v5, LB1/z;->k:Lsun/misc/Unsafe;

    add-int/lit8 v6, v10, 0x2

    iget-object v7, v0, LB1/z;->a:[I

    aget v6, v7, v6

    const v7, 0xfffff

    and-int/2addr v6, v7

    int-to-long v6, v6

    const/4 v8, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x2

    packed-switch p9, :pswitch_data_0

    :cond_0
    move/from16 v10, p3

    goto/16 :goto_3

    :pswitch_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1, v9, v10}, LB1/z;->t(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    and-int/lit8 v3, p5, -0x8

    or-int/lit8 v7, v3, 0x4

    invoke-virtual {v0, v10}, LB1/z;->l(I)LB1/E;

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    invoke-static/range {v2 .. v8}, LB1/N;->p(Ljava/lang/Object;LB1/E;[BIIILB1/d;)I

    move-result v3

    invoke-virtual {v0, v9, v1, v2, v10}, LB1/z;->E(ILjava/lang/Object;Ljava/lang/Object;I)V

    return v3

    :pswitch_1
    move-object/from16 v11, p2

    move/from16 v8, p3

    move-object/from16 v13, p13

    if-nez v2, :cond_1

    invoke-static {v11, v8, v13}, LB1/N;->k([BILB1/d;)I

    move-result v2

    iget-wide v10, v13, LB1/d;->a:J

    invoke-static {v10, v11}, LB1/k;->b(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :cond_1
    move v10, v8

    goto/16 :goto_3

    :pswitch_2
    move-object/from16 v11, p2

    move/from16 v8, p3

    move-object/from16 v13, p13

    if-nez v2, :cond_1

    invoke-static {v11, v8, v13}, LB1/N;->i([BILB1/d;)I

    move-result v2

    iget v8, v13, LB1/d;->b:I

    invoke-static {v8}, LB1/k;->a(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_3
    move-object/from16 v11, p2

    move/from16 v8, p3

    move-object/from16 v13, p13

    if-nez v2, :cond_1

    invoke-static {v11, v8, v13}, LB1/N;->i([BILB1/d;)I

    move-result v2

    iget v8, v13, LB1/d;->b:I

    invoke-virtual {v0, v10}, LB1/z;->j(I)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_4
    move-object/from16 v11, p2

    move/from16 v8, p3

    move-object/from16 v13, p13

    if-ne v2, v12, :cond_1

    invoke-static {v11, v8, v13}, LB1/N;->a([BILB1/d;)I

    move-result v2

    iget-object v8, v13, LB1/d;->d:Ljava/lang/Object;

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5
    move-object/from16 v11, p2

    move/from16 v8, p3

    move-object/from16 v13, p13

    if-ne v2, v12, :cond_1

    invoke-virtual {v0, v1, v9, v10}, LB1/z;->t(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v10}, LB1/z;->l(I)LB1/E;

    move-result-object v3

    move/from16 v6, p4

    move v5, v8

    move-object v4, v11

    move-object v7, v13

    invoke-static/range {v2 .. v7}, LB1/N;->q(Ljava/lang/Object;LB1/E;[BIILB1/d;)I

    move-result v3

    invoke-virtual {v0, v9, v1, v2, v10}, LB1/z;->E(ILjava/lang/Object;Ljava/lang/Object;I)V

    return v3

    :pswitch_6
    move-object/from16 v13, p2

    move/from16 v10, p3

    move-object/from16 v8, p13

    if-ne v2, v12, :cond_6

    invoke-static {v13, v10, v8}, LB1/N;->i([BILB1/d;)I

    move-result v2

    iget v8, v8, LB1/d;->b:I

    if-nez v8, :cond_2

    const-string v8, ""

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/high16 v10, 0x20000000

    and-int v10, p8, v10

    if-eqz v10, :cond_4

    add-int v10, v2, v8

    invoke-static {v2, v13, v10}, LB1/P;->a(I[BI)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, LB1/v;->a()LB1/v;

    move-result-object v1

    throw v1

    :cond_4
    :goto_0
    new-instance v10, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v13, v2, v8, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v5, v1, v3, v4, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v8

    :goto_1
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_7
    move-object/from16 v13, p2

    move/from16 v10, p3

    move-object/from16 v8, p13

    if-nez v2, :cond_6

    invoke-static {v13, v10, v8}, LB1/N;->k([BILB1/d;)I

    move-result v2

    iget-wide v12, v8, LB1/d;->a:J

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_8
    move-object/from16 v13, p2

    move/from16 v10, p3

    if-ne v2, v8, :cond_6

    invoke-static/range {p2 .. p3}, LB1/N;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v10, 0x4

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_9
    move-object/from16 v13, p2

    move/from16 v10, p3

    if-ne v2, v11, :cond_6

    invoke-static/range {p2 .. p3}, LB1/N;->c([BI)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v10, 0x8

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_a
    move-object/from16 v13, p2

    move/from16 v10, p3

    move-object/from16 v8, p13

    if-nez v2, :cond_6

    invoke-static {v13, v10, v8}, LB1/N;->i([BILB1/d;)I

    move-result v2

    iget v8, v8, LB1/d;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_b
    move-object/from16 v13, p2

    move/from16 v10, p3

    move-object/from16 v8, p13

    if-nez v2, :cond_6

    invoke-static {v13, v10, v8}, LB1/N;->k([BILB1/d;)I

    move-result v2

    iget-wide v10, v8, LB1/d;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_c
    move-object/from16 v13, p2

    move/from16 v10, p3

    if-ne v2, v8, :cond_6

    invoke-static/range {p2 .. p3}, LB1/N;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v10, 0x4

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_d
    move-object/from16 v13, p2

    move/from16 v10, p3

    if-ne v2, v11, :cond_6

    invoke-static/range {p2 .. p3}, LB1/N;->c([BI)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v10, 0x8

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :cond_6
    :goto_3
    return v10

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y(Ljava/lang/Object;[BIIIIIJIJLB1/d;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v7, p7

    move-wide/from16 v4, p11

    sget-object v6, LB1/z;->k:Lsun/misc/Unsafe;

    invoke-virtual {v6, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LB1/t;

    move-object v9, v8

    check-cast v9, LB1/b;

    iget-boolean v9, v9, LB1/b;->e:Z

    const/4 v10, 0x2

    if-nez v9, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    mul-int/2addr v9, v10

    invoke-interface {v8, v9}, LB1/t;->c(I)LB1/t;

    move-result-object v8

    invoke-virtual {v6, v1, v4, v5, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    move-object v5, v8

    const/16 v4, 0xa

    const/4 v6, 0x3

    const/4 v8, 0x5

    const-wide/16 v11, 0x0

    const/4 v9, 0x1

    packed-switch p10, :pswitch_data_0

    :cond_1
    move/from16 v1, p3

    goto/16 :goto_2a

    :pswitch_0
    if-ne v3, v6, :cond_1

    invoke-virtual {v0, v7}, LB1/z;->l(I)LB1/E;

    move-result-object v1

    and-int/lit8 v3, v2, -0x8

    or-int/lit8 v3, v3, 0x4

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move-object/from16 p11, p13

    move-object/from16 p6, v1

    move/from16 p10, v3

    invoke-static/range {p6 .. p11}, LB1/N;->d(LB1/E;[BIIILB1/d;)I

    move-result v1

    move-object/from16 v7, p6

    move-object/from16 v3, p7

    move/from16 v4, p9

    move/from16 v8, p10

    move-object/from16 v6, p11

    iget-object v9, v6, LB1/d;->d:Ljava/lang/Object;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge v1, v4, :cond_3

    invoke-static {v3, v1, v6}, LB1/N;->i([BILB1/d;)I

    move-result v9

    iget v10, v6, LB1/d;->b:I

    if-eq v2, v10, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 p7, v3

    move/from16 p9, v4

    move-object/from16 p11, v6

    move-object/from16 p6, v7

    move/from16 p10, v8

    move/from16 p8, v9

    invoke-static/range {p6 .. p11}, LB1/N;->d(LB1/E;[BIIILB1/d;)I

    move-result v1

    move-object/from16 v4, p7

    move/from16 v6, p9

    move/from16 v3, p10

    move-object/from16 v8, p11

    iget-object v9, v8, LB1/d;->d:Ljava/lang/Object;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v8

    move v8, v3

    move-object v3, v4

    move v4, v6

    move-object/from16 v6, v16

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :pswitch_1
    move-object/from16 v4, p2

    move/from16 v1, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    if-ne v3, v10, :cond_8

    check-cast v5, LB1/w;

    invoke-static {v4, v1, v8}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v2, v8, LB1/d;->b:I

    if-ltz v2, :cond_7

    array-length v3, v4

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_6

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_4

    invoke-static {v4, v1, v8}, LB1/N;->k([BILB1/d;)I

    move-result v1

    iget-wide v6, v8, LB1/d;->a:J

    invoke-static {v6, v7}, LB1/k;->b(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, LB1/w;->b(J)V

    goto :goto_2

    :cond_4
    if-ne v1, v2, :cond_5

    return v1

    :cond_5
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_6
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_7
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_8
    if-nez v3, :cond_64

    check-cast v5, LB1/w;

    invoke-static {v4, v1, v8}, LB1/N;->k([BILB1/d;)I

    move-result v1

    iget-wide v9, v8, LB1/d;->a:J

    invoke-static {v9, v10}, LB1/k;->b(J)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, LB1/w;->b(J)V

    :goto_3
    if-ge v1, v6, :cond_a

    invoke-static {v4, v1, v8}, LB1/N;->i([BILB1/d;)I

    move-result v3

    iget v7, v8, LB1/d;->b:I

    if-eq v2, v7, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {v4, v3, v8}, LB1/N;->k([BILB1/d;)I

    move-result v1

    iget-wide v9, v8, LB1/d;->a:J

    invoke-static {v9, v10}, LB1/k;->b(J)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, LB1/w;->b(J)V

    goto :goto_3

    :cond_a
    :goto_4
    return v1

    :pswitch_2
    move-object/from16 v4, p2

    move/from16 v1, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    if-ne v3, v10, :cond_f

    check-cast v5, LB1/s;

    invoke-static {v4, v1, v8}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v2, v8, LB1/d;->b:I

    if-ltz v2, :cond_e

    array-length v3, v4

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_d

    add-int/2addr v2, v1

    :goto_5
    if-ge v1, v2, :cond_b

    invoke-static {v4, v1, v8}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v3, v8, LB1/d;->b:I

    invoke-static {v3}, LB1/k;->a(I)I

    move-result v3

    invoke-virtual {v5, v3}, LB1/s;->b(I)V

    goto :goto_5

    :cond_b
    if-ne v1, v2, :cond_c

    return v1

    :cond_c
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_d
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_e
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_f
    if-nez v3, :cond_64

    check-cast v5, LB1/s;

    invoke-static {v4, v1, v8}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v3, v8, LB1/d;->b:I

    invoke-static {v3}, LB1/k;->a(I)I

    move-result v3

    invoke-virtual {v5, v3}, LB1/s;->b(I)V

    :goto_6
    if-ge v1, v6, :cond_11

    invoke-static {v4, v1, v8}, LB1/N;->i([BILB1/d;)I

    move-result v3

    iget v7, v8, LB1/d;->b:I

    if-eq v2, v7, :cond_10

    goto :goto_7

    :cond_10
    invoke-static {v4, v3, v8}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v3, v8, LB1/d;->b:I

    invoke-static {v3}, LB1/k;->a(I)I

    move-result v3

    invoke-virtual {v5, v3}, LB1/s;->b(I)V

    goto :goto_6

    :cond_11
    :goto_7
    return v1

    :pswitch_3
    move-object/from16 v4, p2

    move/from16 v1, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    if-ne v3, v10, :cond_12

    invoke-static {v4, v1, v5, v8}, LB1/N;->f([BILB1/t;LB1/d;)I

    move-result v1

    goto :goto_8

    :cond_12
    if-nez v3, :cond_64

    move v3, v1

    move v1, v2

    move-object v2, v4

    move v4, v6

    move-object v6, v8

    invoke-static/range {v1 .. v6}, LB1/N;->j(I[BIILB1/t;LB1/d;)I

    move-result v1

    :goto_8
    invoke-virtual {v0, v7}, LB1/z;->j(I)V

    sget-object v2, LB1/F;->a:Ljava/lang/Class;

    return v1

    :pswitch_4
    move/from16 v1, p3

    move/from16 v4, p4

    move-object/from16 v6, p13

    move-object v8, v5

    move v5, v2

    move-object/from16 v2, p2

    if-ne v3, v10, :cond_64

    invoke-static {v2, v1, v6}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v3, v6, LB1/d;->b:I

    if-ltz v3, :cond_1a

    array-length v7, v2

    sub-int/2addr v7, v1

    if-gt v3, v7, :cond_19

    if-nez v3, :cond_13

    sget-object v3, LB1/i;->f:LB1/j;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    invoke-static {v1, v2, v3}, LB1/i;->d(I[BI)LB1/j;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/2addr v1, v3

    :goto_a
    if-ge v1, v4, :cond_18

    invoke-static {v2, v1, v6}, LB1/N;->i([BILB1/d;)I

    move-result v3

    iget v7, v6, LB1/d;->b:I

    if-eq v5, v7, :cond_14

    goto :goto_b

    :cond_14
    invoke-static {v2, v3, v6}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v3, v6, LB1/d;->b:I

    if-ltz v3, :cond_17

    array-length v7, v2

    sub-int/2addr v7, v1

    if-gt v3, v7, :cond_16

    if-nez v3, :cond_15

    sget-object v3, LB1/i;->f:LB1/j;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    invoke-static {v1, v2, v3}, LB1/i;->d(I[BI)LB1/j;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_16
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_17
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_18
    :goto_b
    return v1

    :cond_19
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_1a
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :pswitch_5
    move/from16 v1, p3

    move/from16 v4, p4

    move-object/from16 v6, p13

    move-object v8, v5

    move v5, v2

    move-object/from16 v2, p2

    if-ne v3, v10, :cond_64

    invoke-virtual {v0, v7}, LB1/z;->l(I)LB1/E;

    move-result-object v3

    move/from16 p9, v1

    move-object/from16 p8, v2

    move-object/from16 p6, v3

    move/from16 p10, v4

    move/from16 p7, v5

    move-object/from16 p12, v6

    move-object/from16 p11, v8

    invoke-static/range {p6 .. p12}, LB1/N;->e(LB1/E;I[BIILB1/t;LB1/d;)I

    move-result v1

    return v1

    :pswitch_6
    move/from16 v7, p4

    move-object/from16 v14, p13

    move v13, v2

    move-object v15, v5

    move-object/from16 v5, p2

    move/from16 v2, p3

    if-ne v3, v10, :cond_2a

    const-wide/32 v3, 0x20000000

    and-long v3, p8, v3

    cmp-long v1, v3, v11

    const-string v3, ""

    if-nez v1, :cond_21

    invoke-static {v5, v2, v14}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v2, v14, LB1/d;->b:I

    if-ltz v2, :cond_20

    if-nez v2, :cond_1b

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1b
    new-instance v4, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v1, v2, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/2addr v1, v2

    :goto_d
    if-ge v1, v7, :cond_1f

    invoke-static {v5, v1, v14}, LB1/N;->i([BILB1/d;)I

    move-result v2

    iget v4, v14, LB1/d;->b:I

    if-eq v13, v4, :cond_1c

    goto :goto_e

    :cond_1c
    invoke-static {v5, v2, v14}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v2, v14, LB1/d;->b:I

    if-ltz v2, :cond_1e

    if-nez v2, :cond_1d

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1d
    new-instance v4, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v1, v2, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1e
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_1f
    :goto_e
    return v1

    :cond_20
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_21
    invoke-static {v5, v2, v14}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v2, v14, LB1/d;->b:I

    if-ltz v2, :cond_29

    if-nez v2, :cond_22

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_22
    add-int v4, v1, v2

    invoke-static {v1, v5, v4}, LB1/P;->a(I[BI)Z

    move-result v6

    if-eqz v6, :cond_28

    new-instance v6, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v1, v2, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    move v1, v4

    :goto_10
    if-ge v1, v7, :cond_27

    invoke-static {v5, v1, v14}, LB1/N;->i([BILB1/d;)I

    move-result v2

    iget v4, v14, LB1/d;->b:I

    if-eq v13, v4, :cond_23

    goto :goto_11

    :cond_23
    invoke-static {v5, v2, v14}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v2, v14, LB1/d;->b:I

    if-ltz v2, :cond_26

    if-nez v2, :cond_24

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_24
    add-int v4, v1, v2

    invoke-static {v1, v5, v4}, LB1/P;->a(I[BI)Z

    move-result v6

    if-eqz v6, :cond_25

    new-instance v6, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v1, v2, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_25
    invoke-static {}, LB1/v;->a()LB1/v;

    move-result-object v1

    throw v1

    :cond_26
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_27
    :goto_11
    return v1

    :cond_28
    invoke-static {}, LB1/v;->a()LB1/v;

    move-result-object v1

    throw v1

    :cond_29
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_2a
    move v1, v2

    goto/16 :goto_2a

    :pswitch_7
    move/from16 v7, p4

    move-object/from16 v14, p13

    move v13, v2

    move-object v15, v5

    move-object/from16 v5, p2

    move/from16 v2, p3

    if-ne v3, v10, :cond_30

    move-object v3, v15

    check-cast v3, LB1/f;

    invoke-static {v5, v2, v14}, LB1/N;->i([BILB1/d;)I

    move-result v2

    iget v4, v14, LB1/d;->b:I

    if-ltz v4, :cond_2f

    array-length v6, v5

    sub-int/2addr v6, v2

    if-gt v4, v6, :cond_2e

    add-int/2addr v4, v2

    :goto_12
    if-ge v2, v4, :cond_2c

    invoke-static {v5, v2, v14}, LB1/N;->k([BILB1/d;)I

    move-result v2

    iget-wide v6, v14, LB1/d;->a:J

    cmp-long v6, v6, v11

    if-eqz v6, :cond_2b

    move v6, v9

    goto :goto_13

    :cond_2b
    const/4 v6, 0x0

    :goto_13
    invoke-virtual {v3, v6}, LB1/f;->b(Z)V

    goto :goto_12

    :cond_2c
    if-ne v2, v4, :cond_2d

    return v2

    :cond_2d
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_2e
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_2f
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_30
    if-nez v3, :cond_2a

    move-object v3, v15

    check-cast v3, LB1/f;

    invoke-static {v5, v2, v14}, LB1/N;->k([BILB1/d;)I

    move-result v2

    move/from16 p3, v2

    const/16 p1, 0x0

    iget-wide v1, v14, LB1/d;->a:J

    cmp-long v1, v1, v11

    if-eqz v1, :cond_31

    move v1, v9

    goto :goto_14

    :cond_31
    move/from16 v1, p1

    :goto_14
    invoke-virtual {v3, v1}, LB1/f;->b(Z)V

    move/from16 v2, p3

    :goto_15
    if-ge v2, v7, :cond_34

    invoke-static {v5, v2, v14}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v4, v14, LB1/d;->b:I

    if-eq v13, v4, :cond_32

    goto :goto_17

    :cond_32
    invoke-static {v5, v1, v14}, LB1/N;->k([BILB1/d;)I

    move-result v2

    move-wide/from16 p11, v11

    iget-wide v11, v14, LB1/d;->a:J

    cmp-long v1, v11, p11

    if-eqz v1, :cond_33

    move v1, v9

    goto :goto_16

    :cond_33
    move/from16 v1, p1

    :goto_16
    invoke-virtual {v3, v1}, LB1/f;->b(Z)V

    move-wide/from16 v11, p11

    goto :goto_15

    :cond_34
    :goto_17
    return v2

    :pswitch_8
    move/from16 v7, p4

    move-object/from16 v14, p13

    move v13, v2

    move-object v15, v5

    const/16 p1, 0x0

    move-object/from16 v5, p2

    move/from16 v2, p3

    if-ne v3, v10, :cond_3c

    move-object v1, v15

    check-cast v1, LB1/s;

    invoke-static {v5, v2, v14}, LB1/N;->i([BILB1/d;)I

    move-result v2

    iget v3, v14, LB1/d;->b:I

    if-ltz v3, :cond_3b

    array-length v7, v5

    sub-int/2addr v7, v2

    if-gt v3, v7, :cond_3a

    add-int v7, v2, v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x0

    iget-object v8, v1, LB1/s;->f:[I

    array-length v11, v8

    if-gt v3, v11, :cond_35

    goto :goto_19

    :cond_35
    array-length v11, v8

    if-nez v11, :cond_36

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, LB1/s;->f:[I

    goto :goto_19

    :cond_36
    array-length v8, v8

    :goto_18
    if-ge v8, v3, :cond_37

    invoke-static {v8, v6, v10, v9, v4}, LB1/e;->d(IIIII)I

    move-result v8

    goto :goto_18

    :cond_37
    iget-object v3, v1, LB1/s;->f:[I

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, LB1/s;->f:[I

    :goto_19
    if-ge v2, v7, :cond_38

    invoke-static {v5, v2}, LB1/N;->b([BI)I

    move-result v3

    invoke-virtual {v1, v3}, LB1/s;->b(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_19

    :cond_38
    if-ne v2, v7, :cond_39

    return v2

    :cond_39
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_3a
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_3b
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_3c
    if-ne v3, v8, :cond_2a

    move-object v1, v15

    check-cast v1, LB1/s;

    invoke-static/range {p2 .. p3}, LB1/N;->b([BI)I

    move-result v3

    invoke-virtual {v1, v3}, LB1/s;->b(I)V

    add-int/lit8 v2, v2, 0x4

    :goto_1a
    if-ge v2, v7, :cond_3e

    invoke-static {v5, v2, v14}, LB1/N;->i([BILB1/d;)I

    move-result v3

    iget v4, v14, LB1/d;->b:I

    if-eq v13, v4, :cond_3d

    goto :goto_1b

    :cond_3d
    invoke-static {v5, v3}, LB1/N;->b([BI)I

    move-result v2

    invoke-virtual {v1, v2}, LB1/s;->b(I)V

    add-int/lit8 v2, v3, 0x4

    goto :goto_1a

    :cond_3e
    :goto_1b
    return v2

    :pswitch_9
    move/from16 v7, p4

    move-object/from16 v14, p13

    move v13, v2

    move-object v15, v5

    const/16 p1, 0x0

    move-object/from16 v5, p2

    move/from16 v2, p3

    if-ne v3, v10, :cond_46

    move-object v1, v15

    check-cast v1, LB1/w;

    invoke-static {v5, v2, v14}, LB1/N;->i([BILB1/d;)I

    move-result v2

    iget v3, v14, LB1/d;->b:I

    if-ltz v3, :cond_45

    array-length v7, v5

    sub-int/2addr v7, v2

    if-gt v3, v7, :cond_44

    add-int v7, v2, v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x0

    iget-object v8, v1, LB1/w;->f:[J

    array-length v11, v8

    if-gt v3, v11, :cond_3f

    goto :goto_1d

    :cond_3f
    array-length v11, v8

    if-nez v11, :cond_40

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, v1, LB1/w;->f:[J

    goto :goto_1d

    :cond_40
    array-length v8, v8

    :goto_1c
    if-ge v8, v3, :cond_41

    invoke-static {v8, v6, v10, v9, v4}, LB1/e;->d(IIIII)I

    move-result v8

    goto :goto_1c

    :cond_41
    iget-object v3, v1, LB1/w;->f:[J

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v1, LB1/w;->f:[J

    :goto_1d
    if-ge v2, v7, :cond_42

    invoke-static {v5, v2}, LB1/N;->c([BI)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, LB1/w;->b(J)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_1d

    :cond_42
    if-ne v2, v7, :cond_43

    return v2

    :cond_43
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_44
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_45
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_46
    if-ne v3, v9, :cond_2a

    move-object v1, v15

    check-cast v1, LB1/w;

    invoke-static/range {p2 .. p3}, LB1/N;->c([BI)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, LB1/w;->b(J)V

    add-int/lit8 v2, v2, 0x8

    :goto_1e
    if-ge v2, v7, :cond_48

    invoke-static {v5, v2, v14}, LB1/N;->i([BILB1/d;)I

    move-result v3

    iget v4, v14, LB1/d;->b:I

    if-eq v13, v4, :cond_47

    goto :goto_1f

    :cond_47
    invoke-static {v5, v3}, LB1/N;->c([BI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, LB1/w;->b(J)V

    add-int/lit8 v2, v3, 0x8

    goto :goto_1e

    :cond_48
    :goto_1f
    return v2

    :pswitch_a
    move/from16 v7, p4

    move-object/from16 v14, p13

    move v13, v2

    move-object v15, v5

    move-object/from16 v5, p2

    move/from16 v2, p3

    if-ne v3, v10, :cond_49

    invoke-static {v5, v2, v15, v14}, LB1/N;->f([BILB1/t;LB1/d;)I

    move-result v1

    return v1

    :cond_49
    if-nez v3, :cond_2a

    move/from16 p8, v2

    move-object/from16 p7, v5

    move/from16 p9, v7

    move/from16 p6, v13

    move-object/from16 p11, v14

    move-object/from16 p10, v15

    invoke-static/range {p6 .. p11}, LB1/N;->j(I[BIILB1/t;LB1/d;)I

    move-result v1

    return v1

    :pswitch_b
    move/from16 v1, p3

    move/from16 v7, p4

    move-object/from16 v14, p13

    move-object v15, v5

    move v5, v2

    move-object/from16 v2, p2

    if-ne v3, v10, :cond_4e

    move-object v5, v15

    check-cast v5, LB1/w;

    invoke-static {v2, v1, v14}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v3, v14, LB1/d;->b:I

    if-ltz v3, :cond_4d

    array-length v4, v2

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_4c

    add-int/2addr v3, v1

    :goto_20
    if-ge v1, v3, :cond_4a

    invoke-static {v2, v1, v14}, LB1/N;->k([BILB1/d;)I

    move-result v1

    iget-wide v6, v14, LB1/d;->a:J

    invoke-virtual {v5, v6, v7}, LB1/w;->b(J)V

    goto :goto_20

    :cond_4a
    if-ne v1, v3, :cond_4b

    return v1

    :cond_4b
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_4c
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_4d
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_4e
    if-nez v3, :cond_64

    move-object v3, v15

    check-cast v3, LB1/w;

    invoke-static {v2, v1, v14}, LB1/N;->k([BILB1/d;)I

    move-result v1

    iget-wide v8, v14, LB1/d;->a:J

    invoke-virtual {v3, v8, v9}, LB1/w;->b(J)V

    :goto_21
    if-ge v1, v7, :cond_50

    invoke-static {v2, v1, v14}, LB1/N;->i([BILB1/d;)I

    move-result v4

    iget v6, v14, LB1/d;->b:I

    if-eq v5, v6, :cond_4f

    goto :goto_22

    :cond_4f
    invoke-static {v2, v4, v14}, LB1/N;->k([BILB1/d;)I

    move-result v1

    iget-wide v8, v14, LB1/d;->a:J

    invoke-virtual {v3, v8, v9}, LB1/w;->b(J)V

    goto :goto_21

    :cond_50
    :goto_22
    return v1

    :pswitch_c
    move/from16 v1, p3

    move/from16 v7, p4

    move-object/from16 v14, p13

    move-object v15, v5

    const/16 p1, 0x0

    move v5, v2

    move-object/from16 v2, p2

    if-ne v3, v10, :cond_58

    move-object v5, v15

    check-cast v5, LB1/o;

    invoke-static {v2, v1, v14}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v3, v14, LB1/d;->b:I

    if-ltz v3, :cond_57

    array-length v7, v2

    sub-int/2addr v7, v1

    if-gt v3, v7, :cond_56

    add-int v7, v1, v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x0

    iget-object v8, v5, LB1/o;->f:[F

    array-length v11, v8

    if-gt v3, v11, :cond_51

    goto :goto_24

    :cond_51
    array-length v11, v8

    if-nez v11, :cond_52

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, v5, LB1/o;->f:[F

    goto :goto_24

    :cond_52
    array-length v8, v8

    :goto_23
    if-ge v8, v3, :cond_53

    invoke-static {v8, v6, v10, v9, v4}, LB1/e;->d(IIIII)I

    move-result v8

    goto :goto_23

    :cond_53
    iget-object v3, v5, LB1/o;->f:[F

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    iput-object v3, v5, LB1/o;->f:[F

    :goto_24
    if-ge v1, v7, :cond_54

    invoke-static {v2, v1}, LB1/N;->b([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v5, v3}, LB1/o;->b(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_24

    :cond_54
    if-ne v1, v7, :cond_55

    return v1

    :cond_55
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_56
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_57
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_58
    if-ne v3, v8, :cond_64

    move-object v3, v15

    check-cast v3, LB1/o;

    invoke-static/range {p2 .. p3}, LB1/N;->b([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, LB1/o;->b(F)V

    add-int/lit8 v1, v1, 0x4

    :goto_25
    if-ge v1, v7, :cond_5a

    invoke-static {v2, v1, v14}, LB1/N;->i([BILB1/d;)I

    move-result v4

    iget v6, v14, LB1/d;->b:I

    if-eq v5, v6, :cond_59

    goto :goto_26

    :cond_59
    invoke-static {v2, v4}, LB1/N;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v3, v1}, LB1/o;->b(F)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_25

    :cond_5a
    :goto_26
    return v1

    :pswitch_d
    move/from16 v1, p3

    move/from16 v7, p4

    move-object/from16 v14, p13

    move-object v15, v5

    const/16 p1, 0x0

    move v5, v2

    move-object/from16 v2, p2

    if-ne v3, v10, :cond_62

    move-object v5, v15

    check-cast v5, LB1/l;

    invoke-static {v2, v1, v14}, LB1/N;->i([BILB1/d;)I

    move-result v1

    iget v3, v14, LB1/d;->b:I

    if-ltz v3, :cond_61

    array-length v7, v2

    sub-int/2addr v7, v1

    if-gt v3, v7, :cond_60

    add-int v7, v1, v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x0

    iget-object v8, v5, LB1/l;->f:[D

    array-length v11, v8

    if-gt v3, v11, :cond_5b

    goto :goto_28

    :cond_5b
    array-length v11, v8

    if-nez v11, :cond_5c

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [D

    iput-object v3, v5, LB1/l;->f:[D

    goto :goto_28

    :cond_5c
    array-length v8, v8

    :goto_27
    if-ge v8, v3, :cond_5d

    invoke-static {v8, v6, v10, v9, v4}, LB1/e;->d(IIIII)I

    move-result v8

    goto :goto_27

    :cond_5d
    iget-object v3, v5, LB1/l;->f:[D

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v3

    iput-object v3, v5, LB1/l;->f:[D

    :goto_28
    if-ge v1, v7, :cond_5e

    invoke-static {v2, v1}, LB1/N;->c([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, LB1/l;->b(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_28

    :cond_5e
    if-ne v1, v7, :cond_5f

    return v1

    :cond_5f
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_60
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object v1

    throw v1

    :cond_61
    invoke-static {}, LB1/v;->b()LB1/v;

    move-result-object v1

    throw v1

    :cond_62
    if-ne v3, v9, :cond_64

    move-object v3, v15

    check-cast v3, LB1/l;

    invoke-static/range {p2 .. p3}, LB1/N;->c([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, LB1/l;->b(D)V

    add-int/lit8 v1, v1, 0x8

    :goto_29
    if-ge v1, v7, :cond_64

    invoke-static {v2, v1, v14}, LB1/N;->i([BILB1/d;)I

    move-result v4

    iget v6, v14, LB1/d;->b:I

    if-eq v5, v6, :cond_63

    goto :goto_2a

    :cond_63
    invoke-static {v2, v4}, LB1/N;->c([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, LB1/l;->b(D)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_29

    :cond_64
    :goto_2a
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
