.class public final LH/v;
.super LH/p;
.source "SourceFile"


# instance fields
.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LH/v;->i:I

    invoke-direct {p0}, LH/p;-><init>()V

    return-void
.end method

.method public static n(ILjava/nio/ByteBuffer;)V
    .locals 4

    const-wide v0, 0x3e00000000200000L    # 4.656612875245797E-10

    int-to-double v2, p0

    mul-double/2addr v2, v0

    double-to-float p0, v2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a(LH/k;)LH/k;
    .locals 3

    iget v0, p0, LH/v;->i:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, LH/k;->c:I

    invoke-static {v0}, LJ/W;->C(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, LH/k;

    iget v2, p1, LH/k;->a:I

    iget p1, p1, LH/k;->b:I

    invoke-direct {v0, v2, p1, v1}, LH/k;-><init>(III)V

    goto :goto_0

    :cond_0
    sget-object v0, LH/k;->e:LH/k;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, LH/n;

    invoke-direct {v0, p1}, LH/n;-><init>(LH/k;)V

    throw v0

    :pswitch_0
    iget v0, p1, LH/k;->c:I

    invoke-static {v0}, LJ/W;->C(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    new-instance v0, LH/k;

    iget v2, p1, LH/k;->a:I

    iget p1, p1, LH/k;->b:I

    invoke-direct {v0, v2, p1, v1}, LH/k;-><init>(III)V

    goto :goto_1

    :cond_2
    sget-object v0, LH/k;->e:LH/k;

    :goto_1
    return-object v0

    :cond_3
    new-instance v0, LH/n;

    invoke-direct {v0, p1}, LH/n;-><init>(LH/k;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/nio/ByteBuffer;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, LH/v;->i:I

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    sub-int v4, v3, v2

    iget-object v5, v0, LH/p;->b:LH/k;

    iget v5, v5, LH/k;->c:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_9

    const/4 v7, 0x3

    if-eq v5, v7, :cond_8

    const/16 v8, 0x15

    const/4 v9, 0x0

    if-eq v5, v8, :cond_7

    const/16 v8, 0x16

    if-eq v5, v8, :cond_6

    const/high16 v8, 0x10000000

    if-eq v5, v8, :cond_5

    const/high16 v8, 0x50000000

    if-eq v5, v8, :cond_4

    const/high16 v7, 0x60000000

    if-eq v5, v7, :cond_3

    const/high16 v7, 0x70000000

    if-eq v5, v7, :cond_2

    const/high16 v7, 0x71000000

    if-eq v5, v7, :cond_1

    const/high16 v7, 0x72000000

    if-ne v5, v7, :cond_0

    div-int/2addr v4, v6

    invoke-virtual {v0, v4}, LH/p;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_0
    if-ge v2, v3, :cond_a

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {v0, v4}, LH/p;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_1
    if-ge v2, v3, :cond_a

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_2
    div-int/2addr v4, v6

    invoke-virtual {v0, v4}, LH/p;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_2
    if-ge v2, v3, :cond_a

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x8

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4}, LH/p;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_3
    if-ge v2, v3, :cond_a

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    invoke-static {v5, v4}, LH/v;->n(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_3

    :cond_4
    div-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v4}, LH/p;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_4
    if-ge v2, v3, :cond_a

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int/lit8 v7, v2, 0x2

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v5, v6, v7, v9}, LS1/e;->i(BBBB)I

    move-result v5

    invoke-static {v5, v4}, LH/v;->n(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v2, v2, 0x3

    goto :goto_4

    :cond_5
    mul-int/2addr v4, v6

    invoke-virtual {v0, v4}, LH/p;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_5
    if-ge v2, v3, :cond_a

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    invoke-static {v5, v4}, LH/v;->n(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v4}, LH/p;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_6
    if-ge v2, v3, :cond_a

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-static {v5, v4}, LH/v;->n(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_6

    :cond_7
    div-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v4}, LH/p;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_7
    if-ge v2, v3, :cond_a

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v5, v6, v7, v9}, LS1/e;->i(BBBB)I

    move-result v5

    invoke-static {v5, v4}, LH/v;->n(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v2, v2, 0x3

    goto :goto_7

    :cond_8
    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v4}, LH/p;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_8
    if-ge v2, v3, :cond_a

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v5, v5, -0x80

    shl-int/lit8 v5, v5, 0x18

    invoke-static {v5, v4}, LH/v;->n(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    mul-int/2addr v4, v6

    invoke-virtual {v0, v4}, LH/p;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_9
    if-ge v2, v3, :cond_a

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    invoke-static {v5, v4}, LH/v;->n(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_a
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void

    :pswitch_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    sub-int v4, v3, v2

    iget-object v5, v0, LH/p;->b:LH/k;

    iget v5, v5, LH/k;->c:I

    const/high16 v6, 0x72000000

    const/high16 v7, 0x71000000

    const/high16 v8, 0x70000000

    const/high16 v9, 0x60000000

    const/high16 v10, 0x50000000

    const/high16 v11, 0x10000000

    const/16 v12, 0x16

    const/16 v13, 0x15

    const/4 v14, 0x4

    const/4 v15, 0x3

    if-eq v5, v15, :cond_e

    if-eq v5, v14, :cond_f

    if-eq v5, v13, :cond_d

    if-eq v5, v12, :cond_f

    if-eq v5, v11, :cond_10

    if-eq v5, v10, :cond_d

    if-eq v5, v9, :cond_f

    if-eq v5, v8, :cond_c

    if-eq v5, v7, :cond_f

    if-ne v5, v6, :cond_b

    goto :goto_a

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_c
    :goto_a
    div-int/lit8 v4, v4, 0x4

    goto :goto_b

    :cond_d
    div-int/lit8 v4, v4, 0x3

    :cond_e
    mul-int/lit8 v4, v4, 0x2

    goto :goto_b

    :cond_f
    div-int/lit8 v4, v4, 0x2

    :cond_10
    :goto_b
    invoke-virtual {v0, v4}, LH/p;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, v0, LH/p;->b:LH/k;

    iget v5, v5, LH/k;->c:I

    if-eq v5, v15, :cond_1a

    const v16, 0x46fffe00    # 32767.0f

    const/high16 v15, -0x40800000    # -1.0f

    if-eq v5, v14, :cond_19

    if-eq v5, v13, :cond_18

    if-eq v5, v12, :cond_17

    if-eq v5, v11, :cond_16

    if-eq v5, v10, :cond_15

    if-eq v5, v9, :cond_14

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide v13, 0x40dfffc000000000L    # 32767.0

    if-eq v5, v8, :cond_13

    if-eq v5, v7, :cond_12

    if-ne v5, v6, :cond_11

    :goto_c
    if-ge v2, v3, :cond_1b

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    mul-double/2addr v5, v13

    double-to-int v5, v5

    int-to-short v5, v5

    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x8

    goto :goto_c

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_12
    :goto_d
    if-ge v2, v3, :cond_1b

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v15, v6}, LJ/W;->f(FFF)F

    move-result v5

    mul-float v5, v5, v16

    float-to-int v5, v5

    int-to-short v5, v5

    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x4

    goto :goto_d

    :cond_13
    :goto_e
    if-ge v2, v3, :cond_1b

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    mul-double/2addr v5, v13

    double-to-int v5, v5

    int-to-short v5, v5

    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x8

    goto :goto_e

    :cond_14
    :goto_f
    if-ge v2, v3, :cond_1b

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x4

    goto :goto_f

    :cond_15
    :goto_10
    if-ge v2, v3, :cond_1b

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x3

    goto :goto_10

    :cond_16
    :goto_11
    if-ge v2, v3, :cond_1b

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x2

    goto :goto_11

    :cond_17
    :goto_12
    if-ge v2, v3, :cond_1b

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x4

    goto :goto_12

    :cond_18
    :goto_13
    if-ge v2, v3, :cond_1b

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x3

    goto :goto_13

    :cond_19
    :goto_14
    if-ge v2, v3, :cond_1b

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v15, v6}, LJ/W;->f(FFF)F

    move-result v5

    mul-float v5, v5, v16

    float-to-int v5, v5

    int-to-short v5, v5

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x4

    goto :goto_14

    :cond_1a
    :goto_15
    if-ge v2, v3, :cond_1b

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v5, v5, -0x80

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1b
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
