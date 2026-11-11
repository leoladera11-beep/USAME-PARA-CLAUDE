.class public final LP/I;
.super LH/p;
.source "SourceFile"


# instance fields
.field public i:Ly1/a;

.field public j:Ly1/a;


# virtual methods
.method public final a(LH/k;)LH/k;
    .locals 9

    iget v0, p1, LH/k;->c:I

    iget-object v1, p0, LP/I;->i:Ly1/a;

    if-nez v1, :cond_0

    sget-object p1, LH/k;->e:LH/k;

    return-object p1

    :cond_0
    iget v2, p1, LH/k;->b:I

    invoke-static {v0}, LJ/W;->C(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v1, Ly1/a;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    move v7, v4

    :goto_1
    if-ge v7, v3, :cond_4

    invoke-virtual {v1, v7}, Ly1/a;->b(I)I

    move-result v8

    if-ge v8, v2, :cond_3

    if-eq v8, v7, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    or-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, LH/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Channel map ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") trying to access non-existent input channel."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LH/n;-><init>(Ljava/lang/String;LH/k;)V

    throw v0

    :cond_4
    if-eqz v6, :cond_5

    new-instance v1, LH/k;

    iget p1, p1, LH/k;->a:I

    invoke-direct {v1, p1, v3, v0}, LH/k;-><init>(III)V

    return-object v1

    :cond_5
    sget-object p1, LH/k;->e:LH/k;

    return-object p1

    :cond_6
    new-instance v0, LH/n;

    invoke-direct {v0, p1}, LH/n;-><init>(LH/k;)V

    throw v0
.end method

.method public final g(Ljava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LP/I;->j:Ly1/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    sub-int v5, v4, v3

    iget-object v6, v0, LH/p;->b:LH/k;

    iget v6, v6, LH/k;->d:I

    div-int/2addr v5, v6

    iget-object v6, v0, LH/p;->c:LH/k;

    iget v6, v6, LH/k;->d:I

    mul-int/2addr v5, v6

    invoke-virtual {v0, v5}, LH/p;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    :goto_0
    if-ge v3, v4, :cond_f

    const/4 v7, 0x0

    :goto_1
    iget v8, v2, Ly1/a;->f:I

    if-ge v7, v8, :cond_e

    invoke-virtual {v2, v7}, Ly1/a;->b(I)I

    move-result v8

    iget-object v9, v0, LH/p;->b:LH/k;

    iget v9, v9, LH/k;->c:I

    invoke-static {v9}, LJ/W;->o(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    iget-object v8, v0, LH/p;->b:LH/k;

    iget v8, v8, LH/k;->c:I

    const/4 v10, 0x2

    if-eq v8, v10, :cond_d

    const/4 v10, 0x3

    if-eq v8, v10, :cond_c

    const/4 v11, 0x4

    if-eq v8, v11, :cond_b

    const/16 v11, 0x15

    if-eq v8, v11, :cond_3

    const/16 v11, 0x16

    if-eq v8, v11, :cond_2

    const/high16 v11, 0x10000000

    if-eq v8, v11, :cond_d

    const/high16 v11, 0x50000000

    if-eq v8, v11, :cond_3

    const/high16 v10, 0x60000000

    if-eq v8, v10, :cond_2

    const/high16 v10, 0x70000000

    if-eq v8, v10, :cond_1

    const/high16 v10, 0x71000000

    if-eq v8, v10, :cond_b

    const/high16 v10, 0x72000000

    if-ne v8, v10, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, LH/p;->b:LH/k;

    iget v3, v3, LH/k;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_2
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto/16 :goto_b

    :cond_2
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_b

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v11, :cond_4

    move v8, v9

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v9, 0x2

    :goto_3
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v13

    if-ne v13, v11, :cond_5

    add-int/lit8 v9, v9, 0x2

    :cond_5
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    shl-int/lit8 v8, v8, 0x18

    const/high16 v13, -0x1000000

    and-int/2addr v8, v13

    shl-int/lit8 v12, v12, 0x10

    const/high16 v14, 0xff0000

    and-int/2addr v12, v14

    or-int/2addr v8, v12

    shl-int/lit8 v9, v9, 0x8

    const v12, 0xff00

    and-int/2addr v9, v12

    or-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x8

    and-int v9, v8, v13

    const/4 v13, 0x1

    if-eqz v9, :cond_7

    const/high16 v9, -0x800000    # Float.NEGATIVE_INFINITY

    and-int v15, v8, v9

    if-ne v15, v9, :cond_6

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    move v9, v13

    :goto_5
    const-string v15, "Value out of range of 24-bit integer: %s"

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v15, v6}, LF1/i;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-lt v6, v10, :cond_8

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    invoke-static {v13}, LF1/i;->g(Z)V

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    if-ne v6, v11, :cond_9

    and-int v6, v8, v14

    shr-int/lit8 v6, v6, 0x10

    :goto_7
    int-to-byte v6, v6

    goto :goto_8

    :cond_9
    and-int/lit16 v6, v8, 0xff

    goto :goto_7

    :goto_8
    and-int v9, v8, v12

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v10

    if-ne v10, v11, :cond_a

    and-int/lit16 v8, v8, 0xff

    :goto_9
    int-to-byte v8, v8

    goto :goto_a

    :cond_a
    and-int/2addr v8, v14

    shr-int/lit8 v8, v8, 0x10

    goto :goto_9

    :goto_a
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_b

    :cond_b
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_b

    :cond_c
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_b

    :cond_d
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_e
    iget-object v6, v0, LH/p;->b:LH/k;

    iget v6, v6, LH/k;->d:I

    add-int/2addr v3, v6

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, LP/I;->i:Ly1/a;

    iput-object v0, p0, LP/I;->j:Ly1/a;

    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LP/I;->j:Ly1/a;

    iput-object v0, p0, LP/I;->i:Ly1/a;

    return-void
.end method
