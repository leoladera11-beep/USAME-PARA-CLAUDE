.class public abstract LS/r;
.super LN/a;
.source "SourceFile"


# static fields
.field public static final M0:[B


# instance fields
.field public final A:LM/f;

.field public A0:LN/k;

.field public final B:LM/f;

.field public B0:LN/c;

.field public final C:LM/f;

.field public C0:LS/q;

.field public final D:LS/g;

.field public D0:J

.field public final E:Landroid/media/MediaCodec$BufferInfo;

.field public E0:Z

.field public final F:Ljava/util/ArrayDeque;

.field public F0:Z

.field public final G:LP/T;

.field public G0:Z

.field public final H:Ljava/util/concurrent/atomic/AtomicInteger;

.field public H0:J

.field public I:LG/x;

.field public I0:J

.field public J:LG/x;

.field public J0:LN/b;

.field public K:LQ/h;

.field public K0:LN/b;

.field public L:LQ/h;

.field public L0:Lu1/b0;

.field public M:LN/A;

.field public N:Landroid/media/MediaCrypto;

.field public final O:J

.field public P:F

.field public Q:F

.field public R:LS/k;

.field public S:LG/x;

.field public T:Landroid/media/MediaFormat;

.field public U:Z

.field public V:F

.field public W:Ljava/util/ArrayDeque;

.field public X:LS/p;

.field public Y:LS/o;

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:J

.field public e0:Z

.field public f0:J

.field public g0:I

.field public h0:I

.field public i0:Ljava/nio/ByteBuffer;

.field public j0:Z

.field public k0:Z

.field public l0:Z

.field public m0:Z

.field public n0:Z

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:Z

.field public s0:Z

.field public t0:Z

.field public u0:J

.field public v0:J

.field public w0:Z

.field public final x:Landroid/content/Context;

.field public x0:Z

.field public final y:LS/j;

.field public y0:Z

.field public final z:LS/i;

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, LS/r;->M0:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILS/j;)V
    .locals 3

    sget-object v0, LS/i;->f:LS/i;

    invoke-direct {p0, p2}, LN/a;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LS/r;->x:Landroid/content/Context;

    iput-object p3, p0, LS/r;->y:LS/j;

    iput-object v0, p0, LS/r;->z:LS/i;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LS/r;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, LM/f;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LM/f;-><init>(I)V

    iput-object p1, p0, LS/r;->A:LM/f;

    new-instance p1, LM/f;

    invoke-direct {p1, p2}, LM/f;-><init>(I)V

    iput-object p1, p0, LS/r;->B:LM/f;

    new-instance p1, LM/f;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, LM/f;-><init>(I)V

    iput-object p1, p0, LS/r;->C:LM/f;

    new-instance p1, LS/g;

    invoke-direct {p1, p3}, LM/f;-><init>(I)V

    const/16 v0, 0x20

    iput v0, p1, LS/g;->p:I

    iput-object p1, p0, LS/r;->D:LS/g;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, LS/r;->E:Landroid/media/MediaCodec$BufferInfo;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LS/r;->P:F

    iput v0, p0, LS/r;->Q:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LS/r;->O:J

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, LS/r;->F:Ljava/util/ArrayDeque;

    sget-object v2, LS/q;->i:LS/q;

    iput-object v2, p0, LS/r;->C0:LS/q;

    invoke-virtual {p1, p2}, LM/f;->j(I)V

    iget-object p1, p1, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance p1, LP/T;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sget-object v2, LH/o;->a:Ljava/nio/ByteBuffer;

    iput-object v2, p1, LP/T;->a:Ljava/nio/ByteBuffer;

    iput p2, p1, LP/T;->c:I

    iput p3, p1, LP/T;->b:I

    iput-object p1, p0, LS/r;->G:LP/T;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, LS/r;->V:F

    iput p2, p0, LS/r;->o0:I

    const/4 p1, -0x1

    iput p1, p0, LS/r;->g0:I

    iput p1, p0, LS/r;->h0:I

    iput-wide v0, p0, LS/r;->f0:J

    iput-wide v0, p0, LS/r;->u0:J

    iput-wide v0, p0, LS/r;->v0:J

    iput-wide v0, p0, LS/r;->D0:J

    iput-wide v0, p0, LS/r;->d0:J

    iput p2, p0, LS/r;->p0:I

    iput p2, p0, LS/r;->q0:I

    new-instance p1, LN/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/r;->B0:LN/c;

    iput-boolean p2, p0, LS/r;->G0:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, LS/r;->H0:J

    iput-wide v0, p0, LS/r;->I0:J

    sget p1, Lu1/b0;->g:I

    sget-object p1, Lu1/J0;->n:Lu1/J0;

    iput-object p1, p0, LS/r;->L0:Lu1/b0;

    sget-object p1, LN/b;->b:LN/b;

    iput-object p1, p0, LS/r;->J0:LN/b;

    iput-object p1, p0, LS/r;->K0:LN/b;

    return-void
.end method


# virtual methods
.method public A0()Z
    .locals 4

    iget v0, p0, LS/r;->q0:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    iget-boolean v1, p0, LS/r;->Z:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LS/r;->t0:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, LS/r;->E0()V
    :try_end_0
    .catch LN/k; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v3, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v3, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    return v2
.end method

.method public B0(LG/x;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public C(FF)V
    .locals 0

    iput p1, p0, LS/r;->P:F

    iput p2, p0, LS/r;->Q:F

    iget-object p1, p0, LS/r;->S:LG/x;

    invoke-virtual {p0, p1}, LS/r;->D0(LG/x;)V

    return-void
.end method

.method public abstract C0(LS/i;LG/x;)I
.end method

.method public final D(LG/x;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, LS/r;->z:LS/i;

    invoke-virtual {p0, v0, p1}, LS/r;->C0(LS/i;LG/x;)I

    move-result p1
    :try_end_0
    .catch LS/u; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/16 v1, 0xfa2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object p1

    throw p1
.end method

.method public final D0(LG/x;)V
    .locals 3

    iget-object v0, p0, LS/r;->R:LS/k;

    if-eqz v0, :cond_4

    iget v0, p0, LS/r;->q0:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, LN/a;->l:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, LS/r;->Q:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LN/a;->n:[LG/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, p1, v1}, LS/r;->S(FLG/x;[LG/x;)F

    move-result p1

    iget v0, p0, LS/r;->V:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, p1, v1

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operating-rate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, LS/r;->R:LS/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, LS/k;->e(Landroid/os/Bundle;)V

    iput p1, p0, LS/r;->V:F

    :cond_4
    :goto_0
    return-void
.end method

.method public final E()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final E0()V
    .locals 4

    iget-object v0, p0, LS/r;->L:LQ/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LQ/h;->h()LM/a;

    move-result-object v0

    instance-of v1, v0, LQ/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, LS/r;->N:Landroid/media/MediaCrypto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, LQ/t;

    iget-object v0, v0, LQ/t;->b:[B

    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, LS/r;->I:LG/x;

    const/16 v3, 0x1776

    invoke-virtual {p0, v0, v1, v2, v3}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, LS/r;->L:LQ/h;

    invoke-virtual {p0, v0}, LS/r;->v0(LQ/h;)V

    iput v2, p0, LS/r;->p0:I

    iput v2, p0, LS/r;->q0:I

    return-void
.end method

.method public final F0(J)V
    .locals 1

    iget-object v0, p0, LS/r;->C0:LS/q;

    iget-object v0, v0, LS/q;->d:LJ/Q;

    invoke-virtual {v0, p1, p2}, LJ/Q;->f(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG/x;

    if-nez p1, :cond_0

    iget-boolean p2, p0, LS/r;->E0:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, LS/r;->T:Landroid/media/MediaFormat;

    if-eqz p2, :cond_0

    iget-object p1, p0, LS/r;->C0:LS/q;

    iget-object p1, p1, LS/q;->d:LJ/Q;

    invoke-virtual {p1}, LJ/Q;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG/x;

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, LS/r;->J:LG/x;

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, LS/r;->U:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, LS/r;->J:LG/x;

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, LS/r;->J:LG/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, LS/r;->T:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, p2}, LS/r;->i0(LG/x;Landroid/media/MediaFormat;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LS/r;->U:Z

    iput-boolean p1, p0, LS/r;->E0:Z

    :cond_2
    return-void
.end method

.method public final H(Landroid/media/MediaFormat;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_6

    iget-object v0, p0, LS/r;->J0:LN/b;

    iget-object v0, v0, LN/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_4

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_0

    :cond_4
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_5

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of v3, v1, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final I(JJ)Z
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v1, v0, LS/r;->x0:Z

    const/4 v15, 0x1

    xor-int/2addr v1, v15

    invoke-static {v1}, LF1/i;->o(Z)V

    iget-object v1, v0, LS/r;->D:LS/g;

    invoke-virtual {v1}, LS/g;->m()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    iget-object v6, v1, LM/f;->i:Ljava/nio/ByteBuffer;

    iget v7, v0, LS/r;->h0:I

    iget v9, v1, LS/g;->o:I

    iget-wide v10, v1, LM/f;->k:J

    iget-wide v12, v0, LN/a;->p:J

    iget-wide v4, v1, LS/g;->n:J

    invoke-virtual {v0, v12, v13, v4, v5}, LS/r;->Z(JJ)Z

    move-result v12

    invoke-virtual {v1, v3}, LK/f;->f(I)Z

    move-result v13

    iget-object v14, v0, LS/r;->J:LG/x;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide/from16 v3, p3

    move-object v15, v1

    move-wide/from16 v1, p1

    invoke-virtual/range {v0 .. v14}, LS/r;->o0(JJLS/k;Ljava/nio/ByteBuffer;IIIJZZLG/x;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v15, LS/g;->n:J

    invoke-virtual {v0, v1, v2}, LS/r;->k0(J)V

    invoke-virtual {v15}, LS/g;->h()V

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_1
    move-object v15, v1

    :goto_0
    iget-boolean v1, v0, LS/r;->w0:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, LS/r;->x0:Z

    const/4 v2, 0x0

    return v2

    :cond_2
    const/4 v2, 0x0

    iget-boolean v1, v0, LS/r;->l0:Z

    iget-object v3, v0, LS/r;->C:LM/f;

    if-eqz v1, :cond_3

    invoke-virtual {v15, v3}, LS/g;->l(LM/f;)Z

    move-result v1

    invoke-static {v1}, LF1/i;->o(Z)V

    iput-boolean v2, v0, LS/r;->l0:Z

    :cond_3
    iget-boolean v1, v0, LS/r;->m0:Z

    if-eqz v1, :cond_6

    invoke-virtual {v15}, LS/g;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_1
    const/16 v17, 0x1

    goto/16 :goto_13

    :cond_5
    iput-boolean v2, v0, LS/r;->k0:Z

    invoke-virtual {v0}, LS/r;->s0()V

    iput-boolean v2, v0, LS/r;->m0:Z

    invoke-virtual {v0}, LS/r;->a0()V

    iget-boolean v1, v0, LS/r;->k0:Z

    if-nez v1, :cond_6

    move/from16 v16, v2

    goto/16 :goto_12

    :cond_6
    iget-boolean v1, v0, LS/r;->w0:Z

    const/16 v17, 0x1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, LF1/i;->o(Z)V

    iget-object v1, v0, LN/a;->g:LN0/O;

    invoke-virtual {v1}, LN0/O;->I()V

    invoke-virtual {v3}, LM/f;->h()V

    :goto_2
    invoke-virtual {v3}, LM/f;->h()V

    invoke-virtual {v0, v1, v3, v2}, LN/a;->y(LN0/O;LM/f;I)I

    move-result v4

    const/4 v5, -0x5

    if-eq v4, v5, :cond_20

    const/4 v5, -0x4

    if-eq v4, v5, :cond_8

    const/4 v1, -0x3

    if-ne v4, v1, :cond_7

    invoke-virtual {v0}, LN/a;->l()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, LS/r;->V()LS/q;

    move-result-object v1

    iget-wide v3, v0, LS/r;->u0:J

    iput-wide v3, v1, LS/q;->h:J

    goto/16 :goto_11

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_8
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, LK/f;->f(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    iput-boolean v5, v0, LS/r;->w0:Z

    invoke-virtual {v0}, LS/r;->V()LS/q;

    move-result-object v1

    iget-wide v3, v0, LS/r;->u0:J

    iput-wide v3, v1, LS/q;->h:J

    goto/16 :goto_11

    :cond_9
    iget-wide v5, v0, LS/r;->u0:J

    iget-wide v7, v3, LM/f;->k:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, LS/r;->u0:J

    invoke-virtual {v0}, LN/a;->l()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v0, LS/r;->B:LM/f;

    const/high16 v6, 0x20000000

    invoke-virtual {v5, v6}, LK/f;->f(I)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    invoke-virtual {v0}, LS/r;->V()LS/q;

    move-result-object v5

    iget-wide v6, v0, LS/r;->u0:J

    iput-wide v6, v5, LS/q;->h:J

    :cond_b
    iget-boolean v5, v0, LS/r;->y0:Z

    const/16 v6, 0xff

    const/4 v7, 0x0

    const-string v8, "audio/opus"

    if-eqz v5, :cond_d

    iget-object v5, v0, LS/r;->I:LG/x;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v0, LS/r;->J:LG/x;

    iget-object v5, v5, LG/x;->p:Ljava/lang/String;

    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v0, LS/r;->J:LG/x;

    iget-object v5, v5, LG/x;->s:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, LS/r;->J:LG/x;

    iget-object v5, v5, LG/x;->s:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const/16 v9, 0xb

    aget-byte v9, v5, v9

    and-int/2addr v9, v6

    shl-int/lit8 v9, v9, 0x8

    const/16 v10, 0xa

    aget-byte v5, v5, v10

    and-int/2addr v5, v6

    or-int/2addr v5, v9

    iget-object v9, v0, LS/r;->J:LG/x;

    invoke-virtual {v9}, LG/x;->a()LG/w;

    move-result-object v9

    iput v5, v9, LG/w;->M:I

    new-instance v5, LG/x;

    invoke-direct {v5, v9}, LG/x;-><init>(LG/w;)V

    iput-object v5, v0, LS/r;->J:LG/x;

    :cond_c
    iget-object v5, v0, LS/r;->J:LG/x;

    invoke-virtual {v0, v5, v7}, LS/r;->i0(LG/x;Landroid/media/MediaFormat;)V

    iput-boolean v2, v0, LS/r;->y0:Z

    :cond_d
    invoke-virtual {v3}, LM/f;->k()V

    iget-object v5, v0, LS/r;->J:LG/x;

    if-eqz v5, :cond_1c

    iget-object v5, v5, LG/x;->p:Ljava/lang/String;

    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, LK/f;->f(I)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v0, LS/r;->J:LG/x;

    iput-object v5, v3, LM/f;->g:LG/x;

    invoke-virtual {v0, v3}, LS/r;->X(LM/f;)V

    :cond_e
    iget-wide v8, v0, LN/a;->p:J

    iget-wide v10, v3, LM/f;->k:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x13880

    cmp-long v5, v8, v10

    if-gtz v5, :cond_1c

    iget-object v5, v0, LS/r;->J:LG/x;

    iget-object v5, v5, LG/x;->s:Ljava/util/List;

    iget-object v8, v0, LS/r;->G:LP/T;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v3, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v3, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/Buffer;->limit()I

    move-result v9

    iget-object v10, v3, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    move-result v10

    sub-int/2addr v9, v10

    if-nez v9, :cond_f

    goto/16 :goto_e

    :cond_f
    iget v9, v8, LP/T;->b:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x3

    if-ne v9, v11, :cond_11

    :cond_10
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, [B

    :cond_11
    iget-object v5, v3, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v9

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v11

    sub-int v12, v11, v9

    add-int/lit16 v13, v12, 0xff

    div-int/2addr v13, v6

    add-int/lit8 v14, v13, 0x1b

    add-int/2addr v14, v12

    iget v4, v8, LP/T;->b:I

    if-ne v4, v10, :cond_13

    if-eqz v7, :cond_12

    array-length v4, v7

    add-int/lit8 v4, v4, 0x1c

    goto :goto_3

    :cond_12
    const/16 v4, 0x2f

    :goto_3
    add-int/lit8 v16, v4, 0x2c

    add-int v14, v16, v14

    goto :goto_4

    :cond_13
    move v4, v2

    :goto_4
    iget-object v6, v8, LP/T;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    if-ge v6, v14, :cond_14

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v8, LP/T;->a:Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_14
    iget-object v6, v8, LP/T;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_5
    iget-object v6, v8, LP/T;->a:Ljava/nio/ByteBuffer;

    iget v14, v8, LP/T;->b:I

    const/16 v2, 0x16

    if-ne v14, v10, :cond_16

    if-eqz v7, :cond_15

    const/16 v22, 0x1

    const/16 v23, 0x1

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v6

    invoke-static/range {v18 .. v23}, LP/T;->a(Ljava/nio/ByteBuffer;JIIZ)V

    array-length v14, v7

    move/from16 p3, v11

    int-to-long v10, v14

    invoke-static {v10, v11}, LV0/a;->a(J)B

    move-result v10

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    array-length v14, v7

    add-int/lit8 v14, v14, 0x1c

    move/from16 p4, v4

    const/4 v4, 0x0

    invoke-static {v11, v14, v4, v10}, LJ/W;->k(III[B)I

    move-result v10

    invoke-virtual {v6, v2, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    array-length v4, v7

    add-int/lit8 v4, v4, 0x1c

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6

    :cond_15
    move/from16 p4, v4

    move/from16 p3, v11

    sget-object v4, LP/T;->d:[B

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_6
    sget-object v4, LP/T;->e:[B

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_7
    const/4 v4, 0x0

    goto :goto_8

    :cond_16
    move/from16 p4, v4

    move/from16 p3, v11

    goto :goto_7

    :goto_8
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v4

    const/4 v11, 0x1

    if-le v4, v11, :cond_17

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    goto :goto_9

    :cond_17
    const/4 v4, 0x0

    :goto_9
    invoke-static {v7, v4}, LK/t;->e(BB)J

    move-result-wide v10

    const-wide/32 v18, 0xbb80

    mul-long v10, v10, v18

    const-wide/32 v18, 0xf4240

    div-long v10, v10, v18

    long-to-int v4, v10

    iget v7, v8, LP/T;->c:I

    add-int/2addr v7, v4

    iput v7, v8, LP/T;->c:I

    int-to-long v10, v7

    iget v4, v8, LP/T;->b:I

    const/16 v23, 0x0

    move/from16 v21, v4

    move-object/from16 v18, v6

    move-wide/from16 v19, v10

    move/from16 v22, v13

    invoke-static/range {v18 .. v23}, LP/T;->a(Ljava/nio/ByteBuffer;JIIZ)V

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v13, :cond_19

    const/16 v7, 0xff

    if-lt v12, v7, :cond_18

    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit16 v10, v12, -0xff

    move v12, v10

    goto :goto_b

    :cond_18
    int-to-byte v10, v12

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_19
    move/from16 v4, p3

    :goto_c
    if-ge v9, v4, :cond_1a

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_1a
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget v4, v8, LP/T;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1b

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int v4, v4, p4

    add-int/lit8 v4, v4, 0x2c

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v7

    sub-int/2addr v5, v7

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v2}, LJ/W;->k(III[B)I

    move-result v2

    add-int/lit8 v4, p4, 0x42

    invoke-virtual {v6, v4, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_d

    :cond_1b
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v9

    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v5, v9, v7, v4}, LJ/W;->k(III[B)I

    move-result v4

    invoke-virtual {v6, v2, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :goto_d
    iget v2, v8, LP/T;->b:I

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v8, LP/T;->b:I

    iput-object v6, v8, LP/T;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, LM/f;->h()V

    iget-object v2, v8, LP/T;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v3, v2}, LM/f;->j(I)V

    iget-object v2, v3, LM/f;->i:Ljava/nio/ByteBuffer;

    iget-object v4, v8, LP/T;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, LM/f;->k()V

    :cond_1c
    :goto_e
    invoke-virtual {v15}, LS/g;->m()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_f

    :cond_1d
    iget-wide v4, v0, LN/a;->p:J

    iget-wide v6, v15, LS/g;->n:J

    invoke-virtual {v0, v4, v5, v6, v7}, LS/r;->Z(JJ)Z

    move-result v2

    iget-wide v6, v3, LM/f;->k:J

    invoke-virtual {v0, v4, v5, v6, v7}, LS/r;->Z(JJ)Z

    move-result v4

    if-ne v2, v4, :cond_1e

    :goto_f
    invoke-virtual {v15, v3}, LS/g;->l(LM/f;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1e
    const/4 v11, 0x1

    goto :goto_10

    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_2

    :goto_10
    iput-boolean v11, v0, LS/r;->l0:Z

    goto :goto_11

    :cond_20
    invoke-virtual {v0, v1}, LS/r;->h0(LN0/O;)LN/d;

    :cond_21
    :goto_11
    invoke-virtual {v15}, LS/g;->m()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v15}, LM/f;->k()V

    :cond_22
    invoke-virtual {v15}, LS/g;->m()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, LS/r;->w0:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, LS/r;->m0:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :goto_12
    return v16

    :goto_13
    return v17
.end method

.method public abstract J(LS/o;LG/x;LG/x;Z)LN/d;
.end method

.method public K(Ljava/lang/IllegalStateException;LS/o;)LS/m;
    .locals 1

    new-instance v0, LS/m;

    invoke-direct {v0, p1, p2}, LS/m;-><init>(Ljava/lang/IllegalStateException;LS/o;)V

    return-object v0
.end method

.method public final L()Z
    .locals 2

    iget-boolean v0, p0, LS/r;->r0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, LS/r;->p0:I

    invoke-virtual {p0}, LS/r;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, LS/r;->q0:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, LS/r;->q0:I

    return v1

    :cond_1
    invoke-virtual {p0}, LS/r;->E0()V

    return v1
.end method

.method public final M(JJ)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v5, v0, LS/r;->R:LS/k;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, LS/r;->h0:I

    const/4 v15, 0x0

    const/4 v2, 0x4

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v0, LS/r;->E:Landroid/media/MediaCodec$BufferInfo;

    if-ltz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v5, v8}, LS/k;->h(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    if-gez v1, :cond_10

    const/4 v5, -0x2

    const/4 v8, 0x2

    if-ne v1, v5, :cond_c

    iput-boolean v6, v0, LS/r;->t0:Z

    iget-object v1, v0, LS/r;->R:LS/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, LS/k;->l()Landroid/media/MediaFormat;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_b

    iget-object v3, v0, LS/r;->L0:Lu1/b0;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v3, v0, LS/r;->L0:Lu1/b0;

    sget-object v4, LN/b;->b:LN/b;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1, v5}, LB/r;->b(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v7

    if-eq v7, v6, :cond_8

    if-eq v7, v8, :cond_7

    const/4 v9, 0x3

    if-eq v7, v9, :cond_6

    if-eq v7, v2, :cond_5

    const/4 v9, 0x5

    if-eq v7, v9, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-virtual {v4, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_9
    new-instance v2, LN/b;

    invoke-direct {v2, v4}, LN/b;-><init>(Ljava/util/HashMap;)V

    iget-object v3, v0, LS/r;->K0:LN/b;

    invoke-virtual {v2, v3}, LN/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_1

    :cond_a
    iput-object v2, v0, LS/r;->K0:LN/b;

    invoke-virtual {v0, v2}, LS/r;->f0(LN/b;)V

    :cond_b
    :goto_1
    iput-object v1, v0, LS/r;->T:Landroid/media/MediaFormat;

    iput-boolean v6, v0, LS/r;->U:Z

    return v6

    :cond_c
    iget-boolean v1, v0, LS/r;->c0:Z

    if-eqz v1, :cond_e

    iget-boolean v1, v0, LS/r;->w0:Z

    if-nez v1, :cond_d

    iget v1, v0, LS/r;->p0:I

    if-ne v1, v8, :cond_e

    :cond_d
    invoke-virtual {v0}, LS/r;->n0()V

    :cond_e
    iget-wide v1, v0, LS/r;->d0:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_f

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    iget-object v3, v0, LN/a;->k:LJ/M;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_f

    invoke-virtual {v0}, LS/r;->n0()V

    return v7

    :cond_f
    move/from16 v18, v7

    goto/16 :goto_9

    :cond_10
    iget-wide v9, v0, LS/r;->I0:J

    cmp-long v11, v9, v3

    if-eqz v11, :cond_11

    iget-wide v11, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v9, v11, v9

    if-gtz v9, :cond_11

    move v9, v6

    goto :goto_2

    :cond_11
    move v9, v7

    :goto_2
    iput-boolean v9, v0, LS/r;->j0:Z

    iget-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v11, v0, LS/r;->H0:J

    sub-long/2addr v9, v11

    iput-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v9, v0, LS/r;->b0:Z

    if-eqz v9, :cond_12

    iput-boolean v7, v0, LS/r;->b0:Z

    invoke-interface {v5, v1}, LS/k;->i(I)V

    return v6

    :cond_12
    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v9, :cond_13

    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v9, v2

    if-eqz v9, :cond_13

    invoke-virtual {v0}, LS/r;->n0()V

    return v7

    :cond_13
    iput v1, v0, LS/r;->h0:I

    invoke-interface {v5, v1}, LS/k;->u(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, LS/r;->i0:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_14

    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v0, LS/r;->i0:Ljava/nio/ByteBuffer;

    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v10, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v9, v10

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_14
    iget-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v9, v10}, LS/r;->F0(J)V

    :goto_3
    iget-object v1, v0, LS/r;->C0:LS/q;

    iget v9, v1, LS/q;->f:I

    and-int/2addr v9, v6

    if-eqz v9, :cond_15

    iget-wide v9, v1, LS/q;->e:J

    cmp-long v11, v9, v3

    if-eqz v11, :cond_15

    iget-wide v11, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v13, v1, LS/q;->c:J

    sub-long/2addr v11, v13

    cmp-long v9, v11, v9

    if-ltz v9, :cond_15

    move v9, v6

    goto :goto_4

    :cond_15
    move v9, v7

    :goto_4
    iget-boolean v10, v0, LS/r;->j0:Z

    if-nez v10, :cond_17

    iget-boolean v10, v0, LS/r;->G0:Z

    if-nez v10, :cond_17

    iget-wide v10, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v12, v0, LN/a;->p:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_17

    if-eqz v9, :cond_16

    goto :goto_5

    :cond_16
    move v12, v7

    goto :goto_6

    :cond_17
    :goto_5
    move v12, v6

    :goto_6
    iget-wide v10, v1, LS/q;->h:J

    cmp-long v1, v10, v3

    if-eqz v1, :cond_18

    iget-wide v3, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v1, v10, v3

    if-gtz v1, :cond_18

    if-nez v9, :cond_18

    move v1, v6

    move v13, v1

    goto :goto_7

    :cond_18
    move v1, v6

    move v13, v7

    :goto_7
    iget-object v6, v0, LS/r;->i0:Ljava/nio/ByteBuffer;

    move v3, v7

    iget v7, v0, LS/r;->h0:I

    iget v4, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v14, v0, LS/r;->J:LG/x;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object v15, v8

    move-wide/from16 v1, p1

    move v8, v4

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v14}, LS/r;->o0(JJLS/k;Ljava/nio/ByteBuffer;IIIJZZLG/x;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-wide v1, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, LS/r;->k0(J)V

    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_19

    move/from16 v6, v16

    goto :goto_8

    :cond_19
    move/from16 v6, v18

    :goto_8
    if-nez v6, :cond_1a

    iget-boolean v1, v0, LS/r;->s0:Z

    if-eqz v1, :cond_1a

    if-eqz v13, :cond_1a

    iget-object v1, v0, LN/a;->k:LJ/M;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, LS/r;->d0:J

    :cond_1a
    const/4 v1, -0x1

    iput v1, v0, LS/r;->h0:I

    const/4 v1, 0x0

    iput-object v1, v0, LS/r;->i0:Ljava/nio/ByteBuffer;

    if-nez v6, :cond_1b

    return v16

    :cond_1b
    invoke-virtual {v0}, LS/r;->n0()V

    :cond_1c
    :goto_9
    return v18
.end method

.method public final N()Z
    .locals 18

    move-object/from16 v1, p0

    invoke-virtual {v1}, LS/r;->V()LS/q;

    move-result-object v0

    iget-object v2, v1, LN/a;->m:LU/a0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, LU/a0;->r()I

    move-result v2

    iput v2, v0, LS/q;->f:I

    iget-object v3, v1, LS/r;->R:LS/k;

    const/4 v2, 0x0

    if-eqz v3, :cond_21

    iget v0, v1, LS/r;->p0:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_21

    iget-boolean v0, v1, LS/r;->w0:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, v1, LS/r;->g0:I

    iget-object v10, v1, LS/r;->B:LM/f;

    if-gez v0, :cond_2

    invoke-interface {v3}, LS/k;->w()I

    move-result v0

    iput v0, v1, LS/r;->g0:I

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-interface {v3, v0}, LS/k;->o(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v10, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, LM/f;->h()V

    :cond_2
    iget v0, v1, LS/r;->p0:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v0, v13, :cond_4

    iget-boolean v0, v1, LS/r;->c0:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v13, v1, LS/r;->s0:Z

    iget v4, v1, LS/r;->g0:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v5, 0x0

    invoke-interface/range {v3 .. v8}, LS/k;->g(IIJI)V

    iput v12, v1, LS/r;->g0:I

    iput-object v11, v10, LM/f;->i:Ljava/nio/ByteBuffer;

    :goto_0
    iput v9, v1, LS/r;->p0:I

    return v2

    :cond_4
    iget-boolean v0, v1, LS/r;->a0:Z

    if-eqz v0, :cond_5

    iput-boolean v2, v1, LS/r;->a0:Z

    iget-object v0, v10, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LS/r;->M0:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v4, v1, LS/r;->g0:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x26

    invoke-interface/range {v3 .. v8}, LS/k;->g(IIJI)V

    iput v12, v1, LS/r;->g0:I

    iput-object v11, v10, LM/f;->i:Ljava/nio/ByteBuffer;

    iput-boolean v13, v1, LS/r;->r0:Z

    return v13

    :cond_5
    iget v0, v1, LS/r;->o0:I

    if-ne v0, v13, :cond_7

    move v0, v2

    :goto_1
    iget-object v4, v1, LS/r;->S:LG/x;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, LG/x;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, v1, LS/r;->S:LG/x;

    iget-object v4, v4, LG/x;->s:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, v10, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput v9, v1, LS/r;->o0:I

    :cond_7
    iget-object v0, v10, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v4, v1, LN/a;->g:LN0/O;

    invoke-virtual {v4}, LN0/O;->I()V

    :try_start_0
    new-instance v5, LM0/K;

    const/16 v6, 0x11

    invoke-direct {v5, v1, v4, v6}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v5}, LS/k;->p(LJ/P;)V
    :try_end_0
    .catch LM/e; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, v1, LS/r;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, -0x3

    if-ne v5, v6, :cond_9

    invoke-virtual {v1}, LN/a;->l()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v1}, LS/r;->V()LS/q;

    move-result-object v0

    invoke-virtual {v1}, LS/r;->V()LS/q;

    move-result-object v3

    iget v3, v3, LS/q;->f:I

    and-int/2addr v3, v13

    if-eqz v3, :cond_8

    iget-wide v3, v1, LS/r;->v0:J

    goto :goto_2

    :cond_8
    iget-wide v3, v1, LS/r;->u0:J

    :goto_2
    iput-wide v3, v0, LS/q;->h:J

    return v2

    :cond_9
    const/4 v6, -0x5

    if-ne v5, v6, :cond_b

    iget v0, v1, LS/r;->o0:I

    if-ne v0, v9, :cond_a

    invoke-virtual {v10}, LM/f;->h()V

    iput v13, v1, LS/r;->o0:I

    :cond_a
    invoke-virtual {v1, v4}, LS/r;->h0(LN0/O;)LN/d;

    return v13

    :cond_b
    const/4 v4, 0x4

    invoke-virtual {v10, v4}, LK/f;->f(I)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v1}, LS/r;->V()LS/q;

    move-result-object v0

    invoke-virtual {v1}, LS/r;->V()LS/q;

    move-result-object v4

    iget v4, v4, LS/q;->f:I

    and-int/2addr v4, v13

    if-eqz v4, :cond_c

    iget-wide v4, v1, LS/r;->v0:J

    goto :goto_3

    :cond_c
    iget-wide v4, v1, LS/r;->u0:J

    :goto_3
    iput-wide v4, v0, LS/q;->h:J

    iget v0, v1, LS/r;->o0:I

    if-ne v0, v9, :cond_d

    invoke-virtual {v10}, LM/f;->h()V

    iput v13, v1, LS/r;->o0:I

    :cond_d
    iput-boolean v13, v1, LS/r;->w0:Z

    iget-boolean v0, v1, LS/r;->r0:Z

    if-nez v0, :cond_e

    invoke-virtual {v1}, LS/r;->n0()V

    return v2

    :cond_e
    iget-boolean v0, v1, LS/r;->c0:Z

    if-eqz v0, :cond_f

    goto/16 :goto_8

    :cond_f
    iput-boolean v13, v1, LS/r;->s0:Z

    iget v4, v1, LS/r;->g0:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v5, 0x0

    invoke-interface/range {v3 .. v8}, LS/k;->g(IIJI)V

    iput v12, v1, LS/r;->g0:I

    iput-object v11, v10, LM/f;->i:Ljava/nio/ByteBuffer;

    return v2

    :cond_10
    iget-boolean v4, v1, LS/r;->r0:Z

    if-nez v4, :cond_11

    invoke-virtual {v10, v13}, LK/f;->f(I)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v10}, LM/f;->h()V

    iget-object v0, v1, LS/r;->B0:LN/c;

    iget v2, v0, LN/c;->d:I

    add-int/2addr v2, v13

    iput v2, v0, LN/c;->d:I

    iget v0, v1, LS/r;->o0:I

    if-ne v0, v9, :cond_12

    iput v13, v1, LS/r;->o0:I

    return v13

    :cond_11
    iget-wide v4, v10, LM/f;->k:J

    invoke-virtual {v1, v10}, LS/r;->x0(LM/f;)Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_12
    return v13

    :cond_13
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v10, v6}, LK/f;->f(I)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v7, v10, LM/f;->h:LM/b;

    if-nez v0, :cond_14

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_14
    iget-object v8, v7, LM/b;->d:[I

    if-nez v8, :cond_15

    new-array v8, v13, [I

    iput-object v8, v7, LM/b;->d:[I

    iget-object v9, v7, LM/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v8, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_15
    iget-object v7, v7, LM/b;->d:[I

    aget v8, v7, v2

    add-int/2addr v8, v0

    aput v8, v7, v2

    :cond_16
    :goto_4
    iget-boolean v0, v1, LS/r;->y0:Z

    if-eqz v0, :cond_17

    invoke-virtual {v1}, LS/r;->V()LS/q;

    move-result-object v0

    iget-object v7, v0, LS/q;->d:LJ/Q;

    iget-object v8, v1, LS/r;->I:LG/x;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v4, v5, v8}, LJ/Q;->a(JLjava/lang/Object;)V

    iput-boolean v13, v0, LS/q;->g:Z

    iput-boolean v2, v1, LS/r;->y0:Z

    :cond_17
    iget-boolean v0, v1, LS/r;->G0:Z

    if-eqz v0, :cond_19

    iget-wide v7, v1, LS/r;->u0:J

    iget-wide v14, v1, LS/r;->H0:J

    move v9, v13

    move-wide/from16 v16, v14

    add-long v13, v7, v16

    iput-wide v13, v1, LS/r;->I0:J

    cmp-long v0, v4, v7

    if-gtz v0, :cond_18

    sub-long/2addr v7, v4

    const-wide/16 v13, 0x1

    add-long/2addr v7, v13

    add-long v7, v7, v16

    iput-wide v7, v1, LS/r;->H0:J

    :cond_18
    iput-wide v4, v1, LS/r;->u0:J

    iput-wide v4, v1, LS/r;->v0:J

    iput-boolean v2, v1, LS/r;->G0:Z

    goto :goto_5

    :cond_19
    move v9, v13

    :goto_5
    iget-wide v7, v1, LS/r;->u0:J

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, LS/r;->u0:J

    iget-wide v7, v1, LN/a;->v:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v13

    if-eqz v0, :cond_1a

    invoke-virtual {v1}, LS/r;->V()LS/q;

    move-result-object v0

    iget-wide v13, v0, LS/q;->c:J

    sub-long v13, v4, v13

    cmp-long v0, v13, v7

    if-gez v0, :cond_1b

    :cond_1a
    iget-wide v7, v1, LS/r;->v0:J

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, LS/r;->v0:J

    :cond_1b
    invoke-virtual {v1}, LN/a;->l()Z

    move-result v0

    if-nez v0, :cond_1c

    const/high16 v0, 0x20000000

    invoke-virtual {v10, v0}, LK/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    invoke-virtual {v1}, LS/r;->V()LS/q;

    move-result-object v0

    invoke-virtual {v1}, LS/r;->V()LS/q;

    move-result-object v7

    iget v7, v7, LS/q;->f:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_1d

    iget-wide v7, v1, LS/r;->v0:J

    goto :goto_6

    :cond_1d
    iget-wide v7, v1, LS/r;->u0:J

    :goto_6
    iput-wide v7, v0, LS/q;->h:J

    :cond_1e
    invoke-virtual {v10}, LM/f;->k()V

    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, LK/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v1, v10}, LS/r;->X(LM/f;)V

    :cond_1f
    invoke-virtual {v1, v10}, LS/r;->m0(LM/f;)V

    invoke-virtual {v1, v10}, LS/r;->R(LM/f;)I

    move-result v8

    iget-wide v13, v1, LS/r;->H0:J

    add-long/2addr v4, v13

    if-eqz v6, :cond_20

    move-wide v6, v4

    iget v4, v1, LS/r;->g0:I

    iget-object v5, v10, LM/f;->h:LM/b;

    invoke-interface/range {v3 .. v8}, LS/k;->c(ILM/b;JI)V

    goto :goto_7

    :cond_20
    move-wide v6, v4

    iget v4, v1, LS/r;->g0:I

    iget-object v0, v10, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-interface/range {v3 .. v8}, LS/k;->g(IIJI)V

    :goto_7
    iput v12, v1, LS/r;->g0:I

    iput-object v11, v10, LM/f;->i:Ljava/nio/ByteBuffer;

    iput-boolean v9, v1, LS/r;->r0:Z

    iput v2, v1, LS/r;->o0:I

    iget-object v0, v1, LS/r;->B0:LN/c;

    iget v2, v0, LN/c;->c:I

    add-int/2addr v2, v9

    iput v2, v0, LN/c;->c:I

    return v9

    :catch_0
    move-exception v0

    move v9, v13

    invoke-virtual {v1, v0}, LS/r;->d0(Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, LS/r;->p0(I)Z

    invoke-virtual {v1}, LS/r;->O()V

    return v9

    :cond_21
    :goto_8
    return v2
.end method

.method public final O()V
    .locals 1

    :try_start_0
    iget-object v0, p0, LS/r;->R:LS/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LS/k;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, LS/r;->t0()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, LS/r;->t0()V

    throw v0
.end method

.method public final P()Z
    .locals 3

    iget-object v0, p0, LS/r;->R:LS/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LS/r;->A0()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LS/r;->q0()V

    return v2

    :cond_1
    invoke-virtual {p0}, LS/r;->y0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LS/r;->O()V

    return v1

    :cond_2
    iget-boolean v0, p0, LS/r;->r0:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, LS/r;->G0:Z

    :cond_3
    :goto_0
    return v1
.end method

.method public final Q(Z)Ljava/util/List;
    .locals 4

    iget-object v0, p0, LS/r;->I:LG/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LS/r;->z:LS/i;

    invoke-virtual {p0, v1, v0, p1}, LS/r;->T(LS/i;LG/x;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, LS/r;->T(LS/i;LG/x;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Drm session requires secure decoder for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, LG/x;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1

    :cond_1
    return-object v2
.end method

.method public R(LM/f;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract S(FLG/x;[LG/x;)F
.end method

.method public abstract T(LS/i;LG/x;Z)Ljava/util/ArrayList;
.end method

.method public U(JJZ)J
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, LN/a;->i(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final V()LS/q;
    .locals 2

    iget-object v0, p0, LS/r;->F:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/q;

    return-object v0

    :cond_0
    iget-object v0, p0, LS/r;->C0:LS/q;

    return-object v0
.end method

.method public abstract W(LS/o;LG/x;Landroid/media/MediaCrypto;F)LM0/r0;
.end method

.method public abstract X(LM/f;)V
.end method

.method public final Y(LS/o;Landroid/media/MediaCrypto;)V
    .locals 12

    const-string v0, "createCodec:"

    iput-object p1, p0, LS/r;->Y:LS/o;

    iget-object v1, p0, LS/r;->I:LG/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p1, LS/o;->a:Ljava/lang/String;

    iget v2, p0, LS/r;->Q:F

    iget-object v3, p0, LN/a;->n:[LG/x;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2, v1, v3}, LS/r;->S(FLG/x;[LG/x;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    :cond_0
    iget-object v3, p0, LN/a;->k:LJ/M;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, p2, v2}, LS/r;->W(LS/o;LG/x;Landroid/media/MediaCrypto;F)LM0/r0;

    move-result-object p2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_1

    iget-object v8, p0, LN/a;->j:LO/j;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, LO/j;->a()Landroid/media/metrics/LogSessionId;

    move-result-object v8

    invoke-static {}, LO/h;->i()Landroid/media/metrics/LogSessionId;

    invoke-static {v8}, LO/h;->x(Landroid/media/metrics/LogSessionId;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p2, LM0/r0;->d:Ljava/lang/Object;

    check-cast v9, Landroid/media/MediaFormat;

    const-string v10, "log-session-id"

    invoke-static {v8}, LO/h;->m(Landroid/media/metrics/LogSessionId;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, LS/r;->y:LS/j;

    invoke-interface {v0, p2}, LS/j;->l(LM0/r0;)LS/k;

    move-result-object p2

    iput-object p2, p0, LS/r;->R:LS/k;

    new-instance v0, La1/g;

    invoke-direct {v0, p0}, La1/g;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, LS/k;->y(La1/g;)Z

    move-result p2

    iput-boolean p2, p0, LS/r;->e0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p2, p0, LN/a;->k:LJ/M;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v8, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p2, p0, LS/r;->x:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, LS/o;->e(Landroid/content/Context;LG/x;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {v1}, LG/x;->c(LG/x;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "Format exceeds selected codec\'s capabilities ["

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaCodecRenderer"

    invoke-static {v0, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput v2, p0, LS/r;->V:F

    iput-object v1, p0, LS/r;->S:LG/x;

    sget-object p2, LG/Q;->a:Ljava/util/HashSet;

    const/16 p2, 0x1d

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v5, p2, :cond_3

    const-string v2, "c2.android.aac.decoder"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    iput-boolean v2, p0, LS/r;->Z:Z

    iget-object v2, p1, LS/o;->a:Ljava/lang/String;

    if-gt v5, p2, :cond_4

    const-string p2, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "OMX.bcm.vdec.avc.tunnel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "OMX.bcm.vdec.avc.tunnel.secure"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "OMX.bcm.vdec.hevc.tunnel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "OMX.bcm.vdec.hevc.tunnel.secure"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    const-string p2, "Amazon"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "AFTS"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p1, p1, LS/o;->f:Z

    if-eqz p1, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    iput-boolean v0, p0, LS/r;->c0:Z

    iget-object p1, p0, LS/r;->R:LS/k;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, LN/a;->l:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    iget-object p1, p0, LN/a;->k:LJ/M;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v10, 0x3e8

    add-long/2addr p1, v10

    iput-wide p1, p0, LS/r;->f0:J

    :cond_7
    iget-object p1, p0, LS/r;->B0:LN/c;

    iget p2, p1, LN/c;->a:I

    add-int/2addr p2, v1

    iput p2, p1, LN/c;->a:I

    sub-long p1, v3, v8

    if-lt v5, v6, :cond_8

    iget-object v0, p0, LS/r;->L0:Lu1/b0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, LS/r;->R:LS/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, LS/r;->L0:Lu1/b0;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, LS/k;->x(Ljava/util/ArrayList;)V

    :cond_8
    move-object v2, p0

    move-wide v5, p1

    invoke-virtual/range {v2 .. v7}, LS/r;->e0(JJLjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1
.end method

.method public final Z(JJ)Z
    .locals 2

    cmp-long v0, p3, p1

    if-gez v0, :cond_1

    iget-object v0, p0, LS/r;->J:LG/x;

    if-eqz v0, :cond_0

    iget-object v0, v0, LG/x;->p:Ljava/lang/String;

    const-string v1, "audio/opus"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-long/2addr p1, p3

    const-wide/32 p3, 0x13880

    cmp-long p1, p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a0()V
    .locals 8

    iget-object v0, p0, LS/r;->R:LS/k;

    if-nez v0, :cond_b

    iget-boolean v0, p0, LS/r;->k0:Z

    if-nez v0, :cond_b

    iget-object v0, p0, LS/r;->I:LG/x;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, v0, LG/x;->p:Ljava/lang/String;

    iget-object v2, p0, LS/r;->L:LQ/h;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, LS/r;->B0(LG/x;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v3, p0, LS/r;->k0:Z

    invoke-virtual {p0}, LS/r;->s0()V

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, LS/r;->D:LS/g;

    if-nez v0, :cond_1

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/opus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v4, v2, LS/g;->p:I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x20

    iput v0, v2, LS/g;->p:I

    :goto_0
    iput-boolean v4, p0, LS/r;->k0:Z

    return-void

    :cond_2
    iget-object v2, p0, LS/r;->L:LQ/h;

    invoke-virtual {p0, v2}, LS/r;->v0(LQ/h;)V

    iget-object v2, p0, LS/r;->K:LQ/h;

    const/4 v5, 0x4

    if-eqz v2, :cond_7

    iget-object v2, p0, LS/r;->N:Landroid/media/MediaCrypto;

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-static {v2}, LF1/i;->o(Z)V

    iget-object v2, p0, LS/r;->K:LQ/h;

    invoke-interface {v2}, LQ/h;->h()LM/a;

    move-result-object v6

    sget-object v7, LG/Q;->a:Ljava/util/HashSet;

    sget-boolean v7, LQ/t;->c:Z

    if-eqz v7, :cond_5

    instance-of v7, v6, LQ/t;

    if-eqz v7, :cond_5

    invoke-interface {v2}, LQ/h;->d()I

    move-result v7

    if-eq v7, v4, :cond_4

    if-eq v7, v5, :cond_5

    goto :goto_5

    :cond_4
    invoke-interface {v2}, LQ/h;->g()LQ/g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LS/r;->I:LG/x;

    iget v2, v0, LQ/g;->e:I

    invoke-virtual {p0, v0, v1, v3, v2}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object v0

    throw v0

    :cond_5
    if-nez v6, :cond_6

    invoke-interface {v2}, LQ/h;->g()LQ/g;

    move-result-object v2

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_6
    instance-of v2, v6, LQ/t;

    if-eqz v2, :cond_7

    check-cast v6, LQ/t;

    :try_start_0
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v7, v6, LQ/t;->a:Ljava/util/UUID;

    iget-object v6, v6, LQ/t;->b:[B

    invoke-direct {v2, v7, v6}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, LS/r;->N:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, LS/r;->I:LG/x;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v3, v2}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object v0

    throw v0

    :cond_7
    :goto_2
    :try_start_1
    iget-object v2, p0, LS/r;->K:LQ/h;

    if-eqz v2, :cond_9

    invoke-interface {v2}, LQ/h;->d()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_8

    iget-object v2, p0, LS/r;->K:LQ/h;

    invoke-interface {v2}, LQ/h;->d()I

    move-result v2

    if-ne v2, v5, :cond_9

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_6

    :cond_8
    :goto_3
    iget-object v2, p0, LS/r;->K:LQ/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v1}, LQ/h;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    move v4, v3

    :goto_4
    iget-object v1, p0, LS/r;->N:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v1, v4}, LS/r;->b0(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch LS/p; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_5
    iget-object v0, p0, LS/r;->N:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_b

    iget-object v1, p0, LS/r;->R:LS/k;

    if-nez v1, :cond_b

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, LS/r;->N:Landroid/media/MediaCrypto;

    return-void

    :goto_6
    const/16 v2, 0xfa1

    invoke-virtual {p0, v1, v0, v3, v2}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object v0

    throw v0

    :cond_b
    :goto_7
    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .locals 5

    const/16 v0, 0xb

    if-eq p1, v0, :cond_f

    const/16 v0, 0x15

    const/16 v1, 0x1d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_e

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lu1/b0;

    iget-object v0, p0, LS/r;->L0:Lu1/b0;

    invoke-virtual {v0, p2}, Lu1/b0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v0, 0x1f

    if-lt p1, v0, :cond_5

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, LS/r;->L0:Lu1/b0;

    invoke-virtual {v1}, Lu1/K;->h()Lu1/R0;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, LS/r;->R:LS/k;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, LS/k;->C(Ljava/util/ArrayList;)V

    :cond_4
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0}, LS/k;->x(Ljava/util/ArrayList;)V

    :cond_5
    iput-object p2, p0, LS/r;->L0:Lu1/b0;

    return-void

    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_e

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, LN/b;

    iput-object p2, p0, LS/r;->J0:LN/b;

    iget-object p1, p0, LS/r;->R:LS/k;

    if-eqz p1, :cond_e

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p2, LN/b;->a:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_9
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_a

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_a
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_b

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    :cond_b
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_c

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    instance-of v3, v1, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_7

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    :cond_d
    invoke-interface {p1, v0}, LS/k;->e(Landroid/os/Bundle;)V

    :cond_e
    :goto_2
    return-void

    :cond_f
    check-cast p2, LN/A;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, LS/r;->M:LN/A;

    return-void
.end method

.method public final b0(Landroid/media/MediaCrypto;Z)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v6, p2

    iget-object v9, v1, LS/r;->I:LG/x;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, LS/r;->W:Ljava/util/ArrayDeque;

    const/4 v10, 0x0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v1, v6}, LS/r;->Q(Z)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, LS/r;->W:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, LS/r;->W:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/o;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v10, v1, LS/r;->X:LS/p;
    :try_end_0
    .catch LS/u; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, LS/p;

    const v3, -0xc34e

    invoke-direct {v2, v9, v0, v6, v3}, LS/p;-><init>(LG/x;LS/u;ZI)V

    throw v2

    :cond_1
    :goto_2
    iget-object v0, v1, LS/r;->W:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v11, v1, LS/r;->W:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    iget-object v0, v1, LS/r;->R:LS/k;

    if-nez v0, :cond_7

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LS/o;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v9}, LS/r;->c0(LG/x;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v1, v7}, LS/r;->z0(LS/o;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_4
    return-void

    :cond_3
    move-object/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v7, v12}, LS/r;->Y(LS/o;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to initialize decoder: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaCodecRenderer"

    invoke-static {v2, v0, v4}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v2, LS/p;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Decoder init failed: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, LS/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v9, LG/x;->p:Ljava/lang/String;

    instance-of v0, v4, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_4

    move-object v0, v4

    check-cast v0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_5

    :cond_4
    move-object v8, v10

    :goto_5
    invoke-direct/range {v2 .. v8}, LS/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLS/o;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, LS/r;->d0(Ljava/lang/Exception;)V

    iget-object v0, v1, LS/r;->X:LS/p;

    if-nez v0, :cond_5

    iput-object v2, v1, LS/r;->X:LS/p;

    goto :goto_6

    :cond_5
    new-instance v13, LS/p;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    iget-object v2, v0, LS/p;->e:Ljava/lang/String;

    iget-boolean v3, v0, LS/p;->f:Z

    iget-object v4, v0, LS/p;->g:LS/o;

    iget-object v0, v0, LS/p;->h:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v19}, LS/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLS/o;Ljava/lang/String;)V

    iput-object v13, v1, LS/r;->X:LS/p;

    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v0, v1, LS/r;->X:LS/p;

    throw v0

    :cond_7
    iput-object v10, v1, LS/r;->W:Ljava/util/ArrayDeque;

    return-void

    :cond_8
    new-instance v0, LS/p;

    const v2, -0xc34f

    invoke-direct {v0, v9, v10, v6, v2}, LS/p;-><init>(LG/x;LS/u;ZI)V

    throw v0
.end method

.method public c0(LG/x;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract d0(Ljava/lang/Exception;)V
.end method

.method public abstract e0(JJLjava/lang/String;)V
.end method

.method public abstract f0(LN/b;)V
.end method

.method public abstract g0(Ljava/lang/String;)V
.end method

.method public h0(LN0/O;)LN/d;
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, LS/r;->y0:Z

    iget-object v1, p1, LN0/O;->g:Ljava/lang/Object;

    check-cast v1, LG/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, LG/x;->p:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    const-string v4, "video/av01"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_5

    const-string v5, "video/x-vnd.on2.vp9"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "video/dolby-vision"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, LJ/h;->a:[B

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    move-object v2, v6

    goto :goto_1

    :cond_0
    invoke-static {v1}, LJ/h;->c(LG/x;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0x10

    if-eq v2, v5, :cond_4

    const/16 v5, 0x20

    if-eq v2, v5, :cond_4

    const/16 v5, 0x100

    if-eq v2, v5, :cond_4

    const/16 v5, 0x200

    if-eq v2, v5, :cond_3

    const/16 v5, 0x400

    if-eq v2, v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v4

    goto :goto_1

    :cond_3
    const-string v2, "video/avc"

    goto :goto_1

    :cond_4
    const-string v2, "video/hevc"

    :goto_1
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, v1, LG/x;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, LG/x;->a()LG/w;

    move-result-object v1

    iput-object v6, v1, LG/w;->r:Ljava/util/List;

    new-instance v2, LG/x;

    invoke-direct {v2, v1}, LG/x;-><init>(LG/w;)V

    move-object v10, v2

    goto :goto_2

    :cond_6
    move-object v10, v1

    :goto_2
    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LQ/h;

    iget-object v1, p0, LS/r;->L:LQ/h;

    if-ne v1, p1, :cond_7

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    invoke-interface {p1, v6}, LQ/h;->b(LQ/k;)V

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1, v6}, LQ/h;->e(LQ/k;)V

    :cond_9
    :goto_3
    iput-object p1, p0, LS/r;->L:LQ/h;

    iput-object v10, p0, LS/r;->I:LG/x;

    iget-boolean p1, p0, LS/r;->k0:Z

    if-eqz p1, :cond_a

    iput-boolean v0, p0, LS/r;->m0:Z

    return-object v6

    :cond_a
    iget-object p1, p0, LS/r;->R:LS/k;

    if-nez p1, :cond_b

    iput-object v6, p0, LS/r;->W:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, LS/r;->a0()V

    return-object v6

    :cond_b
    iget-object v1, p0, LS/r;->Y:LS/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, p0, LS/r;->S:LG/x;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LS/r;->K:LQ/h;

    iget-object v4, p0, LS/r;->L:LQ/h;

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v2, v4, :cond_c

    goto/16 :goto_4

    :cond_c
    if-eqz v4, :cond_20

    if-nez v2, :cond_d

    goto/16 :goto_9

    :cond_d
    invoke-interface {v4}, LQ/h;->h()LM/a;

    move-result-object v7

    if-nez v7, :cond_e

    goto/16 :goto_9

    :cond_e
    invoke-interface {v2}, LQ/h;->h()LM/a;

    move-result-object v8

    if-eqz v8, :cond_20

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto/16 :goto_9

    :cond_f
    instance-of v7, v7, LQ/t;

    if-nez v7, :cond_10

    goto :goto_4

    :cond_10
    invoke-interface {v4}, LQ/h;->c()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v2}, LQ/h;->c()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_9

    :cond_11
    sget-object v7, LG/m;->f:Ljava/util/UUID;

    invoke-interface {v2}, LQ/h;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-interface {v4}, LQ/h;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_9

    :cond_12
    iget-boolean v2, v1, LS/o;->f:Z

    if-nez v2, :cond_14

    invoke-interface {v4}, LQ/h;->d()I

    move-result v2

    if-eq v2, v6, :cond_20

    invoke-interface {v4}, LQ/h;->d()I

    move-result v2

    if-eq v2, v5, :cond_13

    invoke-interface {v4}, LQ/h;->d()I

    move-result v2

    const/4 v7, 0x4

    if-ne v2, v7, :cond_14

    :cond_13
    iget-object v2, v10, LG/x;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, v2}, LQ/h;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto/16 :goto_9

    :cond_14
    :goto_4
    iget-object v2, p0, LS/r;->L:LQ/h;

    iget-object v4, p0, LS/r;->K:LQ/h;

    if-eq v2, v4, :cond_15

    move v2, v0

    goto :goto_5

    :cond_15
    move v2, v3

    :goto_5
    invoke-virtual {p0}, LS/r;->V()LS/q;

    move-result-object v4

    iget-boolean v4, v4, LS/q;->g:Z

    invoke-virtual {p0, v1, v9, v10, v4}, LS/r;->J(LS/o;LG/x;LG/x;Z)LN/d;

    move-result-object v4

    iget v7, v4, LN/d;->d:I

    if-eqz v7, :cond_1b

    if-eq v7, v0, :cond_18

    if-eq v7, v6, :cond_17

    if-ne v7, v5, :cond_16

    invoke-virtual {p0, v10}, LS/r;->D0(LG/x;)V

    iput-object v10, p0, LS/r;->S:LG/x;

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, LS/r;->L()Z

    move-result v0

    if-nez v0, :cond_1d

    :goto_6
    move v12, v6

    goto :goto_8

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_17
    invoke-virtual {p0, v10}, LS/r;->D0(LG/x;)V

    iput-boolean v0, p0, LS/r;->n0:Z

    iput v0, p0, LS/r;->o0:I

    iput-boolean v3, p0, LS/r;->a0:Z

    iput-object v10, p0, LS/r;->S:LG/x;

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, LS/r;->L()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_6

    :cond_18
    invoke-virtual {p0, v10}, LS/r;->D0(LG/x;)V

    iput-object v10, p0, LS/r;->S:LG/x;

    if-eqz v2, :cond_19

    invoke-virtual {p0}, LS/r;->L()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_6

    :cond_19
    iget-boolean v2, p0, LS/r;->r0:Z

    if-eqz v2, :cond_1d

    iput v0, p0, LS/r;->p0:I

    invoke-virtual {p0}, LS/r;->A0()Z

    move-result v2

    if-eqz v2, :cond_1a

    iput v5, p0, LS/r;->q0:I

    goto :goto_6

    :cond_1a
    iput v0, p0, LS/r;->q0:I

    goto :goto_7

    :cond_1b
    iget-boolean v2, p0, LS/r;->r0:Z

    if-eqz v2, :cond_1c

    iput v0, p0, LS/r;->p0:I

    iput v5, p0, LS/r;->q0:I

    goto :goto_7

    :cond_1c
    invoke-virtual {p0}, LS/r;->q0()V

    invoke-virtual {p0}, LS/r;->a0()V

    :cond_1d
    :goto_7
    move v12, v3

    :goto_8
    if-eqz v7, :cond_1f

    iget-object v0, p0, LS/r;->R:LS/k;

    if-ne v0, p1, :cond_1e

    iget p1, p0, LS/r;->q0:I

    if-ne p1, v5, :cond_1f

    :cond_1e
    new-instance v7, LN/d;

    iget-object v8, v1, LS/o;->a:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v12}, LN/d;-><init>(Ljava/lang/String;LG/x;LG/x;II)V

    return-object v7

    :cond_1f
    return-object v4

    :cond_20
    :goto_9
    iget-boolean p1, p0, LS/r;->r0:Z

    if-eqz p1, :cond_21

    iput v0, p0, LS/r;->p0:I

    iput v5, p0, LS/r;->q0:I

    goto :goto_a

    :cond_21
    invoke-virtual {p0}, LS/r;->q0()V

    invoke-virtual {p0}, LS/r;->a0()V

    :goto_a
    new-instance v7, LN/d;

    iget-object v8, v1, LS/o;->a:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v12, 0x80

    invoke-direct/range {v7 .. v12}, LN/d;-><init>(Ljava/lang/String;LG/x;LG/x;II)V

    return-object v7

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v1, v3, v0}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object p1

    throw p1
.end method

.method public final i(JJ)J
    .locals 6

    iget-boolean v5, p0, LS/r;->e0:Z

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, LS/r;->U(JJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract i0(LG/x;Landroid/media/MediaFormat;)V
.end method

.method public j0(J)V
    .locals 0

    return-void
.end method

.method public k0(J)V
    .locals 3

    iget-wide v0, p0, LS/r;->D0:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, LS/r;->D0:J

    :goto_0
    iget-object v0, p0, LS/r;->F:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS/q;

    iget-wide v1, v1, LS/q;->a:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, LS/r;->w0(LS/q;)V

    invoke-virtual {p0}, LS/r;->l0()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract l0()V
.end method

.method public m0(LM/f;)V
    .locals 0

    return-void
.end method

.method public final n0()V
    .locals 3

    iget v0, p0, LS/r;->q0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, LS/r;->x0:Z

    invoke-virtual {p0}, LS/r;->r0()V

    return-void

    :cond_0
    invoke-virtual {p0}, LS/r;->q0()V

    invoke-virtual {p0}, LS/r;->a0()V

    return-void

    :cond_1
    invoke-virtual {p0}, LS/r;->O()V

    invoke-virtual {p0}, LS/r;->E0()V

    return-void

    :cond_2
    invoke-virtual {p0}, LS/r;->O()V

    return-void
.end method

.method public abstract o0(JJLS/k;Ljava/nio/ByteBuffer;IIIJZZLG/x;)Z
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LS/r;->I:LG/x;

    sget-object v0, LS/q;->i:LS/q;

    invoke-virtual {p0, v0}, LS/r;->w0(LS/q;)V

    iget-object v0, p0, LS/r;->F:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-boolean v0, p0, LS/r;->k0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LS/r;->k0:Z

    invoke-virtual {p0}, LS/r;->s0()V

    return-void

    :cond_0
    invoke-virtual {p0}, LS/r;->P()Z

    return-void
.end method

.method public final p0(I)Z
    .locals 5

    iget-object v0, p0, LN/a;->g:LN0/O;

    invoke-virtual {v0}, LN0/O;->I()V

    iget-object v1, p0, LS/r;->A:LM/f;

    invoke-virtual {v1}, LM/f;->h()V

    const/4 v2, 0x4

    or-int/2addr p1, v2

    invoke-virtual {p0, v0, v1, p1}, LN/a;->y(LN0/O;LM/f;I)I

    move-result p1

    const/4 v3, -0x5

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    invoke-virtual {p0, v0}, LS/r;->h0(LN0/O;)LN/d;

    return v4

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {v1, v2}, LK/f;->f(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v4, p0, LS/r;->w0:Z

    invoke-virtual {p0}, LS/r;->n0()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final q0()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LS/r;->R:LS/k;

    if-eqz v1, :cond_0

    invoke-interface {v1}, LS/k;->a()V

    iget-object v1, p0, LS/r;->B0:LN/c;

    iget v2, v1, LN/c;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, LN/c;->b:I

    iget-object v1, p0, LS/r;->Y:LS/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, LS/o;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, LS/r;->g0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    iput-object v0, p0, LS/r;->R:LS/k;

    :try_start_1
    iget-object v1, p0, LS/r;->N:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    iput-object v0, p0, LS/r;->N:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, LS/r;->v0(LQ/h;)V

    invoke-virtual {p0}, LS/r;->u0()V

    return-void

    :goto_2
    iput-object v0, p0, LS/r;->N:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, LS/r;->v0(LQ/h;)V

    invoke-virtual {p0}, LS/r;->u0()V

    throw v1

    :goto_3
    iput-object v0, p0, LS/r;->R:LS/k;

    :try_start_2
    iget-object v2, p0, LS/r;->N:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_5

    :cond_2
    :goto_4
    iput-object v0, p0, LS/r;->N:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, LS/r;->v0(LQ/h;)V

    invoke-virtual {p0}, LS/r;->u0()V

    throw v1

    :goto_5
    iput-object v0, p0, LS/r;->N:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, LS/r;->v0(LQ/h;)V

    invoke-virtual {p0}, LS/r;->u0()V

    throw v1
.end method

.method public r(JZZ)V
    .locals 0

    iget-object p1, p0, LS/r;->F:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LS/q;

    iput-object p2, p0, LS/r;->C0:LS/q;

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    if-nez p4, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, LS/r;->w0:Z

    iput-boolean p1, p0, LS/r;->x0:Z

    iput-boolean p1, p0, LS/r;->z0:Z

    iget-boolean p2, p0, LS/r;->k0:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, LS/r;->s0()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LS/r;->P()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, LS/r;->a0()V

    :cond_3
    :goto_0
    iget-object p2, p0, LS/r;->C0:LS/q;

    iget-object p2, p2, LS/q;->d:LJ/Q;

    invoke-virtual {p2}, LJ/Q;->h()I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x1

    iput-boolean p2, p0, LS/r;->y0:Z

    :cond_4
    iget-object p2, p0, LS/r;->C0:LS/q;

    iget-object p2, p2, LS/q;->d:LJ/Q;

    invoke-virtual {p2}, LJ/Q;->b()V

    iget-object p2, p0, LS/r;->C0:LS/q;

    iput-boolean p1, p2, LS/q;->g:Z

    return-void
.end method

.method public abstract r0()V
.end method

.method public final s0()V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LS/r;->u0:J

    iput-wide v0, p0, LS/r;->v0:J

    invoke-virtual {p0}, LS/r;->V()LS/q;

    move-result-object v2

    iput-wide v0, v2, LS/q;->h:J

    iput-wide v0, p0, LS/r;->D0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LS/r;->m0:Z

    iget-object v1, p0, LS/r;->D:LS/g;

    invoke-virtual {v1}, LS/g;->h()V

    iget-object v1, p0, LS/r;->C:LM/f;

    invoke-virtual {v1}, LM/f;->h()V

    iput-boolean v0, p0, LS/r;->l0:Z

    iget-object v1, p0, LS/r;->G:LP/T;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LH/o;->a:Ljava/nio/ByteBuffer;

    iput-object v2, v1, LP/T;->a:Ljava/nio/ByteBuffer;

    iput v0, v1, LP/T;->c:I

    const/4 v0, 0x2

    iput v0, v1, LP/T;->b:I

    return-void
.end method

.method public t0()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, LS/r;->g0:I

    iget-object v1, p0, LS/r;->B:LM/f;

    const/4 v2, 0x0

    iput-object v2, v1, LM/f;->i:Ljava/nio/ByteBuffer;

    iput v0, p0, LS/r;->h0:I

    iput-object v2, p0, LS/r;->i0:Ljava/nio/ByteBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LS/r;->u0:J

    iput-wide v0, p0, LS/r;->v0:J

    invoke-virtual {p0}, LS/r;->V()LS/q;

    move-result-object v2

    iput-wide v0, v2, LS/q;->h:J

    iput-wide v0, p0, LS/r;->D0:J

    iput-wide v0, p0, LS/r;->f0:J

    const/4 v2, 0x0

    iput-boolean v2, p0, LS/r;->s0:Z

    iput-wide v0, p0, LS/r;->d0:J

    iput-boolean v2, p0, LS/r;->r0:Z

    iput-boolean v2, p0, LS/r;->a0:Z

    iput-boolean v2, p0, LS/r;->b0:Z

    iput-boolean v2, p0, LS/r;->j0:Z

    iput v2, p0, LS/r;->p0:I

    iput v2, p0, LS/r;->q0:I

    iget-boolean v3, p0, LS/r;->n0:Z

    iput v3, p0, LS/r;->o0:I

    iput-boolean v2, p0, LS/r;->G0:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LS/r;->H0:J

    iput-wide v0, p0, LS/r;->I0:J

    return-void
.end method

.method public final u0()V
    .locals 2

    invoke-virtual {p0}, LS/r;->t0()V

    const/4 v0, 0x0

    iput-object v0, p0, LS/r;->A0:LN/k;

    iput-object v0, p0, LS/r;->W:Ljava/util/ArrayDeque;

    iput-object v0, p0, LS/r;->Y:LS/o;

    iput-object v0, p0, LS/r;->S:LG/x;

    iput-object v0, p0, LS/r;->T:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, LS/r;->U:Z

    iput-boolean v0, p0, LS/r;->t0:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, LS/r;->V:F

    iput-boolean v0, p0, LS/r;->Z:Z

    iput-boolean v0, p0, LS/r;->c0:Z

    iput-boolean v0, p0, LS/r;->e0:Z

    iput-boolean v0, p0, LS/r;->n0:Z

    iput v0, p0, LS/r;->o0:I

    return-void
.end method

.method public final v0(LQ/h;)V
    .locals 2

    iget-object v0, p0, LS/r;->K:LQ/h;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, LQ/h;->b(LQ/k;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, LQ/h;->e(LQ/k;)V

    :cond_2
    :goto_0
    iput-object p1, p0, LS/r;->K:LQ/h;

    return-void
.end method

.method public w([LG/x;JJLU/A;)V
    .locals 12

    iget-wide v7, p0, LN/a;->v:J

    iget-object p1, p0, LN/a;->m:LU/a0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, LU/a0;->r()I

    move-result v9

    iget-object p1, p0, LS/r;->C0:LS/q;

    iget-wide v0, p1, LS/q;->c:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v10

    if-nez p1, :cond_0

    new-instance v0, LS/q;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v9}, LS/q;-><init>(JJJJI)V

    invoke-virtual {p0, v0}, LS/r;->w0(LS/q;)V

    iget-boolean p1, p0, LS/r;->F0:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LS/r;->l0()V

    return-void

    :cond_0
    iget-object p1, p0, LS/r;->F:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, LS/r;->u0:J

    cmp-long v2, v0, v10

    if-eqz v2, :cond_1

    iget-wide v2, p0, LS/r;->D0:J

    cmp-long v4, v2, v10

    if-eqz v4, :cond_3

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    :cond_1
    new-instance v0, LS/q;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v9}, LS/q;-><init>(JJJJI)V

    invoke-virtual {p0, v0}, LS/r;->w0(LS/q;)V

    iget-object p1, p0, LS/r;->C0:LS/q;

    iget-wide v0, p1, LS/q;->c:J

    cmp-long p1, v0, v10

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LS/r;->l0()V

    :cond_2
    return-void

    :cond_3
    new-instance v0, LS/q;

    iget-wide v1, p0, LS/r;->u0:J

    move-wide v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v9}, LS/q;-><init>(JJJJI)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final w0(LS/q;)V
    .locals 4

    iput-object p1, p0, LS/r;->C0:LS/q;

    iget-wide v0, p1, LS/q;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LS/r;->E0:Z

    invoke-virtual {p0, v0, v1}, LS/r;->j0(J)V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 3

    invoke-virtual {p0}, LS/r;->V()LS/q;

    move-result-object v0

    iget-wide v1, p0, LN/a;->v:J

    iput-wide v1, v0, LS/q;->e:J

    return-void
.end method

.method public x0(LM/f;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public y0()Z
    .locals 1

    iget-boolean v0, p0, LS/r;->r0:Z

    return v0
.end method

.method public z(JJ)V
    .locals 11

    iget-boolean v0, p0, LS/r;->z0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, LS/r;->z0:Z

    invoke-virtual {p0}, LS/r;->n0()V

    :cond_0
    iget-object v0, p0, LS/r;->A0:LN/k;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v2, p0, LS/r;->x0:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, LS/r;->r0()V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :catch_1
    move-exception p1

    goto/16 :goto_b

    :cond_1
    iget-object v2, p0, LS/r;->I:LG/x;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, LS/r;->p0(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LS/r;->a0()V

    iget-boolean v2, p0, LS/r;->k0:Z

    if-eqz v2, :cond_4

    const-string v2, "bypassRender"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, LS/r;->I(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_7

    :cond_4
    iget-object v2, p0, LS/r;->R:LS/k;

    if-eqz v2, :cond_b

    iget-object v2, p0, LN/a;->k:LJ/M;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, LS/r;->M(JJ)Z

    move-result v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_7

    iget-wide v7, p0, LS/r;->O:J

    cmp-long v4, v7, v5

    if-eqz v4, :cond_6

    iget-object v4, p0, LN/a;->k:LJ/M;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v2

    cmp-long v4, v9, v7

    if-gez v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v0

    :goto_3
    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    :goto_4
    invoke-virtual {p0}, LS/r;->N()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-wide p1, p0, LS/r;->O:J

    cmp-long p3, p1, v5

    if-eqz p3, :cond_9

    iget-object p3, p0, LN/a;->k:LJ/M;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p3, v2

    cmp-long p1, p3, p1

    if-gez p1, :cond_8

    goto :goto_5

    :cond_8
    move p1, v1

    goto :goto_6

    :cond_9
    :goto_5
    move p1, v0

    :goto_6
    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    :cond_b
    iget-object p3, p0, LS/r;->B0:LN/c;

    iget p4, p3, LN/c;->d:I

    iget-object v2, p0, LN/a;->m:LU/a0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, p0, LN/a;->o:J

    sub-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, LU/a0;->y(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, LN/c;->d:I

    invoke-virtual {p0, v0}, LS/r;->p0(I)Z

    :goto_7
    iget-object p1, p0, LS/r;->B0:LN/c;

    monitor-enter p1

    monitor-exit p1
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_8
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    array-length p4, p3

    if-lez p4, :cond_10

    aget-object p3, p3, v1

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "android.media.MediaCodec"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    :goto_9
    invoke-virtual {p0, p1}, LS/r;->d0(Ljava/lang/Exception;)V

    if-eqz p2, :cond_d

    move-object p2, p1

    check-cast p2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p2

    if-eqz p2, :cond_d

    move v1, v0

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {p0}, LS/r;->q0()V

    :cond_e
    iget-object p2, p0, LS/r;->Y:LS/o;

    invoke-virtual {p0, p1, p2}, LS/r;->K(Ljava/lang/IllegalStateException;LS/o;)LS/m;

    move-result-object p1

    iget p2, p1, LS/m;->e:I

    const/16 p3, 0x44d

    if-ne p2, p3, :cond_f

    const/16 p2, 0xfa6

    goto :goto_a

    :cond_f
    const/16 p2, 0xfa3

    :goto_a
    iget-object p3, p0, LS/r;->I:LG/x;

    invoke-virtual {p0, p1, p3, v1, p2}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object p1

    throw p1

    :cond_10
    throw p1

    :goto_b
    iget-object p2, p0, LS/r;->I:LG/x;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result p3

    invoke-static {p3}, LJ/W;->r(I)I

    move-result p3

    invoke-virtual {p0, p1, p2, v1, p3}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object p1

    throw p1

    :cond_11
    const/4 p1, 0x0

    iput-object p1, p0, LS/r;->A0:LN/k;

    throw v0
.end method

.method public z0(LS/o;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
