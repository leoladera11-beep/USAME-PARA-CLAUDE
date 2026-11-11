.class public final LU/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/a0;


# instance fields
.field public final e:LU/Q;

.field public final f:LU/Q;

.field public final g:LN0/O;

.field public final h:LM/f;

.field public final i:Landroid/util/LongSparseArray;

.field public final j:I

.field public k:[B

.field public l:J

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(LU/Q;LU/Q;LG/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/L;->e:LU/Q;

    iput-object p2, p0, LU/L;->f:LU/Q;

    new-instance p1, LN0/O;

    const/16 p2, 0x10

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, LN0/O;-><init>(IZ)V

    iput-object p1, p0, LU/L;->g:LN0/O;

    new-instance p1, LM/f;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, LM/f;-><init>(I)V

    iput-object p1, p0, LU/L;->h:LM/f;

    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, LU/L;->i:Landroid/util/LongSparseArray;

    iget p1, p3, LG/x;->r:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/16 p1, 0x12

    :goto_0
    iput p1, p0, LU/L;->j:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LU/L;->l:J

    return-void
.end method


# virtual methods
.method public final j(LN0/O;LM/f;I)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, LU/L;->e:LU/Q;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v1, v2}, LU/Q;->j(LN0/O;LM/f;I)I

    move-result v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_11

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, LK/f;->f(I)Z

    move-result v5

    if-nez v5, :cond_11

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_11

    const/4 v5, 0x1

    and-int/2addr v2, v5

    if-nez v2, :cond_11

    iget-boolean v2, v0, LU/L;->m:Z

    if-nez v2, :cond_11

    iget-wide v6, v1, LM/f;->k:J

    iget-boolean v2, v0, LU/L;->n:Z

    const/4 v8, 0x0

    iget-object v9, v0, LU/L;->i:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_0

    :goto_0
    goto :goto_2

    :cond_0
    :goto_1
    iget-object v2, v0, LU/L;->h:LM/f;

    invoke-virtual {v2}, LM/f;->h()V

    iget-object v10, v0, LU/L;->f:LU/Q;

    iget-object v11, v0, LU/L;->g:LN0/O;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v2, v12}, LU/Q;->j(LN0/O;LM/f;I)I

    move-result v10

    const/4 v13, -0x3

    if-ne v10, v13, :cond_1

    goto :goto_0

    :cond_1
    const/4 v13, -0x5

    if-ne v10, v13, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v4}, LK/f;->f(I)Z

    move-result v10

    if-eqz v10, :cond_3

    iput-boolean v5, v0, LU/L;->n:Z

    :goto_2
    move/from16 v17, v5

    goto/16 :goto_8

    :cond_3
    iget-wide v13, v2, LM/f;->k:J

    move-wide v15, v13

    iget-wide v12, v0, LU/L;->l:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v12, v17

    if-eqz v10, :cond_4

    cmp-long v10, v15, v12

    if-gez v10, :cond_4

    iput-boolean v5, v0, LU/L;->m:Z

    invoke-virtual {v9}, Landroid/util/LongSparseArray;->clear()V

    iput-object v8, v0, LU/L;->k:[B

    :cond_4
    move-wide v12, v15

    iput-wide v12, v0, LU/L;->l:J

    iget-object v10, v2, LM/f;->i:Ljava/nio/ByteBuffer;

    iget-boolean v14, v0, LU/L;->m:Z

    if-nez v14, :cond_9

    if-eqz v10, :cond_9

    invoke-virtual {v2}, LM/f;->k()V

    iget-object v2, v11, LN0/O;->g:Ljava/lang/Object;

    check-cast v2, LG/x;

    if-eqz v2, :cond_5

    iget-object v11, v2, LG/x;->s:Ljava/util/List;

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_6

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    add-int/2addr v15, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :cond_6
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    add-int/2addr v4, v15

    new-array v4, v4, [B

    if-eqz v2, :cond_8

    iget-object v2, v2, LG/x;->s:Ljava/util/List;

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_7

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    move/from16 v17, v5

    array-length v5, v15

    const/4 v8, 0x0

    invoke-static {v15, v8, v4, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v15

    add-int/2addr v14, v5

    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v17

    const/4 v8, 0x0

    goto :goto_4

    :cond_7
    :goto_5
    move/from16 v17, v5

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    goto :goto_5

    :goto_6
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v10, v4, v14, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v12, v13, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_7
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    iget v4, v0, LU/L;->j:I

    if-le v2, v4, :cond_a

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_7

    :cond_9
    move/from16 v17, v5

    :cond_a
    cmp-long v2, v12, v6

    if-lez v2, :cond_10

    :goto_8
    iget-wide v4, v1, LM/f;->k:J

    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_c

    invoke-virtual {v9, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_b

    invoke-virtual {v9, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [B

    goto :goto_a

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_c
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_d

    iput-object v8, v0, LU/L;->k:[B

    :cond_d
    iget-object v2, v0, LU/L;->k:[B

    if-eqz v2, :cond_11

    array-length v4, v2

    iget-object v5, v1, LM/f;->l:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    if-ge v5, v4, :cond_e

    goto :goto_b

    :cond_e
    iget-object v4, v1, LM/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_c

    :cond_f
    :goto_b
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v1, LM/f;->l:Ljava/nio/ByteBuffer;

    :goto_c
    iget-object v4, v1, LM/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, LK/f;->b(I)V

    return v3

    :cond_10
    move/from16 v5, v17

    const/4 v4, 0x4

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_11
    return v3
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, LU/L;->e:LU/Q;

    invoke-virtual {v0}, LU/Q;->o()Z

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, LU/L;->e:LU/Q;

    invoke-virtual {v0}, LU/Q;->r()I

    move-result v0

    return v0
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, LU/L;->e:LU/Q;

    invoke-virtual {v0}, LU/Q;->x()V

    iget-boolean v0, p0, LU/L;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LU/L;->f:LU/Q;

    invoke-virtual {v0}, LU/Q;->x()V

    :cond_0
    return-void
.end method

.method public final y(J)I
    .locals 1

    iget-object v0, p0, LU/L;->e:LU/Q;

    invoke-virtual {v0, p1, p2}, LU/Q;->y(J)I

    move-result p1

    return p1
.end method
