.class public final LR/g;
.super LN/a;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public C:LR/e;

.field public D:J

.field public E:J

.field public F:I

.field public G:I

.field public H:LG/x;

.field public I:LR/b;

.field public J:LM/f;

.field public K:Landroidx/media3/exoplayer/image/ImageOutput;

.field public L:LN/z;

.field public M:Landroid/graphics/Bitmap;

.field public N:Z

.field public O:LR/f;

.field public P:LR/f;

.field public Q:I

.field public R:Z

.field public final x:LM0/w1;

.field public final y:LM/f;

.field public final z:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(LM0/w1;)V
    .locals 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, LN/a;-><init>(I)V

    iput-object p1, p0, LR/g;->x:LM0/w1;

    sget-object p1, Landroidx/media3/exoplayer/image/ImageOutput;->a:LR/d;

    iput-object p1, p0, LR/g;->K:Landroidx/media3/exoplayer/image/ImageOutput;

    new-instance p1, LM/f;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LM/f;-><init>(I)V

    iput-object p1, p0, LR/g;->y:LM/f;

    sget-object p1, LR/e;->c:LR/e;

    iput-object p1, p0, LR/g;->C:LR/e;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LR/g;->z:Ljava/util/ArrayDeque;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, LR/g;->E:J

    iput-wide v1, p0, LR/g;->D:J

    iput v0, p0, LR/g;->F:I

    const/4 p1, 0x1

    iput p1, p0, LR/g;->G:I

    return-void
.end method


# virtual methods
.method public final D(LG/x;)I
    .locals 1

    iget-object v0, p0, LR/g;->x:LM0/w1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LM0/w1;->b(LG/x;)I

    move-result p1

    return p1
.end method

.method public final H(J)Z
    .locals 12

    iget-object v0, p0, LR/g;->M:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, LR/g;->O:LR/f;

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v2, p0, LR/g;->G:I

    const/4 v3, 0x2

    if-nez v2, :cond_1

    iget v2, p0, LN/a;->l:I

    if-eq v2, v3, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v2, p0, LR/g;->z:Ljava/util/ArrayDeque;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, LR/g;->I:LR/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LR/g;->I:LR/b;

    invoke-virtual {v0}, LM/i;->l()LM/g;

    move-result-object v0

    check-cast v0, LR/a;

    if-nez v0, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, LK/f;->f(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget p1, p0, LR/g;->F:I

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, LR/g;->K()V

    iget-object p1, p0, LR/g;->H:LG/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LR/g;->J()V

    return v1

    :cond_3
    invoke-virtual {v0}, LR/a;->i()V

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    iput-boolean v5, p0, LR/g;->B:Z

    return v1

    :cond_4
    iget-object v6, v0, LR/a;->i:Landroid/graphics/Bitmap;

    const-string v7, "Non-EOS buffer came back from the decoder without bitmap."

    invoke-static {v6, v7}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, LR/a;->i:Landroid/graphics/Bitmap;

    iput-object v6, p0, LR/g;->M:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, LR/a;->i()V

    :cond_5
    iget-boolean v0, p0, LR/g;->N:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, LR/g;->M:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    iget-object v0, p0, LR/g;->O:LR/f;

    if-eqz v0, :cond_15

    iget-object v0, p0, LR/g;->H:LG/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LR/g;->H:LG/x;

    iget v6, v0, LG/x;->R:I

    iget v0, v0, LG/x;->S:I

    if-ne v6, v5, :cond_6

    if-eq v0, v5, :cond_7

    :cond_6
    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    if-eq v0, v7, :cond_7

    move v0, v5

    goto :goto_0

    :cond_7
    move v0, v1

    :goto_0
    iget-object v6, p0, LR/g;->O:LR/f;

    iget-object v7, v6, LR/f;->c:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    iget v7, v6, LR/f;->a:I

    iget-object v8, p0, LR/g;->M:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, LR/g;->M:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, LR/g;->H:LG/x;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v9, LG/x;->R:I

    div-int/2addr v8, v9

    iget-object v9, p0, LR/g;->M:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, p0, LR/g;->H:LG/x;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v10, LG/x;->S:I

    div-int/2addr v9, v10

    iget-object v10, p0, LR/g;->H:LG/x;

    iget v10, v10, LG/x;->R:I

    rem-int v11, v7, v10

    mul-int/2addr v11, v8

    div-int/2addr v7, v10

    mul-int/2addr v7, v9

    iget-object v10, p0, LR/g;->M:Landroid/graphics/Bitmap;

    invoke-static {v10, v11, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1

    :cond_9
    iget-object v7, p0, LR/g;->M:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iput-object v7, v6, LR/f;->c:Ljava/lang/Object;

    :goto_2
    iget-object v6, p0, LR/g;->O:LR/f;

    iget-object v6, v6, LR/f;->c:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, LR/g;->O:LR/f;

    iget-wide v7, v7, LR/f;->b:J

    sub-long p1, v7, p1

    iget v9, p0, LN/a;->l:I

    if-ne v9, v3, :cond_a

    move v3, v5

    goto :goto_3

    :cond_a
    move v3, v1

    :goto_3
    iget v9, p0, LR/g;->G:I

    if-eqz v9, :cond_d

    if-eq v9, v5, :cond_c

    if-ne v9, v4, :cond_b

    move v3, v1

    goto :goto_4

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_c
    move v3, v5

    :cond_d
    :goto_4
    if-nez v3, :cond_f

    const-wide/16 v9, 0x7530

    cmp-long p1, p1, v9

    if-gez p1, :cond_e

    goto :goto_5

    :cond_e
    move p1, v1

    goto :goto_6

    :cond_f
    :goto_5
    iget-object p1, p0, LR/g;->L:LN/z;

    if-eqz p1, :cond_10

    iget-object p2, p0, LR/g;->C:LR/e;

    iget-wide v9, p2, LR/e;->b:J

    iget-object p2, p0, LR/g;->H:LG/x;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LN/z;->a:LN/F;

    iget-boolean p2, p1, LN/F;->I:Z

    if-eqz p2, :cond_10

    iget-object p1, p1, LN/F;->k:LJ/O;

    const/16 p2, 0x25

    invoke-virtual {p1, p2}, LJ/O;->a(I)LJ/N;

    move-result-object p1

    invoke-virtual {p1}, LJ/N;->b()V

    :cond_10
    iget-object p1, p0, LR/g;->K:Landroidx/media3/exoplayer/image/ImageOutput;

    iget-object p2, p0, LR/g;->C:LR/e;

    iget-wide v9, p2, LR/e;->b:J

    sub-long/2addr v7, v9

    invoke-interface {p1, v7, v8, v6}, Landroidx/media3/exoplayer/image/ImageOutput;->onImageAvailable(JLandroid/graphics/Bitmap;)V

    move p1, v5

    :goto_6
    if-nez p1, :cond_11

    goto :goto_8

    :cond_11
    iget-object p1, p0, LR/g;->O:LR/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide p1, p1, LR/f;->b:J

    iput-wide p1, p0, LR/g;->D:J

    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR/e;

    iget-wide v6, v1, LR/e;->a:J

    cmp-long v1, p1, v6

    if-ltz v1, :cond_12

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR/e;

    iput-object v1, p0, LR/g;->C:LR/e;

    goto :goto_7

    :cond_12
    iput v4, p0, LR/g;->G:I

    const/4 p1, 0x0

    if-eqz v0, :cond_13

    iget-object p2, p0, LR/g;->O:LR/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p2, LR/f;->a:I

    iget-object v0, p0, LR/g;->H:LG/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, LG/x;->S:I

    iget-object v1, p0, LR/g;->H:LG/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, LG/x;->R:I

    mul-int/2addr v0, v1

    sub-int/2addr v0, v5

    if-ne p2, v0, :cond_14

    :cond_13
    iput-object p1, p0, LR/g;->M:Landroid/graphics/Bitmap;

    :cond_14
    iget-object p2, p0, LR/g;->P:LR/f;

    iput-object p2, p0, LR/g;->O:LR/f;

    iput-object p1, p0, LR/g;->P:LR/f;

    return v5

    :cond_15
    :goto_8
    return v1
.end method

.method public final I(J)Z
    .locals 12

    iget-boolean v0, p0, LR/g;->N:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LR/g;->O:LR/f;

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, LN/a;->g:LN0/O;

    invoke-virtual {v0}, LN0/O;->I()V

    iget-object v2, p0, LR/g;->I:LR/b;

    if-eqz v2, :cond_15

    iget v3, p0, LR/g;->F:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_15

    iget-boolean v3, p0, LR/g;->A:Z

    if-eqz v3, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v3, p0, LR/g;->J:LM/f;

    if-nez v3, :cond_2

    invoke-virtual {v2}, LM/i;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM/f;

    iput-object v2, p0, LR/g;->J:LM/f;

    if-nez v2, :cond_2

    goto/16 :goto_9

    :cond_2
    iget v2, p0, LR/g;->F:I

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne v2, v3, :cond_3

    iget-object p1, p0, LR/g;->J:LM/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, LR/g;->J:LM/f;

    iput v6, p1, LK/f;->f:I

    iget-object p1, p0, LR/g;->I:LR/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, LR/g;->J:LM/f;

    invoke-virtual {p1, p2}, LM/i;->m(LM/f;)V

    iput-object v5, p0, LR/g;->J:LM/f;

    iput v4, p0, LR/g;->F:I

    return v1

    :cond_3
    iget-object v2, p0, LR/g;->J:LM/f;

    invoke-virtual {p0, v0, v2, v1}, LN/a;->y(LN0/O;LM/f;I)I

    move-result v2

    const/4 v4, -0x5

    const/4 v7, 0x1

    if-eq v2, v4, :cond_14

    const/4 v0, -0x4

    if-eq v2, v0, :cond_5

    const/4 p1, -0x3

    if-ne v2, p1, :cond_4

    goto/16 :goto_9

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    iget-object v0, p0, LR/g;->J:LM/f;

    invoke-virtual {v0}, LM/f;->k()V

    iget-object v0, p0, LR/g;->J:LM/f;

    iget-object v0, v0, LM/f;->i:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    iget-object v0, p0, LR/g;->J:LM/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v6}, LK/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v7

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    if-eqz v0, :cond_9

    iget-object v2, p0, LR/g;->J:LM/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, LR/g;->H:LG/x;

    iput-object v3, v2, LM/f;->g:LG/x;

    iget-object v2, p0, LR/g;->I:LR/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, LR/g;->J:LM/f;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, LM/i;->m(LM/f;)V

    iput v1, p0, LR/g;->Q:I

    :cond_9
    iget-object v2, p0, LR/g;->J:LM/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v6}, LK/f;->f(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iput-boolean v7, p0, LR/g;->N:Z

    goto/16 :goto_7

    :cond_a
    new-instance v3, LR/f;

    iget v4, p0, LR/g;->Q:I

    iget-wide v8, v2, LM/f;->k:J

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v4, v3, LR/f;->a:I

    iput-wide v8, v3, LR/f;->b:J

    iput-object v3, p0, LR/g;->P:LR/f;

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, LR/g;->Q:I

    iget-boolean v2, p0, LR/g;->N:Z

    if-nez v2, :cond_11

    const-wide/16 v2, 0x7530

    sub-long v10, v8, v2

    cmp-long v10, v10, p1

    if-gtz v10, :cond_b

    add-long/2addr v2, v8

    cmp-long v2, p1, v2

    if-gtz v2, :cond_b

    move v2, v7

    goto :goto_1

    :cond_b
    move v2, v1

    :goto_1
    iget-object v3, p0, LR/g;->O:LR/f;

    if-eqz v3, :cond_c

    iget-wide v10, v3, LR/f;->b:J

    cmp-long v3, v10, p1

    if-gtz v3, :cond_c

    cmp-long p1, p1, v8

    if-gez p1, :cond_c

    move p1, v7

    goto :goto_2

    :cond_c
    move p1, v1

    :goto_2
    iget-object p2, p0, LR/g;->H:LG/x;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p2, LG/x;->R:I

    const/4 v3, -0x1

    if-eq p2, v3, :cond_e

    iget-object p2, p0, LR/g;->H:LG/x;

    iget v8, p2, LG/x;->S:I

    if-eq v8, v3, :cond_e

    iget p2, p2, LG/x;->R:I

    mul-int/2addr v8, p2

    sub-int/2addr v8, v7

    if-ne v4, v8, :cond_d

    goto :goto_3

    :cond_d
    move p2, v1

    goto :goto_4

    :cond_e
    :goto_3
    move p2, v7

    :goto_4
    if-nez v2, :cond_10

    if-nez p1, :cond_10

    if-eqz p2, :cond_f

    goto :goto_5

    :cond_f
    move p2, v1

    goto :goto_6

    :cond_10
    :goto_5
    move p2, v7

    :goto_6
    iput-boolean p2, p0, LR/g;->N:Z

    if-eqz p1, :cond_11

    if-nez v2, :cond_11

    goto :goto_7

    :cond_11
    iget-object p1, p0, LR/g;->P:LR/f;

    iput-object p1, p0, LR/g;->O:LR/f;

    iput-object v5, p0, LR/g;->P:LR/f;

    :goto_7
    iget-object p1, p0, LR/g;->J:LM/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v6}, LK/f;->f(I)Z

    move-result p1

    if-eqz p1, :cond_12

    iput-boolean v7, p0, LR/g;->A:Z

    iput-object v5, p0, LR/g;->J:LM/f;

    return v1

    :cond_12
    iget-wide p1, p0, LR/g;->E:J

    iget-object v1, p0, LR/g;->J:LM/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v1, LM/f;->k:J

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, LR/g;->E:J

    if-eqz v0, :cond_13

    iput-object v5, p0, LR/g;->J:LM/f;

    goto :goto_8

    :cond_13
    iget-object p1, p0, LR/g;->J:LM/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LM/f;->h()V

    :goto_8
    iget-boolean p1, p0, LR/g;->N:Z

    xor-int/2addr p1, v7

    return p1

    :cond_14
    iget-object p1, v0, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, LG/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LR/g;->H:LG/x;

    iput-boolean v7, p0, LR/g;->R:Z

    iput v3, p0, LR/g;->F:I

    return v7

    :cond_15
    :goto_9
    return v1
.end method

.method public final J()V
    .locals 4

    iget-boolean v0, p0, LR/g;->R:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LR/g;->H:LG/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LR/g;->x:LM0/w1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LM0/w1;->b(LG/x;)I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, LN/a;->e(IIII)I

    move-result v2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v3, v3, v3}, LN/a;->e(IIII)I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, LR/c;

    const-string v1, "Provided decoder factory can\'t create decoder for format."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LR/g;->H:LG/x;

    const/16 v2, 0xfa5

    invoke-virtual {p0, v0, v1, v3, v2}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, LR/g;->I:LR/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LM/i;->a()V

    :cond_3
    new-instance v0, LR/b;

    iget-object v1, v1, LM0/w1;->e:Lcom/brisa/local/VideoPlaybackService;

    invoke-direct {v0, v1}, LR/b;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    iput-object v0, p0, LR/g;->I:LR/b;

    iput-boolean v3, p0, LR/g;->R:Z

    return-void
.end method

.method public final K()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, LR/g;->J:LM/f;

    const/4 v1, 0x0

    iput v1, p0, LR/g;->F:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, LR/g;->E:J

    iget-object v1, p0, LR/g;->I:LR/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LM/i;->a()V

    iput-object v0, p0, LR/g;->I:LR/b;

    :cond_0
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, LN/z;

    iput-object p2, p0, LR/g;->L:LN/z;

    return-void

    :cond_1
    instance-of p1, p2, Landroidx/media3/exoplayer/image/ImageOutput;

    if-eqz p1, :cond_2

    check-cast p2, Landroidx/media3/exoplayer/image/ImageOutput;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    sget-object p2, Landroidx/media3/exoplayer/image/ImageOutput;->a:LR/d;

    :cond_3
    iput-object p2, p0, LR/g;->K:Landroidx/media3/exoplayer/image/ImageOutput;

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageRenderer"

    return-object v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, LR/g;->B:Z

    return v0
.end method

.method public final o()Z
    .locals 2

    iget v0, p0, LR/g;->G:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    iget-boolean v0, p0, LR/g;->N:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LR/g;->H:LG/x;

    sget-object v0, LR/e;->c:LR/e;

    iput-object v0, p0, LR/g;->C:LR/e;

    iget-object v0, p0, LR/g;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, LR/g;->K()V

    iget-object v0, p0, LR/g;->K:Landroidx/media3/exoplayer/image/ImageOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/image/ImageOutput;->a()V

    return-void
.end method

.method public final q(ZZ)V
    .locals 0

    iput p2, p0, LR/g;->G:I

    return-void
.end method

.method public final r(JZZ)V
    .locals 0

    const/4 p1, 0x1

    iget p2, p0, LR/g;->G:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, LR/g;->G:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LR/g;->B:Z

    iput-boolean p1, p0, LR/g;->A:Z

    const/4 p2, 0x0

    iput-object p2, p0, LR/g;->M:Landroid/graphics/Bitmap;

    iput-object p2, p0, LR/g;->O:LR/f;

    iput-object p2, p0, LR/g;->P:LR/f;

    iput-boolean p1, p0, LR/g;->N:Z

    iput-object p2, p0, LR/g;->J:LM/f;

    iget-object p1, p0, LR/g;->I:LR/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LM/i;->flush()V

    :cond_0
    iget-object p1, p0, LR/g;->z:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public final s()V
    .locals 0

    invoke-virtual {p0}, LR/g;->K()V

    return-void
.end method

.method public final t()V
    .locals 2

    invoke-virtual {p0}, LR/g;->K()V

    const/4 v0, 0x1

    iget v1, p0, LR/g;->G:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LR/g;->G:I

    return-void
.end method

.method public final w([LG/x;JJLU/A;)V
    .locals 4

    iget-object p1, p0, LR/g;->C:LR/e;

    iget-wide p1, p1, LR/e;->b:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, LR/g;->z:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide p2, p0, LR/g;->E:J

    cmp-long p6, p2, v0

    if-eqz p6, :cond_1

    iget-wide v2, p0, LR/g;->D:J

    cmp-long p6, v2, v0

    if-eqz p6, :cond_0

    cmp-long p2, v2, p2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, LR/e;

    iget-wide v0, p0, LR/g;->E:J

    invoke-direct {p2, v0, v1, p4, p5}, LR/e;-><init>(JJ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    new-instance p1, LR/e;

    invoke-direct {p1, v0, v1, p4, p5}, LR/e;-><init>(JJ)V

    iput-object p1, p0, LR/g;->C:LR/e;

    return-void
.end method

.method public final z(JJ)V
    .locals 3

    iget-boolean p3, p0, LR/g;->B:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, LR/g;->H:LG/x;

    if-nez p3, :cond_3

    iget-object p3, p0, LN/a;->g:LN0/O;

    invoke-virtual {p3}, LN0/O;->I()V

    iget-object p4, p0, LR/g;->y:LM/f;

    invoke-virtual {p4}, LM/f;->h()V

    const/4 v0, 0x2

    invoke-virtual {p0, p3, p4, v0}, LN/a;->y(LN0/O;LM/f;I)I

    move-result v0

    const/4 v1, -0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object p3, p3, LN0/O;->g:Ljava/lang/Object;

    check-cast p3, LG/x;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, LR/g;->H:LG/x;

    iput-boolean v2, p0, LR/g;->R:Z

    goto :goto_1

    :cond_1
    const/4 p1, -0x4

    if-ne v0, p1, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p4, p1}, LK/f;->f(I)Z

    move-result p1

    invoke-static {p1}, LF1/i;->o(Z)V

    iput-boolean v2, p0, LR/g;->A:Z

    iput-boolean v2, p0, LR/g;->B:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p3, p0, LR/g;->I:LR/b;

    if-nez p3, :cond_4

    invoke-virtual {p0}, LR/g;->J()V

    :cond_4
    :try_start_0
    const-string p3, "drainAndFeedDecoder"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, p1, p2}, LR/g;->H(J)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0, p1, p2}, LR/g;->I(J)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catch LR/c; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/16 p2, 0xfa3

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p3, p2}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object p1

    throw p1
.end method
