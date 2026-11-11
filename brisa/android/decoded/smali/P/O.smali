.class public final LP/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:I

.field public E:I

.field public F:J

.field public G:Z

.field public H:Z

.field public I:J

.field public J:J

.field public K:F

.field public L:Ljava/nio/ByteBuffer;

.field public M:I

.field public N:Ljava/nio/ByteBuffer;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:I

.field public U:Z

.field public V:LG/f;

.field public W:Landroid/media/AudioDeviceInfo;

.field public X:I

.field public Y:Z

.field public Z:J

.field public final a:Landroid/content/Context;

.field public a0:Z

.field public final b:LB/A;

.field public b0:Z

.field public final c:LP/I;

.field public c0:J

.field public final d:LP/W;

.field public d0:J

.field public final e:LH/v;

.field public e0:Landroid/os/Handler;

.field public final f:LH/v;

.field public final g:Lu1/C0;

.field public final h:Ljava/util/ArrayDeque;

.field public i:I

.field public j:LP/K;

.field public final k:LP/N;

.field public final l:LP/N;

.field public m:LO/j;

.field public n:La1/g;

.field public o:LM0/s0;

.field public p:LM0/s0;

.field public q:LH/j;

.field public r:LP/q;

.field public s:LP/J;

.field public t:LP/E;

.field public u:LG/e;

.field public v:LP/M;

.field public w:LP/M;

.field public x:LG/a0;

.field public y:Z

.field public z:J


# direct methods
.method public constructor <init>(LP/L;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LP/L;->b:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, LP/O;->a:Landroid/content/Context;

    sget-object v1, LG/e;->i:LG/e;

    iput-object v1, p0, LP/O;->u:LG/e;

    iget-object v1, p1, LP/L;->c:Ljava/lang/Object;

    check-cast v1, LB/A;

    iput-object v1, p0, LP/O;->b:LB/A;

    const/4 v1, 0x0

    iput v1, p0, LP/O;->i:I

    iget-object p1, p1, LP/L;->e:Ljava/lang/Object;

    check-cast p1, LP/G;

    iput-object p1, p0, LP/O;->r:LP/q;

    new-instance p1, LP/I;

    invoke-direct {p1}, LH/p;-><init>()V

    iput-object p1, p0, LP/O;->c:LP/I;

    new-instance v2, LP/W;

    invoke-direct {v2}, LH/p;-><init>()V

    sget-object v3, LJ/W;->b:[B

    iput-object v3, v2, LP/W;->m:[B

    iput-object v2, p0, LP/O;->d:LP/W;

    new-instance v3, LH/v;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, LH/v;-><init>(I)V

    iput-object v3, p0, LP/O;->e:LH/v;

    new-instance v3, LH/v;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, LH/v;-><init>(I)V

    iput-object v3, p0, LP/O;->f:LH/v;

    invoke-static {v2, p1}, Lu1/P;->p(Ljava/lang/Object;Ljava/lang/Object;)Lu1/C0;

    move-result-object p1

    iput-object p1, p0, LP/O;->g:Lu1/C0;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, LP/O;->K:F

    iput v1, p0, LP/O;->T:I

    new-instance p1, LG/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP/O;->V:LG/f;

    new-instance v2, LP/M;

    sget-object v3, LG/a0;->d:LG/a0;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, LP/M;-><init>(LG/a0;JJ)V

    iput-object v2, p0, LP/O;->w:LP/M;

    iput-object v3, p0, LP/O;->x:LG/a0;

    iput-boolean v1, p0, LP/O;->y:Z

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LP/O;->h:Ljava/util/ArrayDeque;

    new-instance p1, LP/N;

    invoke-direct {p1, p0}, LP/N;-><init>(LP/O;)V

    iput-object p1, p0, LP/O;->k:LP/N;

    new-instance p1, LP/N;

    invoke-direct {p1, p0}, LP/N;-><init>(LP/O;)V

    iput-object p1, p0, LP/O;->l:LP/N;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, -0x1

    if-lt p1, v1, :cond_0

    invoke-static {v0}, LN/v;->b(Lcom/brisa/local/VideoPlaybackService;)I

    move-result p1

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    move v2, p1

    :cond_0
    iput v2, p0, LP/O;->X:I

    return-void
.end method

.method public static i(ILjava/nio/ByteBuffer;)I
    .locals 10

    const/16 v0, 0x14

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p0, v0, :cond_19

    const/16 v0, 0x1e

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    const/16 v7, 0xa

    packed-switch p0, :pswitch_data_0

    const/16 v1, 0x10

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected audio encoding: "

    invoke-static {p0, v0}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-array p0, v1, [B

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, LJ/B;

    invoke-direct {p1, p0, v1}, LJ/B;-><init>([BI)V

    invoke-static {p1}, Lb0/a;->o(LJ/B;)LK/k;

    move-result-object p0

    iget p0, p0, LK/k;->c:I

    return p0

    :pswitch_1
    const/16 p0, 0x200

    return p0

    :pswitch_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    sub-int/2addr v0, v7

    move v2, p0

    :goto_0
    if-gt v2, v0, :cond_2

    add-int/lit8 v7, v2, 0x4

    sget-object v8, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    :goto_1
    and-int/2addr v7, v5

    const v8, -0x78d9046

    if-ne v7, v8, :cond_1

    sub-int/2addr v2, p0

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v6

    :goto_2
    if-ne v2, v6, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x7

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xbb

    if-ne p0, v0, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    if-eqz v3, :cond_5

    const/16 v0, 0x9

    goto :goto_3

    :cond_5
    const/16 v0, 0x8

    :goto_3
    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    const/16 p1, 0x28

    shl-int p0, p1, p0

    mul-int/2addr p0, v1

    return p0

    :pswitch_3
    const/16 p0, 0x800

    return p0

    :pswitch_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    :goto_4
    const/high16 p1, -0x200000

    and-int v2, p0, p1

    if-ne v2, p1, :cond_7

    ushr-int/lit8 p1, p0, 0x13

    and-int/2addr p1, v0

    if-ne p1, v4, :cond_8

    :cond_7
    :goto_5
    move p0, v6

    goto :goto_6

    :cond_8
    ushr-int/lit8 v2, p0, 0x11

    and-int/2addr v2, v0

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    ushr-int/lit8 v3, p0, 0xc

    const/16 v5, 0xf

    and-int/2addr v3, v5

    ushr-int/2addr p0, v7

    and-int/2addr p0, v0

    if-eqz v3, :cond_7

    if-eq v3, v5, :cond_7

    if-ne p0, v0, :cond_a

    goto :goto_5

    :cond_a
    const/16 p0, 0x480

    if-eq v2, v4, :cond_c

    if-eq v2, v1, :cond_e

    if-ne v2, v0, :cond_b

    const/16 p0, 0x180

    goto :goto_6

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_c
    if-ne p1, v0, :cond_d

    goto :goto_6

    :cond_d
    const/16 p0, 0x240

    :cond_e
    :goto_6
    if-eq p0, v6, :cond_f

    return p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_5
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xf8

    shr-int/2addr p0, v0

    if-le p0, v7, :cond_11

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xc0

    shr-int/lit8 p0, p0, 0x6

    if-ne p0, v0, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 v0, p0, 0x4

    :goto_7
    sget-object p0, Lb0/a;->c:[I

    aget p0, p0, v0

    mul-int/lit16 p0, p0, 0x100

    return p0

    :cond_11
    const/16 p0, 0x600

    return p0

    :cond_12
    :pswitch_6
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    const v0, -0xde4bec0

    if-eq p0, v0, :cond_18

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    const v0, -0x17bd3b8f

    if-ne p0, v0, :cond_13

    goto :goto_c

    :cond_13
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    const v0, 0x25205864

    if-ne p0, v0, :cond_14

    const/16 p0, 0x1000

    return p0

    :cond_14
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eq v0, v5, :cond_17

    if-eq v0, v6, :cond_16

    const/16 v3, 0x1f

    if-eq v0, v3, :cond_15

    add-int/lit8 v0, p0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x6

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_8
    and-int/lit16 p0, p0, 0xfc

    :goto_9
    shr-int/2addr p0, v1

    or-int/2addr p0, v0

    goto :goto_b

    :cond_15
    add-int/lit8 v0, p0, 0x5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 p0, p0, 0x6

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_a
    and-int/lit8 p0, p0, 0x3c

    goto :goto_9

    :cond_16
    add-int/lit8 v0, p0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 p0, p0, 0x7

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_a

    :cond_17
    add-int/lit8 v0, p0, 0x5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x6

    add-int/lit8 p0, p0, 0x4

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_8

    :goto_b
    add-int/2addr p0, v4

    mul-int/lit8 p0, p0, 0x20

    return p0

    :cond_18
    :goto_c
    :pswitch_7
    const/16 p0, 0x400

    return p0

    :cond_19
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/2addr p0, v1

    if-nez p0, :cond_1a

    move v2, v3

    goto :goto_f

    :cond_1a
    const/16 p0, 0x1a

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    const/16 v0, 0x1c

    move v2, v0

    move v1, v3

    :goto_d
    if-ge v1, p0, :cond_1b

    add-int/lit8 v5, v1, 0x1b

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1b
    add-int/lit8 p0, v2, 0x1a

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    move v1, v3

    :goto_e
    if-ge v1, p0, :cond_1c

    add-int/lit8 v5, v2, 0x1b

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    add-int/2addr v2, v0

    :goto_f
    add-int/lit8 p0, v2, 0x1a

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    add-int/lit8 p0, p0, 0x1b

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int/2addr v1, p0

    if-le v1, v4, :cond_1d

    add-int/2addr p0, v4

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    :cond_1d
    invoke-static {v0, v3}, LK/t;->e(BB)J

    move-result-wide p0

    const-wide/32 v0, 0xbb80

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a(J)V
    .locals 9

    invoke-virtual {p0}, LP/O;->v()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, LP/O;->b:LB/A;

    if-nez v0, :cond_5

    iget-boolean v0, p0, LP/O;->Y:Z

    if-nez v0, :cond_3

    iget-object v0, p0, LP/O;->p:LM0/s0;

    invoke-static {v0}, LM0/s0;->b(LM0/s0;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LP/O;->p:LM0/s0;

    iget-object v0, v0, LM0/s0;->c:Ljava/lang/Object;

    check-cast v0, LG/x;

    iget v0, v0, LG/x;->M:I

    iget-object v0, p0, LP/O;->x:LG/a0;

    iget-object v3, v2, LB/A;->h:Ljava/lang/Object;

    check-cast v3, LH/u;

    iget v4, v0, LG/a0;->a:F

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    const/4 v7, 0x1

    if-lez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    invoke-static {v6}, LF1/i;->g(Z)V

    iget v6, v3, LH/u;->c:F

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_1

    iput v4, v3, LH/u;->c:F

    iput-boolean v7, v3, LH/u;->i:Z

    :cond_1
    iget v4, v0, LG/a0;->b:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-static {v5}, LF1/i;->g(Z)V

    iget v5, v3, LH/u;->d:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_4

    iput v4, v3, LH/u;->d:F

    iput-boolean v7, v3, LH/u;->i:Z

    goto :goto_2

    :cond_3
    sget-object v0, LG/a0;->d:LG/a0;

    :cond_4
    :goto_2
    iput-object v0, p0, LP/O;->x:LG/a0;

    :goto_3
    move-object v4, v0

    goto :goto_4

    :cond_5
    sget-object v0, LG/a0;->d:LG/a0;

    goto :goto_3

    :goto_4
    iget-boolean v0, p0, LP/O;->Y:Z

    if-nez v0, :cond_6

    iget-object v0, p0, LP/O;->p:LM0/s0;

    invoke-static {v0}, LM0/s0;->b(LM0/s0;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, LP/O;->p:LM0/s0;

    iget-object v0, v0, LM0/s0;->c:Ljava/lang/Object;

    check-cast v0, LG/x;

    iget v0, v0, LG/x;->M:I

    iget-boolean v1, p0, LP/O;->y:Z

    iget-object v0, v2, LB/A;->g:Ljava/lang/Object;

    check-cast v0, LP/U;

    iput-boolean v1, v0, LP/U;->o:Z

    :cond_6
    iput-boolean v1, p0, LP/O;->y:Z

    new-instance v3, LP/M;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v0, p0, LP/O;->p:LM0/s0;

    invoke-virtual {p0}, LP/O;->j()J

    move-result-wide v1

    iget-object v0, v0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v0, LP/p;

    iget v0, v0, LP/p;->b:I

    invoke-static {v0, v1, v2}, LJ/W;->L(IJ)J

    move-result-wide v7

    invoke-direct/range {v3 .. v8}, LP/M;-><init>(LG/a0;JJ)V

    iget-object v0, p0, LP/O;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, LP/O;->u(J)V

    iget-object p1, p0, LP/O;->n:La1/g;

    if-eqz p1, :cond_7

    iget-boolean p2, p0, LP/O;->y:Z

    iget-object p1, p1, La1/g;->e:Ljava/lang/Object;

    check-cast p1, LP/S;

    iget-object p1, p1, LP/S;->O0:LP/t;

    iget-object v0, p1, LP/t;->a:Landroid/os/Handler;

    if-eqz v0, :cond_7

    new-instance v1, LP/s;

    invoke-direct {v1, p1, p2}, LP/s;-><init>(LP/t;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public final b(LP/p;)LP/E;
    .locals 9

    :try_start_0
    iget-object v0, p0, LP/O;->r:LP/q;

    check-cast v0, LP/G;

    invoke-virtual {v0, p1}, LP/G;->a(LP/p;)LP/E;

    move-result-object p1
    :try_end_0
    .catch LP/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    move-object v8, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    new-instance v1, LP/w;

    iget v2, p1, LP/p;->b:I

    iget v3, p1, LP/p;->c:I

    iget v4, p1, LP/p;->a:I

    iget v5, p1, LP/p;->f:I

    iget-object v0, p0, LP/O;->p:LM0/s0;

    iget-object v0, v0, LM0/s0;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, LG/x;

    iget-boolean v7, p1, LP/p;->e:Z

    invoke-direct/range {v1 .. v8}, LP/w;-><init>(IIIILG/x;ZLP/n;)V

    iget-object p1, p0, LP/O;->n:La1/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, La1/g;->C(Ljava/lang/Exception;)V

    :cond_0
    throw v1
.end method

.method public final c(LP/u;)V
    .locals 11

    iget-object v0, p0, LP/O;->s:LP/J;

    if-nez v0, :cond_1

    iget-object v0, p0, LP/O;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, LP/J;

    invoke-direct {v0, p0}, LP/J;-><init>(LP/O;)V

    iput-object v0, p0, LP/O;->s:LP/J;

    iget-object v1, p0, LP/O;->r:LP/q;

    check-cast v1, LP/G;

    invoke-virtual {v1}, LP/G;->f()V

    iget-object v2, v1, LP/G;->f:LJ/t;

    if-nez v2, :cond_0

    new-instance v2, LJ/t;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-direct {v2, v3}, LJ/t;-><init>(Ljava/lang/Thread;)V

    iput-object v2, v1, LP/G;->f:LJ/t;

    :cond_0
    iget-object v1, v1, LP/G;->f:LJ/t;

    invoke-virtual {v1, v0}, LJ/t;->a(Ljava/lang/Object;)V

    :cond_1
    iget-object v3, p1, LP/u;->a:LG/x;

    iget-object v0, v3, LG/x;->p:Ljava/lang/String;

    iget v1, v3, LG/x;->J:I

    iget v2, v3, LG/x;->M:I

    const-string v4, "audio/raw"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v0, :cond_7

    invoke-static {v2}, LJ/W;->C(I)Z

    move-result v0

    invoke-static {v0}, LF1/i;->g(Z)V

    invoke-static {v2}, LJ/W;->o(I)I

    move-result v0

    mul-int/2addr v0, v1

    new-instance v6, Lu1/M;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Lu1/I;-><init>(I)V

    iget-object v7, p0, LP/O;->g:Lu1/C0;

    invoke-virtual {v6, v7}, Lu1/I;->d(Ljava/lang/Iterable;)V

    iget-object v7, p0, LP/O;->e:LH/v;

    invoke-virtual {v6, v7}, Lu1/I;->c(Ljava/lang/Object;)V

    iget-object v7, p0, LP/O;->b:LB/A;

    iget-object v7, v7, LB/A;->f:Ljava/lang/Object;

    check-cast v7, [LH/o;

    array-length v8, v7

    invoke-static {v8, v7}, Lu1/s;->c(I[Ljava/lang/Object;)V

    invoke-virtual {v6, v8}, Lu1/I;->e(I)V

    iget-object v9, v6, Lu1/I;->a:[Ljava/lang/Object;

    iget v10, v6, Lu1/I;->b:I

    invoke-static {v7, v4, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, v6, Lu1/I;->b:I

    add-int/2addr v7, v8

    iput v7, v6, Lu1/I;->b:I

    new-instance v7, LH/j;

    invoke-virtual {v6}, Lu1/M;->f()Lu1/C0;

    move-result-object v6

    invoke-direct {v7, v6}, LH/j;-><init>(Lu1/P;)V

    iget-object v6, p0, LP/O;->q:LH/j;

    invoke-virtual {v7, v6}, LH/j;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v7, p0, LP/O;->q:LH/j;

    :cond_2
    iget v6, v3, LG/x;->N:I

    iget v8, v3, LG/x;->O:I

    iget-object v9, p0, LP/O;->d:LP/W;

    iput v6, v9, LP/W;->i:I

    iput v8, v9, LP/W;->j:I

    iget-object v6, p0, LP/O;->c:LP/I;

    iget-object v8, p1, LP/u;->b:Ly1/a;

    iput-object v8, v6, LP/I;->i:Ly1/a;

    new-instance v6, LH/k;

    iget v8, v3, LG/x;->L:I

    invoke-direct {v6, v8, v1, v2}, LH/k;-><init>(III)V

    :try_start_0
    iget-object v2, v7, LH/j;->a:Lu1/P;

    sget-object v8, LH/k;->e:LH/k;

    invoke-virtual {v6, v8}, LH/k;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LH/o;

    invoke-interface {v9, v6}, LH/o;->f(LH/k;)LH/k;

    move-result-object v10

    invoke-interface {v9}, LH/o;->e()Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v6, LH/k;->e:LH/k;

    invoke-virtual {v10, v6}, LH/k;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-static {v6}, LF1/i;->o(Z)V
    :try_end_0
    .catch LH/n; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v10

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    iget v2, v6, LH/k;->b:I

    iget v8, v6, LH/k;->c:I

    invoke-virtual {v3}, LG/x;->a()LG/w;

    move-result-object v9

    iput v8, v9, LG/w;->L:I

    iget v6, v6, LH/k;->a:I

    iput v6, v9, LG/w;->K:I

    iput v2, v9, LG/w;->I:I

    if-ne v2, v1, :cond_5

    iget v5, v3, LG/x;->K:I

    :cond_5
    iput v5, v9, LG/w;->J:I

    new-instance v1, LG/x;

    invoke-direct {v1, v9}, LG/x;-><init>(LG/w;)V

    invoke-static {v8}, LJ/W;->o(I)I

    move-result v5

    mul-int/2addr v5, v2

    move v6, v5

    move v5, v0

    :goto_1
    move-object v8, v7

    goto :goto_2

    :cond_6
    :try_start_1
    new-instance p1, LH/n;

    invoke-direct {p1, v6}, LH/n;-><init>(LH/k;)V

    throw p1
    :try_end_1
    .catch LH/n; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance v0, LP/v;

    invoke-direct {v0, p1, v3}, LP/v;-><init>(Ljava/lang/Exception;LG/x;)V

    throw v0

    :cond_7
    new-instance v7, LH/j;

    sget-object v0, Lu1/C0;->i:Lu1/C0;

    invoke-direct {v7, v0}, LH/j;-><init>(Lu1/P;)V

    move-object v1, v3

    move v6, v5

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v1}, LP/O;->g(LG/x;)LP/k;

    move-result-object v0

    iget-object v2, v0, LP/k;->a:LG/x;

    :try_start_2
    iget-object v7, p0, LP/O;->r:LP/q;

    check-cast v7, LP/G;

    invoke-virtual {v7, v0}, LP/G;->c(LP/k;)LP/p;

    move-result-object v7
    :try_end_2
    .catch LP/j; {:try_start_2 .. :try_end_2} :catch_1

    iget-boolean v0, v7, LP/p;->e:Z

    iget v9, v7, LP/p;->a:I

    const-string v10, ")"

    if-eqz v9, :cond_b

    iget v9, v7, LP/p;->c:I

    if-eqz v9, :cond_a

    iput-boolean v4, p0, LP/O;->a0:Z

    new-instance v2, LM0/s0;

    iget-object v9, p1, LP/u;->c:LG/q0;

    iget-object p1, p1, LP/u;->d:LU/A;

    if-eqz p1, :cond_8

    iget-object p1, p1, LU/A;->a:Ljava/lang/Object;

    :goto_3
    move-object v10, p1

    move-object v4, v1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    goto :goto_3

    :goto_4
    invoke-direct/range {v2 .. v10}, LM0/s0;-><init>(LG/x;LG/x;IILP/p;LH/j;LG/q0;Ljava/lang/Object;)V

    invoke-virtual {p0}, LP/O;->m()Z

    move-result p1

    if-eqz p1, :cond_9

    iput-object v2, p0, LP/O;->o:LM0/s0;

    return-void

    :cond_9
    iput-object v2, p0, LP/O;->p:LM0/s0;

    return-void

    :cond_a
    new-instance p1, LP/v;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid output channel config (isOffload="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v2}, LP/v;-><init>(Ljava/lang/String;LG/x;)V

    throw p1

    :cond_b
    new-instance p1, LP/v;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid output encoding (isOffload="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v2}, LP/v;-><init>(Ljava/lang/String;LG/x;)V

    throw p1

    :catch_1
    move-exception v0

    move-object p1, v0

    new-instance v0, LP/v;

    invoke-direct {v0, p1, v3}, LP/v;-><init>(Ljava/lang/Exception;LG/x;)V

    throw v0
.end method

.method public final d(J)V
    .locals 10

    iget-object v1, p0, LP/O;->l:LP/N;

    iget-object v0, p0, LP/O;->N:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, v1, LP/N;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, LP/N;->e:Ljava/lang/Object;

    check-cast v0, LP/O;

    iget-object v0, v0, LP/O;->r:LP/q;

    check-cast v0, LP/G;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LP/E;->q:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget v0, LP/E;->s:I

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v1, LP/N;->c:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, LP/O;->N:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const-wide/16 v4, 0x0

    :try_start_1
    iget-object v6, p0, LP/O;->t:LP/E;

    iget-object v7, p0, LP/O;->N:Ljava/nio/ByteBuffer;

    iget v8, p0, LP/O;->M:I

    invoke-virtual {v6, v7, v8, p1, p2}, LP/E;->d(Ljava/nio/ByteBuffer;IJ)Z

    move-result p1
    :try_end_1
    .catch LP/i; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, LP/O;->Z:J

    const/4 p2, 0x0

    iput-object p2, v1, LP/N;->d:Ljava/lang/Object;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, v1, LP/N;->b:J

    iput-wide v6, v1, LP/N;->c:J

    iget-object v1, p0, LP/O;->t:LP/E;

    invoke-virtual {v1}, LP/E;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v6, p0, LP/O;->C:J

    cmp-long v1, v6, v4

    if-lez v1, :cond_5

    iput-boolean v2, p0, LP/O;->b0:Z

    :cond_5
    iget-boolean v1, p0, LP/O;->R:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, LP/O;->n:La1/g;

    if-eqz v1, :cond_6

    if-nez p1, :cond_6

    iget-boolean v6, p0, LP/O;->b0:Z

    if-nez v6, :cond_6

    iget-object v1, v1, La1/g;->e:Ljava/lang/Object;

    check-cast v1, LP/S;

    iget-object v1, v1, LS/r;->M:LN/A;

    if-eqz v1, :cond_6

    iget-object v1, v1, LN/A;->a:LN/F;

    iput-boolean v3, v1, LN/F;->W:Z

    :cond_6
    iget-object v1, p0, LP/O;->N:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, LP/O;->p:LM0/s0;

    invoke-static {v1}, LM0/s0;->b(LM0/s0;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-wide v6, p0, LP/O;->B:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, LP/O;->B:J

    :cond_7
    if-eqz p1, :cond_a

    iget-object p1, p0, LP/O;->p:LM0/s0;

    invoke-static {p1}, LM0/s0;->b(LM0/s0;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, LP/O;->N:Ljava/nio/ByteBuffer;

    iget-object v0, p0, LP/O;->L:Ljava/nio/ByteBuffer;

    if-ne p1, v0, :cond_8

    move v2, v3

    :cond_8
    invoke-static {v2}, LF1/i;->o(Z)V

    iget-wide v0, p0, LP/O;->C:J

    iget p1, p0, LP/O;->D:I

    int-to-long v2, p1

    iget p1, p0, LP/O;->M:I

    int-to-long v6, p1

    mul-long/2addr v2, v6

    iget-wide v6, p0, LP/O;->F:J

    sub-long/2addr v2, v6

    add-long/2addr v2, v0

    iput-wide v2, p0, LP/O;->C:J

    iput-wide v4, p0, LP/O;->F:J

    :cond_9
    iput-object p2, p0, LP/O;->N:Ljava/nio/ByteBuffer;

    return-void

    :cond_a
    iget-object p1, p0, LP/O;->p:LM0/s0;

    invoke-static {p1}, LM0/s0;->b(LM0/s0;)Z

    move-result p1

    if-nez p1, :cond_c

    if-lez v0, :cond_c

    iget p1, p0, LP/O;->E:I

    if-lez p1, :cond_b

    move v2, v3

    :cond_b
    invoke-static {v2}, LF1/i;->o(Z)V

    iget p1, p0, LP/O;->E:I

    iget-object p2, p0, LP/O;->N:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-long v0, p1

    iget p1, p0, LP/O;->D:I

    int-to-long p1, p1

    iget v2, p0, LP/O;->M:I

    int-to-long v2, v2

    mul-long/2addr v2, p1

    iget p1, p0, LP/O;->E:I

    int-to-long v4, p1

    sget-object v6, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static/range {v0 .. v6}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    iget-wide v0, p0, LP/O;->F:J

    sub-long v0, p1, v0

    iget-wide v2, p0, LP/O;->C:J

    add-long/2addr v2, v0

    iput-wide v2, p0, LP/O;->C:J

    iput-wide p1, p0, LP/O;->F:J

    :cond_c
    :goto_2
    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-boolean p2, p1, LP/i;->f:Z

    if-eqz p2, :cond_f

    invoke-virtual {p0}, LP/O;->j()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_d

    :goto_3
    move v2, v3

    goto :goto_4

    :cond_d
    iget-object v0, p0, LP/O;->t:LP/E;

    invoke-virtual {v0}, LP/E;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, LP/O;->p:LM0/s0;

    iget-object v0, v0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v0, LP/p;

    iget-boolean v0, v0, LP/p;->e:Z

    if-nez v0, :cond_e

    goto :goto_3

    :cond_e
    iput-boolean v3, p0, LP/O;->a0:Z

    goto :goto_3

    :cond_f
    :goto_4
    new-instance v0, LP/y;

    iget p1, p1, LP/i;->e:I

    iget-object v3, p0, LP/O;->p:LM0/s0;

    iget-object v3, v3, LM0/s0;->c:Ljava/lang/Object;

    check-cast v3, LG/x;

    invoke-direct {v0, p1, v3, v2}, LP/y;-><init>(ILG/x;Z)V

    iget-object p1, p0, LP/O;->n:La1/g;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v0}, La1/g;->C(Ljava/lang/Exception;)V

    :cond_10
    if-nez p2, :cond_11

    invoke-virtual {v1, v0}, LP/N;->a(Ljava/lang/Exception;)V

    return-void

    :cond_11
    throw v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final e()Z
    .locals 6

    iget-object v0, p0, LP/O;->q:LH/j;

    invoke-virtual {v0}, LH/j;->c()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v2}, LP/O;->d(J)V

    iget-object v0, p0, LP/O;->N:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_0
    iget-object v0, p0, LP/O;->q:LH/j;

    invoke-virtual {v0}, LH/j;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v0, LH/j;->d:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v4, v0, LH/j;->d:Z

    iget-object v0, v0, LH/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH/o;

    invoke-interface {v0}, LH/o;->d()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v1, v2}, LP/O;->p(J)V

    iget-object v0, p0, LP/O;->q:LH/j;

    invoke-virtual {v0}, LH/j;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LP/O;->N:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    return v4

    :cond_4
    return v3
.end method

.method public final f()V
    .locals 12

    invoke-virtual {p0}, LP/O;->m()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    iput-wide v3, p0, LP/O;->z:J

    iput-wide v3, p0, LP/O;->A:J

    iput-wide v3, p0, LP/O;->B:J

    iput-wide v3, p0, LP/O;->C:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LP/O;->b0:Z

    iput v0, p0, LP/O;->D:I

    iput v0, p0, LP/O;->E:I

    iput-wide v3, p0, LP/O;->F:J

    new-instance v6, LP/M;

    iget-object v7, p0, LP/O;->x:LG/a0;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v6 .. v11}, LP/M;-><init>(LG/a0;JJ)V

    iput-object v6, p0, LP/O;->w:LP/M;

    iput-wide v3, p0, LP/O;->I:J

    iput-object v5, p0, LP/O;->v:LP/M;

    iget-object v6, p0, LP/O;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->clear()V

    iput-object v5, p0, LP/O;->L:Ljava/nio/ByteBuffer;

    iput v0, p0, LP/O;->M:I

    iput-object v5, p0, LP/O;->N:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, LP/O;->P:Z

    iput-boolean v0, p0, LP/O;->O:Z

    iput-boolean v0, p0, LP/O;->Q:Z

    iget-object v0, p0, LP/O;->d:LP/W;

    iput-wide v3, v0, LP/W;->o:J

    invoke-virtual {p0, v1, v2}, LP/O;->u(J)V

    iput-object v5, p0, LP/O;->j:LP/K;

    iget-object v0, p0, LP/O;->o:LM0/s0;

    if-eqz v0, :cond_0

    iput-object v0, p0, LP/O;->p:LM0/s0;

    iput-object v5, p0, LP/O;->o:LM0/s0;

    :cond_0
    iget-object v0, p0, LP/O;->t:LP/E;

    iget-object v6, v0, LP/E;->f:LP/H;

    iget-object v6, v6, LP/H;->d:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    iget-object v6, v0, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_2

    invoke-virtual {v0}, LP/E;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, LP/E;->i:LB/A;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, LB/A;->h:Ljava/lang/Object;

    check-cast v7, LP/E;

    iget-object v7, v7, LP/E;->a:Landroid/media/AudioTrack;

    iget-object v8, v6, LB/A;->f:Ljava/lang/Object;

    check-cast v8, LP/D;

    invoke-static {v7, v8}, LB/r;->s(Landroid/media/AudioTrack;LP/D;)V

    iget-object v6, v6, LB/A;->g:Ljava/lang/Object;

    check-cast v6, Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v6, v0, LP/E;->e:LB0/b;

    if-eqz v6, :cond_3

    iget-object v7, v6, LB0/b;->e:Ljava/lang/Object;

    check-cast v7, Landroid/media/AudioTrack;

    iget-object v8, v6, LB0/b;->h:Ljava/lang/Object;

    check-cast v8, LP/C;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v8}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    iput-object v5, v6, LB0/b;->h:Ljava/lang/Object;

    iput-object v5, v0, LP/E;->e:LB0/b;

    :cond_3
    iget-object v6, v0, LP/E;->a:Landroid/media/AudioTrack;

    iget-object v0, v0, LP/E;->j:LJ/t;

    invoke-static {v5}, LJ/W;->l(LZ/l;)Landroid/os/Handler;

    move-result-object v7

    sget-object v8, LP/E;->q:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-object v9, LP/E;->r:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v9, :cond_4

    new-instance v9, LJ/V;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    sput-object v9, LP/E;->r:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    :goto_0
    sget v9, LP/E;->s:I

    add-int/lit8 v9, v9, 0x1

    sput v9, LP/E;->s:I

    sget-object v9, LP/E;->r:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v10, LJ/U;

    const/16 v11, 0xc

    invoke-direct {v10, v11, v6, v7, v0}, LJ/U;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x14

    invoke-interface {v9, v10, v6, v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v5, p0, LP/O;->t:LP/E;

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_2
    iget-object v0, p0, LP/O;->l:LP/N;

    iput-object v5, v0, LP/N;->d:Ljava/lang/Object;

    iput-wide v1, v0, LP/N;->b:J

    iput-wide v1, v0, LP/N;->c:J

    iget-object v0, p0, LP/O;->k:LP/N;

    iput-object v5, v0, LP/N;->d:Ljava/lang/Object;

    iput-wide v1, v0, LP/N;->b:J

    iput-wide v1, v0, LP/N;->c:J

    iput-wide v3, p0, LP/O;->c0:J

    iput-wide v3, p0, LP/O;->d0:J

    iget-object v0, p0, LP/O;->e0:Landroid/os/Handler;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final g(LG/x;)LP/k;
    .locals 1

    new-instance v0, LP/k;

    invoke-direct {v0, p1}, LP/k;-><init>(LG/x;)V

    iget-object p1, p0, LP/O;->u:LG/e;

    iput-object p1, v0, LP/k;->b:LG/e;

    iget p1, p0, LP/O;->i:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, LP/k;->d:Z

    iget-object p1, p0, LP/O;->W:Landroid/media/AudioDeviceInfo;

    iput-object p1, v0, LP/k;->c:Landroid/media/AudioDeviceInfo;

    iget p1, p0, LP/O;->T:I

    iput p1, v0, LP/k;->e:I

    iget-boolean p1, p0, LP/O;->Y:Z

    iput-boolean p1, v0, LP/k;->g:Z

    const/4 p1, -0x1

    iput p1, v0, LP/k;->h:I

    iget p1, p0, LP/O;->X:I

    iput p1, v0, LP/k;->f:I

    new-instance p1, LP/k;

    invoke-direct {p1, v0}, LP/k;-><init>(LP/k;)V

    return-object p1
.end method

.method public final h(LG/x;)I
    .locals 5

    iget v0, p1, LG/x;->M:I

    invoke-static {v0}, LJ/W;->C(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget v0, p1, LG/x;->M:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, LG/x;->a()LG/w;

    move-result-object p1

    iput v1, p1, LG/w;->L:I

    new-instance v0, LG/x;

    invoke-direct {v0, p1}, LG/x;-><init>(LG/w;)V

    move-object p1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, LP/O;->r:LP/q;

    invoke-virtual {p0, p1}, LP/O;->g(LG/x;)LP/k;

    move-result-object p1

    check-cast v4, LP/G;

    invoke-virtual {v4, p1}, LP/G;->b(LP/k;)LP/m;

    move-result-object p1

    iget p1, p1, LP/m;->d:I

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_1

    return v3

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public final j()J
    .locals 6

    iget-object v0, p0, LP/O;->p:LM0/s0;

    invoke-static {v0}, LM0/s0;->b(LM0/s0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LP/O;->B:J

    iget-object v2, p0, LP/O;->p:LM0/s0;

    iget v2, v2, LM0/s0;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, LP/O;->C:J

    return-wide v0
.end method

.method public final k()Z
    .locals 10

    invoke-virtual {p0}, LP/O;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, LP/O;->t:LP/E;

    invoke-virtual {v0}, LP/E;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LP/O;->Q:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, LP/O;->j()J

    move-result-wide v0

    iget-object v2, p0, LP/O;->t:LP/E;

    invoke-virtual {v2}, LP/E;->a()J

    move-result-wide v3

    iget-object v2, p0, LP/O;->t:LP/E;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    int-to-long v5, v2

    const-wide/32 v7, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 9

    iget-object v0, p0, LP/O;->k:LP/N;

    iget-object v1, v0, LP/N;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v0, LP/N;->e:Ljava/lang/Object;

    check-cast v1, LP/O;

    iget-object v1, v1, LP/O;->r:LP/q;

    check-cast v1, LP/G;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LP/E;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v4, LP/E;->s:I

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v0, v0, LP/N;->c:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    :goto_1
    return v2

    :cond_3
    :goto_2
    :try_start_1
    iget-object v0, p0, LP/O;->p:LM0/s0;

    iget-object v0, v0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v0, LP/p;

    invoke-virtual {p0, v0}, LP/O;->b(LP/p;)LP/E;

    move-result-object v0
    :try_end_1
    .catch LP/w; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    iget-object v1, p0, LP/O;->p:LM0/s0;

    iget-object v1, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v1, LP/p;

    iget v4, v1, LP/p;->f:I

    iget v1, v1, LP/p;->a:I

    invoke-static {v1}, LJ/W;->C(I)Z

    move-result v1

    const/4 v5, -0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, LP/O;->p:LM0/s0;

    iget-object v6, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v6, LP/p;

    iget v6, v6, LP/p;->b:I

    iget v1, v1, LM0/s0;->b:I

    mul-int/2addr v6, v1

    goto :goto_4

    :cond_4
    iget-object v1, p0, LP/O;->p:LM0/s0;

    iget-object v6, v1, LM0/s0;->c:Ljava/lang/Object;

    check-cast v6, LG/x;

    iget v6, v6, LG/x;->k:I

    if-eq v6, v5, :cond_5

    div-int/lit8 v6, v6, 0x8

    goto :goto_4

    :cond_5
    iget-object v1, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v1, LP/p;

    iget v1, v1, LP/p;->a:I

    invoke-static {v1}, Lb0/a;->j(I)I

    move-result v1

    const v6, -0x7fffffff

    if-eq v1, v6, :cond_6

    :goto_3
    move v6, v1

    goto :goto_4

    :cond_6
    const v1, 0xf4240

    goto :goto_3

    :goto_4
    iget-object v1, p0, LP/O;->p:LM0/s0;

    iget-object v1, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v1, LP/p;

    iget v7, v1, LP/p;->b:I

    iget v8, v1, LP/p;->c:I

    iget v1, v1, LP/p;->a:I

    invoke-static {v7, v8, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v6, p0, LP/O;->p:LM0/s0;

    iget v6, v6, LM0/s0;->b:I

    if-eq v6, v5, :cond_7

    goto :goto_5

    :cond_7
    move v6, v3

    :goto_5
    if-le v4, v1, :cond_14

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    rem-int v5, v4, v6

    if-eqz v5, :cond_8

    sub-int v5, v6, v5

    add-int/2addr v5, v4

    move v4, v5

    :cond_8
    iget-object v5, p0, LP/O;->p:LM0/s0;

    iget-object v5, v5, LM0/s0;->e:Ljava/lang/Object;

    check-cast v5, LP/p;

    invoke-virtual {v5}, LP/p;->a()LP/o;

    move-result-object v5

    iput v4, v5, LP/o;->f:I

    new-instance v7, LP/p;

    invoke-direct {v7, v5}, LP/p;-><init>(LP/o;)V

    :try_start_2
    invoke-virtual {p0, v7}, LP/O;->b(LP/p;)LP/E;

    move-result-object v5

    iget-object v8, p0, LP/O;->p:LM0/s0;

    invoke-static {v8, v7}, LM0/s0;->a(LM0/s0;LP/p;)LM0/s0;

    move-result-object v7

    iput-object v7, p0, LP/O;->p:LM0/s0;
    :try_end_2
    .catch LP/w; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v5

    :goto_6
    iput-object v0, p0, LP/O;->t:LP/E;

    new-instance v1, LP/K;

    iget-object v4, p0, LP/O;->p:LM0/s0;

    iget-object v4, v4, LM0/s0;->e:Ljava/lang/Object;

    check-cast v4, LP/p;

    invoke-direct {v1, p0, v4}, LP/K;-><init>(LP/O;LP/p;)V

    iput-object v1, p0, LP/O;->j:LP/K;

    iget-object v0, v0, LP/E;->j:LJ/t;

    invoke-virtual {v0, v1}, LJ/t;->a(Ljava/lang/Object;)V

    iget-object v0, p0, LP/O;->t:LP/E;

    invoke-virtual {v0}, LP/E;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, LP/O;->p:LM0/s0;

    iget-object v1, v0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v1, LP/p;

    iget-boolean v1, v1, LP/p;->k:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, LP/O;->t:LP/E;

    iget-object v0, v0, LM0/s0;->c:Ljava/lang/Object;

    check-cast v0, LG/x;

    iget v4, v0, LG/x;->N:I

    iget v0, v0, LG/x;->O:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-ge v5, v6, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :cond_9
    iget-object v1, v1, LP/E;->a:Landroid/media/AudioTrack;

    invoke-static {v1, v4, v0}, LB/r;->q(Landroid/media/AudioTrack;II)V

    :cond_a
    :goto_7
    iget-object v0, p0, LP/O;->m:LO/j;

    if-eqz v0, :cond_c

    iget-object v1, p0, LP/O;->t:LP/E;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-ge v4, v5, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v0}, LO/j;->a()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-static {}, LO/h;->i()Landroid/media/metrics/LogSessionId;

    invoke-static {v0}, LO/h;->x(Landroid/media/metrics/LogSessionId;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v1, v1, LP/E;->a:Landroid/media/AudioTrack;

    invoke-static {v1, v0}, LO/h;->r(Landroid/media/AudioTrack;Landroid/media/metrics/LogSessionId;)V

    :cond_c
    :goto_8
    invoke-virtual {p0}, LP/O;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, LP/O;->t:LP/E;

    iget v1, p0, LP/O;->K:F

    iget-object v0, v0, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_d
    iget-object v0, p0, LP/O;->V:LG/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LP/O;->W:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_e

    iget-object v1, p0, LP/O;->t:LP/E;

    iget-object v1, v1, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    :cond_e
    iput-boolean v3, p0, LP/O;->H:Z

    iget-object v0, p0, LP/O;->t:LP/E;

    iget-object v0, v0, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iget v1, p0, LP/O;->T:I

    if-eq v0, v1, :cond_f

    move v2, v3

    :cond_f
    iput v0, p0, LP/O;->T:I

    iget-object v0, p0, LP/O;->n:La1/g;

    if-eqz v0, :cond_13

    iget-object v1, p0, LP/O;->p:LM0/s0;

    new-instance v4, LP/P;

    iget-object v1, v1, LM0/s0;->e:Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, LP/S;

    iget-object v0, v0, LP/S;->O0:LP/t;

    iget-object v1, v0, LP/t;->a:Landroid/os/Handler;

    if-eqz v1, :cond_10

    new-instance v5, LP/r;

    const/16 v6, 0x9

    invoke-direct {v5, v0, v4, v6}, LP/r;-><init>(LP/t;Ljava/lang/Object;I)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    if-eqz v2, :cond_13

    iput-boolean v3, p0, LP/O;->U:Z

    iget-object v0, p0, LP/O;->p:LM0/s0;

    iget-object v1, v0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v1, LP/p;

    invoke-virtual {v1}, LP/p;->a()LP/o;

    move-result-object v1

    iget v2, p0, LP/O;->T:I

    iput v2, v1, LP/o;->h:I

    new-instance v2, LP/p;

    invoke-direct {v2, v1}, LP/p;-><init>(LP/o;)V

    invoke-static {v0, v2}, LM0/s0;->a(LM0/s0;LP/p;)LM0/s0;

    move-result-object v0

    iput-object v0, p0, LP/O;->p:LM0/s0;

    iget-object v0, p0, LP/O;->o:LM0/s0;

    if-eqz v0, :cond_11

    iget-object v1, v0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v1, LP/p;

    invoke-virtual {v1}, LP/p;->a()LP/o;

    move-result-object v1

    iget v2, p0, LP/O;->T:I

    iput v2, v1, LP/o;->h:I

    new-instance v2, LP/p;

    invoke-direct {v2, v1}, LP/p;-><init>(LP/o;)V

    invoke-static {v0, v2}, LM0/s0;->a(LM0/s0;LP/p;)LM0/s0;

    move-result-object v0

    iput-object v0, p0, LP/O;->o:LM0/s0;

    :cond_11
    iget-object v0, p0, LP/O;->n:La1/g;

    iget v1, p0, LP/O;->T:I

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, LP/S;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x23

    if-lt v2, v4, :cond_12

    iget-object v2, v0, LP/S;->Q0:LB/A;

    if-eqz v2, :cond_12

    invoke-virtual {v2, v1}, LB/A;->S(I)V

    :cond_12
    iget-object v0, v0, LP/S;->O0:LP/t;

    iget-object v2, v0, LP/t;->a:Landroid/os/Handler;

    if-eqz v2, :cond_13

    new-instance v4, LM0/a0;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v1, v5}, LM0/a0;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return v3

    :catch_1
    move-exception v5

    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_14
    iget-object v1, p0, LP/O;->p:LM0/s0;

    iget-object v1, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v1, LP/p;

    iget-boolean v1, v1, LP/p;->e:Z

    if-nez v1, :cond_15

    goto :goto_9

    :cond_15
    iput-boolean v3, p0, LP/O;->a0:Z

    :goto_9
    throw v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, LP/O;->t:LP/E;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, LP/O;->R:Z

    invoke-virtual {p0}, LP/O;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LP/O;->t:LP/E;

    iget-object v1, v0, LP/E;->f:LP/H;

    iget-wide v2, v1, LP/H;->u:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, v1, LP/H;->b:LJ/M;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, LJ/W;->G(J)J

    move-result-wide v2

    iput-wide v2, v1, LP/H;->u:J

    :cond_0
    invoke-virtual {v1}, LP/H;->a()J

    move-result-wide v2

    iget v4, v1, LP/H;->e:I

    invoke-static {v4, v2, v3}, LJ/W;->L(IJ)J

    move-result-wide v2

    iput-wide v2, v1, LP/H;->j:J

    iget-object v1, v1, LP/H;->h:LP/A;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LP/A;->a(I)V

    iget-boolean v1, v0, LP/E;->k:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LP/E;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, v0, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 6

    iget-boolean v0, p0, LP/O;->P:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, LP/O;->P:Z

    iget-object v1, p0, LP/O;->t:LP/E;

    invoke-virtual {v1}, LP/E;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, LP/O;->Q:Z

    :cond_0
    iget-object v1, p0, LP/O;->t:LP/E;

    iget-boolean v2, v1, LP/E;->k:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, v1, LP/E;->k:Z

    iget-object v0, v1, LP/E;->f:LP/H;

    invoke-virtual {v1}, LP/E;->b()J

    move-result-wide v2

    invoke-virtual {v0}, LP/H;->a()J

    move-result-wide v4

    iput-wide v4, v0, LP/H;->w:J

    iget-object v4, v0, LP/H;->b:LJ/M;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, LJ/W;->G(J)J

    move-result-wide v4

    iput-wide v4, v0, LP/H;->u:J

    iput-wide v2, v0, LP/H;->x:J

    iget-object v0, v1, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final p(J)V
    .locals 3

    invoke-virtual {p0, p1, p2}, LP/O;->d(J)V

    iget-object v0, p0, LP/O;->N:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, LP/O;->q:LH/j;

    invoke-virtual {v0}, LH/j;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LP/O;->L:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, LP/O;->t(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, LP/O;->d(J)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, LP/O;->q:LH/j;

    invoke-virtual {v0}, LH/j;->b()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    iget-object v0, p0, LP/O;->q:LH/j;

    invoke-virtual {v0}, LH/j;->c()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, LH/o;->a:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    iget-object v1, v0, LH/j;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, LH/j;->a()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    sget-object v1, LH/o;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, LH/j;->d(Ljava/nio/ByteBuffer;)V

    iget-object v1, v0, LH/j;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, LH/j;->a()I

    move-result v0

    aget-object v0, v1, v0

    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, LP/O;->t(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2}, LP/O;->d(J)V

    iget-object v0, p0, LP/O;->N:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_5
    iget-object v0, p0, LP/O;->L:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, LP/O;->q:LH/j;

    iget-object v1, p0, LP/O;->L:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, LH/j;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, LH/j;->d:Z

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v1}, LH/j;->d(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, LP/O;->p:LM0/s0;

    if-eqz v0, :cond_1

    iget-object v0, p0, LP/O;->o:LM0/s0;

    if-eqz v0, :cond_0

    iput-object v0, p0, LP/O;->p:LM0/s0;

    const/4 v0, 0x0

    iput-object v0, p0, LP/O;->o:LM0/s0;

    :cond_0
    :try_start_0
    iget-object v0, p0, LP/O;->r:LP/q;

    iget-object v1, p0, LP/O;->p:LM0/s0;

    iget-object v1, v1, LM0/s0;->d:Ljava/lang/Object;

    check-cast v1, LG/x;

    invoke-virtual {p0, v1}, LP/O;->g(LG/x;)LP/k;

    move-result-object v1

    check-cast v0, LP/G;

    invoke-virtual {v0, v1}, LP/G;->c(LP/k;)LP/p;

    move-result-object v0
    :try_end_0
    .catch LP/j; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, LP/O;->p:LM0/s0;

    invoke-static {v1, v0}, LM0/s0;->a(LM0/s0;LP/p;)LM0/s0;

    move-result-object v0

    iput-object v0, p0, LP/O;->p:LM0/s0;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, LP/v;

    iget-object v3, p0, LP/O;->p:LM0/s0;

    iget-object v3, v3, LM0/s0;->c:Ljava/lang/Object;

    check-cast v3, LG/x;

    invoke-direct {v2, v0, v3}, LP/v;-><init>(Ljava/lang/Exception;LG/x;)V

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, LP/O;->f()V

    return-void
.end method

.method public final r()V
    .locals 6

    invoke-virtual {p0}, LP/O;->f()V

    iget-object v0, p0, LP/O;->g:Lu1/C0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu1/P;->m(I)Lu1/N;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lu1/a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lu1/a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LH/o;

    invoke-interface {v2}, LH/o;->reset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LP/O;->e:LH/v;

    invoke-virtual {v0}, LH/p;->reset()V

    iget-object v0, p0, LP/O;->f:LH/v;

    invoke-virtual {v0}, LH/p;->reset()V

    iget-object v0, p0, LP/O;->q:LH/j;

    if-eqz v0, :cond_2

    iget-object v2, v0, LH/j;->a:Lu1/P;

    move v3, v1

    :goto_1
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LH/o;

    sget-object v5, LH/m;->d:LH/m;

    invoke-interface {v4, v5}, LH/o;->i(LH/m;)V

    invoke-interface {v4}, LH/o;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, v0, LH/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-array v2, v1, [Ljava/nio/ByteBuffer;

    iput-object v2, v0, LH/j;->c:[Ljava/nio/ByteBuffer;

    sget-object v2, LH/k;->e:LH/k;

    iput-boolean v1, v0, LH/j;->d:Z

    :cond_2
    iput-boolean v1, p0, LP/O;->R:Z

    iput-boolean v1, p0, LP/O;->a0:Z

    return-void
.end method

.method public final s()V
    .locals 7

    invoke-virtual {p0}, LP/O;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LP/O;->t:LP/E;

    iget-object v1, p0, LP/O;->x:LG/a0;

    iget-object v2, v0, LP/E;->a:Landroid/media/AudioTrack;

    new-instance v3, Landroid/media/PlaybackParams;

    invoke-direct {v3}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v3}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v3

    iget v4, v1, LG/a0;->a:F

    iget v5, v0, LP/E;->c:F

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v4, v6, v5}, LJ/W;->f(FFF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v3

    iget v1, v1, LG/a0;->b:F

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v1, v6, v4}, LJ/W;->f(FFF)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object v1

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "AudioTrackAudioOutput"

    const-string v4, "Failed to set playback params"

    invoke-static {v3, v4, v1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, v0, LP/E;->f:LP/H;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    iput v1, v0, LP/H;->i:F

    iget-object v1, v0, LP/H;->h:LP/A;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LP/A;->a(I)V

    invoke-virtual {v0}, LP/H;->e()V

    iget-object v0, p0, LP/O;->t:LP/E;

    iget-object v0, v0, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    new-instance v1, LG/a0;

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v2

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v0

    invoke-direct {v1, v2, v0}, LG/a0;-><init>(FF)V

    iput-object v1, p0, LP/O;->x:LG/a0;

    :cond_0
    return-void
.end method

.method public final t(Ljava/nio/ByteBuffer;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, LP/O;->N:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LF1/i;->o(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, LP/O;->p:LM0/s0;

    invoke-static {v1}, LM0/s0;->b(LM0/s0;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, LJ/W;->G(J)J

    move-result-wide v3

    iget-object v1, v0, LP/O;->p:LM0/s0;

    iget-object v1, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v1, LP/p;

    iget v1, v1, LP/p;->b:I

    int-to-long v5, v1

    const-wide/32 v7, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0}, LP/O;->j()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    :goto_1
    move-object/from16 v3, p1

    goto/16 :goto_d

    :cond_3
    iget-object v6, v0, LP/O;->p:LM0/s0;

    iget-object v7, v6, LM0/s0;->e:Ljava/lang/Object;

    check-cast v7, LP/p;

    iget v7, v7, LP/p;->a:I

    iget v6, v6, LM0/s0;->b:I

    long-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_21

    if-ge v2, v1, :cond_21

    const/high16 v13, 0x50000000

    const/high16 v14, 0x10000000

    const/16 v15, 0x16

    const/16 v9, 0x15

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const-wide/high16 v16, -0x3e20000000000000L    # -2.147483648E9

    const-wide v18, 0x41dfffffffc00000L    # 2.147483647E9

    const/high16 v20, -0x31000000

    const/high16 v21, 0x4f000000

    if-eq v7, v12, :cond_11

    if-eq v7, v11, :cond_10

    const/16 v22, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, -0x40800000    # -1.0f

    if-eq v7, v10, :cond_f

    if-eq v7, v9, :cond_e

    if-eq v7, v15, :cond_d

    if-eq v7, v14, :cond_c

    if-eq v7, v13, :cond_b

    const/high16 v13, 0x60000000

    if-eq v7, v13, :cond_a

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/16 v23, 0x0

    const/high16 v13, 0x70000000

    if-eq v7, v13, :cond_9

    const/high16 v13, 0x71000000

    if-eq v7, v13, :cond_7

    const/high16 v13, 0x72000000

    if-ne v7, v13, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    cmpg-double v11, v9, v23

    if-gez v11, :cond_5

    :goto_3
    neg-double v9, v9

    mul-double v9, v9, v16

    :goto_4
    double-to-int v9, v9

    goto/16 :goto_9

    :cond_5
    mul-double v9, v9, v18

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    invoke-static {v9, v12, v11}, LJ/W;->f(FFF)F

    move-result v9

    cmpg-float v10, v9, v22

    if-gez v10, :cond_8

    :goto_5
    neg-float v9, v9

    mul-float v9, v9, v20

    :goto_6
    float-to-int v9, v9

    goto/16 :goto_9

    :cond_8
    mul-float v9, v9, v21

    goto :goto_6

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v11

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    cmpg-double v11, v9, v23

    if-gez v11, :cond_5

    goto :goto_3

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    :goto_7
    or-int/2addr v9, v10

    goto/16 :goto_9

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    goto :goto_7

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    goto :goto_7

    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    :goto_8
    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    goto :goto_7

    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    goto :goto_8

    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v9

    invoke-static {v9, v12, v11}, LJ/W;->f(FFF)F

    move-result v9

    cmpg-float v10, v9, v22

    if-gez v10, :cond_8

    goto/16 :goto_5

    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v9, v9, -0x80

    shl-int/lit8 v9, v9, 0x18

    goto :goto_9

    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    goto :goto_8

    :goto_9
    int-to-long v9, v9

    int-to-long v11, v2

    mul-long/2addr v9, v11

    div-long/2addr v9, v4

    long-to-int v9, v9

    const/4 v10, 0x2

    if-eq v7, v10, :cond_20

    const/4 v10, 0x3

    if-eq v7, v10, :cond_1f

    const/4 v10, 0x4

    if-eq v7, v10, :cond_1d

    const/16 v10, 0x15

    if-eq v7, v10, :cond_1c

    const/16 v10, 0x16

    if-eq v7, v10, :cond_1b

    const/high16 v13, 0x10000000

    if-eq v7, v13, :cond_1a

    const/high16 v10, 0x50000000

    if-eq v7, v10, :cond_19

    const/high16 v13, 0x60000000

    if-eq v7, v13, :cond_18

    const/high16 v13, 0x70000000

    if-eq v7, v13, :cond_16

    const/high16 v13, 0x71000000

    if-eq v7, v13, :cond_14

    const/high16 v13, 0x72000000

    if-ne v7, v13, :cond_13

    if-gez v9, :cond_12

    int-to-double v9, v9

    neg-double v9, v9

    div-double v9, v9, v16

    goto :goto_a

    :cond_12
    int-to-double v9, v9

    div-double v9, v9, v18

    :goto_a
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/16 :goto_c

    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_14
    if-gez v9, :cond_15

    int-to-float v9, v9

    neg-float v9, v9

    div-float v9, v9, v20

    goto :goto_b

    :cond_15
    int-to-float v9, v9

    div-float v9, v9, v21

    :goto_b
    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_c

    :cond_16
    if-gez v9, :cond_17

    int-to-double v9, v9

    neg-double v9, v9

    div-double v9, v9, v16

    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto/16 :goto_c

    :cond_17
    int-to-double v9, v9

    div-double v9, v9, v18

    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto/16 :goto_c

    :cond_18
    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_c

    :cond_19
    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_c

    :cond_1a
    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_c

    :cond_1b
    int-to-byte v10, v9

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_c

    :cond_1c
    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_c

    :cond_1d
    if-gez v9, :cond_1e

    int-to-float v9, v9

    neg-float v9, v9

    div-float v9, v9, v20

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_c

    :cond_1e
    int-to-float v9, v9

    div-float v9, v9, v21

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_c

    :cond_1f
    shr-int/lit8 v9, v9, 0x18

    add-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_c

    :cond_20
    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v9

    add-int v10, v8, v6

    if-ne v9, v10, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    goto/16 :goto_2

    :cond_21
    move-object/from16 v1, p1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_d
    iput-object v3, v0, LP/O;->N:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final u(J)V
    .locals 9

    iget-object v0, p0, LP/O;->p:LM0/s0;

    iget-object v1, v0, LM0/s0;->f:Ljava/lang/Object;

    check-cast v1, LH/j;

    iput-object v1, p0, LP/O;->q:LH/j;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, LP/O;->J:J

    sub-long/2addr p1, v1

    iget-object v1, v0, LM0/s0;->g:Ljava/lang/Object;

    check-cast v1, LG/q0;

    sget-object v2, LG/q0;->a:LG/m0;

    if-eq v1, v2, :cond_1

    iget-object v0, v0, LM0/s0;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, LG/n0;

    invoke-direct {v0}, LG/n0;-><init>()V

    iget-object v1, p0, LP/O;->p:LM0/s0;

    iget-object v2, v1, LM0/s0;->g:Ljava/lang/Object;

    check-cast v2, LG/q0;

    iget-object v1, v1, LM0/s0;->h:Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget-wide v0, v0, LG/n0;->e:J

    add-long/2addr p1, v0

    :cond_1
    :goto_0
    iget-object v0, p0, LP/O;->q:LH/j;

    new-instance v1, LH/l;

    invoke-direct {v1}, LH/l;-><init>()V

    iget-object v2, p0, LP/O;->p:LM0/s0;

    iget-object v3, v2, LM0/s0;->g:Ljava/lang/Object;

    check-cast v3, LG/q0;

    iput-object v3, v1, LH/l;->b:LG/q0;

    iget-object v2, v2, LM0/s0;->h:Ljava/lang/Object;

    iput-object v2, v1, LH/l;->c:Ljava/lang/Object;

    iput-wide p1, v1, LH/l;->a:J

    invoke-virtual {v1}, LH/l;->a()LH/m;

    move-result-object p1

    iget-object p2, v0, LH/j;->a:Lu1/P;

    iget-object v1, v0, LH/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, v0, LH/j;->d:Z

    move v3, v2

    :goto_1
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LH/o;

    invoke-interface {v4, p1}, LH/o;->i(LH/m;)V

    invoke-interface {v4}, LH/o;->e()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    new-instance v5, LH/l;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-wide v6, p1, LH/m;->a:J

    iput-wide v6, v5, LH/l;->a:J

    iget-object v8, p1, LH/m;->b:LG/q0;

    iput-object v8, v5, LH/l;->b:LG/q0;

    iget-object p1, p1, LH/m;->c:Ljava/lang/Object;

    iput-object p1, v5, LH/l;->c:Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, LH/o;->h(J)J

    move-result-wide v6

    iput-wide v6, v5, LH/l;->a:J

    invoke-virtual {v5}, LH/l;->a()LH/m;

    move-result-object p1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, v0, LH/j;->c:[Ljava/nio/ByteBuffer;

    :goto_3
    invoke-virtual {v0}, LH/j;->a()I

    move-result p1

    if-gt v2, p1, :cond_4

    iget-object p1, v0, LH/j;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LH/o;

    invoke-interface {p2}, LH/o;->c()Ljava/nio/ByteBuffer;

    move-result-object p2

    aput-object p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, LP/O;->p:LM0/s0;

    if-eqz v0, :cond_0

    iget-object v0, v0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v0, LP/p;

    iget-boolean v0, v0, LP/p;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
