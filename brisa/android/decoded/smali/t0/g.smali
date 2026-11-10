.class public final Lt0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# static fields
.field public static final r0:[B

.field public static final s0:[B

.field public static final t0:[B

.field public static final u0:[B

.field public static final v0:Ljava/util/UUID;

.field public static final w0:Ljava/util/Map;


# instance fields
.field public A:Lt0/c;

.field public B:Lt0/f;

.field public C:Z

.field public D:I

.field public E:J

.field public final F:Landroid/util/SparseArray;

.field public G:Z

.field public H:J

.field public I:I

.field public J:J

.field public K:J

.field public L:I

.field public M:Z

.field public N:J

.field public O:J

.field public P:J

.field public Q:Z

.field public R:J

.field public S:Z

.field public T:J

.field public U:Z

.field public V:I

.field public W:J

.field public X:J

.field public Y:I

.field public Z:I

.field public final a:Lt0/b;

.field public a0:[I

.field public final b:Lt0/h;

.field public b0:I

.field public final c:Landroid/util/SparseArray;

.field public c0:I

.field public final d:Landroid/util/LongSparseArray;

.field public d0:I

.field public final e:Z

.field public e0:I

.field public final f:Z

.field public f0:Z

.field public final g:Z

.field public g0:J

.field public final h:Ly0/k;

.field public h0:I

.field public final i:LJ/D;

.field public i0:I

.field public final j:LJ/D;

.field public j0:I

.field public final k:LJ/D;

.field public k0:Z

.field public final l:LJ/D;

.field public l0:Z

.field public final m:LJ/D;

.field public m0:Z

.field public final n:LJ/D;

.field public n0:I

.field public final o:LJ/D;

.field public o0:B

.field public final p:LJ/D;

.field public p0:Z

.field public final q:LJ/D;

.field public q0:Lb0/p;

.field public final r:LJ/D;

.field public s:Ljava/nio/ByteBuffer;

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:J

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lt0/g;->r0:[B

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lt0/g;->s0:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lt0/g;->t0:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lt0/g;->u0:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lt0/g;->v0:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "htc_video_rotA-090"

    const/16 v2, 0x5a

    const/4 v3, 0x0

    const-string v4, "htc_video_rotA-000"

    invoke-static {v3, v0, v4, v2, v1}, LB1/e;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "htc_video_rotA-270"

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    const-string v4, "htc_video_rotA-180"

    invoke-static {v3, v0, v4, v2, v1}, LB1/e;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lt0/g;->w0:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>(Ly0/k;I)V
    .locals 6

    new-instance v0, Lt0/b;

    invoke-direct {v0}, Lt0/b;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lt0/g;->u:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v3, p0, Lt0/g;->v:J

    iput-wide v3, p0, Lt0/g;->w:J

    iput-wide v3, p0, Lt0/g;->x:J

    iput-wide v3, p0, Lt0/g;->H:J

    const/4 v5, -0x1

    iput v5, p0, Lt0/g;->I:I

    iput-wide v1, p0, Lt0/g;->J:J

    iput-wide v1, p0, Lt0/g;->K:J

    iput v5, p0, Lt0/g;->L:I

    iput-wide v1, p0, Lt0/g;->N:J

    iput-wide v1, p0, Lt0/g;->O:J

    iput-wide v1, p0, Lt0/g;->P:J

    iput-wide v1, p0, Lt0/g;->R:J

    iput-wide v3, p0, Lt0/g;->T:J

    iput-object v0, p0, Lt0/g;->a:Lt0/b;

    new-instance v1, La1/g;

    invoke-direct {v1, p0}, La1/g;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lt0/b;->d:La1/g;

    iput-object p1, p0, Lt0/g;->h:Ly0/k;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lt0/g;->F:Landroid/util/SparseArray;

    and-int/lit8 p1, p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lt0/g;->e:Z

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lt0/g;->g:Z

    const/4 p1, 0x4

    and-int/2addr p2, p1

    if-nez p2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lt0/g;->f:Z

    new-instance p2, Lt0/h;

    invoke-direct {p2}, Lt0/h;-><init>()V

    iput-object p2, p0, Lt0/g;->b:Lt0/h;

    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lt0/g;->d:Landroid/util/LongSparseArray;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lt0/g;->c:Landroid/util/SparseArray;

    new-instance p2, LJ/D;

    invoke-direct {p2, p1}, LJ/D;-><init>(I)V

    iput-object p2, p0, Lt0/g;->k:LJ/D;

    new-instance p2, LJ/D;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p2, v0}, LJ/D;-><init>([B)V

    iput-object p2, p0, Lt0/g;->l:LJ/D;

    new-instance p2, LJ/D;

    invoke-direct {p2, p1}, LJ/D;-><init>(I)V

    iput-object p2, p0, Lt0/g;->m:LJ/D;

    new-instance p2, LJ/D;

    sget-object v0, LK/t;->a:[B

    invoke-direct {p2, v0}, LJ/D;-><init>([B)V

    iput-object p2, p0, Lt0/g;->i:LJ/D;

    new-instance p2, LJ/D;

    invoke-direct {p2, p1}, LJ/D;-><init>(I)V

    iput-object p2, p0, Lt0/g;->j:LJ/D;

    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, Lt0/g;->n:LJ/D;

    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, Lt0/g;->o:LJ/D;

    new-instance p1, LJ/D;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, LJ/D;-><init>(I)V

    iput-object p1, p0, Lt0/g;->p:LJ/D;

    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, Lt0/g;->q:LJ/D;

    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, Lt0/g;->r:LJ/D;

    new-array p1, v1, [I

    iput-object p1, p0, Lt0/g;->a0:[I

    iput-boolean v1, p0, Lt0/g;->z:Z

    return-void
.end method

.method public static j(JJLjava/lang/String;)[B
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    const-wide v0, 0xd693a400L

    div-long v2, p0, v0

    long-to-int v2, v2

    int-to-long v3, v2

    mul-long/2addr v3, v0

    sub-long/2addr p0, v3

    const-wide/32 v0, 0x3938700

    div-long v3, p0, v0

    long-to-int v3, v3

    int-to-long v4, v3

    mul-long/2addr v4, v0

    sub-long/2addr p0, v4

    const-wide/32 v0, 0xf4240

    div-long v4, p0, v0

    long-to-int v4, v4

    int-to-long v5, v4

    mul-long/2addr v5, v0

    sub-long/2addr p0, v5

    div-long/2addr p0, p2

    long-to-int p0, p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p3, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, LJ/W;->a:Ljava/lang/String;

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 2

    iget-boolean v0, p0, Lt0/g;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, LH/c;

    iget-object v1, p0, Lt0/g;->h:Ly0/k;

    invoke-direct {v0, p1, v1}, LH/c;-><init>(Lb0/p;Ly0/k;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lt0/g;->q0:Lb0/p;

    return-void
.end method

.method public final c(JJ)V
    .locals 1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lt0/g;->T:J

    const/4 p3, 0x0

    iput p3, p0, Lt0/g;->V:I

    iget-object p4, p0, Lt0/g;->a:Lt0/b;

    iput p3, p4, Lt0/b;->e:I

    iget-object v0, p4, Lt0/b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object p4, p4, Lt0/b;->c:Lt0/h;

    iput p3, p4, Lt0/h;->b:I

    iput p3, p4, Lt0/h;->c:I

    iget-object p4, p0, Lt0/g;->b:Lt0/h;

    iput p3, p4, Lt0/h;->b:I

    iput p3, p4, Lt0/h;->c:I

    invoke-virtual {p0}, Lt0/g;->q()V

    iput-boolean p3, p0, Lt0/g;->G:Z

    iput-wide p1, p0, Lt0/g;->H:J

    const/4 p1, -0x1

    iput p1, p0, Lt0/g;->I:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lt0/g;->J:J

    iput-wide p1, p0, Lt0/g;->K:J

    iget-boolean p1, p0, Lt0/g;->C:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lt0/g;->F:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    :cond_0
    move p1, p3

    :goto_0
    iget-object p2, p0, Lt0/g;->c:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p4

    if-ge p1, p4, :cond_2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt0/f;

    iget-object p2, p2, Lt0/f;->W:Lb0/H;

    if-eqz p2, :cond_1

    iput-boolean p3, p2, Lb0/H;->b:Z

    iput p3, p2, Lb0/H;->c:I

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 16

    move-object/from16 v0, p1

    new-instance v1, LJ/u;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, LJ/u;-><init>(CI)V

    iget-object v2, v1, LJ/u;->g:Ljava/lang/Object;

    check-cast v2, LJ/D;

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    const-wide/16 v6, 0x400

    if-eqz v5, :cond_1

    cmp-long v8, v3, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, v3

    :cond_1
    :goto_0
    long-to-int v6, v6

    iget-object v7, v2, LJ/D;->a:[B

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-interface {v0, v8, v7, v9}, Lb0/o;->l(I[BI)V

    invoke-virtual {v2}, LJ/D;->C()J

    move-result-wide v10

    iput v9, v1, LJ/u;->f:I

    :goto_1
    const-wide/32 v12, 0x1a45dfa3

    cmp-long v7, v10, v12

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    iget v7, v1, LJ/u;->f:I

    add-int/2addr v7, v9

    iput v7, v1, LJ/u;->f:I

    if-ne v7, v6, :cond_2

    goto :goto_3

    :cond_2
    iget-object v7, v2, LJ/D;->a:[B

    invoke-interface {v0, v8, v7, v9}, Lb0/o;->l(I[BI)V

    const/16 v7, 0x8

    shl-long v9, v10, v7

    const-wide/16 v11, -0x100

    and-long/2addr v9, v11

    iget-object v7, v2, LJ/D;->a:[B

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-long v11, v7

    or-long v10, v9, v11

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, LJ/u;->h(Lb0/o;)J

    move-result-wide v6

    iget v2, v1, LJ/u;->f:I

    int-to-long v10, v2

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v2, v6, v12

    if-eqz v2, :cond_8

    if-eqz v5, :cond_4

    add-long v14, v10, v6

    cmp-long v2, v14, v3

    if-ltz v2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    iget v2, v1, LJ/u;->f:I

    int-to-long v2, v2

    add-long v4, v10, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    invoke-virtual {v1, v0}, LJ/u;->h(Lb0/o;)J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v0}, LJ/u;->h(Lb0/o;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_8

    const-wide/32 v14, 0x7fffffff

    cmp-long v5, v2, v14

    if-lez v5, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_4

    long-to-int v2, v2

    invoke-interface {v0, v2}, Lb0/o;->z(I)V

    iget v3, v1, LJ/u;->f:I

    add-int/2addr v3, v2

    iput v3, v1, LJ/u;->f:I

    goto :goto_2

    :cond_7
    if-nez v2, :cond_8

    return v9

    :cond_8
    :goto_3
    return v8
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 42

    move-object/from16 v0, p0

    const/4 v3, 0x0

    iput-boolean v3, v0, Lt0/g;->U:Z

    const/4 v5, 0x1

    :goto_0
    const/4 v6, -0x1

    if-eqz v5, :cond_c2

    iget-boolean v7, v0, Lt0/g;->U:Z

    if-nez v7, :cond_c2

    iget-object v7, v0, Lt0/g;->a:Lt0/b;

    iget-object v8, v7, Lt0/b;->c:Lt0/h;

    iget-object v9, v7, Lt0/b;->b:Ljava/util/ArrayDeque;

    iget-object v5, v7, Lt0/b;->d:La1/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt0/a;

    const/4 v15, 0x2

    const-wide/16 v16, 0x0

    const v14, 0x1549a966

    const-wide/16 v18, -0x1

    const/16 v20, 0x8

    const v13, 0x1654ae6b

    const v12, 0x1c53bb6b

    const/4 v10, 0x0

    if-eqz v5, :cond_a9

    invoke-interface/range {p1 .. p1}, Lb0/o;->getPosition()J

    move-result-wide v23

    iget-wide v3, v5, Lt0/a;->b:J

    cmp-long v3, v23, v3

    if-ltz v3, :cond_a9

    iget-object v3, v7, Lt0/b;->d:La1/g;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt0/a;

    iget v4, v4, Lt0/a;->a:I

    iget-object v3, v3, La1/g;->e:Ljava/lang/Object;

    check-cast v3, Lt0/g;

    iget-object v5, v3, Lt0/g;->F:Landroid/util/SparseArray;

    iget-object v7, v3, Lt0/g;->c:Landroid/util/SparseArray;

    iget-object v8, v3, Lt0/g;->q0:Lb0/p;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v8, 0x80

    if-eq v4, v8, :cond_a7

    const/16 v8, 0xa0

    const-string v9, "A_OPUS"

    if-eq v4, v8, :cond_a1

    const/16 v8, 0xae

    const-string v11, "video/webm"

    if-eq v4, v8, :cond_25

    const/16 v8, 0x45b9

    if-eq v4, v8, :cond_24

    const/16 v8, 0x4dbb

    if-eq v4, v8, :cond_21

    const/16 v8, 0x6240

    if-eq v4, v8, :cond_1f

    const/16 v8, 0x6d80

    if-eq v4, v8, :cond_1d

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v4, v14, :cond_1b

    if-eq v4, v13, :cond_b

    if-eq v4, v12, :cond_4

    const/16 v7, 0xb6

    if-eq v4, v7, :cond_2

    const/16 v7, 0xb7

    if-eq v4, v7, :cond_0

    goto/16 :goto_40

    :cond_0
    iget-boolean v7, v3, Lt0/g;->C:Z

    if-nez v7, :cond_a8

    invoke-virtual {v3, v4}, Lt0/g;->g(I)V

    iget-wide v10, v3, Lt0/g;->H:J

    cmp-long v4, v10, v8

    if-eqz v4, :cond_a8

    iget v4, v3, Lt0/g;->I:I

    if-eq v4, v6, :cond_a8

    iget-wide v6, v3, Lt0/g;->J:J

    cmp-long v6, v6, v18

    if-eqz v6, :cond_a8

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v6, v3, Lt0/g;->I:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    new-instance v5, Lt0/d;

    iget-wide v6, v3, Lt0/g;->H:J

    iget-wide v8, v3, Lt0/g;->u:J

    iget-wide v10, v3, Lt0/g;->J:J

    add-long/2addr v8, v10

    iget-wide v10, v3, Lt0/g;->K:J

    invoke-direct/range {v5 .. v11}, Lt0/d;-><init>(JJJ)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_40

    :cond_2
    iget-object v4, v3, Lt0/g;->A:Lt0/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v4, Lt0/c;->a:J

    cmp-long v7, v5, v16

    if-eqz v7, :cond_3

    iget-object v7, v3, Lt0/g;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3
    iput-object v10, v3, Lt0/g;->A:Lt0/c;

    goto/16 :goto_40

    :cond_4
    iget-boolean v4, v3, Lt0/g;->C:Z

    if-nez v4, :cond_a8

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_8

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    iget-wide v10, v3, Lt0/g;->x:J

    cmp-long v4, v10, v8

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    new-instance v27, Lt0/e;

    iget-wide v8, v3, Lt0/g;->x:J

    iget v4, v3, Lt0/g;->L:I

    iget-wide v10, v3, Lt0/g;->u:J

    iget-wide v12, v3, Lt0/g;->t:J

    move/from16 v31, v4

    move-object/from16 v28, v5

    move-wide/from16 v29, v8

    move-wide/from16 v32, v10

    move-wide/from16 v34, v12

    invoke-direct/range {v27 .. v35}, Lt0/e;-><init>(Landroid/util/SparseArray;JIJJ)V

    move-object/from16 v4, v27

    iget-object v5, v3, Lt0/g;->q0:Lb0/p;

    invoke-interface {v5, v4}, Lb0/p;->c(Lb0/z;)V

    :goto_4
    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v28, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    iget-object v4, v3, Lt0/g;->q0:Lb0/p;

    new-instance v5, Lb0/s;

    iget-wide v8, v3, Lt0/g;->x:J

    invoke-direct {v5, v8, v9}, Lb0/s;-><init>(J)V

    invoke-interface {v4, v5}, Lb0/p;->c(Lb0/z;)V

    goto :goto_4

    :goto_6
    iput-boolean v4, v3, Lt0/g;->C:Z

    const/4 v4, 0x0

    iput-boolean v4, v3, Lt0/g;->G:Z

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt0/f;

    iget-boolean v6, v5, Lt0/f;->X:Z

    if-nez v6, :cond_9

    invoke-virtual {v3, v5}, Lt0/g;->s(Lt0/f;)V

    iget-object v6, v5, Lt0/f;->d0:Lb0/G;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lt0/f;->d0:Lb0/G;

    iget-object v5, v5, Lt0/f;->e0:LG/x;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v5}, Lb0/G;->b(LG/x;)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {v3}, Lt0/g;->l()V

    goto/16 :goto_40

    :cond_b
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_1a

    iget-boolean v4, v3, Lt0/g;->e:Z

    if-eqz v4, :cond_d

    iget-wide v4, v3, Lt0/g;->N:J

    cmp-long v4, v4, v18

    if-eqz v4, :cond_d

    iget-boolean v4, v3, Lt0/g;->C:Z

    if-eqz v4, :cond_c

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v4, 0x1

    :goto_9
    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v5, v12, :cond_13

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lt0/f;

    iget v13, v12, Lt0/f;->f:I

    if-ne v13, v15, :cond_f

    iget-boolean v13, v12, Lt0/f;->b0:Z

    if-eqz v13, :cond_e

    iget v8, v12, Lt0/f;->d:I

    :cond_e
    if-ne v9, v6, :cond_11

    iget v9, v12, Lt0/f;->d:I

    goto :goto_b

    :cond_f
    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    iget-boolean v13, v12, Lt0/f;->b0:Z

    if-eqz v13, :cond_10

    iget v10, v12, Lt0/f;->d:I

    :cond_10
    if-ne v11, v6, :cond_11

    iget v11, v12, Lt0/f;->d:I

    :cond_11
    :goto_b
    if-eqz v4, :cond_12

    iget-boolean v13, v12, Lt0/f;->X:Z

    if-nez v13, :cond_12

    invoke-virtual {v3, v12}, Lt0/g;->s(Lt0/f;)V

    iget-object v13, v12, Lt0/f;->d0:Lb0/G;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v12, Lt0/f;->d0:Lb0/G;

    iget-object v12, v12, Lt0/f;->e0:LG/x;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v13, v12}, Lb0/G;->b(LG/x;)V

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_13
    if-eq v8, v6, :cond_14

    iput v8, v3, Lt0/g;->L:I

    :goto_c
    const/4 v14, 0x1

    goto :goto_d

    :cond_14
    if-eq v9, v6, :cond_15

    iput v9, v3, Lt0/g;->L:I

    goto :goto_c

    :cond_15
    if-eq v10, v6, :cond_16

    iput v10, v3, Lt0/g;->L:I

    goto :goto_c

    :cond_16
    if-eq v11, v6, :cond_17

    iput v11, v3, Lt0/g;->L:I

    goto :goto_c

    :cond_17
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_18

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt0/f;

    iget v6, v6, Lt0/f;->d:I

    :cond_18
    iput v6, v3, Lt0/g;->L:I

    goto :goto_c

    :goto_d
    iput-boolean v14, v3, Lt0/g;->S:Z

    iget-wide v5, v3, Lt0/g;->R:J

    cmp-long v5, v5, v18

    if-eqz v5, :cond_19

    invoke-virtual {v3}, Lt0/g;->m()V

    :cond_19
    if-eqz v4, :cond_a8

    invoke-virtual {v3}, Lt0/g;->l()V

    goto/16 :goto_40

    :cond_1a
    const-string v1, "No valid tracks were found"

    invoke-static {v10, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_1b
    iget-wide v4, v3, Lt0/g;->v:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1c

    const-wide/32 v4, 0xf4240

    iput-wide v4, v3, Lt0/g;->v:J

    :cond_1c
    iget-wide v4, v3, Lt0/g;->w:J

    cmp-long v6, v4, v8

    if-eqz v6, :cond_a8

    invoke-virtual {v3, v4, v5}, Lt0/g;->r(J)J

    move-result-wide v4

    iput-wide v4, v3, Lt0/g;->x:J

    goto/16 :goto_40

    :cond_1d
    invoke-virtual {v3, v4}, Lt0/g;->h(I)V

    iget-object v3, v3, Lt0/g;->B:Lt0/f;

    iget-boolean v4, v3, Lt0/f;->j:Z

    if-eqz v4, :cond_a8

    iget-object v3, v3, Lt0/f;->k:[B

    if-nez v3, :cond_1e

    goto/16 :goto_40

    :cond_1e
    const-string v1, "Combining encryption and compression is not supported"

    invoke-static {v10, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_1f
    invoke-virtual {v3, v4}, Lt0/g;->h(I)V

    iget-object v3, v3, Lt0/g;->B:Lt0/f;

    iget-boolean v4, v3, Lt0/f;->j:Z

    if-eqz v4, :cond_a8

    iget-object v4, v3, Lt0/f;->l:Lb0/F;

    if-eqz v4, :cond_20

    new-instance v5, LG/s;

    new-instance v6, LG/r;

    sget-object v7, LG/m;->b:Ljava/util/UUID;

    iget-object v4, v4, Lb0/F;->b:[B

    invoke-direct {v6, v7, v10, v11, v4}, LG/r;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    filled-new-array {v6}, [LG/r;

    move-result-object v4

    const/4 v14, 0x1

    invoke-direct {v5, v10, v14, v4}, LG/s;-><init>(Ljava/lang/String;Z[LG/r;)V

    iput-object v5, v3, Lt0/f;->n:LG/s;

    goto/16 :goto_40

    :cond_20
    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v10, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_21
    iget v4, v3, Lt0/g;->D:I

    if-eq v4, v6, :cond_23

    iget-wide v5, v3, Lt0/g;->E:J

    cmp-long v7, v5, v18

    if-eqz v7, :cond_23

    if-ne v4, v12, :cond_22

    iput-wide v5, v3, Lt0/g;->N:J

    goto/16 :goto_40

    :cond_22
    if-ne v4, v13, :cond_a8

    iput-wide v5, v3, Lt0/g;->P:J

    goto/16 :goto_40

    :cond_23
    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-static {v10, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_24
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_a8

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt0/f;

    invoke-virtual {v3, v5}, Lt0/g;->s(Lt0/f;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_25
    iget-object v4, v3, Lt0/g;->B:Lt0/f;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lt0/f;->c:Ljava/lang/String;

    if-eqz v5, :cond_a0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v13, "A_MPEG/L3"

    const-string v14, "A_MPEG/L2"

    const-string v12, "A_VORBIS"

    const-string v6, "A_TRUEHD"

    const-string v15, "A_MS/ACM"

    const-string v10, "V_MPEG4/ISO/SP"

    move/from16 v17, v8

    const-string v8, "V_MPEG4/ISO/AP"

    move-object/from16 v29, v11

    const/16 v19, 0x12

    const/16 v30, 0x14

    sparse-switch v17, :sswitch_data_0

    :goto_f
    const/4 v11, -0x1

    goto/16 :goto_10

    :sswitch_0
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_26

    goto :goto_f

    :cond_26
    const/16 v17, 0x22

    move/from16 v11, v17

    goto/16 :goto_10

    :sswitch_1
    const-string v11, "A_FLAC"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_27

    goto :goto_f

    :cond_27
    const/16 v11, 0x21

    goto/16 :goto_10

    :sswitch_2
    const-string v11, "A_EAC3"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_28

    goto :goto_f

    :cond_28
    const/16 v11, 0x20

    goto/16 :goto_10

    :sswitch_3
    const-string v11, "A_ALAC"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_29

    goto :goto_f

    :cond_29
    const/16 v11, 0x1f

    goto/16 :goto_10

    :sswitch_4
    const-string v11, "V_MPEG2"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2a

    goto :goto_f

    :cond_2a
    const/16 v11, 0x1e

    goto/16 :goto_10

    :sswitch_5
    const-string v11, "S_TEXT/UTF8"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b

    goto :goto_f

    :cond_2b
    const/16 v11, 0x1d

    goto/16 :goto_10

    :sswitch_6
    const-string v11, "S_TEXT/WEBVTT"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2c

    goto :goto_f

    :cond_2c
    const/16 v11, 0x1c

    goto/16 :goto_10

    :sswitch_7
    const-string v11, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2d

    goto :goto_f

    :cond_2d
    const/16 v11, 0x1b

    goto/16 :goto_10

    :sswitch_8
    const-string v11, "S_TEXT/SSA"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2e

    goto :goto_f

    :cond_2e
    const/16 v11, 0x1a

    goto/16 :goto_10

    :sswitch_9
    const-string v11, "S_TEXT/ASS"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2f

    goto/16 :goto_f

    :cond_2f
    const/16 v11, 0x19

    goto/16 :goto_10

    :sswitch_a
    const-string v11, "A_PCM/INT/LIT"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_30

    goto/16 :goto_f

    :cond_30
    const/16 v11, 0x18

    goto/16 :goto_10

    :sswitch_b
    const-string v11, "A_PCM/INT/BIG"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_31

    goto/16 :goto_f

    :cond_31
    const/16 v11, 0x17

    goto/16 :goto_10

    :sswitch_c
    const-string v11, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_32

    goto/16 :goto_f

    :cond_32
    const/16 v11, 0x16

    goto/16 :goto_10

    :sswitch_d
    const-string v11, "A_DTS/EXPRESS"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_33

    goto/16 :goto_f

    :cond_33
    const/16 v11, 0x15

    goto/16 :goto_10

    :sswitch_e
    const-string v11, "V_THEORA"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_34

    goto/16 :goto_f

    :cond_34
    move/from16 v11, v30

    goto/16 :goto_10

    :sswitch_f
    const-string v11, "S_HDMV/PGS"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_35

    goto/16 :goto_f

    :cond_35
    const/16 v11, 0x13

    goto/16 :goto_10

    :sswitch_10
    const-string v11, "V_VP9"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_36

    goto/16 :goto_f

    :cond_36
    move/from16 v11, v19

    goto/16 :goto_10

    :sswitch_11
    const-string v11, "V_VP8"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_37

    goto/16 :goto_f

    :cond_37
    const/16 v11, 0x11

    goto/16 :goto_10

    :sswitch_12
    const-string v11, "V_AV1"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_38

    goto/16 :goto_f

    :cond_38
    const/16 v11, 0x10

    goto/16 :goto_10

    :sswitch_13
    const-string v11, "A_DTS"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_39

    goto/16 :goto_f

    :cond_39
    const/16 v11, 0xf

    goto/16 :goto_10

    :sswitch_14
    const-string v11, "A_AC3"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3a

    goto/16 :goto_f

    :cond_3a
    const/16 v11, 0xe

    goto/16 :goto_10

    :sswitch_15
    const-string v11, "A_AAC"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3b

    goto/16 :goto_f

    :cond_3b
    const/16 v11, 0xd

    goto/16 :goto_10

    :sswitch_16
    const-string v11, "A_DTS/LOSSLESS"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3c

    goto/16 :goto_f

    :cond_3c
    const/16 v11, 0xc

    goto/16 :goto_10

    :sswitch_17
    const-string v11, "S_VOBSUB"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3d

    goto/16 :goto_f

    :cond_3d
    const/16 v11, 0xb

    goto/16 :goto_10

    :sswitch_18
    const-string v11, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3e

    goto/16 :goto_f

    :cond_3e
    const/16 v11, 0xa

    goto/16 :goto_10

    :sswitch_19
    const-string v11, "V_MPEG4/ISO/ASP"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3f

    goto/16 :goto_f

    :cond_3f
    const/16 v11, 0x9

    goto/16 :goto_10

    :sswitch_1a
    const-string v11, "S_DVBSUB"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_40

    goto/16 :goto_f

    :cond_40
    move/from16 v11, v20

    goto :goto_10

    :sswitch_1b
    const-string v11, "V_MS/VFW/FOURCC"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_41

    goto/16 :goto_f

    :cond_41
    const/4 v11, 0x7

    goto :goto_10

    :sswitch_1c
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_42

    goto/16 :goto_f

    :cond_42
    const/4 v11, 0x6

    goto :goto_10

    :sswitch_1d
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_43

    goto/16 :goto_f

    :cond_43
    const/4 v11, 0x5

    goto :goto_10

    :sswitch_1e
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_44

    goto/16 :goto_f

    :cond_44
    const/4 v11, 0x4

    goto :goto_10

    :sswitch_1f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_45

    goto/16 :goto_f

    :cond_45
    const/4 v11, 0x3

    goto :goto_10

    :sswitch_20
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_46

    goto/16 :goto_f

    :cond_46
    const/4 v11, 0x2

    goto :goto_10

    :sswitch_21
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_47

    goto/16 :goto_f

    :cond_47
    const/4 v11, 0x1

    goto :goto_10

    :sswitch_22
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_48

    goto/16 :goto_f

    :cond_48
    const/4 v11, 0x0

    :goto_10
    packed-switch v11, :pswitch_data_0

    :goto_11
    const/4 v2, 0x0

    goto/16 :goto_3d

    :pswitch_0
    iget v11, v4, Lt0/f;->d:I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v32

    sparse-switch v32, :sswitch_data_1

    :goto_12
    const/4 v6, -0x1

    goto/16 :goto_13

    :sswitch_23
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    goto :goto_12

    :cond_49
    const/16 v6, 0x22

    goto/16 :goto_13

    :sswitch_24
    const-string v6, "A_FLAC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4a

    goto :goto_12

    :cond_4a
    const/16 v6, 0x21

    goto/16 :goto_13

    :sswitch_25
    const-string v6, "A_EAC3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b

    goto :goto_12

    :cond_4b
    const/16 v6, 0x20

    goto/16 :goto_13

    :sswitch_26
    const-string v6, "A_ALAC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    goto :goto_12

    :cond_4c
    const/16 v6, 0x1f

    goto/16 :goto_13

    :sswitch_27
    const-string v6, "V_MPEG2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d

    goto :goto_12

    :cond_4d
    const/16 v6, 0x1e

    goto/16 :goto_13

    :sswitch_28
    const-string v6, "S_TEXT/UTF8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    goto :goto_12

    :cond_4e
    const/16 v6, 0x1d

    goto/16 :goto_13

    :sswitch_29
    const-string v6, "S_TEXT/WEBVTT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_12

    :cond_4f
    const/16 v6, 0x1c

    goto/16 :goto_13

    :sswitch_2a
    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    goto :goto_12

    :cond_50
    const/16 v6, 0x1b

    goto/16 :goto_13

    :sswitch_2b
    const-string v6, "S_TEXT/SSA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    goto :goto_12

    :cond_51
    const/16 v6, 0x1a

    goto/16 :goto_13

    :sswitch_2c
    const-string v6, "S_TEXT/ASS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    goto :goto_12

    :cond_52
    const/16 v6, 0x19

    goto/16 :goto_13

    :sswitch_2d
    const-string v6, "A_PCM/INT/LIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    goto/16 :goto_12

    :cond_53
    const/16 v6, 0x18

    goto/16 :goto_13

    :sswitch_2e
    const-string v6, "A_PCM/INT/BIG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    goto/16 :goto_12

    :cond_54
    const/16 v6, 0x17

    goto/16 :goto_13

    :sswitch_2f
    const-string v6, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    goto/16 :goto_12

    :cond_55
    const/16 v6, 0x16

    goto/16 :goto_13

    :sswitch_30
    const-string v6, "A_DTS/EXPRESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    goto/16 :goto_12

    :cond_56
    const/16 v6, 0x15

    goto/16 :goto_13

    :sswitch_31
    const-string v6, "V_THEORA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    goto/16 :goto_12

    :cond_57
    move/from16 v6, v30

    goto/16 :goto_13

    :sswitch_32
    const-string v6, "S_HDMV/PGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    goto/16 :goto_12

    :cond_58
    const/16 v6, 0x13

    goto/16 :goto_13

    :sswitch_33
    const-string v6, "V_VP9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_59

    goto/16 :goto_12

    :cond_59
    move/from16 v6, v19

    goto/16 :goto_13

    :sswitch_34
    const-string v6, "V_VP8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5a

    goto/16 :goto_12

    :cond_5a
    const/16 v6, 0x11

    goto/16 :goto_13

    :sswitch_35
    const-string v6, "V_AV1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    goto/16 :goto_12

    :cond_5b
    const/16 v6, 0x10

    goto/16 :goto_13

    :sswitch_36
    const-string v6, "A_DTS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c

    goto/16 :goto_12

    :cond_5c
    const/16 v6, 0xf

    goto/16 :goto_13

    :sswitch_37
    const-string v6, "A_AC3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    goto/16 :goto_12

    :cond_5d
    const/16 v6, 0xe

    goto/16 :goto_13

    :sswitch_38
    const-string v6, "A_AAC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5e

    goto/16 :goto_12

    :cond_5e
    const/16 v6, 0xd

    goto/16 :goto_13

    :sswitch_39
    const-string v6, "A_DTS/LOSSLESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5f

    goto/16 :goto_12

    :cond_5f
    const/16 v6, 0xc

    goto/16 :goto_13

    :sswitch_3a
    const-string v6, "S_VOBSUB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60

    goto/16 :goto_12

    :cond_60
    const/16 v6, 0xb

    goto/16 :goto_13

    :sswitch_3b
    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_61

    goto/16 :goto_12

    :cond_61
    const/16 v6, 0xa

    goto/16 :goto_13

    :sswitch_3c
    const-string v6, "V_MPEG4/ISO/ASP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_62

    goto/16 :goto_12

    :cond_62
    const/16 v6, 0x9

    goto/16 :goto_13

    :sswitch_3d
    const-string v6, "S_DVBSUB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    goto/16 :goto_12

    :cond_63
    move/from16 v6, v20

    goto :goto_13

    :sswitch_3e
    const-string v6, "V_MS/VFW/FOURCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_64

    goto/16 :goto_12

    :cond_64
    const/4 v6, 0x7

    goto :goto_13

    :sswitch_3f
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    goto/16 :goto_12

    :cond_65
    const/4 v6, 0x6

    goto :goto_13

    :sswitch_40
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    goto/16 :goto_12

    :cond_66
    const/4 v6, 0x5

    goto :goto_13

    :sswitch_41
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_67

    goto/16 :goto_12

    :cond_67
    const/4 v6, 0x4

    goto :goto_13

    :sswitch_42
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    goto/16 :goto_12

    :cond_68
    const/4 v6, 0x3

    goto :goto_13

    :sswitch_43
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    goto/16 :goto_12

    :cond_69
    const/4 v6, 0x2

    goto :goto_13

    :sswitch_44
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    goto/16 :goto_12

    :cond_6a
    const/4 v6, 0x1

    goto :goto_13

    :sswitch_45
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6b

    goto/16 :goto_12

    :cond_6b
    const/4 v6, 0x0

    :goto_13
    const-string v9, "application/dvbsubs"

    const-string v10, "application/vobsub"

    const-string v12, "application/pgs"

    const-string v13, "video/x-unknown"

    const-string v14, "text/x-ssa"

    const-string v15, "text/vtt"

    const-string v8, "application/x-subrip"

    move/from16 v19, v6

    const-string v6, ". Setting mimeType to audio/x-unknown"

    const-string v32, "audio/raw"

    const-string v33, "audio/x-unknown"

    move/from16 v34, v11

    const-string v11, "MatroskaExtractor"

    packed-switch v19, :pswitch_data_1

    const-string v1, "Unrecognized codec identifier."

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :pswitch_1
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, v4, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lt0/f;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-wide v0, v4, Lt0/f;->U:J

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, v4, Lt0/f;->V:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v13, "audio/opus"

    const/16 v0, 0x1680

    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v13

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/4 v11, -0x1

    const/16 v17, 0x0

    move v13, v0

    move-object v7, v5

    const/4 v0, -0x1

    const/4 v5, -0x1

    goto/16 :goto_2c

    :pswitch_2
    invoke-virtual {v4, v5}, Lt0/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, v4, Lt0/f;->R:I

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v2}, LJ/W;->v(ILjava/nio/ByteOrder;)I

    move-result v1

    const-string v13, "audio/flac"

    if-nez v1, :cond_6c

    :goto_14
    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v13

    :goto_15
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v11, -0x1

    const/4 v13, -0x1

    const/16 v17, 0x0

    :goto_16
    move-object v7, v0

    const/4 v0, -0x1

    goto/16 :goto_2c

    :cond_6c
    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v13

    const/4 v2, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v11, -0x1

    const/4 v13, -0x1

    const/16 v17, 0x0

    move-object v7, v0

    move v0, v1

    :goto_17
    const/4 v1, -0x1

    goto/16 :goto_2c

    :pswitch_3
    const-string v13, "audio/eac3"

    :goto_18
    :pswitch_4
    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v13

    :goto_19
    const/4 v0, -0x1

    :goto_1a
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v11, -0x1

    const/4 v13, -0x1

    :goto_1b
    const/16 v17, 0x0

    goto/16 :goto_2c

    :pswitch_5
    invoke-virtual {v4, v5}, Lt0/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, v4, Lt0/f;->R:I

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v2}, LJ/W;->v(ILjava/nio/ByteOrder;)I

    move-result v1

    const-string v13, "audio/alac"

    if-nez v1, :cond_6c

    goto :goto_14

    :pswitch_6
    const-string v13, "video/mpeg2"

    goto :goto_18

    :pswitch_7
    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v8

    goto :goto_19

    :pswitch_8
    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v15

    goto :goto_19

    :pswitch_9
    new-instance v0, LJ/D;

    iget-object v1, v4, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lt0/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, LJ/D;-><init>([B)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v5, v2}, Lb0/w;->a(LJ/D;ZLB0/b;)Lb0/w;

    move-result-object v0

    iget-object v1, v0, Lb0/w;->a:Ljava/util/List;

    iget v2, v0, Lb0/w;->b:I

    iput v2, v4, Lt0/f;->f0:I

    iget-object v2, v0, Lb0/w;->n:Ljava/lang/String;

    iget v5, v0, Lb0/w;->h:I

    iget v6, v0, Lb0/w;->j:I

    iget v11, v0, Lb0/w;->i:I

    iget v13, v0, Lb0/w;->f:I

    iget v0, v0, Lb0/w;->g:I

    const-string v16, "video/hevc"

    :goto_1c
    move-object/from16 v17, v2

    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move v2, v0

    move-object v7, v1

    move v1, v11

    move v11, v13

    const/4 v0, -0x1

    :goto_1d
    const/4 v13, -0x1

    goto/16 :goto_2c

    :pswitch_a
    sget-object v0, Lt0/g;->s0:[B

    invoke-virtual {v4, v5}, Lt0/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lu1/P;->p(Ljava/lang/Object;Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v14

    goto/16 :goto_15

    :pswitch_b
    iget v0, v4, Lt0/f;->R:I

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, LJ/W;->v(ILjava/nio/ByteOrder;)I

    move-result v0

    if-nez v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported little endian PCM bit depth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Lt0/f;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v33

    goto/16 :goto_19

    :cond_6d
    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v32

    goto/16 :goto_1a

    :pswitch_c
    iget v0, v4, Lt0/f;->R:I

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, LJ/W;->v(ILjava/nio/ByteOrder;)I

    move-result v0

    if-nez v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported big endian PCM bit depth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Lt0/f;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :pswitch_d
    iget v0, v4, Lt0/f;->R:I

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, LJ/W;->t(ILjava/nio/ByteOrder;)I

    move-result v0

    if-nez v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported floating point PCM bit depth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Lt0/f;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :pswitch_e
    const-string v13, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_18

    :pswitch_f
    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v12

    goto/16 :goto_19

    :pswitch_10
    iget-object v0, v4, Lt0/f;->m:[B

    if-nez v0, :cond_6e

    const/4 v0, 0x0

    goto :goto_1f

    :cond_6e
    invoke-static {v0}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    :goto_1f
    const-string v13, "video/x-vnd.on2.vp9"

    goto/16 :goto_14

    :pswitch_11
    const-string v13, "video/x-vnd.on2.vp8"

    goto/16 :goto_18

    :pswitch_12
    iget-object v0, v4, Lt0/f;->m:[B

    const-string v13, "video/av01"

    if-nez v0, :cond_6f

    goto/16 :goto_18

    :cond_6f
    invoke-static {v0}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    iget-object v1, v4, Lt0/f;->m:[B

    invoke-static {v1}, LJ/v;->h([B)LJ/v;

    move-result-object v1

    if-nez v1, :cond_70

    goto/16 :goto_14

    :cond_70
    iget v2, v1, LJ/v;->f:I

    iget v5, v1, LJ/v;->h:I

    iget v6, v1, LJ/v;->g:I

    iget v11, v1, LJ/v;->e:I

    iget-object v1, v1, LJ/v;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v17, v1

    move-object/from16 v23, v3

    move v1, v6

    move-object/from16 v21, v7

    move-object/from16 v16, v13

    const/4 v13, -0x1

    move-object v7, v0

    move v6, v5

    const/4 v0, -0x1

    move v5, v2

    move v2, v11

    goto/16 :goto_2c

    :pswitch_13
    const/4 v0, 0x1

    iput-boolean v0, v4, Lt0/f;->X:Z

    const-string v13, "audio/vnd.dts"

    goto/16 :goto_18

    :pswitch_14
    const-string v13, "audio/ac3"

    goto/16 :goto_18

    :pswitch_15
    invoke-virtual {v4, v5}, Lt0/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, v4, Lt0/f;->m:[B

    new-instance v2, LJ/B;

    array-length v5, v1

    invoke-direct {v2, v1, v5}, LJ/B;-><init>([BI)V

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lb0/a;->p(LJ/B;Z)LA0/d;

    move-result-object v1

    iget v2, v1, LA0/d;->e:I

    iput v2, v4, Lt0/f;->T:I

    iget v2, v1, LA0/d;->f:I

    iput v2, v4, Lt0/f;->Q:I

    iget-object v1, v1, LA0/d;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v13, "audio/mp4a-latm"

    move-object/from16 v17, v1

    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v13

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v11, -0x1

    const/4 v13, -0x1

    goto/16 :goto_16

    :pswitch_16
    const-string v13, "audio/vnd.dts.hd"

    goto/16 :goto_18

    :pswitch_17
    invoke-virtual {v4, v5}, Lt0/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v10

    goto/16 :goto_15

    :pswitch_18
    new-instance v0, LJ/D;

    iget-object v1, v4, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lt0/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, LJ/D;-><init>([B)V

    invoke-static {v0}, Lb0/c;->a(LJ/D;)Lb0/c;

    move-result-object v0

    iget-object v1, v0, Lb0/c;->a:Ljava/util/ArrayList;

    iget v2, v0, Lb0/c;->b:I

    iput v2, v4, Lt0/f;->f0:I

    iget-object v2, v0, Lb0/c;->l:Ljava/lang/String;

    iget v5, v0, Lb0/c;->g:I

    iget v6, v0, Lb0/c;->i:I

    iget v11, v0, Lb0/c;->h:I

    iget v13, v0, Lb0/c;->e:I

    iget v0, v0, Lb0/c;->f:I

    const-string v16, "video/avc"

    goto/16 :goto_1c

    :pswitch_19
    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-virtual {v4, v5}, Lt0/f;->a(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v9

    goto/16 :goto_15

    :pswitch_1a
    new-instance v0, LJ/D;

    iget-object v1, v4, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lt0/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, LJ/D;-><init>([B)V

    const/16 v1, 0x10

    :try_start_0
    invoke-virtual {v0, v1}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->r()J

    move-result-wide v1

    const-wide/32 v5, 0x58564944

    cmp-long v5, v1, v5

    if-nez v5, :cond_71

    new-instance v0, Landroid/util/Pair;

    const-string v1, "video/divx"
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_20
    const/4 v2, 0x0

    goto :goto_22

    :catch_0
    const/4 v2, 0x0

    goto/16 :goto_23

    :cond_71
    const-wide/32 v5, 0x33363248

    cmp-long v5, v1, v5

    if-nez v5, :cond_72

    :try_start_2
    new-instance v0, Landroid/util/Pair;

    const-string v1, "video/3gpp"
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    :try_start_3
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_20

    :cond_72
    const-wide/32 v5, 0x31435657

    cmp-long v1, v1, v5

    if-nez v1, :cond_76

    :try_start_4
    iget v1, v0, LJ/D;->b:I

    add-int/lit8 v1, v1, 0x14

    iget-object v0, v0, LJ/D;->a:[B

    :goto_21
    array-length v2, v0

    const/16 v22, 0x4

    add-int/lit8 v2, v2, -0x4

    if-ge v1, v2, :cond_75

    aget-byte v2, v0, v1

    if-nez v2, :cond_73

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    if-nez v2, :cond_73

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, v0, v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_73

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, v0, v2

    const/16 v5, 0xf

    if-ne v2, v5, :cond_74

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    const-string v2, "video/wvc1"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_20

    :cond_73
    const/16 v5, 0xf

    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_75
    const-string v0, "Failed to find FourCC VC1 initialization data"
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v2, 0x0

    :try_start_5
    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_76
    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v11, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v0, v13, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_22
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/util/List;

    move-object/from16 v17, v2

    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v13

    move-object/from16 v7, v28

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v11, -0x1

    goto/16 :goto_1d

    :catch_1
    :goto_23
    const-string v0, "Error parsing FourCC private data"

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :pswitch_1b
    const-string v13, "audio/mpeg"

    :goto_24
    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v13

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v11, -0x1

    const/16 v13, 0x1000

    goto/16 :goto_1b

    :pswitch_1c
    const-string v13, "audio/mpeg-L2"

    goto :goto_24

    :pswitch_1d
    invoke-virtual {v4, v5}, Lt0/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "Error parsing vorbis codec private"

    const/16 v25, 0x0

    :try_start_7
    aget-byte v2, v0, v25

    const/4 v5, 0x2

    if-ne v2, v5, :cond_7c

    const/4 v2, 0x0

    const/4 v5, 0x1

    :goto_25
    aget-byte v6, v0, v5

    const/16 v11, 0xff

    and-int/2addr v6, v11

    if-ne v6, v11, :cond_77

    add-int/lit16 v2, v2, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_77
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_26
    aget-byte v13, v0, v5

    and-int/2addr v13, v11

    if-ne v13, v11, :cond_78

    add-int/lit16 v6, v6, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_78
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v13

    aget-byte v11, v0, v5

    const/4 v13, 0x1

    if-ne v11, v13, :cond_7b

    new-array v11, v2, [B

    const/4 v13, 0x0

    invoke-static {v0, v5, v11, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v2

    aget-byte v2, v0, v5

    const/4 v13, 0x3

    if-ne v2, v13, :cond_7a

    add-int/2addr v5, v6

    aget-byte v2, v0, v5

    const/4 v6, 0x5

    if-ne v2, v6, :cond_79

    array-length v2, v0

    sub-int/2addr v2, v5

    new-array v2, v2, [B

    array-length v6, v0

    sub-int/2addr v6, v5

    const/4 v13, 0x0

    invoke-static {v0, v5, v2, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    const-string v13, "audio/vorbis"

    const/16 v1, 0x2000

    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v13

    const/4 v2, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v11, -0x1

    const/16 v17, 0x0

    move-object v7, v0

    move v13, v1

    const/4 v0, -0x1

    goto/16 :goto_17

    :catch_2
    const/4 v2, 0x0

    goto :goto_27

    :cond_79
    const/4 v2, 0x0

    :try_start_8
    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_7a
    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_7b
    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_7c
    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :goto_27
    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :pswitch_1e
    new-instance v0, Lb0/H;

    invoke-direct {v0}, Lb0/H;-><init>()V

    iput-object v0, v4, Lt0/f;->W:Lb0/H;

    const-string v13, "audio/true-hd"

    goto/16 :goto_18

    :pswitch_1f
    new-instance v0, LJ/D;

    iget-object v1, v4, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lt0/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, LJ/D;-><init>([B)V

    :try_start_9
    invoke-virtual {v0}, LJ/D;->t()I

    move-result v1

    const/4 v13, 0x1

    if-ne v1, v13, :cond_7d

    goto :goto_2a

    :cond_7d
    const v2, 0xfffe

    if-ne v1, v2, :cond_82

    move/from16 v1, v30

    invoke-virtual {v0, v1}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->s()I

    move-result v1

    iget v2, v4, Lt0/f;->Q:I

    shr-int/lit8 v5, v1, 0x12

    if-nez v5, :cond_7f

    if-eqz v1, :cond_7e

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    if-ne v5, v2, :cond_7f

    :cond_7e
    const/4 v2, 0x1

    goto :goto_28

    :cond_7f
    const/4 v2, 0x0

    :goto_28
    if-eqz v2, :cond_81

    if-nez v1, :cond_80

    const/4 v1, -0x1

    goto :goto_29

    :cond_80
    shl-int/lit8 v1, v1, 0x2

    :goto_29
    iput v1, v4, Lt0/f;->S:I

    :cond_81
    invoke-virtual {v0}, LJ/D;->u()J

    move-result-wide v1

    sget-object v5, Lt0/g;->v0:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v16

    cmp-long v1, v1, v16

    if-nez v1, :cond_82

    invoke-virtual {v0}, LJ/D;->u()J

    move-result-wide v0

    invoke-virtual {v5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v16
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_4

    cmp-long v0, v0, v16

    if-nez v0, :cond_82

    :goto_2a
    iget v0, v4, Lt0/f;->R:I

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, LJ/W;->v(ILjava/nio/ByteOrder;)I

    move-result v0

    if-nez v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported PCM bit depth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Lt0/f;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_82
    const-string v0, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    invoke-static {v11, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :catch_4
    const-string v0, "Error parsing MS/ACM codec private"

    const/4 v2, 0x0

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :pswitch_20
    iget-object v0, v4, Lt0/f;->m:[B

    if-nez v0, :cond_83

    const/4 v0, 0x0

    goto :goto_2b

    :cond_83
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_2b
    const-string v13, "video/mp4v-es"

    goto/16 :goto_14

    :goto_2c
    iget-object v3, v4, Lt0/f;->P:[B

    if-eqz v3, :cond_84

    new-instance v3, LJ/D;

    move-object/from16 v19, v7

    iget-object v7, v4, Lt0/f;->P:[B

    invoke-direct {v3, v7}, LJ/D;-><init>([B)V

    invoke-static {v3}, LK/a;->c(LJ/D;)LK/a;

    move-result-object v3

    if-eqz v3, :cond_85

    iget-object v3, v3, LK/a;->e:Ljava/lang/String;

    const-string v7, "video/dolby-vision"

    move-object/from16 v16, v3

    goto :goto_2d

    :cond_84
    move-object/from16 v19, v7

    :cond_85
    move-object/from16 v7, v16

    move-object/from16 v16, v17

    :goto_2d
    iget-boolean v3, v4, Lt0/f;->b0:Z

    move/from16 v17, v3

    iget-boolean v3, v4, Lt0/f;->a0:Z

    if-eqz v3, :cond_86

    const/16 v27, 0x2

    goto :goto_2e

    :cond_86
    const/16 v27, 0x0

    :goto_2e
    or-int v3, v17, v27

    move/from16 v17, v3

    new-instance v3, LG/w;

    invoke-direct {v3}, LG/w;-><init>()V

    invoke-static {v7}, LG/W;->h(Ljava/lang/String;)Z

    move-result v22

    move/from16 v30, v13

    sget-object v13, Lt0/g;->w0:Ljava/util/Map;

    if-eqz v22, :cond_87

    iget v1, v4, Lt0/f;->Q:I

    iput v1, v3, LG/w;->I:I

    iget v1, v4, Lt0/f;->S:I

    iput v1, v3, LG/w;->J:I

    iget v1, v4, Lt0/f;->T:I

    iput v1, v3, LG/w;->K:I

    iput v0, v3, LG/w;->L:I

    goto/16 :goto_3b

    :cond_87
    invoke-static {v7}, LG/W;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget v0, v4, Lt0/f;->t:I

    if-nez v0, :cond_8a

    iget v0, v4, Lt0/f;->r:I

    const/4 v8, -0x1

    if-ne v0, v8, :cond_88

    iget v0, v4, Lt0/f;->o:I

    :cond_88
    iput v0, v4, Lt0/f;->r:I

    iget v0, v4, Lt0/f;->s:I

    if-ne v0, v8, :cond_89

    iget v0, v4, Lt0/f;->p:I

    :cond_89
    iput v0, v4, Lt0/f;->s:I

    goto :goto_2f

    :cond_8a
    const/4 v8, -0x1

    :goto_2f
    iget v0, v4, Lt0/f;->r:I

    const/high16 v9, -0x40800000    # -1.0f

    if-eq v0, v8, :cond_8b

    iget v10, v4, Lt0/f;->s:I

    if-eq v10, v8, :cond_8b

    iget v8, v4, Lt0/f;->p:I

    mul-int/2addr v8, v0

    int-to-float v0, v8

    iget v8, v4, Lt0/f;->o:I

    mul-int/2addr v8, v10

    int-to-float v8, v8

    div-float/2addr v0, v8

    :goto_30
    const/4 v8, -0x1

    goto :goto_31

    :cond_8b
    move v0, v9

    goto :goto_30

    :goto_31
    if-ne v5, v8, :cond_8d

    if-eq v6, v8, :cond_8c

    goto :goto_32

    :cond_8c
    if-eq v1, v8, :cond_8e

    iget v5, v4, Lt0/f;->C:I

    if-ne v5, v8, :cond_8e

    iget v5, v4, Lt0/f;->A:I

    iget v6, v4, Lt0/f;->B:I

    :cond_8d
    :goto_32
    move/from16 v37, v1

    move/from16 v36, v5

    move/from16 v38, v6

    const/4 v8, -0x1

    goto :goto_33

    :cond_8e
    iget v5, v4, Lt0/f;->A:I

    iget v6, v4, Lt0/f;->B:I

    iget v1, v4, Lt0/f;->C:I

    goto :goto_32

    :goto_33
    if-eq v11, v8, :cond_8f

    move/from16 v40, v11

    goto :goto_34

    :cond_8f
    iget v1, v4, Lt0/f;->q:I

    if-eq v1, v8, :cond_90

    move/from16 v40, v1

    goto :goto_34

    :cond_90
    move/from16 v40, v20

    :goto_34
    if-eq v2, v8, :cond_91

    move/from16 v41, v2

    goto :goto_35

    :cond_91
    iget v1, v4, Lt0/f;->q:I

    if-eq v1, v8, :cond_92

    move/from16 v41, v1

    goto :goto_35

    :cond_92
    move/from16 v41, v20

    :goto_35
    iget v1, v4, Lt0/f;->F:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_94

    iget v1, v4, Lt0/f;->G:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_94

    iget v1, v4, Lt0/f;->H:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_94

    iget v1, v4, Lt0/f;->I:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_94

    iget v1, v4, Lt0/f;->J:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_94

    iget v1, v4, Lt0/f;->K:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_94

    iget v1, v4, Lt0/f;->L:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_94

    iget v1, v4, Lt0/f;->M:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_94

    iget v1, v4, Lt0/f;->N:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_94

    iget v1, v4, Lt0/f;->O:F

    cmpl-float v1, v1, v9

    if-nez v1, :cond_93

    goto/16 :goto_36

    :cond_93
    const/16 v1, 0x19

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v5, v4, Lt0/f;->F:F

    const v6, 0x47435000    # 50000.0f

    mul-float/2addr v5, v6

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v4, Lt0/f;->G:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v4, Lt0/f;->H:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v4, Lt0/f;->I:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v4, Lt0/f;->J:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v4, Lt0/f;->K:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v4, Lt0/f;->L:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v4, Lt0/f;->M:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v4, Lt0/f;->N:F

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v4, Lt0/f;->O:F

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v4, Lt0/f;->D:I

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v4, Lt0/f;->E:I

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v39, v1

    goto :goto_37

    :cond_94
    :goto_36
    const/16 v39, 0x0

    :goto_37
    new-instance v35, LG/n;

    invoke-direct/range {v35 .. v41}, LG/n;-><init>(III[BII)V

    move-object/from16 v1, v35

    iget-object v2, v4, Lt0/f;->b:Ljava/lang/String;

    if-eqz v2, :cond_95

    invoke-interface {v13, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, v4, Lt0/f;->b:Ljava/lang/String;

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_38

    :cond_95
    const/4 v6, -0x1

    :goto_38
    iget v2, v4, Lt0/f;->u:I

    if-nez v2, :cond_9a

    iget v2, v4, Lt0/f;->v:F

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_9a

    iget v2, v4, Lt0/f;->w:F

    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_9a

    iget v2, v4, Lt0/f;->x:F

    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_96

    const/4 v2, 0x0

    goto :goto_3a

    :cond_96
    iget v2, v4, Lt0/f;->x:F

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_97

    const/16 v2, 0x5a

    goto :goto_3a

    :cond_97
    iget v2, v4, Lt0/f;->x:F

    const/high16 v5, -0x3ccc0000    # -180.0f

    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_99

    iget v2, v4, Lt0/f;->x:F

    const/high16 v5, 0x43340000    # 180.0f

    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_98

    goto :goto_39

    :cond_98
    iget v2, v4, Lt0/f;->x:F

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_9a

    const/16 v2, 0x10e

    goto :goto_3a

    :cond_99
    :goto_39
    const/16 v2, 0xb4

    goto :goto_3a

    :cond_9a
    move v2, v6

    :goto_3a
    iget v5, v4, Lt0/f;->o:I

    iput v5, v3, LG/w;->v:I

    iget v5, v4, Lt0/f;->p:I

    iput v5, v3, LG/w;->w:I

    iput v0, v3, LG/w;->D:F

    iput v2, v3, LG/w;->B:I

    iget-object v0, v4, Lt0/f;->y:[B

    iput-object v0, v3, LG/w;->E:[B

    iget v0, v4, Lt0/f;->z:I

    iput v0, v3, LG/w;->F:I

    iput-object v1, v3, LG/w;->G:LG/n;

    goto :goto_3b

    :cond_9b
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    goto :goto_3b

    :cond_9c
    const-string v0, "Unexpected MIME type."

    const/4 v2, 0x0

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_9d
    :goto_3b
    iget-object v0, v4, Lt0/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_9e

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    iget-object v0, v4, Lt0/f;->b:Ljava/lang/String;

    iput-object v0, v3, LG/w;->b:Ljava/lang/String;

    :cond_9e
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, LG/w;->a:Ljava/lang/String;

    iget-boolean v0, v4, Lt0/f;->a:Z

    if-eqz v0, :cond_9f

    move-object/from16 v11, v29

    goto :goto_3c

    :cond_9f
    const-string v11, "video/x-matroska"

    :goto_3c
    invoke-static {v11}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, LG/w;->n:Ljava/lang/String;

    invoke-static {v7}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, LG/w;->o:Ljava/lang/String;

    move/from16 v0, v30

    iput v0, v3, LG/w;->p:I

    iget-object v0, v4, Lt0/f;->c0:Ljava/lang/String;

    iput-object v0, v3, LG/w;->d:Ljava/lang/String;

    move/from16 v0, v17

    iput v0, v3, LG/w;->e:I

    move-object/from16 v0, v19

    iput-object v0, v3, LG/w;->r:Ljava/util/List;

    move-object/from16 v0, v16

    iput-object v0, v3, LG/w;->k:Ljava/lang/String;

    iget-object v0, v4, Lt0/f;->n:LG/s;

    iput-object v0, v3, LG/w;->s:LG/s;

    invoke-virtual {v3}, LG/w;->a()LG/x;

    move-result-object v0

    iput-object v0, v4, Lt0/f;->e0:LG/x;

    move-object/from16 v3, v23

    iget-object v0, v3, Lt0/g;->q0:Lb0/p;

    iget v1, v4, Lt0/f;->d:I

    iget v2, v4, Lt0/f;->f:I

    invoke-interface {v0, v1, v2}, Lb0/p;->v(II)Lb0/G;

    move-result-object v0

    iput-object v0, v4, Lt0/f;->d0:Lb0/G;

    iget v0, v4, Lt0/f;->d:I

    move-object/from16 v1, v21

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_11

    :goto_3d
    iput-object v2, v3, Lt0/g;->B:Lt0/f;

    goto/16 :goto_40

    :cond_a0
    move-object v2, v10

    const-string v0, "CodecId is missing in TrackEntry element"

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_a1
    move-object v1, v7

    iget v0, v3, Lt0/g;->V:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_a2

    goto/16 :goto_40

    :cond_a2
    iget v0, v3, Lt0/g;->b0:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt0/f;

    iget-object v1, v0, Lt0/f;->d0:Lb0/G;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v3, Lt0/g;->g0:J

    cmp-long v1, v1, v16

    if-lez v1, :cond_a3

    iget-object v1, v0, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-object v1, v3, Lt0/g;->r:LJ/D;

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v4, v3, Lt0/g;->g0:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v2

    invoke-virtual {v1, v2, v4}, LJ/D;->L([BI)V

    :cond_a3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3e
    iget v4, v3, Lt0/g;->Z:I

    if-ge v1, v4, :cond_a4

    iget-object v4, v3, Lt0/g;->a0:[I

    aget v4, v4, v1

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_a4
    const/4 v1, 0x0

    :goto_3f
    iget v4, v3, Lt0/g;->Z:I

    if-ge v1, v4, :cond_a6

    iget-wide v4, v3, Lt0/g;->W:J

    iget v6, v0, Lt0/f;->g:I

    mul-int/2addr v6, v1

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long v29, v4, v6

    iget v4, v3, Lt0/g;->d0:I

    if-nez v1, :cond_a5

    iget-boolean v5, v3, Lt0/g;->f0:Z

    if-nez v5, :cond_a5

    or-int/lit8 v4, v4, 0x1

    :cond_a5
    move/from16 v31, v4

    iget-object v4, v3, Lt0/g;->a0:[I

    aget v32, v4, v1

    sub-int v33, v2, v32

    move-object/from16 v28, v0

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v33}, Lt0/g;->i(Lt0/f;JIII)V

    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v33

    goto :goto_3f

    :cond_a6
    const/4 v5, 0x0

    iput v5, v3, Lt0/g;->V:I

    goto :goto_40

    :cond_a7
    iget-object v0, v3, Lt0/g;->A:Lt0/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lt0/c;->f:Ljava/lang/String;

    if-nez v1, :cond_a8

    iget-object v1, v0, Lt0/c;->h:Ljava/lang/String;

    if-eqz v1, :cond_a8

    iput-object v1, v0, Lt0/c;->f:Ljava/lang/String;

    iget-object v1, v0, Lt0/c;->i:Ljava/lang/String;

    if-eqz v1, :cond_a8

    iput-object v1, v0, Lt0/c;->g:Ljava/lang/String;

    :cond_a8
    :goto_40
    move-object/from16 v1, p1

    :goto_41
    const/4 v5, 0x1

    goto/16 :goto_4f

    :cond_a9
    iget v0, v7, Lt0/b;->e:I

    move-object/from16 v1, p1

    if-nez v0, :cond_b0

    const/4 v0, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v8, v1, v4, v5, v0}, Lt0/h;->b(Lb0/o;ZZI)J

    move-result-wide v2

    const-wide/16 v10, -0x2

    cmp-long v4, v2, v10

    if-nez v4, :cond_ae

    iget-object v4, v7, Lt0/b;->a:[B

    invoke-interface {v1}, Lb0/o;->o()V

    :goto_42
    invoke-interface {v1, v5, v4, v0}, Lb0/o;->l(I[BI)V

    aget-byte v0, v4, v5

    move/from16 v3, v20

    const/4 v2, 0x0

    :goto_43
    if-ge v2, v3, :cond_ab

    sget-object v3, Lt0/h;->d:[J

    aget-wide v5, v3, v2

    int-to-long v10, v0

    and-long/2addr v5, v10

    cmp-long v3, v5, v16

    if-eqz v3, :cond_aa

    add-int/lit8 v0, v2, 0x1

    :goto_44
    const/4 v2, -0x1

    goto :goto_45

    :cond_aa
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x8

    goto :goto_43

    :cond_ab
    const/4 v0, -0x1

    goto :goto_44

    :goto_45
    if-eq v0, v2, :cond_ac

    const/4 v2, 0x4

    if-gt v0, v2, :cond_ac

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lt0/h;->a([BIZ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, v7, Lt0/b;->d:La1/g;

    iget-object v3, v3, La1/g;->e:Ljava/lang/Object;

    if-eq v2, v14, :cond_ad

    const v3, 0x1043a770

    if-eq v2, v3, :cond_ad

    const v3, 0x1f43b675

    if-eq v2, v3, :cond_ad

    if-eq v2, v12, :cond_ad

    if-ne v2, v13, :cond_ac

    goto :goto_46

    :cond_ac
    const/4 v0, 0x1

    goto :goto_47

    :cond_ad
    :goto_46
    invoke-interface {v1, v0}, Lb0/o;->p(I)V

    int-to-long v2, v2

    :cond_ae
    const/4 v0, 0x1

    goto :goto_48

    :goto_47
    invoke-interface {v1, v0}, Lb0/o;->p(I)V

    const/4 v0, 0x4

    const/4 v5, 0x0

    const/16 v20, 0x8

    goto :goto_42

    :goto_48
    cmp-long v4, v2, v18

    if-nez v4, :cond_af

    const/4 v5, 0x0

    goto/16 :goto_4f

    :cond_af
    long-to-int v2, v2

    iput v2, v7, Lt0/b;->f:I

    iput v0, v7, Lt0/b;->e:I

    goto :goto_49

    :cond_b0
    const/4 v0, 0x1

    :goto_49
    iget v2, v7, Lt0/b;->e:I

    if-ne v2, v0, :cond_b1

    const/16 v3, 0x8

    const/4 v5, 0x0

    invoke-virtual {v8, v1, v5, v0, v3}, Lt0/h;->b(Lb0/o;ZZI)J

    move-result-wide v2

    iput-wide v2, v7, Lt0/b;->g:J

    const/4 v5, 0x2

    iput v5, v7, Lt0/b;->e:I

    :cond_b1
    iget-object v0, v7, Lt0/b;->d:La1/g;

    iget v2, v7, Lt0/b;->f:I

    iget-object v3, v0, La1/g;->e:Ljava/lang/Object;

    sparse-switch v2, :sswitch_data_2

    const/4 v3, 0x0

    goto :goto_4a

    :sswitch_46
    const/4 v3, 0x5

    goto :goto_4a

    :sswitch_47
    const/4 v3, 0x4

    goto :goto_4a

    :sswitch_48
    const/4 v3, 0x3

    goto :goto_4a

    :sswitch_49
    const/4 v3, 0x2

    goto :goto_4a

    :sswitch_4a
    const/4 v3, 0x1

    :goto_4a
    if-eqz v3, :cond_c1

    const/4 v14, 0x1

    if-eq v3, v14, :cond_bd

    const-wide/16 v4, 0x8

    const/4 v6, 0x2

    if-eq v3, v6, :cond_bb

    const/4 v13, 0x3

    if-eq v3, v13, :cond_b9

    const/4 v6, 0x4

    if-eq v3, v6, :cond_b8

    const/4 v6, 0x5

    if-ne v3, v6, :cond_b7

    iget-wide v8, v7, Lt0/b;->g:J

    const-wide/16 v10, 0x4

    cmp-long v3, v8, v10

    if-eqz v3, :cond_b3

    cmp-long v3, v8, v4

    if-nez v3, :cond_b2

    goto :goto_4b

    :cond_b2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid float size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v7, Lt0/b;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_b3
    :goto_4b
    long-to-int v3, v8

    invoke-virtual {v7, v1, v3}, Lt0/b;->a(Lb0/o;I)J

    move-result-wide v4

    const/4 v6, 0x4

    if-ne v3, v6, :cond_b4

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    float-to-double v3, v3

    goto :goto_4c

    :cond_b4
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    :goto_4c
    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lt0/g;

    const/16 v5, 0xb5

    if-eq v2, v5, :cond_b6

    const/16 v5, 0x4489

    if-eq v2, v5, :cond_b5

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    :goto_4d
    const/4 v5, 0x0

    goto/16 :goto_4e

    :pswitch_21
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->x:F

    goto :goto_4d

    :pswitch_22
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->w:F

    goto :goto_4d

    :pswitch_23
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->v:F

    goto :goto_4d

    :pswitch_24
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->O:F

    goto :goto_4d

    :pswitch_25
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->N:F

    goto :goto_4d

    :pswitch_26
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->M:F

    goto :goto_4d

    :pswitch_27
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->L:F

    goto :goto_4d

    :pswitch_28
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->K:F

    goto :goto_4d

    :pswitch_29
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->J:F

    goto :goto_4d

    :pswitch_2a
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->I:F

    goto :goto_4d

    :pswitch_2b
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->H:F

    goto :goto_4d

    :pswitch_2c
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->G:F

    goto :goto_4d

    :pswitch_2d
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-float v2, v3

    iput v2, v0, Lt0/f;->F:F

    goto :goto_4d

    :cond_b5
    double-to-long v2, v3

    iput-wide v2, v0, Lt0/g;->w:J

    goto :goto_4d

    :cond_b6
    invoke-virtual {v0, v2}, Lt0/g;->h(I)V

    iget-object v0, v0, Lt0/g;->B:Lt0/f;

    double-to-int v2, v3

    iput v2, v0, Lt0/f;->T:I

    goto/16 :goto_4d

    :goto_4e
    iput v5, v7, Lt0/b;->e:I

    goto/16 :goto_41

    :cond_b7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid element type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_b8
    iget-wide v3, v7, Lt0/b;->g:J

    long-to-int v3, v3

    invoke-virtual {v0, v2, v3, v1}, La1/g;->v(IILb0/o;)V

    const/4 v5, 0x0

    iput v5, v7, Lt0/b;->e:I

    goto/16 :goto_41

    :cond_b9
    const/4 v5, 0x0

    iget-wide v3, v7, Lt0/b;->g:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v3, v8

    if-gtz v6, :cond_ba

    long-to-int v3, v3

    invoke-static {v1, v3}, Lt0/b;->b(Lb0/o;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, La1/g;->F(ILjava/lang/String;)V

    iput v5, v7, Lt0/b;->e:I

    goto/16 :goto_41

    :cond_ba
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String element size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v7, Lt0/b;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_bb
    iget-wide v8, v7, Lt0/b;->g:J

    cmp-long v3, v8, v4

    if-gtz v3, :cond_bc

    long-to-int v3, v8

    invoke-virtual {v7, v1, v3}, Lt0/b;->a(Lb0/o;I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, La1/g;->z(IJ)V

    const/4 v5, 0x0

    iput v5, v7, Lt0/b;->e:I

    goto/16 :goto_41

    :cond_bc
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid integer size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v7, Lt0/b;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_bd
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v2

    iget-wide v4, v7, Lt0/b;->g:J

    add-long/2addr v4, v2

    new-instance v0, Lt0/a;

    iget v6, v7, Lt0/b;->f:I

    invoke-direct {v0, v6, v4, v5}, Lt0/a;-><init>(IJ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v8, v7, Lt0/b;->d:La1/g;

    iget v13, v7, Lt0/b;->f:I

    iget-wide v11, v7, Lt0/b;->g:J

    move-wide v9, v2

    invoke-virtual/range {v8 .. v13}, La1/g;->E(JJI)V

    const/4 v5, 0x0

    iput v5, v7, Lt0/b;->e:I

    goto/16 :goto_41

    :goto_4f
    if-eqz v5, :cond_c0

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v2

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    invoke-virtual {v0, v4, v2, v3}, Lt0/g;->o(Lb0/r;J)Z

    move-result v2

    if-nez v2, :cond_be

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Lt0/g;->n(Lb0/r;J)Z

    move-result v2

    if-eqz v2, :cond_bf

    :cond_be
    const/16 v26, 0x1

    goto :goto_51

    :cond_bf
    :goto_50
    const/16 v26, 0x1

    goto :goto_52

    :goto_51
    return v26

    :cond_c0
    move-object/from16 v0, p0

    move-object/from16 v4, p2

    goto :goto_50

    :goto_52
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_c1
    move-object/from16 v0, p0

    move-object/from16 v4, p2

    const/16 v26, 0x1

    iget-wide v2, v7, Lt0/b;->g:J

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    const/4 v5, 0x0

    iput v5, v7, Lt0/b;->e:I

    move v3, v5

    const/4 v6, -0x1

    goto/16 :goto_1

    :cond_c2
    if-nez v5, :cond_c5

    const/4 v3, 0x0

    :goto_53
    iget-object v1, v0, Lt0/g;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_c4

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt0/f;

    iget-object v2, v1, Lt0/f;->d0:Lb0/G;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lt0/f;->W:Lb0/H;

    if-eqz v2, :cond_c3

    iget-object v4, v1, Lt0/f;->d0:Lb0/G;

    iget-object v1, v1, Lt0/f;->l:Lb0/F;

    invoke-virtual {v2, v4, v1}, Lb0/H;->a(Lb0/G;Lb0/F;)V

    :cond_c3
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_c4
    const/16 v24, -0x1

    return v24

    :cond_c5
    const/16 v25, 0x0

    return v25

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_22
        -0x7ce7f3b0 -> :sswitch_21
        -0x76567dc0 -> :sswitch_20
        -0x6a615338 -> :sswitch_1f
        -0x672350af -> :sswitch_1e
        -0x585f4fce -> :sswitch_1d
        -0x585f4fcd -> :sswitch_1c
        -0x51dc40b2 -> :sswitch_1b
        -0x37a9c464 -> :sswitch_1a
        -0x2016c535 -> :sswitch_19
        -0x2016c4e5 -> :sswitch_18
        -0x19552dbd -> :sswitch_17
        -0x1538b2ba -> :sswitch_16
        0x3c02325 -> :sswitch_15
        0x3c02353 -> :sswitch_14
        0x3c030c5 -> :sswitch_13
        0x4e81333 -> :sswitch_12
        0x4e86155 -> :sswitch_11
        0x4e86156 -> :sswitch_10
        0x5e8da3e -> :sswitch_f
        0x1a8350d6 -> :sswitch_e
        0x2056f406 -> :sswitch_d
        0x25e26ee2 -> :sswitch_c
        0x2b45174d -> :sswitch_b
        0x2b453ce4 -> :sswitch_a
        0x2c0618eb -> :sswitch_9
        0x2c065c6b -> :sswitch_8
        0x32fdf009 -> :sswitch_7
        0x3e4ca2d8 -> :sswitch_6
        0x54c61e47 -> :sswitch_5
        0x6bd6c624 -> :sswitch_4
        0x74446acb -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_45
        -0x7ce7f3b0 -> :sswitch_44
        -0x76567dc0 -> :sswitch_43
        -0x6a615338 -> :sswitch_42
        -0x672350af -> :sswitch_41
        -0x585f4fce -> :sswitch_40
        -0x585f4fcd -> :sswitch_3f
        -0x51dc40b2 -> :sswitch_3e
        -0x37a9c464 -> :sswitch_3d
        -0x2016c535 -> :sswitch_3c
        -0x2016c4e5 -> :sswitch_3b
        -0x19552dbd -> :sswitch_3a
        -0x1538b2ba -> :sswitch_39
        0x3c02325 -> :sswitch_38
        0x3c02353 -> :sswitch_37
        0x3c030c5 -> :sswitch_36
        0x4e81333 -> :sswitch_35
        0x4e86155 -> :sswitch_34
        0x4e86156 -> :sswitch_33
        0x5e8da3e -> :sswitch_32
        0x1a8350d6 -> :sswitch_31
        0x2056f406 -> :sswitch_30
        0x25e26ee2 -> :sswitch_2f
        0x2b45174d -> :sswitch_2e
        0x2b453ce4 -> :sswitch_2d
        0x2c0618eb -> :sswitch_2c
        0x2c065c6b -> :sswitch_2b
        0x32fdf009 -> :sswitch_2a
        0x3e4ca2d8 -> :sswitch_29
        0x54c61e47 -> :sswitch_28
        0x6bd6c624 -> :sswitch_27
        0x74446acb -> :sswitch_26
        0x7446132a -> :sswitch_25
        0x7446b0a6 -> :sswitch_24
        0x744ad97d -> :sswitch_23
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_20
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_4
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x80 -> :sswitch_4a
        0x83 -> :sswitch_49
        0x85 -> :sswitch_48
        0x86 -> :sswitch_48
        0x88 -> :sswitch_49
        0x89 -> :sswitch_49
        0x8f -> :sswitch_4a
        0x91 -> :sswitch_49
        0x92 -> :sswitch_49
        0x98 -> :sswitch_49
        0x9b -> :sswitch_49
        0x9f -> :sswitch_49
        0xa0 -> :sswitch_4a
        0xa1 -> :sswitch_47
        0xa3 -> :sswitch_47
        0xa5 -> :sswitch_47
        0xa6 -> :sswitch_4a
        0xae -> :sswitch_4a
        0xb0 -> :sswitch_49
        0xb3 -> :sswitch_49
        0xb5 -> :sswitch_46
        0xb6 -> :sswitch_4a
        0xb7 -> :sswitch_4a
        0xba -> :sswitch_49
        0xbb -> :sswitch_4a
        0xd7 -> :sswitch_49
        0xe0 -> :sswitch_4a
        0xe1 -> :sswitch_4a
        0xe7 -> :sswitch_49
        0xee -> :sswitch_49
        0xf0 -> :sswitch_49
        0xf1 -> :sswitch_49
        0xf7 -> :sswitch_49
        0xfb -> :sswitch_49
        0x41e4 -> :sswitch_4a
        0x41e7 -> :sswitch_49
        0x41ed -> :sswitch_47
        0x4254 -> :sswitch_49
        0x4255 -> :sswitch_47
        0x4282 -> :sswitch_48
        0x4285 -> :sswitch_49
        0x42f7 -> :sswitch_49
        0x437c -> :sswitch_48
        0x4489 -> :sswitch_46
        0x45b9 -> :sswitch_4a
        0x47e1 -> :sswitch_49
        0x47e2 -> :sswitch_47
        0x47e7 -> :sswitch_4a
        0x47e8 -> :sswitch_49
        0x4dbb -> :sswitch_4a
        0x5031 -> :sswitch_49
        0x5032 -> :sswitch_49
        0x5034 -> :sswitch_4a
        0x5035 -> :sswitch_4a
        0x536e -> :sswitch_48
        0x53ab -> :sswitch_47
        0x53ac -> :sswitch_49
        0x53b8 -> :sswitch_49
        0x54b0 -> :sswitch_49
        0x54b2 -> :sswitch_49
        0x54ba -> :sswitch_49
        0x55aa -> :sswitch_49
        0x55b0 -> :sswitch_4a
        0x55b2 -> :sswitch_49
        0x55b9 -> :sswitch_49
        0x55ba -> :sswitch_49
        0x55bb -> :sswitch_49
        0x55bc -> :sswitch_49
        0x55bd -> :sswitch_49
        0x55d0 -> :sswitch_4a
        0x55d1 -> :sswitch_46
        0x55d2 -> :sswitch_46
        0x55d3 -> :sswitch_46
        0x55d4 -> :sswitch_46
        0x55d5 -> :sswitch_46
        0x55d6 -> :sswitch_46
        0x55d7 -> :sswitch_46
        0x55d8 -> :sswitch_46
        0x55d9 -> :sswitch_46
        0x55da -> :sswitch_46
        0x55ee -> :sswitch_49
        0x56aa -> :sswitch_49
        0x56bb -> :sswitch_49
        0x6240 -> :sswitch_4a
        0x6264 -> :sswitch_49
        0x63a2 -> :sswitch_47
        0x6d80 -> :sswitch_4a
        0x73c4 -> :sswitch_49
        0x73c5 -> :sswitch_49
        0x75a1 -> :sswitch_4a
        0x75a2 -> :sswitch_49
        0x7670 -> :sswitch_4a
        0x7671 -> :sswitch_49
        0x7672 -> :sswitch_47
        0x7673 -> :sswitch_46
        0x7674 -> :sswitch_46
        0x7675 -> :sswitch_46
        0x22b59c -> :sswitch_48
        0x23e383 -> :sswitch_49
        0x2ad7b1 -> :sswitch_49
        0x1043a770 -> :sswitch_4a
        0x114d9b74 -> :sswitch_4a
        0x1549a966 -> :sswitch_4a
        0x1654ae6b -> :sswitch_4a
        0x18538067 -> :sswitch_4a
        0x1a45dfa3 -> :sswitch_4a
        0x1c53bb6b -> :sswitch_4a
        0x1f43b675 -> :sswitch_4a
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x55d1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7673
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch
.end method

.method public final g(I)V
    .locals 2

    iget-boolean v0, p0, Lt0/g;->G:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Element "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1
.end method

.method public final h(I)V
    .locals 2

    iget-object v0, p0, Lt0/g;->B:Lt0/f;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Element "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1
.end method

.method public final i(Lt0/f;JIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lt0/f;->W:Lb0/H;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    move-object v3, v2

    iget-object v2, v1, Lt0/f;->d0:Lb0/G;

    iget-object v8, v1, Lt0/f;->l:Lb0/F;

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v1, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lb0/H;->b(Lb0/G;JIIILb0/F;)V

    goto/16 :goto_7

    :cond_0
    iget-object v2, v1, Lt0/f;->c:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    const-string v5, "S_TEXT/WEBVTT"

    const-string v6, "S_TEXT/SSA"

    const-string v7, "S_TEXT/ASS"

    const/4 v8, 0x0

    if-nez v2, :cond_1

    iget-object v2, v1, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget v2, v0, Lt0/g;->Z:I

    const-string v10, "MatroskaExtractor"

    if-le v2, v9, :cond_2

    const-string v2, "Skipping subtitle sample in laced block."

    invoke-static {v10, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide v11, v0, Lt0/g;->X:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v11, v13

    if-nez v2, :cond_4

    const-string v2, "Skipping subtitle sample with no duration."

    invoke-static {v10, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move/from16 v2, p5

    goto/16 :goto_5

    :cond_4
    iget-object v2, v1, Lt0/f;->c:Ljava/lang/String;

    iget-object v10, v0, Lt0/g;->o:LJ/D;

    iget-object v13, v10, LJ/D;->a:[B

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, -0x1

    sparse-switch v14, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v15, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v15, v4

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move v15, v9

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v15, v8

    :goto_1
    const-wide/16 v2, 0x3e8

    packed-switch v15, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    const-string v5, "%02d:%02d:%02d,%03d"

    invoke-static {v11, v12, v2, v3, v5}, Lt0/g;->j(JJLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x13

    goto :goto_2

    :pswitch_1
    const-string v5, "%02d:%02d:%02d.%03d"

    invoke-static {v11, v12, v2, v3, v5}, Lt0/g;->j(JJLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x19

    goto :goto_2

    :pswitch_2
    const-string v2, "%01d:%02d:%02d:%02d"

    const-wide/16 v5, 0x2710

    invoke-static {v11, v12, v5, v6, v2}, Lt0/g;->j(JJLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x15

    :goto_2
    array-length v5, v2

    invoke-static {v2, v8, v13, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v10, LJ/D;->b:I

    :goto_3
    iget v3, v10, LJ/D;->c:I

    if-ge v2, v3, :cond_a

    iget-object v3, v10, LJ/D;->a:[B

    aget-byte v3, v3, v2

    if-nez v3, :cond_9

    invoke-virtual {v10, v2}, LJ/D;->M(I)V

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    iget-object v2, v1, Lt0/f;->d0:Lb0/G;

    iget v3, v10, LJ/D;->c:I

    invoke-interface {v2, v3, v10}, Lb0/G;->a(ILJ/D;)V

    iget v2, v10, LJ/D;->c:I

    add-int v2, p5, v2

    :goto_5
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_c

    iget v3, v0, Lt0/g;->Z:I

    iget-object v5, v0, Lt0/g;->r:LJ/D;

    if-le v3, v9, :cond_b

    invoke-virtual {v5, v8}, LJ/D;->K(I)V

    goto :goto_6

    :cond_b
    iget v3, v5, LJ/D;->c:I

    iget-object v6, v1, Lt0/f;->d0:Lb0/G;

    invoke-interface {v6, v5, v3, v4}, Lb0/G;->c(LJ/D;II)V

    add-int/2addr v2, v3

    :cond_c
    :goto_6
    move v14, v2

    iget-object v10, v1, Lt0/f;->d0:Lb0/G;

    iget-object v1, v1, Lt0/f;->l:Lb0/F;

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lb0/G;->f(JIIILb0/F;)V

    :goto_7
    iput-boolean v9, v0, Lt0/g;->U:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_3
        0x2c065c6b -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(I)Lt0/c;
    .locals 2

    iget-object v0, p0, Lt0/g;->A:Lt0/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Element "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in an EditionEntry"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1
.end method

.method public final l()V
    .locals 4

    iget-boolean v0, p0, Lt0/g;->z:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lt0/g;->P:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lt0/g;->S:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lt0/g;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt0/f;

    iget-boolean v2, v2, Lt0/f;->X:Z

    if-eqz v2, :cond_2

    :goto_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lt0/g;->q0:Lb0/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lb0/p;->e()V

    iput-boolean v0, p0, Lt0/g;->z:Z

    return-void
.end method

.method public final m()V
    .locals 6

    iget-boolean v0, p0, Lt0/g;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lt0/g;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lt0/g;->N:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lt0/g;->M:Z

    return-void

    :cond_1
    iget-object v0, p0, Lt0/g;->q0:Lb0/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lb0/s;

    iget-wide v3, p0, Lt0/g;->x:J

    invoke-direct {v2, v3, v4}, Lb0/s;-><init>(J)V

    invoke-interface {v0, v2}, Lb0/p;->c(Lb0/z;)V

    iput-boolean v1, p0, Lt0/g;->C:Z

    return-void
.end method

.method public final n(Lb0/r;J)Z
    .locals 5

    iget-boolean v0, p0, Lt0/g;->M:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-wide p2, p0, Lt0/g;->O:J

    iget-wide p2, p0, Lt0/g;->N:J

    iput-wide p2, p1, Lb0/r;->a:J

    iput-boolean v2, p0, Lt0/g;->M:Z

    return v1

    :cond_0
    iget-boolean p2, p0, Lt0/g;->C:Z

    if-eqz p2, :cond_1

    iget-wide p2, p0, Lt0/g;->O:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    iput-wide p2, p1, Lb0/r;->a:J

    iput-wide v3, p0, Lt0/g;->O:J

    return v1

    :cond_1
    return v2
.end method

.method public final o(Lb0/r;J)Z
    .locals 5

    iget-boolean v0, p0, Lt0/g;->Q:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-wide p2, p0, Lt0/g;->R:J

    iget-wide p2, p0, Lt0/g;->P:J

    iput-wide p2, p1, Lb0/r;->a:J

    iput-boolean v2, p0, Lt0/g;->Q:Z

    return v1

    :cond_0
    iget-boolean p2, p0, Lt0/g;->S:Z

    if-eqz p2, :cond_1

    iget-wide p2, p0, Lt0/g;->R:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    iput-wide p2, p1, Lb0/r;->a:J

    iput-wide v3, p0, Lt0/g;->R:J

    return v1

    :cond_1
    return v2
.end method

.method public final p(Lb0/o;I)V
    .locals 4

    iget-object v0, p0, Lt0/g;->k:LJ/D;

    iget v1, v0, LJ/D;->c:I

    if-lt v1, p2, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, LJ/D;->a:[B

    array-length v2, v1

    if-ge v2, p2, :cond_1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, LJ/D;->c(I)V

    :cond_1
    iget-object v1, v0, LJ/D;->a:[B

    iget v2, v0, LJ/D;->c:I

    sub-int v3, p2, v2

    invoke-interface {p1, v1, v2, v3}, Lb0/o;->readFully([BII)V

    invoke-virtual {v0, p2}, LJ/D;->M(I)V

    return-void
.end method

.method public final q()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lt0/g;->h0:I

    iput v0, p0, Lt0/g;->i0:I

    iput v0, p0, Lt0/g;->j0:I

    iput-boolean v0, p0, Lt0/g;->k0:Z

    iput-boolean v0, p0, Lt0/g;->l0:Z

    iput-boolean v0, p0, Lt0/g;->m0:Z

    iput v0, p0, Lt0/g;->n0:I

    iput-byte v0, p0, Lt0/g;->o0:B

    iput-boolean v0, p0, Lt0/g;->p0:Z

    iget-object v1, p0, Lt0/g;->n:LJ/D;

    invoke-virtual {v1, v0}, LJ/D;->K(I)V

    return-void
.end method

.method public final r(J)J
    .locals 7

    iget-wide v2, p0, Lt0/g;->v:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p2, 0x0

    invoke-static {p2, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1
.end method

.method public final s(Lt0/f;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lt0/f;->Y:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_a

    iget-object v2, v0, Lt0/g;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v8

    :goto_0
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-virtual {v2, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lt0/c;

    iget-wide v12, v11, Lt0/c;->e:J

    cmp-long v14, v12, v5

    if-eqz v14, :cond_1

    iget-wide v14, v1, Lt0/f;->e:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    :cond_1
    iget-wide v12, v11, Lt0/c;->b:J

    sget-object v14, LJ/W;->a:Ljava/lang/String;

    cmp-long v14, v12, v3

    const-wide/32 v15, 0xf4240

    const-wide/high16 v17, -0x8000000000000000L

    if-eqz v14, :cond_3

    cmp-long v14, v12, v17

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    div-long/2addr v12, v15

    :cond_3
    :goto_1
    move-wide/from16 v20, v12

    iget-wide v12, v11, Lt0/c;->c:J

    cmp-long v14, v12, v3

    if-eqz v14, :cond_5

    cmp-long v14, v12, v17

    if-nez v14, :cond_4

    goto :goto_2

    :cond_4
    div-long/2addr v12, v15

    :cond_5
    :goto_2
    move-wide/from16 v22, v12

    iget-boolean v12, v11, Lt0/c;->d:Z

    iget-object v13, v11, Lt0/c;->f:Ljava/lang/String;

    if-eqz v13, :cond_6

    new-instance v13, LG/B;

    iget-object v14, v11, Lt0/c;->g:Ljava/lang/String;

    iget-object v11, v11, Lt0/c;->f:Ljava/lang/String;

    invoke-direct {v13, v14, v11}, LG/B;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object/from16 v25, v13

    goto :goto_4

    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    :goto_4
    new-instance v19, Lk0/b;

    move/from16 v24, v12

    invoke-direct/range {v19 .. v25}, Lk0/b;-><init>(JJZLG/B;)V

    move-object/from16 v11, v19

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lt0/f;->e0:LG/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, LG/x;->a()LG/w;

    move-result-object v2

    iget-object v10, v1, Lt0/f;->e0:LG/x;

    iget-object v10, v10, LG/x;->m:LG/V;

    if-eqz v10, :cond_9

    new-array v11, v8, [Lk0/a;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [LG/U;

    invoke-virtual {v10, v9}, LG/V;->a([LG/U;)LG/V;

    move-result-object v9

    goto :goto_5

    :cond_9
    new-instance v10, LG/V;

    invoke-direct {v10, v9}, LG/V;-><init>(Ljava/util/List;)V

    move-object v9, v10

    :goto_5
    iput-object v9, v2, LG/w;->l:LG/V;

    new-instance v9, LG/x;

    invoke-direct {v9, v2}, LG/x;-><init>(LG/w;)V

    iput-object v9, v1, Lt0/f;->e0:LG/x;

    iput-boolean v7, v1, Lt0/f;->Y:Z

    :cond_a
    :goto_6
    iget-wide v9, v0, Lt0/g;->x:J

    iget-wide v11, v0, Lt0/g;->u:J

    iget-wide v13, v0, Lt0/g;->t:J

    iget v2, v1, Lt0/f;->f:I

    const/4 v15, 0x2

    if-eq v2, v15, :cond_b

    goto/16 :goto_d

    :cond_b
    iget v2, v1, Lt0/f;->d:I

    iget-object v15, v0, Lt0/g;->F:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-boolean v15, v1, Lt0/f;->Z:Z

    if-nez v15, :cond_14

    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_c

    goto/16 :goto_d

    :cond_c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d

    move-wide/from16 v16, v3

    move/from16 v22, v8

    :goto_7
    move-wide/from16 v2, v16

    goto/16 :goto_b

    :cond_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    move-wide/from16 v16, v3

    const/16 v3, 0x14

    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, -0x1

    const-wide/16 v18, 0x0

    move-wide/from16 v20, v5

    move v15, v8

    move v5, v4

    :goto_8
    if-ge v15, v3, :cond_11

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt0/d;

    move/from16 v22, v8

    move-wide/from16 v23, v9

    iget-wide v8, v6, Lt0/d;->e:J

    move v10, v7

    move-wide/from16 v25, v8

    iget-wide v7, v6, Lt0/d;->g:J

    move v9, v10

    move-wide/from16 v27, v11

    iget-wide v10, v6, Lt0/d;->f:J

    const-wide/32 v29, 0x989680

    cmp-long v6, v25, v29

    if-lez v6, :cond_e

    goto :goto_a

    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v9

    if-ge v15, v6, :cond_f

    add-int/lit8 v6, v15, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt0/d;

    move-wide/from16 v29, v10

    iget-wide v9, v6, Lt0/d;->f:J

    move-wide/from16 v31, v13

    iget-wide v12, v6, Lt0/d;->g:J

    add-long/2addr v9, v12

    add-long v7, v29, v7

    sub-long/2addr v9, v7

    iget-wide v6, v6, Lt0/d;->e:J

    sub-long v6, v6, v25

    goto :goto_9

    :cond_f
    move-wide/from16 v29, v10

    move-wide/from16 v31, v13

    add-long v9, v27, v31

    add-long v6, v29, v7

    sub-long/2addr v9, v6

    sub-long v6, v23, v25

    :goto_9
    cmp-long v8, v6, v20

    if-lez v8, :cond_10

    long-to-double v8, v9

    long-to-double v6, v6

    div-double/2addr v8, v6

    cmpl-double v6, v8, v18

    if-lez v6, :cond_10

    move-wide/from16 v18, v8

    move v5, v15

    :cond_10
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v22

    move-wide/from16 v9, v23

    move-wide/from16 v11, v27

    move-wide/from16 v13, v31

    const/4 v7, 0x1

    goto :goto_8

    :cond_11
    move/from16 v22, v8

    :goto_a
    if-ne v5, v4, :cond_12

    goto/16 :goto_7

    :cond_12
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt0/d;

    iget-wide v2, v2, Lt0/d;->e:J

    :goto_b
    cmp-long v4, v2, v16

    if-eqz v4, :cond_14

    iget-object v4, v1, Lt0/f;->e0:LG/x;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, LG/x;->m:LG/V;

    new-instance v5, Lk0/e;

    invoke-direct {v5, v2, v3}, Lk0/e;-><init>(J)V

    if-nez v4, :cond_13

    new-instance v2, LG/V;

    const/4 v9, 0x1

    new-array v3, v9, [LG/U;

    aput-object v5, v3, v22

    invoke-direct {v2, v3}, LG/V;-><init>([LG/U;)V

    goto :goto_c

    :cond_13
    const/4 v9, 0x1

    new-array v2, v9, [LG/U;

    aput-object v5, v2, v22

    invoke-virtual {v4, v2}, LG/V;->a([LG/U;)LG/V;

    move-result-object v2

    :goto_c
    iget-object v3, v1, Lt0/f;->e0:LG/x;

    invoke-virtual {v3}, LG/x;->a()LG/w;

    move-result-object v3

    iput-object v2, v3, LG/w;->l:LG/V;

    new-instance v2, LG/x;

    invoke-direct {v2, v3}, LG/x;-><init>(LG/w;)V

    iput-object v2, v1, Lt0/f;->e0:LG/x;

    iput-boolean v9, v1, Lt0/f;->Z:Z

    :cond_14
    :goto_d
    return-void
.end method

.method public final t(Lb0/o;Lt0/f;IZ)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "S_TEXT/UTF8"

    iget-object v5, v2, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v2, Lt0/g;->r0:[B

    invoke-virtual {v0, v1, v2, v3}, Lt0/g;->u(Lb0/o;[BI)V

    iget v1, v0, Lt0/g;->i0:I

    invoke-virtual {v0}, Lt0/g;->q()V

    return v1

    :cond_0
    const-string v4, "S_TEXT/ASS"

    iget-object v5, v2, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "S_TEXT/SSA"

    iget-object v5, v2, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_e

    :cond_1
    const-string v4, "S_TEXT/WEBVTT"

    iget-object v5, v2, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Lt0/g;->u0:[B

    invoke-virtual {v0, v1, v2, v3}, Lt0/g;->u(Lb0/o;[BI)V

    iget v1, v0, Lt0/g;->i0:I

    invoke-virtual {v0}, Lt0/g;->q()V

    return v1

    :cond_2
    iget-boolean v4, v2, Lt0/f;->X:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v4, v2, Lt0/f;->e0:LG/x;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lt0/f;->e0:LG/x;

    invoke-static {v1, v3, v4}, Lb0/a;->y(Lb0/o;ILG/x;)LG/x;

    move-result-object v4

    iput-object v4, v2, Lt0/f;->e0:LG/x;

    iget-object v6, v2, Lt0/f;->d0:Lb0/G;

    invoke-interface {v6, v4}, Lb0/G;->b(LG/x;)V

    iput-boolean v5, v2, Lt0/f;->X:Z

    invoke-virtual {v0}, Lt0/g;->l()V

    :cond_3
    iget-object v4, v2, Lt0/f;->d0:Lb0/G;

    iget-boolean v6, v0, Lt0/g;->k0:Z

    iget-object v7, v0, Lt0/g;->n:LJ/D;

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v6, :cond_14

    iget-boolean v6, v2, Lt0/f;->j:Z

    iget-object v11, v0, Lt0/g;->k:LJ/D;

    if-eqz v6, :cond_f

    iget v6, v0, Lt0/g;->d0:I

    const v12, -0x40000001    # -1.9999999f

    and-int/2addr v6, v12

    iput v6, v0, Lt0/g;->d0:I

    iget-boolean v6, v0, Lt0/g;->l0:Z

    const/16 v12, 0x80

    if-nez v6, :cond_5

    iget-object v6, v11, LJ/D;->a:[B

    invoke-interface {v1, v6, v5, v10}, Lb0/o;->readFully([BII)V

    iget v6, v0, Lt0/g;->h0:I

    add-int/2addr v6, v10

    iput v6, v0, Lt0/g;->h0:I

    iget-object v6, v11, LJ/D;->a:[B

    aget-byte v6, v6, v5

    and-int/lit16 v13, v6, 0x80

    if-eq v13, v12, :cond_4

    iput-byte v6, v0, Lt0/g;->o0:B

    iput-boolean v10, v0, Lt0/g;->l0:Z

    goto :goto_0

    :cond_4
    const-string v1, "Extension bit is set in signal byte"

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_5
    :goto_0
    iget-byte v6, v0, Lt0/g;->o0:B

    and-int/lit8 v13, v6, 0x1

    if-ne v13, v10, :cond_10

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_6

    move v6, v10

    goto :goto_1

    :cond_6
    move v6, v5

    :goto_1
    iget v13, v0, Lt0/g;->d0:I

    const/high16 v14, 0x40000000    # 2.0f

    or-int/2addr v13, v14

    iput v13, v0, Lt0/g;->d0:I

    iget-boolean v13, v0, Lt0/g;->p0:Z

    if-nez v13, :cond_8

    iget-object v13, v0, Lt0/g;->p:LJ/D;

    iget-object v14, v13, LJ/D;->a:[B

    const/16 v15, 0x8

    invoke-interface {v1, v14, v5, v15}, Lb0/o;->readFully([BII)V

    iget v14, v0, Lt0/g;->h0:I

    add-int/2addr v14, v15

    iput v14, v0, Lt0/g;->h0:I

    iput-boolean v10, v0, Lt0/g;->p0:Z

    iget-object v14, v11, LJ/D;->a:[B

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    move v12, v5

    :goto_2
    or-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v14, v5

    invoke-virtual {v11, v5}, LJ/D;->N(I)V

    invoke-interface {v4, v11, v10, v10}, Lb0/G;->c(LJ/D;II)V

    iget v12, v0, Lt0/g;->i0:I

    add-int/2addr v12, v10

    iput v12, v0, Lt0/g;->i0:I

    invoke-virtual {v13, v5}, LJ/D;->N(I)V

    invoke-interface {v4, v13, v15, v10}, Lb0/G;->c(LJ/D;II)V

    iget v12, v0, Lt0/g;->i0:I

    add-int/2addr v12, v15

    iput v12, v0, Lt0/g;->i0:I

    :cond_8
    if-eqz v6, :cond_10

    iget-boolean v6, v0, Lt0/g;->m0:Z

    if-nez v6, :cond_9

    iget-object v6, v11, LJ/D;->a:[B

    invoke-interface {v1, v6, v5, v10}, Lb0/o;->readFully([BII)V

    iget v6, v0, Lt0/g;->h0:I

    add-int/2addr v6, v10

    iput v6, v0, Lt0/g;->h0:I

    invoke-virtual {v11, v5}, LJ/D;->N(I)V

    invoke-virtual {v11}, LJ/D;->A()I

    move-result v6

    iput v6, v0, Lt0/g;->n0:I

    iput-boolean v10, v0, Lt0/g;->m0:Z

    :cond_9
    iget v6, v0, Lt0/g;->n0:I

    mul-int/2addr v6, v8

    invoke-virtual {v11, v6}, LJ/D;->K(I)V

    iget-object v12, v11, LJ/D;->a:[B

    invoke-interface {v1, v12, v5, v6}, Lb0/o;->readFully([BII)V

    iget v12, v0, Lt0/g;->h0:I

    add-int/2addr v12, v6

    iput v12, v0, Lt0/g;->h0:I

    iget v6, v0, Lt0/g;->n0:I

    div-int/2addr v6, v9

    add-int/2addr v6, v10

    int-to-short v6, v6

    mul-int/lit8 v12, v6, 0x6

    add-int/2addr v12, v9

    iget-object v13, v0, Lt0/g;->s:Ljava/nio/ByteBuffer;

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/nio/Buffer;->capacity()I

    move-result v13

    if-ge v13, v12, :cond_b

    :cond_a
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    iput-object v13, v0, Lt0/g;->s:Ljava/nio/ByteBuffer;

    :cond_b
    iget-object v13, v0, Lt0/g;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v13, v0, Lt0/g;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v6, v5

    move v13, v6

    :goto_3
    iget v14, v0, Lt0/g;->n0:I

    if-ge v6, v14, :cond_d

    invoke-virtual {v11}, LJ/D;->E()I

    move-result v14

    rem-int/lit8 v15, v6, 0x2

    if-nez v15, :cond_c

    iget-object v15, v0, Lt0/g;->s:Ljava/nio/ByteBuffer;

    sub-int v13, v14, v13

    int-to-short v13, v13

    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_c
    iget-object v15, v0, Lt0/g;->s:Ljava/nio/ByteBuffer;

    sub-int v13, v14, v13

    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move v13, v14

    goto :goto_3

    :cond_d
    iget v6, v0, Lt0/g;->h0:I

    sub-int v6, v3, v6

    sub-int/2addr v6, v13

    rem-int/2addr v14, v9

    if-ne v14, v10, :cond_e

    iget-object v13, v0, Lt0/g;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_e
    iget-object v13, v0, Lt0/g;->s:Ljava/nio/ByteBuffer;

    int-to-short v6, v6

    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v6, v0, Lt0/g;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    iget-object v6, v0, Lt0/g;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v13, v0, Lt0/g;->q:LJ/D;

    invoke-virtual {v13, v6, v12}, LJ/D;->L([BI)V

    invoke-interface {v4, v13, v12, v10}, Lb0/G;->c(LJ/D;II)V

    iget v6, v0, Lt0/g;->i0:I

    add-int/2addr v6, v12

    iput v6, v0, Lt0/g;->i0:I

    goto :goto_6

    :cond_f
    iget-object v6, v2, Lt0/f;->k:[B

    if-eqz v6, :cond_10

    array-length v12, v6

    invoke-virtual {v7, v6, v12}, LJ/D;->L([BI)V

    :cond_10
    :goto_6
    const-string v6, "A_OPUS"

    iget-object v12, v2, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move/from16 v6, p4

    goto :goto_7

    :cond_11
    iget v6, v2, Lt0/f;->h:I

    if-lez v6, :cond_12

    move v6, v10

    goto :goto_7

    :cond_12
    move v6, v5

    :goto_7
    if-eqz v6, :cond_13

    iget v6, v0, Lt0/g;->d0:I

    const/high16 v12, 0x10000000

    or-int/2addr v6, v12

    iput v6, v0, Lt0/g;->d0:I

    iget-object v6, v0, Lt0/g;->r:LJ/D;

    invoke-virtual {v6, v5}, LJ/D;->K(I)V

    iget v6, v7, LJ/D;->c:I

    add-int/2addr v6, v3

    iget v12, v0, Lt0/g;->h0:I

    sub-int/2addr v6, v12

    invoke-virtual {v11, v8}, LJ/D;->K(I)V

    iget-object v12, v11, LJ/D;->a:[B

    shr-int/lit8 v13, v6, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v12, v5

    shr-int/lit8 v13, v6, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v12, v10

    shr-int/lit8 v13, v6, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v12, v9

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/4 v13, 0x3

    aput-byte v6, v12, v13

    invoke-interface {v4, v11, v8, v9}, Lb0/G;->c(LJ/D;II)V

    iget v6, v0, Lt0/g;->i0:I

    add-int/2addr v6, v8

    iput v6, v0, Lt0/g;->i0:I

    :cond_13
    iput-boolean v10, v0, Lt0/g;->k0:Z

    :cond_14
    iget v6, v7, LJ/D;->c:I

    add-int/2addr v3, v6

    const-string v6, "V_MPEG4/ISO/AVC"

    iget-object v11, v2, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "V_MPEGH/ISO/HEVC"

    iget-object v11, v2, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_b

    :cond_15
    iget-object v6, v2, Lt0/f;->W:Lb0/H;

    if-eqz v6, :cond_17

    iget v6, v7, LJ/D;->c:I

    if-nez v6, :cond_16

    goto :goto_8

    :cond_16
    move v10, v5

    :goto_8
    invoke-static {v10}, LF1/i;->o(Z)V

    iget-object v6, v2, Lt0/f;->W:Lb0/H;

    invoke-virtual {v6, v1}, Lb0/H;->c(Lb0/o;)V

    :cond_17
    :goto_9
    iget v6, v0, Lt0/g;->h0:I

    if-ge v6, v3, :cond_1d

    sub-int v6, v3, v6

    invoke-virtual {v7}, LJ/D;->a()I

    move-result v9

    if-lez v9, :cond_18

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v4, v6, v7}, Lb0/G;->a(ILJ/D;)V

    goto :goto_a

    :cond_18
    invoke-interface {v4, v1, v6, v5}, Lb0/G;->g(LG/o;IZ)I

    move-result v6

    :goto_a
    iget v9, v0, Lt0/g;->h0:I

    add-int/2addr v9, v6

    iput v9, v0, Lt0/g;->h0:I

    iget v9, v0, Lt0/g;->i0:I

    add-int/2addr v9, v6

    iput v9, v0, Lt0/g;->i0:I

    goto :goto_9

    :cond_19
    :goto_b
    iget-object v6, v0, Lt0/g;->j:LJ/D;

    iget-object v11, v6, LJ/D;->a:[B

    aput-byte v5, v11, v5

    aput-byte v5, v11, v10

    aput-byte v5, v11, v9

    iget v9, v2, Lt0/f;->f0:I

    rsub-int/lit8 v10, v9, 0x4

    :goto_c
    iget v12, v0, Lt0/g;->h0:I

    if-ge v12, v3, :cond_1d

    iget v12, v0, Lt0/g;->j0:I

    if-nez v12, :cond_1b

    invoke-virtual {v7}, LJ/D;->a()I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int v13, v10, v12

    sub-int v14, v9, v12

    invoke-interface {v1, v11, v13, v14}, Lb0/o;->readFully([BII)V

    if-lez v12, :cond_1a

    invoke-virtual {v7, v10, v11, v12}, LJ/D;->k(I[BI)V

    :cond_1a
    iget v12, v0, Lt0/g;->h0:I

    add-int/2addr v12, v9

    iput v12, v0, Lt0/g;->h0:I

    invoke-virtual {v6, v5}, LJ/D;->N(I)V

    invoke-virtual {v6}, LJ/D;->E()I

    move-result v12

    iput v12, v0, Lt0/g;->j0:I

    iget-object v12, v0, Lt0/g;->i:LJ/D;

    invoke-virtual {v12, v5}, LJ/D;->N(I)V

    invoke-interface {v4, v8, v12}, Lb0/G;->a(ILJ/D;)V

    iget v12, v0, Lt0/g;->i0:I

    add-int/2addr v12, v8

    iput v12, v0, Lt0/g;->i0:I

    goto :goto_c

    :cond_1b
    invoke-virtual {v7}, LJ/D;->a()I

    move-result v13

    if-lez v13, :cond_1c

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-interface {v4, v12, v7}, Lb0/G;->a(ILJ/D;)V

    goto :goto_d

    :cond_1c
    invoke-interface {v4, v1, v12, v5}, Lb0/G;->g(LG/o;IZ)I

    move-result v12

    :goto_d
    iget v13, v0, Lt0/g;->h0:I

    add-int/2addr v13, v12

    iput v13, v0, Lt0/g;->h0:I

    iget v13, v0, Lt0/g;->i0:I

    add-int/2addr v13, v12

    iput v13, v0, Lt0/g;->i0:I

    iget v13, v0, Lt0/g;->j0:I

    sub-int/2addr v13, v12

    iput v13, v0, Lt0/g;->j0:I

    goto :goto_c

    :cond_1d
    const-string v1, "A_VORBIS"

    iget-object v2, v2, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lt0/g;->l:LJ/D;

    invoke-virtual {v1, v5}, LJ/D;->N(I)V

    invoke-interface {v4, v8, v1}, Lb0/G;->a(ILJ/D;)V

    iget v1, v0, Lt0/g;->i0:I

    add-int/2addr v1, v8

    iput v1, v0, Lt0/g;->i0:I

    :cond_1e
    iget v1, v0, Lt0/g;->i0:I

    invoke-virtual {v0}, Lt0/g;->q()V

    return v1

    :cond_1f
    :goto_e
    sget-object v2, Lt0/g;->t0:[B

    invoke-virtual {v0, v1, v2, v3}, Lt0/g;->u(Lb0/o;[BI)V

    iget v1, v0, Lt0/g;->i0:I

    invoke-virtual {v0}, Lt0/g;->q()V

    return v1
.end method

.method public final u(Lb0/o;[BI)V
    .locals 5

    array-length v0, p2

    add-int/2addr v0, p3

    iget-object v1, p0, Lt0/g;->o:LJ/D;

    iget-object v2, v1, LJ/D;->a:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    add-int v2, v0, p3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v2

    invoke-virtual {v1, v2, v3}, LJ/D;->L([BI)V

    goto :goto_0

    :cond_0
    array-length v3, p2

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v2, v1, LJ/D;->a:[B

    array-length p2, p2

    invoke-interface {p1, v2, p2, p3}, Lb0/o;->readFully([BII)V

    invoke-virtual {v1, v4}, LJ/D;->N(I)V

    invoke-virtual {v1, v0}, LJ/D;->M(I)V

    return-void
.end method
