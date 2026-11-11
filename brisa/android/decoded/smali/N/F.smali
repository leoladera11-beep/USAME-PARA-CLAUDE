.class public final LN/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements LU/x;
.implements LN/Z;
.implements LZ/w;


# static fields
.field public static final k0:J


# instance fields
.field public final A:LO/d;

.field public final B:LJ/O;

.field public final C:Z

.field public final D:LH/f;

.field public E:Z

.field public F:LN/h0;

.field public G:LN/g0;

.field public H:Z

.field public I:Z

.field public J:LN/E;

.field public K:I

.field public L:LN/X;

.field public M:LI0/w;

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:J

.field public S:Z

.field public T:I

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:I

.field public Z:LN/E;

.field public a0:J

.field public b0:J

.field public c0:I

.field public d0:Z

.field public final e:[LN/f0;

.field public e0:LN/k;

.field public final f:[LN/a;

.field public f0:J

.field public final g:[Z

.field public g0:LN/n;

.field public final h:LW/s;

.field public h0:J

.field public final i:LW/t;

.field public i0:Z

.field public final j:LN/H;

.field public j0:F

.field public final k:LJ/O;

.field public final l:LN/Y;

.field public final m:Landroid/os/Looper;

.field public final n:LG/p0;

.field public final o:LG/n0;

.field public final p:J

.field public final q:LN/h;

.field public final r:Ljava/util/ArrayList;

.field public final s:LJ/M;

.field public final t:LN/p;

.field public final u:LN/N;

.field public final v:LN/W;

.field public final w:LN/e;

.field public final x:J

.field public final y:LO/j;

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, LJ/W;->S(J)J

    move-result-wide v0

    sput-wide v0, LN/F;->k0:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[LN/a;[LN/a;LW/s;LW/t;LN/H;LX/d;IZLO/d;LN/h0;LN/e;JZLandroid/os/Looper;LJ/M;LN/p;LO/j;LZ/w;Z)V
    .locals 11

    move-object/from16 v1, p6

    move-object/from16 v2, p10

    move-object/from16 v3, p17

    move-object/from16 v4, p19

    sget-object v5, LN/n;->a:LN/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, p0, LN/F;->h0:J

    move-object/from16 v8, p18

    iput-object v8, p0, LN/F;->t:LN/p;

    iput-object p4, p0, LN/F;->h:LW/s;

    move-object/from16 v8, p5

    iput-object v8, p0, LN/F;->i:LW/t;

    iput-object v1, p0, LN/F;->j:LN/H;

    move/from16 v9, p8

    iput v9, p0, LN/F;->T:I

    move/from16 v9, p9

    iput-boolean v9, p0, LN/F;->U:Z

    move-object/from16 v9, p11

    iput-object v9, p0, LN/F;->F:LN/h0;

    move-object/from16 v9, p12

    iput-object v9, p0, LN/F;->w:LN/e;

    move-wide/from16 v9, p13

    iput-wide v9, p0, LN/F;->x:J

    const/4 v9, 0x0

    iput-boolean v9, p0, LN/F;->O:Z

    move/from16 v10, p15

    iput-boolean v10, p0, LN/F;->z:Z

    iput-object v3, p0, LN/F;->s:LJ/M;

    iput-object v4, p0, LN/F;->y:LO/j;

    iput-object v5, p0, LN/F;->g0:LN/n;

    iput-object v2, p0, LN/F;->A:LO/d;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, LN/F;->j0:F

    sget-object v5, LN/g0;->b:LN/g0;

    iput-object v5, p0, LN/F;->G:LN/g0;

    move/from16 v5, p21

    iput-boolean v5, p0, LN/F;->E:Z

    iput-wide v6, p0, LN/F;->f0:J

    iput-wide v6, p0, LN/F;->R:J

    check-cast v1, LN/g;

    iget-wide v5, v1, LN/g;->n:J

    iput-wide v5, p0, LN/F;->p:J

    sget-object v1, LG/q0;->a:LG/m0;

    invoke-static {v8}, LN/X;->k(LW/t;)LN/X;

    move-result-object v1

    iput-object v1, p0, LN/F;->L:LN/X;

    new-instance v5, LI0/w;

    invoke-direct {v5, v1}, LI0/w;-><init>(LN/X;)V

    iput-object v5, p0, LN/F;->M:LI0/w;

    array-length v1, p2

    new-array v1, v1, [LN/a;

    iput-object v1, p0, LN/F;->f:[LN/a;

    array-length v1, p2

    new-array v1, v1, [Z

    iput-object v1, p0, LN/F;->g:[Z

    move-object v0, p4

    check-cast v0, LW/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, p2

    new-array v1, v1, [LN/f0;

    iput-object v1, p0, LN/F;->e:[LN/f0;

    move v1, v9

    move v5, v1

    :goto_0
    array-length v6, p2

    const/4 v7, 0x1

    if-ge v1, v6, :cond_1

    aget-object v6, p2, v1

    iput v1, v6, LN/a;->i:I

    iput-object v4, v6, LN/a;->j:LO/j;

    iput-object v3, v6, LN/a;->k:LJ/M;

    iget-object v8, p0, LN/F;->f:[LN/a;

    aput-object v6, v8, v1

    iget-object v6, p0, LN/F;->f:[LN/a;

    aget-object v6, v6, v1

    iget-object v8, v6, LN/a;->e:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iput-object v0, v6, LN/a;->w:LW/o;

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aget-object v6, p3, v1

    if-eqz v6, :cond_0

    iput v1, v6, LN/a;->i:I

    iput-object v4, v6, LN/a;->j:LO/j;

    iput-object v3, v6, LN/a;->k:LJ/M;

    move v5, v7

    :cond_0
    iget-object v7, p0, LN/F;->e:[LN/f0;

    new-instance v8, LN/f0;

    aget-object v10, p2, v1

    invoke-direct {v8, v10, v6, v1}, LN/f0;-><init>(LN/a;LN/a;I)V

    aput-object v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    iput-boolean v5, p0, LN/F;->C:Z

    new-instance p3, LN/h;

    invoke-direct {p3, p0, v3}, LN/h;-><init>(LN/F;LJ/M;)V

    iput-object p3, p0, LN/F;->q:LN/h;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, LN/F;->r:Ljava/util/ArrayList;

    new-instance p3, LG/p0;

    invoke-direct {p3}, LG/p0;-><init>()V

    iput-object p3, p0, LN/F;->n:LG/p0;

    new-instance p3, LG/n0;

    invoke-direct {p3}, LG/n0;-><init>()V

    iput-object p3, p0, LN/F;->o:LG/n0;

    iget-object p3, v0, LW/s;->a:LN/F;

    if-nez p3, :cond_2

    move p3, v7

    goto :goto_1

    :cond_2
    move p3, v9

    :goto_1
    invoke-static {p3}, LF1/i;->o(Z)V

    iput-object p0, v0, LW/s;->a:LN/F;

    move-object/from16 p3, p7

    iput-object p3, v0, LW/s;->b:LX/d;

    iget-object v1, v0, LW/o;->e:LW/j;

    iput-object v1, v0, LW/o;->f:LW/j;

    iput-boolean v7, p0, LN/F;->d0:Z

    const/4 v0, 0x0

    move-object/from16 v1, p16

    invoke-virtual {v3, v1, v0}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object v0

    iput-object v0, p0, LN/F;->B:LJ/O;

    new-instance v1, LN/N;

    new-instance v5, LI0/E;

    const/16 v6, 0x11

    invoke-direct {v5, p0, v6}, LI0/E;-><init>(Ljava/lang/Object;I)V

    array-length p2, p2

    invoke-direct {v1, v2, v0, v5, p2}, LN/N;-><init>(LO/d;LJ/O;LI0/E;I)V

    iput-object v1, p0, LN/F;->u:LN/N;

    new-instance p2, LN/W;

    move-object/from16 p12, p0

    move-object/from16 p11, p2

    move-object/from16 p16, p3

    move-object/from16 p14, v0

    move-object/from16 p13, v2

    move-object/from16 p15, v4

    invoke-direct/range {p11 .. p16}, LN/W;-><init>(LN/F;LO/d;LJ/O;LO/j;LX/d;)V

    move-object/from16 p3, p11

    iput-object p3, p0, LN/F;->v:LN/W;

    new-instance p3, LN/Y;

    invoke-direct {p3}, LN/Y;-><init>()V

    iput-object p3, p0, LN/F;->l:LN/Y;

    iget-object v1, p3, LN/Y;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p3, LN/Y;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    if-nez v0, :cond_4

    iget v0, p3, LN/Y;->a:I

    if-nez v0, :cond_3

    iget-object v0, p3, LN/Y;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    move v9, v7

    :cond_3
    invoke-static {v9}, LF1/i;->o(Z)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:Playback"

    const/16 v4, -0x10

    invoke-direct {v0, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p3, LN/Y;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p3, LN/Y;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p3, LN/Y;->c:Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_4
    :goto_2
    iget v0, p3, LN/Y;->a:I

    add-int/2addr v0, v7

    iput v0, p3, LN/Y;->a:I

    iget-object p3, p3, LN/Y;->c:Ljava/lang/Object;

    check-cast p3, Landroid/os/Looper;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-object p3, p0, LN/F;->m:Landroid/os/Looper;

    invoke-virtual {v3, p3, p0}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object v0

    iput-object v0, p0, LN/F;->k:LJ/O;

    new-instance v1, LH/f;

    invoke-direct {v1, p1, p3, p0}, LH/f;-><init>(Landroid/content/Context;Landroid/os/Looper;LN/F;)V

    iput-object v1, p0, LN/F;->D:LH/f;

    new-instance p1, LN/y;

    move-object/from16 p3, p20

    invoke-direct {p1, p0, p3}, LN/y;-><init>(LN/F;LZ/w;)V

    const/16 p3, 0x23

    invoke-virtual {v0, p3, p1}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object p1

    invoke-virtual {p1}, LJ/N;->b()V

    new-instance p1, LN/z;

    invoke-direct {p1, p0}, LN/z;-><init>(LN/F;)V

    const/16 p3, 0x27

    invoke-virtual {v0, p3, p1}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object p1

    invoke-virtual {p1}, LJ/N;->b()V

    return-void

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static T(LG/q0;LN/E;ZIZLG/p0;LG/n0;)Landroid/util/Pair;
    .locals 9

    iget-object v0, p1, LN/E;->a:LG/q0;

    invoke-virtual {p0}, LG/q0;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    :try_start_0
    iget v5, p1, LN/E;->b:I

    iget-wide v6, p1, LN/E;->c:J

    move-object v3, p5

    move-object v4, p6

    invoke-virtual/range {v2 .. v7}, LG/q0;->i(LG/p0;LG/n0;IJ)Landroid/util/Pair;

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    move-object v4, v3

    invoke-virtual {p0, v2}, LG/q0;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    iget-object p6, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p6}, LG/q0;->b(Ljava/lang/Object;)I

    move-result p6

    const/4 v0, -0x1

    if-eq p6, v0, :cond_4

    iget-object p2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, p2, v5}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object p2

    iget-boolean p2, p2, LG/n0;->f:Z

    if-eqz p2, :cond_3

    iget p2, v5, LG/n0;->c:I

    const-wide/16 p3, 0x0

    invoke-virtual {v2, p2, v4, p3, p4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object p2

    iget p2, p2, LG/p0;->m:I

    iget-object p3, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, p3}, LG/q0;->b(Ljava/lang/Object;)I

    move-result p3

    if-ne p2, p3, :cond_3

    iget-object p2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p2, v5}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object p2

    iget v6, p2, LG/n0;->c:I

    iget-wide v7, p1, LN/E;->c:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, LG/q0;->i(LG/p0;LG/n0;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object p5

    :cond_4
    move-object v3, p0

    if-eqz p2, :cond_5

    iget-object p0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move p2, p3

    move p3, p4

    move-object p5, v2

    move-object p6, v3

    move-object p1, v5

    move-object p4, p0

    move-object p0, v4

    invoke-static/range {p0 .. p6}, LN/F;->U(LG/p0;LG/n0;IZLjava/lang/Object;LG/q0;LG/q0;)I

    move-result v6

    if-eq v6, v0, :cond_5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v3 .. v8}, LG/q0;->i(LG/p0;LG/n0;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static U(LG/p0;LG/n0;IZLjava/lang/Object;LG/q0;LG/q0;)I
    .locals 12

    move-object v3, p0

    move-object v2, p1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v6, p6

    invoke-virtual {v1, v0, p1}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v4

    iget v4, v4, LG/n0;->c:I

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v4, p0, v7, v8}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v4

    iget-object v4, v4, LG/p0;->a:Ljava/lang/Object;

    const/4 v9, 0x0

    move v5, v9

    :goto_0
    invoke-virtual {v6}, LG/q0;->o()I

    move-result v10

    if-ge v5, v10, :cond_1

    invoke-virtual {v6, v5, p0, v7, v8}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v10

    iget-object v10, v10, LG/p0;->a:Ljava/lang/Object;

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    return v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1}, LG/q0;->h()I

    move-result v7

    const/4 v8, -0x1

    move v11, v8

    move v10, v9

    :goto_1
    if-ge v10, v7, :cond_3

    if-ne v11, v8, :cond_3

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, LG/q0;->d(ILG/n0;LG/p0;IZ)I

    move-result v1

    if-ne v1, v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, LG/q0;->l(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v10, v10, 0x1

    move v3, v1

    move-object v1, v0

    move v0, v3

    move-object v3, p0

    goto :goto_1

    :cond_3
    :goto_2
    if-ne v11, v8, :cond_4

    return v8

    :cond_4
    invoke-virtual {v6, v11, p1, v9}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v0

    iget v0, v0, LG/n0;->c:I

    return v0
.end method

.method public static z(LN/L;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    :try_start_0
    iget-object v1, p0, LN/L;->a:LU/s;

    iget-boolean v2, p0, LN/L;->e:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, LU/s;->p()V

    goto :goto_1

    :cond_0
    iget-object v2, p0, LN/L;->c:[LU/a0;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    invoke-interface {v5}, LU/a0;->x()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean p0, p0, LN/L;->e:Z

    if-nez p0, :cond_3

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, LU/s;->h()J

    move-result-wide v1

    :goto_2
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p0, v1, v3

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_4
    return v0
.end method


# virtual methods
.method public final A()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LN/F;->e:[LN/f0;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LN/F;->u:LN/N;

    iget-object v3, v2, LN/N;->i:LN/L;

    iget-object v2, v2, LN/N;->j:[LN/L;

    aget-object v2, v2, v1

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final A0()V
    .locals 3

    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->l:LN/L;

    iget-boolean v1, p0, LN/F;->S:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, LN/L;->a:LU/s;

    invoke-virtual {v0}, LU/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, LN/F;->L:LN/X;

    iget-boolean v2, v1, LN/X;->g:Z

    if-eq v0, v2, :cond_2

    invoke-virtual {v1, v0}, LN/X;->b(Z)LN/X;

    move-result-object v0

    iput-object v0, p0, LN/F;->L:LN/X;

    :cond_2
    return-void
.end method

.method public final B(ILU/A;)Z
    .locals 2

    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v1, v0, LN/N;->k:[LN/L;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v1, v1, LN/L;->g:LN/M;

    iget-object v1, v1, LN/M;->a:LU/A;

    invoke-virtual {v1, p2}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, LN/F;->e:[LN/f0;

    aget-object p2, p2, p1

    iget-object v0, v0, LN/N;->k:[LN/L;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, LN/f0;->h(LN/L;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final B0(LU/A;LW/t;)V
    .locals 9

    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->l:LN/L;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LN/L;->d()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, LN/F;->p(J)J

    iget-object v1, p0, LN/F;->L:LN/X;

    iget-object v1, v1, LN/X;->a:LG/q0;

    iget-object v0, v0, LN/L;->g:LN/M;

    iget-object v0, v0, LN/M;->a:LU/A;

    invoke-virtual {p0, v1, v0}, LN/F;->w0(LG/q0;LU/A;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN/F;->w:LN/e;

    iget-wide v0, v0, LN/e;->h:J

    :cond_0
    iget-object v0, p0, LN/F;->L:LN/X;

    iget-object v0, v0, LN/X;->a:LG/q0;

    iget-object v1, p0, LN/F;->q:LN/h;

    invoke-virtual {v1}, LN/h;->g()LG/a0;

    move-result-object v1

    iget v1, v1, LG/a0;->a:F

    iget-object v1, p0, LN/F;->L:LN/X;

    iget-boolean v1, v1, LN/X;->l:Z

    iget-object p2, p2, LW/t;->c:[LW/q;

    iget-object v1, p0, LN/F;->j:LN/H;

    check-cast v1, LN/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, LN/g;->o:Lu1/T;

    iget-object v3, p0, LN/F;->y:LO/j;

    iget-object v4, v3, LO/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v4, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    iget v2, v1, LN/g;->l:I

    :goto_0
    iget-object v5, v1, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN/f;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v2, v4, :cond_8

    iget-object p1, p1, LU/A;->a:Ljava/lang/Object;

    iget-object v2, v1, LN/g;->b:LG/n0;

    invoke-virtual {v0, p1, v2}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object p1

    iget p1, p1, LG/n0;->c:I

    iget-object v2, v1, LN/g;->a:LG/p0;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, p1, v2, v4, v5}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object p1

    iget-object p1, p1, LG/p0;->c:LG/P;

    iget-object p1, p1, LG/P;->b:LG/K;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    iget-object p1, p1, LG/K;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, LN/g;->r:Lu1/C0;

    invoke-virtual {v2, p1}, Lu1/P;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_4
    const/4 p1, 0x1

    :goto_1
    array-length v2, p2

    move v4, v0

    move v5, v4

    :goto_2
    const/high16 v6, 0xc80000

    if-ge v4, v2, :cond_7

    aget-object v7, p2, v4

    if-eqz v7, :cond_6

    invoke-interface {v7}, LW/q;->g()LG/r0;

    move-result-object v7

    iget v7, v7, LG/r0;->c:I

    const/high16 v8, 0x20000

    packed-switch v7, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    move v6, v8

    goto :goto_3

    :pswitch_1
    const/high16 v6, 0x1900000

    goto :goto_3

    :pswitch_2
    if-eqz p1, :cond_5

    const/high16 v6, 0x12c0000

    goto :goto_3

    :cond_5
    const/high16 v6, 0x7d00000

    goto :goto_3

    :pswitch_3
    const/high16 v6, 0x89a0000

    goto :goto_3

    :pswitch_4
    move v6, v0

    :goto_3
    :pswitch_5
    add-int/2addr v5, v6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const/high16 p1, 0xc880000

    invoke-static {v5, v6, p1}, LJ/W;->g(III)I

    move-result v2

    :cond_8
    iput v2, v3, LN/f;->c:I

    invoke-virtual {v1}, LN/g;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final C()Z
    .locals 5

    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->i:LN/L;

    iget-object v1, v0, LN/L;->g:LN/M;

    iget-wide v1, v1, LN/M;->e:J

    iget-boolean v0, v0, LN/L;->e:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, LN/F;->L:LN/X;

    iget-wide v3, v0, LN/X;->s:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, LN/F;->v0()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final C0(ILjava/util/List;I)V
    .locals 6

    iget-object v0, p0, LN/F;->M:LI0/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LI0/w;->f(I)V

    iget-object v0, p0, LN/F;->v:LN/W;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, LN/W;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p3, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt p3, v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v4}, LF1/i;->g(Z)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int v5, p3, p1

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v1}, LF1/i;->g(Z)V

    move v1, p1

    :goto_2
    if-ge v1, p3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN/V;

    iget-object v4, v4, LN/V;->a:LU/v;

    sub-int v5, v1, p1

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LG/P;

    invoke-virtual {v4, v5}, LU/v;->s(LG/P;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, LN/W;->b()LG/q0;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, LN/F;->v(LG/q0;Z)V

    return-void
.end method

.method public final D()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, LN/F;->u:LN/N;

    iget-object v1, v1, LN/N;->l:LN/L;

    invoke-static {v1}, LN/F;->z(LN/L;)Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-nez v1, :cond_0

    move v1, v6

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, LN/F;->u:LN/N;

    iget-object v1, v1, LN/N;->l:LN/L;

    iget-boolean v7, v1, LN/L;->e:Z

    if-nez v7, :cond_1

    move-wide v7, v4

    goto :goto_0

    :cond_1
    iget-object v7, v1, LN/L;->a:LU/s;

    invoke-virtual {v7}, LU/s;->h()J

    move-result-wide v7

    :goto_0
    invoke-virtual {v0, v7, v8}, LN/F;->p(J)J

    move-result-wide v13

    iget-object v7, v0, LN/F;->u:LN/N;

    iget-object v7, v7, LN/N;->i:LN/L;

    iget-object v7, v0, LN/F;->L:LN/X;

    iget-object v7, v7, LN/X;->a:LG/q0;

    iget-object v8, v1, LN/L;->g:LN/M;

    iget-object v8, v8, LN/M;->a:LU/A;

    invoke-virtual {v0, v7, v8}, LN/F;->w0(LG/q0;LU/A;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, LN/F;->w:LN/e;

    iget-wide v7, v7, LN/e;->h:J

    move-wide/from16 v17, v7

    goto :goto_1

    :cond_2
    move-wide/from16 v17, v2

    :goto_1
    new-instance v9, LN/G;

    iget-object v10, v0, LN/F;->y:LO/j;

    iget-object v7, v0, LN/F;->L:LN/X;

    iget-object v11, v7, LN/X;->a:LG/q0;

    iget-object v1, v1, LN/L;->g:LN/M;

    iget-object v12, v1, LN/M;->a:LU/A;

    iget-object v1, v0, LN/F;->q:LN/h;

    invoke-virtual {v1}, LN/h;->g()LG/a0;

    move-result-object v1

    iget v15, v1, LG/a0;->a:F

    iget-object v1, v0, LN/F;->L:LN/X;

    iget-boolean v1, v1, LN/X;->l:Z

    iget-boolean v1, v0, LN/F;->Q:Z

    move/from16 v16, v1

    invoke-direct/range {v9 .. v18}, LN/G;-><init>(LO/j;LG/q0;LU/A;JFZJ)V

    iget-object v1, v0, LN/F;->j:LN/H;

    check-cast v1, LN/g;

    invoke-virtual {v1, v9}, LN/g;->b(LN/G;)Z

    move-result v1

    iget-object v7, v0, LN/F;->u:LN/N;

    iget-object v7, v7, LN/N;->i:LN/L;

    if-nez v1, :cond_4

    iget-boolean v8, v7, LN/L;->e:Z

    if-eqz v8, :cond_4

    const-wide/32 v10, 0x7a120

    cmp-long v8, v13, v10

    if-gez v8, :cond_4

    iget-wide v10, v0, LN/F;->p:J

    cmp-long v8, v10, v4

    if-gtz v8, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v7, LN/L;->a:LU/s;

    iget-object v7, v0, LN/F;->L:LN/X;

    iget-wide v7, v7, LN/X;->s:J

    invoke-virtual {v1, v7, v8}, LU/s;->r(J)V

    iget-object v1, v0, LN/F;->j:LN/H;

    check-cast v1, LN/g;

    invoke-virtual {v1, v9}, LN/g;->b(LN/G;)Z

    move-result v1

    :cond_4
    :goto_2
    iput-boolean v1, v0, LN/F;->S:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, LN/F;->u:LN/N;

    iget-object v1, v1, LN/N;->l:LN/L;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, LN/I;

    invoke-direct {v7}, LN/I;-><init>()V

    iget-wide v8, v0, LN/F;->a0:J

    iget-wide v10, v1, LN/L;->p:J

    sub-long/2addr v8, v10

    iput-wide v8, v7, LN/I;->a:J

    iget-object v8, v0, LN/F;->q:LN/h;

    invoke-virtual {v8}, LN/h;->g()LG/a0;

    move-result-object v8

    iget v8, v8, LG/a0;->a:F

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    const/4 v10, 0x1

    if-gtz v9, :cond_6

    const v9, -0x800001

    cmpl-float v9, v8, v9

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    move v9, v6

    goto :goto_4

    :cond_6
    :goto_3
    move v9, v10

    :goto_4
    invoke-static {v9}, LF1/i;->g(Z)V

    iput v8, v7, LN/I;->b:F

    iget-wide v8, v0, LN/F;->R:J

    cmp-long v4, v8, v4

    if-gez v4, :cond_8

    cmp-long v2, v8, v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    move v2, v6

    goto :goto_6

    :cond_8
    :goto_5
    move v2, v10

    :goto_6
    invoke-static {v2}, LF1/i;->g(Z)V

    iput-wide v8, v7, LN/I;->c:J

    new-instance v2, LN/J;

    invoke-direct {v2, v7}, LN/J;-><init>(LN/I;)V

    iget-object v3, v1, LN/L;->m:LN/L;

    if-nez v3, :cond_9

    move v6, v10

    :cond_9
    invoke-static {v6}, LF1/i;->o(Z)V

    iget-object v1, v1, LN/L;->a:LU/s;

    invoke-virtual {v1, v2}, LU/s;->j(LN/J;)Z

    :cond_a
    invoke-virtual {v0}, LN/F;->A0()V

    return-void
.end method

.method public final D0(IIIZ)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    if-eq p1, v0, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v2

    :goto_0
    const/4 v3, 0x2

    if-ne p1, v0, :cond_1

    move p3, v3

    goto :goto_1

    :cond_1
    if-ne p3, v3, :cond_2

    move p3, v1

    :cond_2
    :goto_1
    iget-boolean v0, p0, LN/F;->H:Z

    if-nez p1, :cond_3

    move p2, v1

    goto :goto_2

    :cond_3
    if-ne p2, v1, :cond_5

    if-eqz v0, :cond_4

    const/4 p2, 0x4

    goto :goto_2

    :cond_4
    move p2, v2

    :cond_5
    :goto_2
    iget-object p1, p0, LN/F;->L:LN/X;

    iget-boolean v0, p1, LN/X;->l:Z

    if-ne v0, p4, :cond_6

    iget v0, p1, LN/X;->n:I

    if-ne v0, p2, :cond_6

    iget v0, p1, LN/X;->m:I

    if-ne v0, p3, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1, p3, p2, p4}, LN/X;->e(IIZ)LN/X;

    move-result-object p1

    iput-object p1, p0, LN/F;->L:LN/X;

    invoke-virtual {p0, v2, v2}, LN/F;->G0(ZZ)V

    iget-object p1, p0, LN/F;->u:LN/N;

    iget-object p2, p1, LN/N;->i:LN/L;

    :goto_3
    if-eqz p2, :cond_9

    iget-object p3, p2, LN/L;->o:LW/t;

    iget-object p3, p3, LW/t;->c:[LW/q;

    array-length v0, p3

    move v4, v2

    :goto_4
    if-ge v4, v0, :cond_8

    aget-object v5, p3, v4

    if-eqz v5, :cond_7

    invoke-interface {v5, p4}, LW/q;->a(Z)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    iget-object p2, p2, LN/L;->m:LN/L;

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, LN/F;->v0()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p0}, LN/F;->z0()V

    invoke-virtual {p0}, LN/F;->E0()V

    iget-object p2, p0, LN/F;->L:LN/X;

    iget-boolean p3, p2, LN/X;->p:Z

    if-eqz p3, :cond_a

    invoke-virtual {p2, v2}, LN/X;->i(Z)LN/X;

    move-result-object p2

    iput-object p2, p0, LN/F;->L:LN/X;

    :cond_a
    iget-wide p2, p0, LN/F;->a0:J

    invoke-virtual {p1, p2, p3}, LN/N;->t(J)V

    return-void

    :cond_b
    iget-object p1, p0, LN/F;->L:LN/X;

    iget p1, p1, LN/X;->e:I

    const/4 p2, 0x3

    iget-object p3, p0, LN/F;->k:LJ/O;

    if-ne p1, p2, :cond_c

    iget-object p1, p0, LN/F;->q:LN/h;

    iput-boolean v1, p1, LN/h;->j:Z

    iget-object p1, p1, LN/h;->e:LN/i0;

    invoke-virtual {p1}, LN/i0;->e()V

    invoke-virtual {p0}, LN/F;->x0()V

    invoke-virtual {p3, v3}, LJ/O;->g(I)Z

    return-void

    :cond_c
    if-ne p1, v3, :cond_d

    invoke-virtual {p3, v3}, LJ/O;->g(I)Z

    :cond_d
    :goto_5
    return-void
.end method

.method public final E()V
    .locals 9

    iget-object v0, p0, LN/F;->u:LN/N;

    invoke-virtual {v0}, LN/N;->r()V

    iget-object v0, v0, LN/N;->m:LN/L;

    if-eqz v0, :cond_a

    iget-object v1, v0, LN/L;->a:LU/s;

    iget-boolean v2, v0, LN/L;->d:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, LN/L;->e:Z

    if-eqz v2, :cond_a

    :cond_0
    invoke-virtual {v1}, LU/s;->b()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, LN/F;->L:LN/X;

    iget-object v2, v2, LN/X;->a:LG/q0;

    iget-boolean v2, v0, LN/L;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LU/s;->n()J

    :cond_1
    iget-object v2, p0, LN/F;->j:LN/H;

    check-cast v2, LN/g;

    iget-object v2, v2, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN/f;

    iget-boolean v3, v3, LN/f;->b:Z

    if-eqz v3, :cond_2

    goto/16 :goto_5

    :cond_3
    iget-boolean v2, v0, LN/L;->d:Z

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-object v2, v0, LN/L;->g:LN/M;

    iget-wide v4, v2, LN/M;->b:J

    iput-boolean v3, v0, LN/L;->d:Z

    invoke-virtual {v1, p0, v4, v5}, LU/s;->f(LU/x;J)V

    return-void

    :cond_4
    new-instance v2, LN/I;

    invoke-direct {v2}, LN/I;-><init>()V

    iget-wide v4, p0, LN/F;->a0:J

    iget-wide v6, v0, LN/L;->p:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, LN/I;->a:J

    iget-object v4, p0, LN/F;->q:LN/h;

    invoke-virtual {v4}, LN/h;->g()LG/a0;

    move-result-object v4

    iget v4, v4, LG/a0;->a:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    const/4 v6, 0x0

    if-gtz v5, :cond_6

    const v5, -0x800001

    cmpl-float v5, v4, v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_1

    :cond_6
    :goto_0
    move v5, v3

    :goto_1
    invoke-static {v5}, LF1/i;->g(Z)V

    iput v4, v2, LN/I;->b:F

    iget-wide v4, p0, LN/F;->R:J

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-gez v7, :cond_8

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v4, v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    move v7, v6

    goto :goto_3

    :cond_8
    :goto_2
    move v7, v3

    :goto_3
    invoke-static {v7}, LF1/i;->g(Z)V

    iput-wide v4, v2, LN/I;->c:J

    new-instance v4, LN/J;

    invoke-direct {v4, v2}, LN/J;-><init>(LN/I;)V

    iget-object v0, v0, LN/L;->m:LN/L;

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    move v3, v6

    :goto_4
    invoke-static {v3}, LF1/i;->o(Z)V

    invoke-virtual {v1, v4}, LU/s;->j(LN/J;)Z

    :cond_a
    :goto_5
    return-void
.end method

.method public final E0()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, LN/F;->u:LN/N;

    iget-object v1, v1, LN/N;->i:LN/L;

    if-nez v1, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-boolean v2, v1, LN/L;->e:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-object v2, v1, LN/L;->a:LU/s;

    invoke-virtual {v2}, LU/s;->i()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v10

    :goto_0
    cmp-long v4, v2, v10

    const/4 v12, 0x2

    const/16 v13, 0x10

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v1}, LN/L;->g()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, LN/F;->u:LN/N;

    invoke-virtual {v4, v1}, LN/N;->u(LN/L;)I

    invoke-virtual {v0}, LN/F;->h()V

    invoke-virtual {v0, v15}, LN/F;->u(Z)V

    invoke-virtual {v0}, LN/F;->D()V

    :cond_2
    invoke-virtual {v0, v2, v3, v14}, LN/F;->R(JZ)V

    iget-object v1, v0, LN/F;->L:LN/X;

    iget-wide v4, v1, LN/X;->s:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_12

    iget-object v1, v0, LN/F;->L:LN/X;

    iget-object v4, v1, LN/X;->b:LU/A;

    iget-wide v5, v1, LN/X;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v2

    invoke-virtual/range {v0 .. v9}, LN/F;->y(LU/A;JJJZI)LN/X;

    move-result-object v1

    iput-object v1, v0, LN/F;->L:LN/X;

    goto/16 :goto_6

    :cond_3
    iget-object v2, v0, LN/F;->q:LN/h;

    invoke-virtual {v0}, LN/F;->A()Z

    move-result v3

    iget-object v4, v2, LN/h;->e:LN/i0;

    iget-object v5, v2, LN/h;->g:LN/a;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, LN/a;->m()Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v3, :cond_4

    iget-object v5, v2, LN/h;->g:LN/a;

    iget v5, v5, LN/a;->l:I

    if-ne v5, v12, :cond_8

    :cond_4
    iget-object v5, v2, LN/h;->g:LN/a;

    invoke-virtual {v5}, LN/a;->o()Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v3, :cond_8

    iget-object v3, v2, LN/h;->g:LN/a;

    invoke-virtual {v3}, LN/a;->l()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    iget-object v3, v2, LN/h;->h:LN/K;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, LN/K;->c()J

    move-result-wide v5

    iget-boolean v7, v2, LN/h;->i:Z

    if-eqz v7, :cond_7

    invoke-virtual {v4}, LN/i0;->c()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_6

    iget-boolean v3, v4, LN/i0;->f:Z

    if-eqz v3, :cond_9

    invoke-virtual {v4}, LN/i0;->c()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, LN/i0;->b(J)V

    iput-boolean v15, v4, LN/i0;->f:Z

    goto :goto_2

    :cond_6
    iput-boolean v15, v2, LN/h;->i:Z

    iget-boolean v7, v2, LN/h;->j:Z

    if-eqz v7, :cond_7

    invoke-virtual {v4}, LN/i0;->e()V

    :cond_7
    invoke-virtual {v4, v5, v6}, LN/i0;->b(J)V

    invoke-interface {v3}, LN/K;->g()LG/a0;

    move-result-object v3

    iget-object v5, v4, LN/i0;->i:LG/a0;

    invoke-virtual {v3, v5}, LG/a0;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4, v3}, LN/i0;->d(LG/a0;)V

    iget-object v4, v2, LN/h;->f:LN/F;

    iget-object v4, v4, LN/F;->k:LJ/O;

    invoke-virtual {v4, v13, v3}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object v3

    invoke-virtual {v3}, LJ/N;->b()V

    goto :goto_2

    :cond_8
    :goto_1
    iput-boolean v14, v2, LN/h;->i:Z

    iget-boolean v3, v2, LN/h;->j:Z

    if-eqz v3, :cond_9

    invoke-virtual {v4}, LN/i0;->e()V

    :cond_9
    :goto_2
    invoke-virtual {v2}, LN/h;->c()J

    move-result-wide v2

    iput-wide v2, v0, LN/F;->a0:J

    iget-wide v4, v1, LN/L;->p:J

    sub-long/2addr v2, v4

    iget-object v1, v0, LN/F;->L:LN/X;

    iget-wide v4, v1, LN/X;->s:J

    iget-object v1, v0, LN/F;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, LN/F;->L:LN/X;

    iget-object v1, v1, LN/X;->b:LU/A;

    invoke-virtual {v1}, LU/A;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    iget-boolean v1, v0, LN/F;->d0:Z

    if-eqz v1, :cond_b

    iput-boolean v15, v0, LN/F;->d0:Z

    :cond_b
    iget-object v1, v0, LN/F;->L:LN/X;

    iget-object v4, v1, LN/X;->a:LG/q0;

    iget-object v1, v1, LN/X;->b:LU/A;

    iget-object v1, v1, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v4, v1}, LG/q0;->b(Ljava/lang/Object;)I

    iget v1, v0, LN/F;->c0:I

    iget-object v4, v0, LN/F;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_d

    iget-object v4, v0, LN/F;->r:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_3

    :cond_c
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_d
    :goto_3
    iget-object v4, v0, LN/F;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    iget-object v4, v0, LN/F;->r:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e

    goto :goto_4

    :cond_e
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_f
    :goto_4
    iput v1, v0, LN/F;->c0:I

    :cond_10
    :goto_5
    iget-object v1, v0, LN/F;->q:LN/h;

    invoke-virtual {v1}, LN/h;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, LN/F;->M:LI0/w;

    iget-boolean v1, v1, LI0/w;->d:Z

    xor-int/lit8 v8, v1, 0x1

    iget-object v1, v0, LN/F;->L:LN/X;

    iget-object v4, v1, LN/X;->b:LU/A;

    iget-wide v5, v1, LN/X;->c:J

    const/4 v9, 0x6

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v2

    invoke-virtual/range {v0 .. v9}, LN/F;->y(LU/A;JJJZI)LN/X;

    move-result-object v1

    iput-object v1, v0, LN/F;->L:LN/X;

    goto :goto_6

    :cond_11
    iget-object v1, v0, LN/F;->L:LN/X;

    iput-wide v2, v1, LN/X;->s:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, LN/X;->t:J

    :cond_12
    :goto_6
    iget-object v1, v0, LN/F;->u:LN/N;

    iget-object v1, v1, LN/N;->l:LN/L;

    iget-object v2, v0, LN/F;->L:LN/X;

    invoke-virtual {v1}, LN/L;->d()J

    move-result-wide v3

    iput-wide v3, v2, LN/X;->q:J

    iget-object v1, v0, LN/F;->L:LN/X;

    iget-wide v2, v1, LN/X;->q:J

    invoke-virtual {v0, v2, v3}, LN/F;->p(J)J

    move-result-wide v2

    iput-wide v2, v1, LN/X;->r:J

    iget-object v1, v0, LN/F;->L:LN/X;

    iget-boolean v2, v1, LN/X;->l:Z

    if-eqz v2, :cond_1c

    iget v2, v1, LN/X;->e:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    iget-object v2, v1, LN/X;->a:LG/q0;

    iget-object v1, v1, LN/X;->b:LU/A;

    invoke-virtual {v0, v2, v1}, LN/F;->w0(LG/q0;LU/A;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, LN/F;->L:LN/X;

    iget-object v2, v1, LN/X;->o:LG/a0;

    iget v2, v2, LG/a0;->a:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1c

    iget-object v2, v0, LN/F;->w:LN/e;

    iget-object v5, v1, LN/X;->a:LG/q0;

    iget-object v6, v1, LN/X;->b:LU/A;

    iget-object v6, v6, LU/A;->a:Ljava/lang/Object;

    iget-wide v7, v1, LN/X;->s:J

    invoke-virtual {v0, v5, v6, v7, v8}, LN/F;->m(LG/q0;Ljava/lang/Object;J)J

    move-result-wide v5

    iget-object v1, v0, LN/F;->L:LN/X;

    iget-wide v7, v1, LN/X;->r:J

    move-wide/from16 v16, v10

    iget-wide v10, v2, LN/e;->c:J

    cmp-long v1, v10, v16

    if-nez v1, :cond_13

    goto/16 :goto_b

    :cond_13
    sub-long v7, v5, v7

    iget-wide v9, v2, LN/e;->m:J

    cmp-long v1, v9, v16

    if-nez v1, :cond_14

    iput-wide v7, v2, LN/e;->m:J

    const-wide/16 v7, 0x0

    iput-wide v7, v2, LN/e;->n:J

    goto :goto_7

    :cond_14
    long-to-float v1, v9

    const v9, 0x3f7fbe77    # 0.999f

    mul-float/2addr v1, v9

    long-to-float v10, v7

    const v11, 0x3a831200    # 9.999871E-4f

    mul-float/2addr v10, v11

    add-float/2addr v10, v1

    move v1, v9

    float-to-long v9, v10

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v2, LN/e;->m:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    iget-wide v9, v2, LN/e;->n:J

    long-to-float v9, v9

    mul-float/2addr v9, v1

    long-to-float v1, v7

    mul-float/2addr v11, v1

    add-float/2addr v11, v9

    float-to-long v7, v11

    iput-wide v7, v2, LN/e;->n:J

    :goto_7
    iget-wide v7, v2, LN/e;->l:J

    cmp-long v1, v7, v16

    if-eqz v1, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v18, 0x3e8

    iget-wide v7, v2, LN/e;->l:J

    sub-long/2addr v9, v7

    cmp-long v1, v9, v18

    if-gez v1, :cond_16

    iget v4, v2, LN/e;->k:F

    goto/16 :goto_b

    :cond_15
    const-wide/16 v18, 0x3e8

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v2, LN/e;->l:J

    iget-wide v7, v2, LN/e;->m:J

    const-wide/16 v20, 0x3

    iget-wide v9, v2, LN/e;->n:J

    mul-long v9, v9, v20

    add-long v24, v9, v7

    iget-wide v7, v2, LN/e;->h:J

    cmp-long v1, v7, v24

    if-lez v1, :cond_19

    invoke-static/range {v18 .. v19}, LJ/W;->G(J)J

    move-result-wide v8

    iget v1, v2, LN/e;->k:F

    sub-float/2addr v1, v4

    long-to-float v8, v8

    mul-float/2addr v1, v8

    float-to-long v9, v1

    iget v1, v2, LN/e;->i:F

    sub-float/2addr v1, v4

    mul-float/2addr v1, v8

    const v11, 0x33d6bf95    # 1.0E-7f

    float-to-long v7, v1

    add-long/2addr v9, v7

    iget-wide v7, v2, LN/e;->e:J

    move/from16 v18, v11

    move v1, v12

    iget-wide v11, v2, LN/e;->h:J

    sub-long/2addr v11, v9

    new-array v9, v3, [J

    aput-wide v24, v9, v15

    aput-wide v7, v9, v14

    aput-wide v11, v9, v1

    aget-wide v7, v9, v15

    :goto_8
    if-ge v14, v3, :cond_18

    aget-wide v10, v9, v14

    cmp-long v1, v10, v7

    if-lez v1, :cond_17

    move-wide v7, v10

    :cond_17
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_18
    iput-wide v7, v2, LN/e;->h:J

    goto :goto_9

    :cond_19
    const v18, 0x33d6bf95    # 1.0E-7f

    iget v1, v2, LN/e;->k:F

    sub-float/2addr v1, v4

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v1, v1, v18

    float-to-long v7, v1

    sub-long v20, v5, v7

    iget-wide v7, v2, LN/e;->h:J

    move-wide/from16 v22, v7

    invoke-static/range {v20 .. v25}, LJ/W;->h(JJJ)J

    move-result-wide v7

    iput-wide v7, v2, LN/e;->h:J

    iget-wide v9, v2, LN/e;->g:J

    cmp-long v1, v9, v16

    if-eqz v1, :cond_1a

    cmp-long v1, v7, v9

    if-lez v1, :cond_1a

    iput-wide v9, v2, LN/e;->h:J

    :cond_1a
    :goto_9
    iget-wide v7, v2, LN/e;->h:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    iget-wide v9, v2, LN/e;->a:J

    cmp-long v1, v7, v9

    if-gez v1, :cond_1b

    iput v4, v2, LN/e;->k:F

    goto :goto_a

    :cond_1b
    long-to-float v1, v5

    mul-float v7, v18, v1

    add-float/2addr v7, v4

    iget v1, v2, LN/e;->j:F

    iget v3, v2, LN/e;->i:F

    invoke-static {v7, v1, v3}, LJ/W;->f(FFF)F

    move-result v1

    iput v1, v2, LN/e;->k:F

    :goto_a
    iget v4, v2, LN/e;->k:F

    :goto_b
    iget-object v1, v0, LN/F;->q:LN/h;

    invoke-virtual {v1}, LN/h;->g()LG/a0;

    move-result-object v1

    iget v1, v1, LG/a0;->a:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1c

    iget-object v1, v0, LN/F;->L:LN/X;

    iget-object v1, v1, LN/X;->o:LG/a0;

    new-instance v2, LG/a0;

    iget v1, v1, LG/a0;->b:F

    invoke-direct {v2, v4, v1}, LG/a0;-><init>(FF)V

    iget-object v1, v0, LN/F;->k:LJ/O;

    invoke-virtual {v1, v13}, LJ/O;->f(I)V

    iget-object v1, v0, LN/F;->q:LN/h;

    invoke-virtual {v1, v2}, LN/h;->d(LG/a0;)V

    iget-object v1, v0, LN/F;->L:LN/X;

    iget-object v1, v1, LN/X;->o:LG/a0;

    iget-object v2, v0, LN/F;->q:LN/h;

    invoke-virtual {v2}, LN/h;->g()LG/a0;

    move-result-object v2

    iget v2, v2, LG/a0;->a:F

    invoke-virtual {v0, v1, v2, v15, v15}, LN/F;->x(LG/a0;FZZ)V

    :cond_1c
    :goto_c
    return-void
.end method

.method public final F(I)V
    .locals 6

    iget-object v0, p0, LN/F;->M:LI0/w;

    iget-object v1, p0, LN/F;->L:LN/X;

    iget-boolean v2, v0, LI0/w;->b:Z

    iget-object v3, v0, LI0/w;->f:Ljava/lang/Object;

    check-cast v3, LN/X;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v1, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, v0, LI0/w;->b:Z

    iput-object v1, v0, LI0/w;->f:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v0, v1, LN/X;->a:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LN/F;->L:LN/X;

    iget-object v1, v0, LN/X;->a:LG/q0;

    iget-object v0, v0, LN/X;->b:LU/A;

    iget-object v0, v0, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move v4, v5

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, LN/F;->L:LN/X;

    iget-object v2, v1, LN/X;->b:LU/A;

    iget-object v2, v2, LU/A;->a:Ljava/lang/Object;

    iget-object v1, v1, LN/X;->a:LG/q0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, LN/F;->L:LN/X;

    iget-object v3, v3, LN/X;->a:LG/q0;

    invoke-virtual {v3}, LG/q0;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, v1, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "periodUid %s not found in timeline %s with size %d triggered by msg %d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, LF1/i;->n(Ljava/lang/String;Z)V

    :cond_2
    iget-object p1, p0, LN/F;->M:LI0/w;

    iget-object v0, p0, LN/F;->t:LN/p;

    iget-object v0, v0, LN/p;->f:LN/x;

    iget-object v1, v0, LN/x;->j:LJ/O;

    new-instance v2, LH/i;

    const/16 v3, 0x10

    invoke-direct {v2, v0, p1, v3}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, LJ/O;->e(Ljava/lang/Runnable;)Z

    new-instance p1, LI0/w;

    iget-object v0, p0, LN/F;->L:LN/X;

    invoke-direct {p1, v0}, LI0/w;-><init>(LN/X;)V

    iput-object p1, p0, LN/F;->M:LI0/w;

    :cond_3
    return-void
.end method

.method public final F0(LG/q0;LU/A;LG/q0;LU/A;JZ)V
    .locals 8

    invoke-virtual {p0, p1, p2}, LN/F;->w0(LG/q0;LU/A;)Z

    move-result v0

    iget-object v1, p2, LU/A;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p2}, LU/A;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, LG/a0;->d:LG/a0;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LN/F;->L:LN/X;

    iget-object p1, p1, LN/X;->o:LG/a0;

    :goto_0
    iget-object p2, p0, LN/F;->q:LN/h;

    invoke-virtual {p2}, LN/h;->g()LG/a0;

    move-result-object p3

    invoke-virtual {p3, p1}, LG/a0;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, LN/F;->k:LJ/O;

    const/16 p4, 0x10

    invoke-virtual {p3, p4}, LJ/O;->f(I)V

    invoke-virtual {p2, p1}, LN/h;->d(LG/a0;)V

    iget-object p2, p0, LN/F;->L:LN/X;

    iget-object p2, p2, LN/X;->o:LG/a0;

    iget p1, p1, LG/a0;->a:F

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, p3}, LN/F;->x(LG/a0;FZZ)V

    return-void

    :cond_1
    iget-object p2, p0, LN/F;->o:LG/n0;

    invoke-virtual {p1, v1, p2}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v0

    iget v0, v0, LG/n0;->c:I

    iget-object v2, p0, LN/F;->n:LG/p0;

    invoke-virtual {p1, v0, v2}, LG/q0;->n(ILG/p0;)V

    iget-object v0, v2, LG/p0;->i:LG/J;

    iget-object v3, p0, LN/F;->w:LN/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v0, LG/J;->a:J

    invoke-static {v4, v5}, LJ/W;->G(J)J

    move-result-wide v4

    iput-wide v4, v3, LN/e;->c:J

    iget-wide v4, v0, LG/J;->b:J

    invoke-static {v4, v5}, LJ/W;->G(J)J

    move-result-wide v4

    iput-wide v4, v3, LN/e;->f:J

    iget-wide v4, v0, LG/J;->c:J

    invoke-static {v4, v5}, LJ/W;->G(J)J

    move-result-wide v4

    iput-wide v4, v3, LN/e;->g:J

    iget v4, v0, LG/J;->d:F

    const v5, -0x800001

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const v4, 0x3f7851ec    # 0.97f

    :goto_1
    iput v4, v3, LN/e;->j:F

    iget v0, v0, LG/J;->e:F

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x3f83d70a    # 1.03f

    :goto_2
    iput v0, v3, LN/e;->i:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_4

    cmpl-float v0, v0, v5

    if-nez v0, :cond_4

    iput-wide v6, v3, LN/e;->c:J

    :cond_4
    invoke-virtual {v3}, LN/e;->a()V

    cmp-long v0, p5, v6

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, v1, p5, p6}, LN/F;->m(LG/q0;Ljava/lang/Object;J)J

    move-result-wide p1

    iput-wide p1, v3, LN/e;->d:J

    invoke-virtual {v3}, LN/e;->a()V

    return-void

    :cond_5
    iget-object p1, v2, LG/p0;->a:Ljava/lang/Object;

    invoke-virtual {p3}, LG/q0;->p()Z

    move-result p5

    if-nez p5, :cond_6

    iget-object p4, p4, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {p3, p4, p2}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object p2

    iget p2, p2, LG/n0;->c:I

    const-wide/16 p4, 0x0

    invoke-virtual {p3, p2, v2, p4, p5}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object p2

    iget-object p2, p2, LG/p0;->a:Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p7, :cond_7

    goto :goto_4

    :cond_7
    return-void

    :cond_8
    :goto_4
    iput-wide v6, v3, LN/e;->d:J

    invoke-virtual {v3}, LN/e;->a()V

    return-void
.end method

.method public final G(I)V
    .locals 10

    iget-object v0, p0, LN/F;->e:[LN/f0;

    aget-object v1, v0, p1

    :try_start_0
    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->i:LN/L;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, LN/f0;->d(LN/L;)LN/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LN/a;->m:LU/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LU/a0;->x()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, v1, LN/f0;->a:LN/a;

    iget v1, v1, LN/a;->f:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    throw v0

    :cond_1
    :goto_1
    iget-object v1, p0, LN/F;->u:LN/N;

    iget-object v1, v1, LN/N;->i:LN/L;

    iget-object v1, v1, LN/L;->o:LW/t;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disabling track due to error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, LW/t;->c:[LW/q;

    aget-object v3, v3, p1

    invoke-interface {v3}, LW/q;->h()LG/x;

    move-result-object v3

    invoke-static {v3}, LG/x;->c(LG/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExoPlayerImplInternal"

    invoke-static {v3, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v5, LW/t;

    iget-object v0, v1, LW/t;->b:[LN/e0;

    invoke-virtual {v0}, [LN/e0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN/e0;

    iget-object v2, v1, LW/t;->c:[LW/q;

    invoke-virtual {v2}, [LW/q;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [LW/q;

    iget-object v3, v1, LW/t;->d:LG/y0;

    iget-object v1, v1, LW/t;->e:Ljava/lang/Object;

    invoke-direct {v5, v0, v2, v3, v1}, LW/t;-><init>([LN/e0;[LW/q;LG/y0;Ljava/lang/Object;)V

    iget-object v0, v5, LW/t;->b:[LN/e0;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, v5, LW/t;->c:[LW/q;

    aput-object v1, v0, p1

    invoke-virtual {p0, p1}, LN/F;->i(I)V

    iget-object p1, p0, LN/F;->u:LN/N;

    iget-object v4, p1, LN/N;->i:LN/L;

    iget-object p1, p0, LN/F;->L:LN/X;

    iget-wide v6, p1, LN/X;->s:J

    iget-object p1, v4, LN/L;->j:[LN/a;

    array-length p1, p1

    new-array v9, p1, [Z

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, LN/L;->a(LW/t;JZ[Z)J

    return-void
.end method

.method public final G0(ZZ)V
    .locals 0

    iput-boolean p1, p0, LN/F;->Q:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, LN/F;->s:LJ/M;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, LN/F;->R:J

    return-void
.end method

.method public final H(IZ)V
    .locals 2

    iget-object v0, p0, LN/F;->g:[Z

    aget-boolean v1, v0, p1

    if-eq v1, p2, :cond_0

    aput-boolean p2, v0, p1

    new-instance v0, LM0/a0;

    invoke-direct {v0, p0, p1, p2}, LM0/a0;-><init>(LN/F;IZ)V

    iget-object p1, p0, LN/F;->B:LJ/O;

    invoke-virtual {p1, v0}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, LN/F;->v:LN/W;

    invoke-virtual {v0}, LN/W;->b()LG/q0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LN/F;->v(LG/q0;Z)V

    return-void
.end method

.method public final J(LN/C;)V
    .locals 8

    iget-object v0, p0, LN/F;->M:LI0/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LI0/w;->f(I)V

    iget v0, p1, LN/C;->a:I

    iget v2, p1, LN/C;->b:I

    iget v3, p1, LN/C;->c:I

    iget-object p1, p1, LN/C;->d:LU/c0;

    iget-object v4, p0, LN/F;->v:LN/W;

    iget-object v5, v4, LN/W;->c:Ljava/util/ArrayList;

    const/4 v6, 0x0

    if-ltz v0, :cond_0

    if-gt v0, v2, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v2, v7, :cond_0

    if-ltz v3, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    invoke-static {v7}, LF1/i;->g(Z)V

    iput-object p1, v4, LN/W;->k:LU/c0;

    if-eq v0, v2, :cond_3

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int v7, v2, v0

    add-int/2addr v7, v3

    sub-int/2addr v7, v1

    add-int/lit8 v1, v2, -0x1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LN/V;

    iget v7, v7, LN/V;->d:I

    invoke-static {v5, v0, v2, v3}, LJ/W;->F(Ljava/util/ArrayList;III)V

    :goto_1
    if-gt p1, v1, :cond_2

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN/V;

    iput v7, v0, LN/V;->d:I

    iget-object v0, v0, LN/V;->a:LU/v;

    iget-object v0, v0, LU/v;->o:LU/t;

    iget-object v0, v0, LU/o;->e:LG/q0;

    invoke-virtual {v0}, LG/q0;->o()I

    move-result v0

    add-int/2addr v7, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, LN/W;->b()LG/q0;

    move-result-object p1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v4}, LN/W;->b()LG/q0;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1, v6}, LN/F;->v(LG/q0;Z)V

    return-void
.end method

.method public final K()V
    .locals 10

    iget-object v0, p0, LN/F;->M:LI0/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LI0/w;->f(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, LN/F;->P(ZZZZ)V

    iget-object v2, p0, LN/F;->j:LN/H;

    check-cast v2, LN/g;

    iget-object v3, v2, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iget-wide v6, v2, LN/g;->q:J

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v1

    :goto_1
    const-string v7, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper)."

    invoke-static {v7, v6}, LF1/i;->n(Ljava/lang/String;Z)V

    iput-wide v4, v2, LN/g;->q:J

    iget-object v4, p0, LN/F;->y:LO/j;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LN/f;

    if-nez v5, :cond_2

    new-instance v5, LN/f;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput v1, v5, LN/f;->a:I

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget v6, v5, LN/f;->a:I

    add-int/2addr v6, v1

    iput v6, v5, LN/f;->a:I

    :goto_2
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN/f;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, LN/g;->o:Lu1/T;

    iget-object v4, v4, LO/j;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, -0x1

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    :cond_3
    iget v2, v2, LN/g;->l:I

    :goto_3
    if-eq v2, v5, :cond_4

    goto :goto_4

    :cond_4
    const/high16 v2, 0xc80000

    :goto_4
    iput v2, v3, LN/f;->c:I

    iput-boolean v0, v3, LN/f;->b:Z

    iget-object v2, p0, LN/F;->L:LN/X;

    iget-object v2, v2, LN/X;->a:LG/q0;

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    invoke-virtual {p0, v2}, LN/F;->r0(I)V

    iget-object v2, p0, LN/F;->L:LN/X;

    iget-boolean v4, v2, LN/X;->l:Z

    iget v5, v2, LN/X;->n:I

    iget v6, v2, LN/X;->m:I

    iget-object v7, p0, LN/F;->D:LH/f;

    iget v2, v2, LN/X;->e:I

    invoke-virtual {v7, v2, v4}, LH/f;->d(IZ)I

    move-result v2

    invoke-virtual {p0, v2, v5, v6, v4}, LN/F;->D0(IIIZ)V

    iget-object v2, p0, LN/F;->v:LN/W;

    iget-object v4, v2, LN/W;->c:Ljava/util/ArrayList;

    iget-boolean v5, v2, LN/W;->l:Z

    xor-int/2addr v5, v1

    invoke-static {v5}, LF1/i;->o(Z)V

    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LN/V;

    invoke-virtual {v2, v5}, LN/W;->e(LN/V;)V

    iget-object v6, v2, LN/W;->h:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    iput-boolean v1, v2, LN/W;->l:Z

    iget-object v0, p0, LN/F;->k:LJ/O;

    invoke-virtual {v0, v3}, LJ/O;->g(I)Z

    return-void
.end method

.method public final L(LJ/j;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v0, v1, v0}, LN/F;->P(ZZZZ)V

    invoke-virtual {p0}, LN/F;->M()V

    iget-object v3, p0, LN/F;->j:LN/H;

    iget-object v4, p0, LN/F;->y:LO/j;

    check-cast v3, LN/g;

    iget-object v5, v3, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LN/f;

    if-eqz v6, :cond_0

    iget v7, v6, LN/f;->a:I

    sub-int/2addr v7, v1

    iput v7, v6, LN/f;->a:I

    if-nez v7, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, LN/g;->c()V

    :cond_0
    iget-object v4, v3, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, LN/g;->q:J

    :cond_1
    iget-object v3, p0, LN/F;->D:LH/f;

    iput-object v2, v3, LH/f;->c:LN/F;

    invoke-virtual {v3}, LH/f;->a()V

    invoke-virtual {v3, v0}, LH/f;->c(I)V

    iget-object v0, p0, LN/F;->h:LW/s;

    check-cast v0, LW/o;

    iget-object v3, v0, LW/o;->g:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, v0, LW/o;->g:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "DefaultTrackSelector is accessed on the wrong thread."

    invoke-static {v4, v3}, LF1/i;->n(Ljava/lang/String;Z)V

    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x20

    if-lt v3, v4, :cond_5

    iget-object v3, v0, LW/o;->h:LH/c;

    if-eqz v3, :cond_5

    iget-object v4, v3, LH/c;->g:Ljava/lang/Object;

    check-cast v4, Landroid/os/Handler;

    iget-object v5, v3, LH/c;->f:Ljava/lang/Object;

    check-cast v5, Landroid/media/Spatializer;

    if-eqz v5, :cond_4

    iget-object v3, v3, LH/c;->h:Ljava/lang/Object;

    check-cast v3, LY/b;

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v5, v3}, LG/d;->i(Landroid/media/Spatializer;LY/b;)V

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    iput-object v2, v0, LW/o;->h:LH/c;

    :cond_5
    iput-object v2, v0, LW/s;->a:LN/F;

    iput-object v2, v0, LW/s;->b:LX/d;

    invoke-virtual {p0, v1}, LN/F;->r0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LN/F;->k:LJ/O;

    iget-object v0, v0, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, LN/F;->l:LN/Y;

    invoke-virtual {v0}, LN/Y;->a()V

    invoke-virtual {p1}, LJ/j;->d()Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, LN/F;->k:LJ/O;

    iget-object v1, v1, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, LN/F;->l:LN/Y;

    invoke-virtual {v1}, LN/Y;->a()V

    invoke-virtual {p1}, LJ/j;->d()Z

    throw v0
.end method

.method public final M()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LN/F;->e:[LN/f0;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, LN/F;->f:[LN/a;

    aget-object v2, v2, v1

    iget-object v3, v2, LN/a;->e:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_0
    iput-object v4, v2, LN/a;->w:LW/o;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, LN/F;->e:[LN/f0;

    aget-object v2, v2, v1

    iget-object v3, v2, LN/f0;->a:LN/a;

    iget v4, v3, LN/a;->l:I

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-static {v4}, LF1/i;->o(Z)V

    invoke-virtual {v3}, LN/a;->s()V

    iput-boolean v0, v2, LN/f0;->e:Z

    iget-object v3, v2, LN/f0;->c:LN/a;

    if-eqz v3, :cond_2

    iget v4, v3, LN/a;->l:I

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    invoke-static {v5}, LF1/i;->o(Z)V

    invoke-virtual {v3}, LN/a;->s()V

    iput-boolean v0, v2, LN/f0;->f:Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    return-void
.end method

.method public final N(IILU/c0;)V
    .locals 4

    iget-object v0, p0, LN/F;->M:LI0/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LI0/w;->f(I)V

    iget-object v0, p0, LN/F;->v:LN/W;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v3, v0, LN/W;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, LF1/i;->g(Z)V

    iput-object p3, v0, LN/W;->k:LU/c0;

    invoke-virtual {v0, p1, p2}, LN/W;->f(II)V

    invoke-virtual {v0}, LN/W;->b()LG/q0;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, LN/F;->v(LG/q0;Z)V

    return-void
.end method

.method public final O()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, LN/F;->q:LN/h;

    invoke-virtual {v1}, LN/h;->g()LG/a0;

    move-result-object v1

    iget v1, v1, LG/a0;->a:F

    iget-object v2, v0, LN/F;->u:LN/N;

    iget-object v3, v2, LN/N;->i:LN/L;

    invoke-virtual {v2}, LN/N;->g()LN/L;

    move-result-object v2

    const/4 v10, 0x1

    const/4 v4, 0x0

    move-object v11, v3

    move v3, v10

    :goto_0
    if-eqz v11, :cond_14

    iget-boolean v5, v11, LN/L;->e:Z

    if-nez v5, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v5, v0, LN/F;->L:LN/X;

    iget-object v6, v5, LN/X;->a:LG/q0;

    iget-boolean v5, v5, LN/X;->l:Z

    invoke-virtual {v11, v1, v6, v5}, LN/L;->j(FLG/q0;Z)LW/t;

    move-result-object v12

    iget-object v5, v0, LN/F;->u:LN/N;

    iget-object v5, v5, LN/N;->i:LN/L;

    if-ne v11, v5, :cond_1

    move-object v14, v12

    goto :goto_1

    :cond_1
    move-object v14, v4

    :goto_1
    iget-object v4, v11, LN/L;->o:LW/t;

    iget-object v5, v12, LW/t;->c:[LW/q;

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    iget-object v7, v4, LW/t;->c:[LW/q;

    array-length v7, v7

    array-length v8, v5

    if-eq v7, v8, :cond_2

    goto :goto_3

    :cond_2
    move v7, v6

    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_4

    invoke-virtual {v12, v4, v7}, LW/t;->a(LW/t;I)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-ne v11, v2, :cond_5

    move v3, v6

    :cond_5
    iget-object v11, v11, LN/L;->m:LN/L;

    move-object v4, v14

    goto :goto_0

    :cond_6
    :goto_3
    const/4 v1, 0x4

    if-eqz v3, :cond_11

    iget-object v2, v0, LN/F;->u:LN/N;

    iget-object v13, v2, LN/N;->i:LN/L;

    invoke-virtual {v2, v13}, LN/N;->u(LN/L;)I

    move-result v2

    and-int/2addr v2, v10

    if-eqz v2, :cond_7

    move/from16 v17, v10

    goto :goto_4

    :cond_7
    move/from16 v17, v6

    :goto_4
    iget-object v2, v0, LN/F;->e:[LN/f0;

    array-length v2, v2

    new-array v2, v2, [Z

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, LN/F;->L:LN/X;

    iget-wide v3, v3, LN/X;->s:J

    move-object/from16 v18, v2

    move-wide v15, v3

    invoke-virtual/range {v13 .. v18}, LN/L;->a(LW/t;JZ[Z)J

    move-result-wide v2

    iget-object v4, v0, LN/F;->L:LN/X;

    iget v5, v4, LN/X;->e:I

    if-eq v5, v1, :cond_8

    iget-wide v4, v4, LN/X;->s:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_8

    move v8, v10

    goto :goto_5

    :cond_8
    move v8, v6

    :goto_5
    iget-object v4, v0, LN/F;->L:LN/X;

    move v5, v1

    iget-object v1, v4, LN/X;->b:LU/A;

    iget-wide v11, v4, LN/X;->c:J

    iget-wide v14, v4, LN/X;->d:J

    const/4 v9, 0x5

    move-wide/from16 v19, v14

    move v14, v6

    move-wide/from16 v6, v19

    move v15, v5

    move-wide v4, v11

    invoke-virtual/range {v0 .. v9}, LN/F;->y(LU/A;JJJZI)LN/X;

    move-result-object v1

    iput-object v1, v0, LN/F;->L:LN/X;

    if-eqz v8, :cond_9

    invoke-virtual {v0, v2, v3, v10}, LN/F;->R(JZ)V

    :cond_9
    invoke-virtual {v0}, LN/F;->h()V

    iget-object v1, v0, LN/F;->e:[LN/f0;

    array-length v1, v1

    new-array v1, v1, [Z

    move v6, v14

    :goto_6
    iget-object v2, v0, LN/F;->e:[LN/f0;

    array-length v3, v2

    if-ge v6, v3, :cond_f

    aget-object v2, v2, v6

    invoke-virtual {v2}, LN/f0;->c()I

    move-result v2

    iget-object v3, v0, LN/F;->e:[LN/f0;

    aget-object v3, v3, v6

    invoke-virtual {v3}, LN/f0;->j()Z

    move-result v3

    aput-boolean v3, v1, v6

    iget-object v3, v0, LN/F;->e:[LN/f0;

    aget-object v3, v3, v6

    iget-object v4, v13, LN/L;->c:[LU/a0;

    aget-object v4, v4, v6

    iget-object v5, v0, LN/F;->q:LN/h;

    iget-wide v7, v0, LN/F;->a0:J

    aget-boolean v9, v18, v6

    iget-object v11, v3, LN/f0;->a:LN/a;

    invoke-static {v11}, LN/f0;->k(LN/a;)Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, v11, LN/a;->m:LU/a0;

    if-eq v4, v12, :cond_a

    invoke-virtual {v3, v11, v5}, LN/f0;->a(LN/a;LN/h;)V

    goto :goto_7

    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v11, v7, v8, v14, v10}, LN/a;->B(JZZ)V

    :cond_b
    :goto_7
    iget-object v11, v3, LN/f0;->c:LN/a;

    if-eqz v11, :cond_d

    invoke-static {v11}, LN/f0;->k(LN/a;)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v11, LN/a;->m:LU/a0;

    if-eq v4, v12, :cond_c

    invoke-virtual {v3, v11, v5}, LN/f0;->a(LN/a;LN/h;)V

    goto :goto_8

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v11, v7, v8, v14, v10}, LN/a;->B(JZZ)V

    :cond_d
    :goto_8
    iget-object v3, v0, LN/F;->e:[LN/f0;

    aget-object v3, v3, v6

    invoke-virtual {v3}, LN/f0;->c()I

    move-result v3

    sub-int v3, v2, v3

    if-lez v3, :cond_e

    invoke-virtual {v0, v6, v14}, LN/F;->H(IZ)V

    :cond_e
    iget v3, v0, LN/F;->Y:I

    iget-object v4, v0, LN/F;->e:[LN/f0;

    aget-object v4, v4, v6

    invoke-virtual {v4}, LN/f0;->c()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v3, v2

    iput v3, v0, LN/F;->Y:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    iget-wide v2, v0, LN/F;->a0:J

    invoke-virtual {v0, v1, v2, v3}, LN/F;->l([ZJ)V

    invoke-virtual {v0, v13}, LN/F;->b0(LN/L;)V

    :cond_10
    move v5, v15

    goto :goto_b

    :cond_11
    move v15, v1

    move v14, v6

    iget-object v1, v0, LN/F;->u:LN/N;

    invoke-virtual {v1, v11}, LN/N;->u(LN/L;)I

    iget-boolean v1, v11, LN/L;->e:Z

    if-eqz v1, :cond_10

    iget-object v1, v11, LN/L;->g:LN/M;

    iget-wide v1, v1, LN/M;->b:J

    iget-wide v3, v0, LN/F;->a0:J

    iget-wide v5, v11, LN/L;->p:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-boolean v3, v0, LN/F;->C:Z

    if-eqz v3, :cond_13

    move v6, v14

    :goto_9
    iget-object v3, v0, LN/F;->e:[LN/f0;

    array-length v3, v3

    if-ge v6, v3, :cond_13

    iget-object v3, v0, LN/F;->u:LN/N;

    iget-object v3, v3, LN/N;->k:[LN/L;

    aget-object v3, v3, v6

    invoke-static {v3, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, LN/F;->e:[LN/f0;

    aget-object v3, v3, v6

    invoke-virtual {v3, v11}, LN/f0;->h(LN/L;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v0}, LN/F;->h()V

    goto :goto_a

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_13
    :goto_a
    iget-object v3, v11, LN/L;->j:[LN/a;

    array-length v3, v3

    new-array v3, v3, [Z

    move v5, v15

    const/4 v15, 0x0

    move-wide v13, v1

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, LN/L;->a(LW/t;JZ[Z)J

    :goto_b
    invoke-virtual {v0, v10}, LN/F;->u(Z)V

    iget-object v1, v0, LN/F;->L:LN/X;

    iget v1, v1, LN/X;->e:I

    if-eq v1, v5, :cond_14

    invoke-virtual {v0}, LN/F;->D()V

    invoke-virtual {v0}, LN/F;->E0()V

    iget-object v1, v0, LN/F;->k:LJ/O;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, LJ/O;->g(I)Z

    :cond_14
    :goto_c
    return-void
.end method

.method public final P(ZZZZ)V
    .locals 35

    move-object/from16 v1, p0

    const-string v2, "ExoPlayerImplInternal"

    iget-object v0, v1, LN/F;->k:LJ/O;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, LJ/O;->f(I)V

    const/4 v3, 0x0

    iput-boolean v3, v1, LN/F;->I:Z

    iget-object v0, v1, LN/F;->J:LN/E;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, LN/F;->M:LI0/w;

    invoke-virtual {v0, v5}, LI0/w;->f(I)V

    iput-object v4, v1, LN/F;->J:LN/E;

    :cond_0
    iput-object v4, v1, LN/F;->e0:LN/k;

    invoke-virtual {v1, v3, v5}, LN/F;->G0(ZZ)V

    iget-object v0, v1, LN/F;->q:LN/h;

    iput-boolean v3, v0, LN/h;->j:Z

    iget-object v0, v0, LN/h;->e:LN/i0;

    iget-boolean v6, v0, LN/i0;->f:Z

    if-eqz v6, :cond_1

    invoke-virtual {v0}, LN/i0;->c()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, LN/i0;->b(J)V

    iput-boolean v3, v0, LN/i0;->f:Z

    :cond_1
    const-wide v6, 0xe8d4a51000L

    iput-wide v6, v1, LN/F;->a0:J

    move v0, v3

    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iget-object v8, v1, LN/F;->e:[LN/f0;

    array-length v8, v8

    if-ge v0, v8, :cond_2

    invoke-virtual {v1, v0}, LN/F;->i(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    iput-wide v6, v1, LN/F;->h0:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch LN/k; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v8, "Disable failed."

    invoke-static {v2, v8, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz p1, :cond_3

    iget-object v8, v1, LN/F;->e:[LN/f0;

    array-length v9, v8

    move v10, v3

    :goto_3
    if-ge v10, v9, :cond_3

    aget-object v0, v8, v10

    :try_start_1
    invoke-virtual {v0}, LN/f0;->n()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v11, "Reset failed."

    invoke-static {v2, v11, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    iput v3, v1, LN/F;->Y:I

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-object v2, v0, LN/X;->b:LU/A;

    iget-wide v8, v0, LN/X;->s:J

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-object v0, v0, LN/X;->b:LU/A;

    invoke-virtual {v0}, LU/A;->c()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-object v10, v1, LN/F;->o:LG/n0;

    iget-object v11, v0, LN/X;->b:LU/A;

    iget-object v0, v0, LN/X;->a:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v11, v11, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v0, v11, v10}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v0

    iget-boolean v0, v0, LG/n0;->f:Z

    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    iget-object v0, v1, LN/F;->L:LN/X;

    iget-wide v10, v0, LN/X;->s:J

    goto :goto_6

    :cond_5
    :goto_5
    iget-object v0, v1, LN/F;->L:LN/X;

    iget-wide v10, v0, LN/X;->c:J

    :goto_6
    if-eqz p2, :cond_7

    iput-object v4, v1, LN/F;->Z:LN/E;

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-object v0, v0, LN/X;->a:LG/q0;

    invoke-virtual {v1, v0}, LN/F;->n(LG/q0;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, LU/A;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-object v0, v0, LN/X;->b:LU/A;

    invoke-virtual {v2, v0}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_7
    move-wide v11, v8

    move-wide v9, v6

    goto :goto_8

    :cond_6
    move v5, v3

    goto :goto_7

    :cond_7
    move-wide/from16 v33, v10

    move-wide v11, v8

    move-wide/from16 v9, v33

    move v5, v3

    :goto_8
    iget-object v0, v1, LN/F;->u:LN/N;

    invoke-virtual {v0}, LN/N;->b()V

    iput-boolean v3, v1, LN/F;->S:Z

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-object v0, v0, LN/X;->a:LG/q0;

    if-eqz p3, :cond_a

    instance-of v6, v0, LN/d0;

    if-eqz v6, :cond_a

    check-cast v0, LN/d0;

    iget-object v6, v1, LN/F;->v:LN/W;

    iget-object v6, v6, LN/W;->k:LU/c0;

    iget-object v7, v0, LN/d0;->k:[LG/q0;

    array-length v8, v7

    new-array v8, v8, [LG/q0;

    move v13, v3

    :goto_9
    array-length v14, v7

    if-ge v13, v14, :cond_8

    new-instance v14, LN/c0;

    aget-object v15, v7, v13

    invoke-direct {v14, v15}, LN/c0;-><init>(LG/q0;)V

    aput-object v14, v8, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_8
    new-instance v7, LN/d0;

    iget-object v0, v0, LN/d0;->l:[Ljava/lang/Object;

    invoke-direct {v7, v8, v0, v6}, LN/d0;-><init>([LG/q0;[Ljava/lang/Object;LU/c0;)V

    iget v0, v2, LU/A;->b:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_9

    iget-object v0, v2, LU/A;->a:Ljava/lang/Object;

    iget-object v6, v1, LN/F;->o:LG/n0;

    invoke-virtual {v7, v0, v6}, LN/d0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget-object v0, v1, LN/F;->o:LG/n0;

    iget v0, v0, LG/n0;->c:I

    iget-object v6, v1, LN/F;->n:LG/p0;

    const-wide/16 v13, 0x0

    invoke-virtual {v7, v0, v6, v13, v14}, LN/d0;->m(ILG/p0;J)LG/p0;

    invoke-virtual {v6}, LG/p0;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, LU/A;

    iget-object v6, v2, LU/A;->a:Ljava/lang/Object;

    iget-wide v13, v2, LU/A;->d:J

    invoke-direct {v0, v13, v14, v6}, LU/A;-><init>(JLjava/lang/Object;)V

    move-object v8, v0

    goto :goto_b

    :cond_9
    :goto_a
    move-object v8, v2

    goto :goto_b

    :cond_a
    move-object v7, v0

    goto :goto_a

    :goto_b
    new-instance v6, LN/X;

    iget-object v0, v1, LN/F;->L:LN/X;

    iget v13, v0, LN/X;->e:I

    if-eqz p4, :cond_b

    move-object v14, v4

    goto :goto_c

    :cond_b
    iget-object v2, v0, LN/X;->f:LN/k;

    move-object v14, v2

    :goto_c
    if-eqz v5, :cond_c

    sget-object v2, LU/l0;->d:LU/l0;

    :goto_d
    move-object/from16 v16, v2

    goto :goto_e

    :cond_c
    iget-object v2, v0, LN/X;->h:LU/l0;

    goto :goto_d

    :goto_e
    if-eqz v5, :cond_d

    iget-object v2, v1, LN/F;->i:LW/t;

    :goto_f
    move-object/from16 v17, v2

    goto :goto_10

    :cond_d
    iget-object v2, v0, LN/X;->i:LW/t;

    goto :goto_f

    :goto_10
    if-eqz v5, :cond_e

    sget-object v2, Lu1/P;->f:Lu1/N;

    sget-object v2, Lu1/C0;->i:Lu1/C0;

    :goto_11
    move-object/from16 v18, v2

    goto :goto_12

    :cond_e
    iget-object v2, v0, LN/X;->j:Ljava/util/List;

    goto :goto_11

    :goto_12
    iget-boolean v2, v0, LN/X;->l:Z

    iget v5, v0, LN/X;->m:I

    iget v15, v0, LN/X;->n:I

    iget-object v0, v0, LN/X;->o:LG/a0;

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    move/from16 v22, v15

    const/4 v15, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v19, v8

    move-wide/from16 v24, v11

    move-wide/from16 v28, v11

    move-object/from16 v23, v0

    move/from16 v20, v2

    move/from16 v21, v5

    invoke-direct/range {v6 .. v32}, LN/X;-><init>(LG/q0;LU/A;JJILN/k;ZLU/l0;LW/t;Ljava/util/List;LU/A;ZIILG/a0;JJJJZ)V

    iput-object v6, v1, LN/F;->L:LN/X;

    if-eqz p3, :cond_12

    iget-object v0, v1, LN/F;->u:LN/N;

    iget-object v2, v0, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_13
    iget-object v6, v0, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    iget-object v6, v0, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LN/L;

    invoke-virtual {v6}, LN/L;->i()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_f
    iput-object v2, v0, LN/N;->q:Ljava/util/ArrayList;

    iput-object v4, v0, LN/N;->m:LN/L;

    invoke-virtual {v0}, LN/N;->r()V

    :cond_10
    iget-object v2, v1, LN/F;->v:LN/W;

    iget-object v4, v2, LN/W;->g:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LN/U;

    :try_start_2
    iget-object v0, v6, LN/U;->a:LU/a;

    iget-object v7, v6, LN/U;->b:LN/P;

    invoke-virtual {v0, v7}, LU/a;->o(LU/B;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_15

    :catch_3
    move-exception v0

    const-string v7, "MediaSourceList"

    const-string v8, "Failed to release child source."

    invoke-static {v7, v8, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    iget-object v0, v6, LN/U;->a:LU/a;

    iget-object v7, v6, LN/U;->c:LN/T;

    invoke-virtual {v0, v7}, LU/a;->r(LU/G;)V

    iget-object v0, v6, LN/U;->a:LU/a;

    invoke-virtual {v0, v7}, LU/a;->q(LQ/l;)V

    goto :goto_14

    :cond_11
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v0, v2, LN/W;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-boolean v3, v2, LN/W;->l:Z

    :cond_12
    return-void
.end method

.method public final Q()V
    .locals 1

    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->i:LN/L;

    if-eqz v0, :cond_0

    iget-object v0, v0, LN/L;->g:LN/M;

    iget-boolean v0, v0, LN/M;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LN/F;->O:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, LN/F;->P:Z

    return-void
.end method

.method public final R(JZ)V
    .locals 7

    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v1, v0, LN/N;->i:LN/L;

    if-nez v1, :cond_0

    const-wide v2, 0xe8d4a51000L

    :goto_0
    add-long/2addr p1, v2

    goto :goto_1

    :cond_0
    iget-wide v2, v1, LN/L;->p:J

    goto :goto_0

    :goto_1
    iput-wide p1, p0, LN/F;->a0:J

    iget-object v2, p0, LN/F;->q:LN/h;

    iget-object v2, v2, LN/h;->e:LN/i0;

    invoke-virtual {v2, p1, p2}, LN/i0;->b(J)V

    iget-object p1, p0, LN/F;->e:[LN/f0;

    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, p2, :cond_2

    aget-object v4, p1, v3

    iget-wide v5, p0, LN/F;->a0:J

    invoke-virtual {v4, v1}, LN/f0;->d(LN/L;)LN/a;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v5, v6, v2, p3}, LN/a;->B(JZZ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, v0, LN/N;->i:LN/L;

    :goto_3
    if-eqz p1, :cond_5

    iget-object p2, p1, LN/L;->o:LW/t;

    iget-object p2, p2, LW/t;->c:[LW/q;

    array-length p3, p2

    move v0, v2

    :goto_4
    if-ge v0, p3, :cond_4

    aget-object v1, p2, v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, LW/q;->j()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object p1, p1, LN/L;->m:LN/L;

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final S(LG/q0;LG/q0;)V
    .locals 0

    invoke-virtual {p1}, LG/q0;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, LG/q0;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LN/F;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LB1/e;->o(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final V(J)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, LN/F;->z:Z

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x3

    sget-wide v5, LN/F;->k0:J

    if-nez v1, :cond_2

    iget-boolean v1, v0, LN/F;->H:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, LN/F;->G:LN/g0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v1, v0, LN/F;->L:LN/X;

    iget v1, v1, LN/X;->e:I

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, LN/F;->v0()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    move-wide v2, v5

    goto/16 :goto_5

    :cond_2
    :goto_0
    iget-object v1, v0, LN/F;->L:LN/X;

    iget v1, v1, LN/X;->e:I

    if-ne v1, v4, :cond_3

    goto :goto_1

    :cond_3
    move-wide v2, v5

    :goto_1
    iget-object v1, v0, LN/F;->e:[LN/f0;

    array-length v4, v1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_6

    aget-object v8, v1, v7

    iget-wide v9, v0, LN/F;->a0:J

    iget-wide v11, v0, LN/F;->b0:J

    iget-object v13, v8, LN/f0;->c:LN/a;

    iget-object v8, v8, LN/f0;->a:LN/a;

    invoke-static {v8}, LN/f0;->k(LN/a;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v8, v9, v10, v11, v12}, LN/a;->i(JJ)J

    move-result-wide v14

    goto :goto_3

    :cond_4
    const-wide v14, 0x7fffffffffffffffL

    :goto_3
    if-eqz v13, :cond_5

    iget v8, v13, LN/a;->l:I

    if-eqz v8, :cond_5

    invoke-virtual {v13, v9, v10, v11, v12}, LN/a;->i(JJ)J

    move-result-wide v8

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :cond_5
    invoke-static {v14, v15}, LJ/W;->S(J)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, v0, LN/F;->L:LN/X;

    invoke-virtual {v1}, LN/X;->m()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, LN/F;->u:LN/N;

    iget-object v1, v1, LN/N;->i:LN/L;

    if-eqz v1, :cond_7

    iget-object v1, v1, LN/L;->m:LN/L;

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_8

    iget-wide v7, v0, LN/F;->a0:J

    long-to-float v4, v7

    invoke-static {v2, v3}, LJ/W;->G(J)J

    move-result-wide v7

    long-to-float v7, v7

    iget-object v8, v0, LN/F;->L:LN/X;

    iget-object v8, v8, LN/X;->o:LG/a0;

    iget v8, v8, LG/a0;->a:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v4

    invoke-virtual {v1}, LN/L;->e()J

    move-result-wide v8

    long-to-float v1, v8

    cmpl-float v1, v7, v1

    if-ltz v1, :cond_8

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move-wide v2, v1

    :cond_8
    :goto_5
    add-long v1, p1, v2

    iget-object v3, v0, LN/F;->k:LJ/O;

    iget-object v3, v3, LJ/O;->a:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final W(Z)V
    .locals 11

    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->i:LN/L;

    iget-object v0, v0, LN/L;->g:LN/M;

    iget-object v2, v0, LN/M;->a:LU/A;

    iget-object v0, p0, LN/F;->L:LN/X;

    iget-wide v3, v0, LN/X;->s:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LN/F;->Y(LU/A;JZZ)J

    move-result-wide v3

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-wide v5, v0, LN/X;->s:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-wide v5, v0, LN/X;->c:J

    iget-wide v7, v0, LN/X;->d:J

    const/4 v10, 0x5

    move v9, p1

    invoke-virtual/range {v1 .. v10}, LN/F;->y(LU/A;JJJZI)LN/X;

    move-result-object p1

    iput-object p1, v1, LN/F;->L:LN/X;

    :cond_0
    return-void
.end method

.method public final X(LN/E;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    iget-boolean v0, v1, LN/F;->I:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v1, LN/F;->J:LN/E;

    if-eqz v0, :cond_0

    iget v0, v1, LN/F;->K:I

    add-int/2addr v0, v9

    iput v0, v1, LN/F;->K:I

    iget-object v0, v1, LN/F;->M:LI0/w;

    invoke-virtual {v0, v9}, LI0/w;->f(I)V

    :cond_0
    iput-object v3, v1, LN/F;->J:LN/E;

    return-void

    :cond_1
    iget-object v0, v1, LN/F;->M:LI0/w;

    invoke-virtual {v0, v9}, LI0/w;->f(I)V

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-object v2, v0, LN/X;->a:LG/q0;

    iget v5, v1, LN/F;->T:I

    iget-boolean v6, v1, LN/F;->U:Z

    iget-object v7, v1, LN/F;->n:LG/p0;

    iget-object v8, v1, LN/F;->o:LG/n0;

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, LN/F;->T(LG/q0;LN/E;ZIZLG/p0;LG/n0;)Landroid/util/Pair;

    move-result-object v0

    const/4 v7, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_2

    iget-object v2, v1, LN/F;->L:LN/X;

    iget-object v2, v2, LN/X;->a:LG/q0;

    invoke-virtual {v1, v2}, LN/F;->n(LG/q0;)Landroid/util/Pair;

    move-result-object v2

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, LU/A;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v2, v1, LN/F;->L:LN/X;

    iget-object v2, v2, LN/X;->a:LG/q0;

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v2

    xor-int/2addr v2, v9

    move-wide/from16 v20, v10

    const-wide/16 v16, 0x0

    goto/16 :goto_3

    :cond_2
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-wide v12, v3, LN/E;->c:J

    cmp-long v6, v12, v10

    if-nez v6, :cond_3

    move-wide v12, v10

    goto :goto_0

    :cond_3
    move-wide/from16 v12, v18

    :goto_0
    iget-object v14, v1, LN/F;->u:LN/N;

    iget-object v15, v1, LN/F;->L:LN/X;

    iget-object v6, v15, LN/X;->a:LG/q0;

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move-object/from16 v16, v6

    invoke-virtual/range {v14 .. v21}, LN/N;->w(LN/X;LG/q0;Ljava/lang/Object;JZZ)LU/A;

    move-result-object v6

    invoke-virtual {v6}, LU/A;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, LN/F;->L:LN/X;

    iget-object v2, v2, LN/X;->a:LG/q0;

    iget-object v8, v6, LU/A;->a:Ljava/lang/Object;

    iget-object v14, v1, LN/F;->o:LG/n0;

    invoke-virtual {v2, v8, v14}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget-object v2, v1, LN/F;->o:LG/n0;

    iget v8, v6, LU/A;->b:I

    invoke-virtual {v2, v8}, LG/n0;->f(I)I

    move-result v2

    iget v8, v6, LU/A;->c:I

    if-ne v2, v8, :cond_4

    iget-object v2, v1, LN/F;->o:LG/n0;

    iget-object v2, v2, LG/n0;->g:LG/c;

    iget-wide v14, v2, LG/c;->b:J

    goto :goto_1

    :cond_4
    const-wide/16 v14, 0x0

    :goto_1
    iget-object v2, v1, LN/F;->o:LG/n0;

    iget-object v2, v2, LG/n0;->g:LG/c;

    iget v8, v6, LU/A;->b:I

    invoke-virtual {v2, v8}, LG/c;->a(I)LG/a;

    move-result-object v2

    const-wide/16 v16, 0x0

    iget-wide v4, v2, LG/a;->a:J

    move-wide/from16 v20, v10

    iget-wide v10, v2, LG/a;->j:J

    add-long/2addr v4, v10

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move v2, v9

    move-wide v10, v12

    move-wide v12, v14

    goto :goto_3

    :cond_5
    move-wide/from16 v20, v10

    const-wide/16 v16, 0x0

    iget-wide v4, v3, LN/E;->c:J

    cmp-long v2, v4, v20

    if-nez v2, :cond_6

    move v2, v9

    goto :goto_2

    :cond_6
    move v2, v7

    :goto_2
    move-wide v10, v12

    move-wide/from16 v12, v18

    :goto_3
    :try_start_0
    iget-object v4, v1, LN/F;->L:LN/X;

    iget-object v4, v4, LN/X;->a:LG/q0;

    invoke-virtual {v4}, LG/q0;->p()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v4, :cond_7

    :try_start_1
    iput-object v3, v1, LN/F;->Z:LN/E;

    goto :goto_6

    :catchall_0
    move-exception v0

    move v9, v2

    move-object v2, v6

    :goto_4
    move-wide v5, v10

    :goto_5
    move-wide v3, v12

    goto/16 :goto_13

    :cond_7
    const/4 v3, 0x4

    if-nez v0, :cond_9

    iget-object v0, v1, LN/F;->L:LN/X;

    iget v0, v0, LN/X;->e:I

    if-eq v0, v9, :cond_8

    invoke-virtual {v1, v3}, LN/F;->r0(I)V

    :cond_8
    invoke-virtual {v1, v7, v9, v7, v9}, LN/F;->P(ZZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    move v9, v2

    move-object v2, v6

    move-wide v5, v10

    move-wide v3, v12

    goto/16 :goto_e

    :cond_9
    :try_start_2
    iget-object v0, v1, LN/F;->L:LN/X;

    iget-object v0, v0, LN/X;->b:LU/A;

    invoke-virtual {v6, v0}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-eqz v0, :cond_e

    :try_start_3
    iget-object v0, v1, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->i:LN/L;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_b

    :try_start_4
    iget-boolean v4, v0, LN/L;->e:Z

    if-eqz v4, :cond_b

    cmp-long v4, v12, v16

    if-eqz v4, :cond_b

    iget-object v0, v0, LN/L;->a:LU/s;

    iget-object v4, v1, LN/F;->n:LG/p0;

    iget-wide v4, v4, LG/p0;->l:J

    iget-boolean v8, v1, LN/F;->H:Z

    if-eqz v8, :cond_a

    cmp-long v4, v4, v20

    if-eqz v4, :cond_a

    iget-object v4, v1, LN/F;->G:LN/g0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_a
    iget-object v4, v1, LN/F;->F:LN/h0;

    invoke-virtual {v0, v12, v13, v4}, LU/s;->o(JLN/h0;)J

    move-result-wide v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :cond_b
    move-wide v4, v12

    :goto_7
    :try_start_5
    invoke-static {v4, v5}, LJ/W;->S(J)J

    move-result-wide v14

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-wide v7, v0, LN/X;->s:J

    invoke-static {v7, v8}, LJ/W;->S(J)J

    move-result-wide v7

    cmp-long v0, v14, v7

    if-nez v0, :cond_c

    iget-object v0, v1, LN/F;->L:LN/X;

    iget v7, v0, LN/X;->e:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_d

    const/4 v8, 0x3

    if-ne v7, v8, :cond_c

    goto :goto_8

    :cond_c
    move v7, v2

    move-object v2, v6

    goto :goto_a

    :cond_d
    :goto_8
    iget-wide v3, v0, LN/X;->s:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v9, v2

    move-object v2, v6

    move-wide v5, v10

    const/4 v10, 0x2

    move-wide v7, v3

    :goto_9
    invoke-virtual/range {v1 .. v10}, LN/F;->y(LU/A;JJJZI)LN/X;

    move-result-object v0

    iput-object v0, v1, LN/F;->L:LN/X;

    return-void

    :catchall_1
    move-exception v0

    move v7, v2

    move-object v2, v6

    move v9, v7

    goto :goto_4

    :cond_e
    move v7, v2

    move-object v2, v6

    move-wide v4, v12

    :goto_a
    :try_start_6
    iget-object v0, v1, LN/F;->L:LN/X;

    iget v0, v0, LN/X;->e:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-ne v0, v3, :cond_f

    move v6, v9

    :goto_b
    move-wide v3, v4

    goto :goto_c

    :cond_f
    const/4 v6, 0x0

    goto :goto_b

    :goto_c
    :try_start_7
    invoke-virtual {v1}, LN/F;->A()Z

    move-result v5

    invoke-virtual/range {v1 .. v6}, LN/F;->Y(LU/A;JZZ)J

    move-result-wide v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    cmp-long v0, v12, v14

    if-eqz v0, :cond_10

    goto :goto_d

    :cond_10
    const/4 v9, 0x0

    :goto_d
    or-int/2addr v9, v7

    :try_start_8
    iget-object v0, v1, LN/F;->L:LN/X;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v3, v2

    :try_start_9
    iget-object v2, v0, LN/X;->a:LG/q0;

    iget-object v5, v0, LN/X;->b:LU/A;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v8, 0x1

    move-object v4, v2

    move-wide v6, v10

    :try_start_a
    invoke-virtual/range {v1 .. v8}, LN/F;->F0(LG/q0;LU/A;LG/q0;LU/A;JZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v2, v3

    move-wide v5, v6

    move-wide v3, v14

    :goto_e
    const/4 v10, 0x2

    move-wide v7, v3

    move-object/from16 v1, p0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v3

    move-wide v5, v6

    :goto_f
    move-wide v3, v14

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object v2, v3

    :goto_10
    move-wide v5, v10

    goto :goto_f

    :catchall_4
    move-exception v0

    goto :goto_10

    :catchall_5
    move-exception v0

    goto :goto_12

    :goto_11
    move v9, v7

    goto/16 :goto_5

    :catchall_6
    move-exception v0

    :goto_12
    move-wide v5, v10

    goto :goto_11

    :catchall_7
    move-exception v0

    move v7, v2

    move-object v2, v6

    goto :goto_12

    :goto_13
    const/4 v10, 0x2

    move-wide v7, v3

    invoke-virtual/range {v1 .. v10}, LN/F;->y(LU/A;JJJZI)LN/X;

    move-result-object v2

    iput-object v2, v1, LN/F;->L:LN/X;

    throw v0
.end method

.method public final Y(LU/A;JZZ)J
    .locals 9

    invoke-virtual {p0}, LN/F;->z0()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LN/F;->G0(ZZ)V

    const/4 v2, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, LN/F;->L:LN/X;

    iget p5, p5, LN/X;->e:I

    const/4 v3, 0x3

    if-ne p5, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, LN/F;->r0(I)V

    :cond_1
    iget-object p5, p0, LN/F;->u:LN/N;

    iget-object p5, p5, LN/N;->i:LN/L;

    move-object v3, p5

    :goto_0
    if-eqz v3, :cond_3

    iget-object v4, v3, LN/L;->g:LN/M;

    iget-object v4, v4, LN/M;->a:LU/A;

    invoke-virtual {p1, v4}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v3, LN/L;->m:LN/L;

    goto :goto_0

    :cond_3
    :goto_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p4, :cond_4

    if-ne p5, v3, :cond_4

    if-eqz v3, :cond_7

    iget-wide p4, v3, LN/L;->p:J

    add-long/2addr p4, p2

    const-wide/16 v6, 0x0

    cmp-long p1, p4, v6

    if-gez p1, :cond_7

    :cond_4
    move p1, v0

    :goto_2
    iget-object p4, p0, LN/F;->e:[LN/f0;

    array-length p4, p4

    if-ge p1, p4, :cond_5

    invoke-virtual {p0, p1}, LN/F;->i(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    iput-wide v4, p0, LN/F;->h0:J

    if-eqz v3, :cond_7

    :goto_3
    iget-object p1, p0, LN/F;->u:LN/N;

    iget-object p4, p1, LN/N;->i:LN/L;

    if-eq p4, v3, :cond_6

    invoke-virtual {p1}, LN/N;->a()LN/L;

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v3}, LN/N;->u(LN/L;)I

    const-wide p4, 0xe8d4a51000L

    iput-wide p4, v3, LN/L;->p:J

    invoke-virtual {p0}, LN/F;->A()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p1}, LF1/i;->o(Z)V

    iget-object p1, p0, LN/F;->e:[LN/f0;

    array-length p1, p1

    new-array p1, p1, [Z

    iget-object p4, p0, LN/F;->u:LN/N;

    invoke-virtual {p4}, LN/N;->d()LN/L;

    move-result-object p4

    invoke-virtual {p4}, LN/L;->e()J

    move-result-wide p4

    invoke-virtual {p0, p1, p4, p5}, LN/F;->l([ZJ)V

    invoke-virtual {p0, v3}, LN/F;->b0(LN/L;)V

    :cond_7
    invoke-virtual {p0}, LN/F;->h()V

    iget-boolean p1, p0, LN/F;->H:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, LN/F;->e:[LN/f0;

    array-length p4, p1

    move p5, v0

    :goto_4
    if-ge p5, p4, :cond_a

    aget-object v6, p1, p5

    invoke-virtual {v6}, LN/f0;->j()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v6, v6, LN/f0;->a:LN/a;

    iget v6, v6, LN/a;->f:I

    if-eq v6, v2, :cond_8

    const/4 v7, 0x4

    if-ne v6, v7, :cond_9

    :cond_8
    iput-boolean v1, p0, LN/F;->I:Z

    goto :goto_5

    :cond_9
    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-eqz v3, :cond_13

    iget-object p1, p0, LN/F;->u:LN/N;

    invoke-virtual {p1, v3}, LN/N;->u(LN/L;)I

    iget-boolean p1, v3, LN/L;->e:Z

    if-nez p1, :cond_b

    iget-object p1, v3, LN/L;->g:LN/M;

    invoke-virtual {p1, p2, p3, v4, v5}, LN/M;->b(JJ)LN/M;

    move-result-object p1

    iput-object p1, v3, LN/L;->g:LN/M;

    goto/16 :goto_9

    :cond_b
    iget-boolean p1, v3, LN/L;->f:Z

    if-eqz p1, :cond_12

    iget-boolean p1, p0, LN/F;->H:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, LN/F;->G:LN/g0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, LN/F;->L:LN/X;

    iget-object p1, p1, LN/X;->a:LG/q0;

    invoke-virtual {p1}, LG/q0;->p()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, v3, LN/L;->g:LN/M;

    iget-object p1, p1, LN/M;->a:LU/A;

    iget-object p4, p0, LN/F;->L:LN/X;

    iget-object p4, p4, LN/X;->b:LU/A;

    invoke-virtual {p1, p4}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    iget-wide p4, v3, LN/L;->p:J

    add-long/2addr p4, p2

    iget-object p1, p0, LN/F;->e:[LN/f0;

    array-length v4, p1

    move v5, v0

    move v6, v1

    :goto_6
    if-ge v5, v4, :cond_f

    aget-object v7, p1, v5

    invoke-virtual {v7}, LN/f0;->j()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v7, v3}, LN/f0;->d(LN/L;)LN/a;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7, p4, p5}, LN/a;->F(J)Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v1

    goto :goto_7

    :cond_d
    move v7, v0

    :goto_7
    and-int/2addr v6, v7

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    if-nez v6, :cond_10

    goto :goto_8

    :cond_10
    iget-object p1, v3, LN/L;->a:LU/s;

    iget-object p4, p0, LN/F;->L:LN/X;

    iget-wide p4, p4, LN/X;->s:J

    sget-object v4, LN/h0;->c:LN/h0;

    invoke-virtual {p1, p4, p5, v4}, LU/s;->o(JLN/h0;)J

    move-result-wide p4

    iget-object p1, v3, LN/L;->a:LU/s;

    invoke-virtual {p1, p2, p3, v4}, LU/s;->o(JLN/h0;)J

    move-result-wide v4

    cmp-long p1, p4, v4

    if-nez p1, :cond_11

    move v1, v0

    goto :goto_9

    :cond_11
    :goto_8
    iget-object p1, v3, LN/L;->a:LU/s;

    invoke-virtual {p1, p2, p3}, LU/s;->q(J)J

    move-result-wide p2

    iget-object p1, v3, LN/L;->a:LU/s;

    iget-wide p4, p0, LN/F;->p:J

    sub-long p4, p2, p4

    invoke-virtual {p1, p4, p5}, LU/s;->r(J)V

    :cond_12
    :goto_9
    invoke-virtual {p0, p2, p3, v1}, LN/F;->R(JZ)V

    invoke-virtual {p0}, LN/F;->D()V

    goto :goto_a

    :cond_13
    iget-object p1, p0, LN/F;->u:LN/N;

    invoke-virtual {p1}, LN/N;->b()V

    invoke-virtual {p0, p2, p3, v1}, LN/F;->R(JZ)V

    :goto_a
    invoke-virtual {p0, v0}, LN/F;->u(Z)V

    iget-object p1, p0, LN/F;->k:LJ/O;

    invoke-virtual {p1, v2}, LJ/O;->g(I)Z

    return-wide p2
.end method

.method public final Z(LN/b0;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LN/F;->k:LJ/O;

    iget-object v1, p1, LN/b0;->e:Landroid/os/Looper;

    iget-object v2, p0, LN/F;->m:Landroid/os/Looper;

    if-ne v1, v2, :cond_2

    monitor-enter p1

    monitor-exit p1

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p1, LN/b0;->a:LN/a0;

    iget v3, p1, LN/b0;->c:I

    iget-object v4, p1, LN/b0;->d:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, LN/a0;->b(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, LN/b0;->a(Z)V

    iget-object p1, p0, LN/F;->L:LN/X;

    iget p1, p1, LN/X;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, LJ/O;->g(I)Z

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, LN/b0;->a(Z)V

    throw v0

    :cond_2
    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object p1

    invoke-virtual {p1}, LJ/N;->b()V

    return-void
.end method

.method public final a(LU/b0;)V
    .locals 2

    check-cast p1, LU/y;

    iget-object v0, p0, LN/F;->k:LJ/O;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object p1

    invoke-virtual {p1}, LJ/N;->b()V

    return-void
.end method

.method public final a0(LN/b0;)V
    .locals 3

    iget-object v0, p1, LN/b0;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "TAG"

    const-string v1, "Trying to send message on a dead thread."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LN/b0;->a(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, LN/F;->s:LJ/M;

    invoke-virtual {v2, v0, v1}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object v0

    new-instance v1, LH/a;

    invoke-direct {v1, p0, p1}, LH/a;-><init>(LN/F;LN/b0;)V

    invoke-virtual {v0, v1}, LJ/O;->e(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(LN/B;I)V
    .locals 2

    iget-object v0, p0, LN/F;->M:LI0/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LI0/w;->f(I)V

    const/4 v0, -0x1

    iget-object v1, p0, LN/F;->v:LN/W;

    if-ne p2, v0, :cond_0

    iget-object p2, v1, LN/W;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_0
    iget-object v0, p1, LN/B;->a:Ljava/util/ArrayList;

    iget-object p1, p1, LN/B;->b:LU/c0;

    invoke-virtual {v1, p2, v0, p1}, LN/W;->a(ILjava/util/ArrayList;LU/c0;)LG/q0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, LN/F;->v(LG/q0;Z)V

    return-void
.end method

.method public final b0(LN/L;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LN/F;->e:[LN/f0;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, LN/L;->h:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(LU/y;)V
    .locals 2

    iget-object v0, p0, LN/F;->k:LJ/O;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object p1

    invoke-virtual {p1}, LJ/N;->b()V

    return-void
.end method

.method public final c0(LG/e;Z)V
    .locals 6

    iget-object v0, p0, LN/F;->h:LW/s;

    check-cast v0, LW/o;

    iget-object v1, v0, LW/o;->i:LG/e;

    invoke-virtual {v1, p1}, LG/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, LW/o;->i:LG/e;

    iget-object v1, v0, LW/o;->f:LW/j;

    iget-boolean v1, v1, LW/j;->A0:Z

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    if-lt v1, v3, :cond_1

    iget-object v1, v0, LW/o;->h:LH/c;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, LH/c;->e:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, LW/s;->a:LN/F;

    if-eqz v0, :cond_1

    iget-object v0, v0, LN/F;->k:LJ/O;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object v0

    invoke-virtual {v0}, LJ/N;->b()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    iget-object p2, p0, LN/F;->D:LH/f;

    iget-object v0, p2, LH/f;->d:LG/e;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iput-object p1, p2, LH/f;->d:LG/e;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_3

    :goto_2
    :pswitch_0
    move v3, v0

    goto :goto_4

    :cond_3
    iget v2, p1, LG/e;->c:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "AudioFocusManager"

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    const-string p1, "Unidentified audio usage: "

    invoke-static {p1, v5, v2}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_2
    const/4 v3, 0x4

    goto :goto_4

    :pswitch_3
    iget p1, p1, LG/e;->a:I

    if-ne p1, v1, :cond_4

    :pswitch_4
    move v3, v4

    goto :goto_4

    :goto_3
    :pswitch_5
    move v3, v1

    goto :goto_4

    :pswitch_6
    const-string p1, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    invoke-static {v5, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_4
    :pswitch_7
    iput v3, p2, LH/f;->f:I

    if-eq v3, v1, :cond_5

    if-nez v3, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {p1, v0}, LF1/i;->f(Ljava/lang/String;Z)V

    :cond_7
    iget-object p1, p0, LN/F;->L:LN/X;

    iget-boolean v0, p1, LN/X;->l:Z

    iget v1, p1, LN/X;->n:I

    iget v2, p1, LN/X;->m:I

    iget p1, p1, LN/X;->e:I

    invoke-virtual {p2, p1, v0}, LH/f;->d(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v1, v2, v0}, LN/F;->D0(IIIZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final d(JJLG/x;Landroid/media/MediaFormat;)V
    .locals 0

    iget-boolean p1, p0, LN/F;->I:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LN/F;->k:LJ/O;

    const/16 p2, 0x25

    invoke-virtual {p1, p2}, LJ/O;->a(I)LJ/N;

    move-result-object p1

    invoke-virtual {p1}, LJ/N;->b()V

    :cond_0
    return-void
.end method

.method public final d0(I)V
    .locals 7

    iget-object v0, p0, LN/F;->e:[LN/f0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, LN/f0;->a:LN/a;

    iget v5, v4, LN/a;->f:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xa

    invoke-interface {v4, v6, v5}, LN/a0;->b(ILjava/lang/Object;)V

    iget-object v3, v3, LN/f0;->c:LN/a;

    if-eqz v3, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v6, v4}, LN/a0;->b(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 7

    iget-object v0, p0, LN/F;->e:[LN/f0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-boolean v4, p0, LN/F;->H:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, LN/F;->G:LN/g0;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, LN/f0;->a:LN/a;

    const/16 v6, 0x12

    invoke-interface {v5, v6, v4}, LN/a0;->b(ILjava/lang/Object;)V

    iget-object v3, v3, LN/f0;->c:LN/a;

    if-eqz v3, :cond_1

    invoke-interface {v3, v6, v4}, LN/a0;->b(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final e0(Z)V
    .locals 0

    iput-boolean p1, p0, LN/F;->E:Z

    return-void
.end method

.method public final f()Z
    .locals 5

    iget-boolean v0, p0, LN/F;->C:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LN/F;->e:[LN/f0;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, LN/f0;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final f0(ZLJ/j;)V
    .locals 3

    iget-boolean v0, p0, LN/F;->V:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, LN/F;->V:Z

    if-nez p1, :cond_0

    iget-object p1, p0, LN/F;->e:[LN/f0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, LN/f0;->n()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, LJ/j;->d()Z

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, LN/F;->O()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LN/F;->W(Z)V

    return-void
.end method

.method public final g0(LN/z;)V
    .locals 7

    iget-object v0, p0, LN/F;->e:[LN/f0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, LN/f0;->a:LN/a;

    iget v5, v4, LN/a;->f:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x17

    invoke-interface {v4, v5, p1}, LN/a0;->b(ILjava/lang/Object;)V

    iget-object v3, v3, LN/f0;->c:LN/a;

    if-eqz v3, :cond_1

    invoke-interface {v3, v5, p1}, LN/a0;->b(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final h()V
    .locals 11

    iget-boolean v0, p0, LN/F;->C:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, LN/F;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, LN/F;->e:[LN/f0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    invoke-virtual {v4}, LN/f0;->c()I

    move-result v5

    iget-object v6, p0, LN/F;->q:LN/h;

    invoke-virtual {v4}, LN/f0;->g()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_8

    :cond_1
    iget v7, v4, LN/f0;->d:I

    const/4 v8, 0x1

    const/4 v9, 0x5

    if-eq v7, v9, :cond_3

    const/4 v10, 0x2

    if-ne v7, v10, :cond_2

    goto :goto_1

    :cond_2
    move v10, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v10, v8

    :goto_2
    if-eq v7, v9, :cond_5

    const/4 v9, 0x3

    if-ne v7, v9, :cond_4

    goto :goto_3

    :cond_4
    move v8, v2

    :cond_5
    :goto_3
    const-string v7, "RendererHolder"

    if-eqz v10, :cond_6

    :try_start_0
    iget-object v9, v4, LN/f0;->a:LN/a;

    goto :goto_4

    :catch_0
    move-exception v6

    goto :goto_5

    :cond_6
    iget-object v9, v4, LN/f0;->c:LN/a;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    invoke-virtual {v4, v9, v6}, LN/f0;->a(LN/a;LN/h;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    const-string v9, "Disable prewarming failed."

    invoke-static {v7, v9, v6}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    :try_start_1
    invoke-virtual {v4, v10}, LN/f0;->l(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v6

    const-string v9, "Reset prewarming failed."

    invoke-static {v7, v9, v6}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    iput v8, v4, LN/f0;->d:I

    :goto_8
    iget v6, p0, LN/F;->Y:I

    invoke-virtual {v4}, LN/f0;->c()I

    move-result v4

    sub-int/2addr v5, v4

    sub-int/2addr v6, v5

    iput v6, p0, LN/F;->Y:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LN/F;->h0:J

    :cond_8
    :goto_9
    return-void
.end method

.method public final h0(LN/B;)V
    .locals 7

    iget-object v0, p0, LN/F;->M:LI0/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LI0/w;->f(I)V

    iget v0, p1, LN/B;->c:I

    iget-object v1, p1, LN/B;->b:LU/c0;

    iget-object v2, p1, LN/B;->a:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-instance v0, LN/E;

    new-instance v3, LN/d0;

    invoke-direct {v3, v2, v1}, LN/d0;-><init>(Ljava/util/ArrayList;LU/c0;)V

    iget v4, p1, LN/B;->c:I

    iget-wide v5, p1, LN/B;->d:J

    invoke-direct {v0, v3, v4, v5, v6}, LN/E;-><init>(LG/q0;IJ)V

    iput-object v0, p0, LN/F;->Z:LN/E;

    :cond_0
    iget-object p1, p0, LN/F;->v:LN/W;

    iget-object v0, p1, LN/W;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, LN/W;->f(II)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0, v2, v1}, LN/W;->a(ILjava/util/ArrayList;LU/c0;)LG/q0;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, LN/F;->v(LG/q0;Z)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    const-string v12, "Playback error"

    const-string v13, "ExoPlayerImplInternal"

    const/4 v2, 0x2

    const/16 v3, 0x3e8

    const/4 v4, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x1

    :try_start_0
    iget v0, v11, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return v14

    :pswitch_0
    iget v0, v11, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, LN/F;->d0(I)V

    goto/16 :goto_13

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_9

    :catch_4
    move-exception v0

    goto/16 :goto_c

    :catch_5
    move-exception v0

    goto/16 :goto_d

    :pswitch_1
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LN/z;

    invoke-virtual {v1, v0}, LN/F;->g0(LN/z;)V

    goto/16 :goto_13

    :pswitch_2
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LN/g0;

    invoke-virtual {v1, v0}, LN/F;->n0(LN/g0;)V

    goto/16 :goto_13

    :pswitch_3
    iput-boolean v14, v1, LN/F;->I:Z

    iget-object v0, v1, LN/F;->J:LN/E;

    if-eqz v0, :cond_19

    invoke-virtual {v1, v0}, LN/F;->X(LN/E;)V

    const/4 v0, 0x0

    iput-object v0, v1, LN/F;->J:LN/E;

    goto/16 :goto_13

    :pswitch_4
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, LN/F;->m0(Z)V

    goto/16 :goto_13

    :pswitch_5
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LZ/w;

    invoke-virtual {v1, v0}, LN/F;->s0(LZ/w;)V

    goto/16 :goto_13

    :pswitch_6
    invoke-virtual {v1}, LN/F;->r()V

    goto/16 :goto_13

    :pswitch_7
    iget v0, v11, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, LN/F;->q(I)V

    goto/16 :goto_13

    :pswitch_8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, LN/F;->u0(F)V

    goto/16 :goto_13

    :pswitch_9
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LG/e;

    iget v5, v11, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_0

    move v5, v15

    goto :goto_0

    :cond_0
    move v5, v14

    :goto_0
    invoke-virtual {v1, v0, v5}, LN/F;->c0(LG/e;Z)V

    goto/16 :goto_13

    :pswitch_a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, LJ/j;

    invoke-virtual {v1, v5, v0}, LN/F;->t0(Ljava/lang/Object;LJ/j;)V

    goto/16 :goto_13

    :pswitch_b
    invoke-virtual {v1}, LN/F;->K()V

    goto/16 :goto_13

    :pswitch_c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LN/n;

    invoke-virtual {v1, v0}, LN/F;->k0(LN/n;)V

    goto/16 :goto_13

    :pswitch_d
    iget v0, v11, Landroid/os/Message;->arg1:I

    iget v5, v11, Landroid/os/Message;->arg2:I

    iget-object v6, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-virtual {v1, v0, v6, v5}, LN/F;->C0(ILjava/util/List;I)V

    goto/16 :goto_13

    :pswitch_e
    invoke-virtual {v1}, LN/F;->O()V

    invoke-virtual {v1, v15}, LN/F;->W(Z)V

    goto/16 :goto_13

    :pswitch_f
    invoke-virtual {v1}, LN/F;->g()V

    goto/16 :goto_13

    :pswitch_10
    iget v0, v11, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v0, v15

    goto :goto_1

    :cond_1
    move v0, v14

    :goto_1
    invoke-virtual {v1, v0}, LN/F;->e0(Z)V

    goto/16 :goto_13

    :pswitch_11
    iget v0, v11, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    move v0, v15

    goto :goto_2

    :cond_2
    move v0, v14

    :goto_2
    invoke-virtual {v1, v0}, LN/F;->i0(Z)V

    goto/16 :goto_13

    :pswitch_12
    invoke-virtual {v1}, LN/F;->I()V

    goto/16 :goto_13

    :pswitch_13
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LU/c0;

    invoke-virtual {v1, v0}, LN/F;->q0(LU/c0;)V

    goto/16 :goto_13

    :pswitch_14
    iget v0, v11, Landroid/os/Message;->arg1:I

    iget v5, v11, Landroid/os/Message;->arg2:I

    iget-object v6, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, LU/c0;

    invoke-virtual {v1, v0, v5, v6}, LN/F;->N(IILU/c0;)V

    goto/16 :goto_13

    :pswitch_15
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LN/C;

    invoke-virtual {v1, v0}, LN/F;->J(LN/C;)V

    goto/16 :goto_13

    :pswitch_16
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LN/B;

    iget v5, v11, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v5}, LN/F;->b(LN/B;I)V

    goto/16 :goto_13

    :pswitch_17
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LN/B;

    invoke-virtual {v1, v0}, LN/F;->h0(LN/B;)V

    goto/16 :goto_13

    :pswitch_18
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LG/a0;

    iget v5, v0, LG/a0;->a:F

    invoke-virtual {v1, v0, v5, v15, v14}, LN/F;->x(LG/a0;FZZ)V

    goto/16 :goto_13

    :pswitch_19
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LN/b0;

    invoke-virtual {v1, v0}, LN/F;->a0(LN/b0;)V

    goto/16 :goto_13

    :pswitch_1a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LN/b0;

    invoke-virtual {v1, v0}, LN/F;->Z(LN/b0;)V

    goto/16 :goto_13

    :pswitch_1b
    iget v0, v11, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v0, v15

    goto :goto_3

    :cond_3
    move v0, v14

    :goto_3
    iget-object v5, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, LJ/j;

    invoke-virtual {v1, v0, v5}, LN/F;->f0(ZLJ/j;)V

    goto/16 :goto_13

    :pswitch_1c
    iget v0, v11, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    move v0, v15

    goto :goto_4

    :cond_4
    move v0, v14

    :goto_4
    invoke-virtual {v1, v0}, LN/F;->p0(Z)V

    goto/16 :goto_13

    :pswitch_1d
    iget v0, v11, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, LN/F;->l0(I)V

    goto/16 :goto_13

    :pswitch_1e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LG/w0;

    iget-object v5, v1, LN/F;->h:LW/s;

    invoke-virtual {v5, v0}, LW/s;->a(LG/w0;)V

    invoke-virtual {v1}, LN/F;->O()V

    goto/16 :goto_13

    :pswitch_1f
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LU/y;

    invoke-virtual {v1, v0}, LN/F;->s(LU/y;)V

    goto/16 :goto_13

    :pswitch_20
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LU/y;

    invoke-virtual {v1, v0}, LN/F;->w(LU/y;)V

    goto/16 :goto_13

    :pswitch_21
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LJ/j;

    invoke-virtual {v1, v0}, LN/F;->L(LJ/j;)V

    return v15

    :pswitch_22
    invoke-virtual {v1, v14, v15}, LN/F;->y0(ZZ)V

    goto/16 :goto_13

    :pswitch_23
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LN/h0;

    invoke-virtual {v1, v0}, LN/F;->o0(LN/h0;)V

    goto/16 :goto_13

    :pswitch_24
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LG/a0;

    invoke-virtual {v1, v0}, LN/F;->j0(LG/a0;)V

    goto/16 :goto_13

    :pswitch_25
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LN/E;

    invoke-virtual {v1, v0}, LN/F;->X(LN/E;)V

    goto/16 :goto_13

    :pswitch_26
    invoke-virtual {v1}, LN/F;->j()V

    goto/16 :goto_13

    :pswitch_27
    iget v0, v11, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5

    move v0, v15

    goto :goto_5

    :cond_5
    move v0, v14

    :goto_5
    iget v5, v11, Landroid/os/Message;->arg2:I

    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    iget-object v7, v1, LN/F;->M:LI0/w;

    invoke-virtual {v7, v15}, LI0/w;->f(I)V

    iget-object v7, v1, LN/F;->D:LH/f;

    iget-object v8, v1, LN/F;->L:LN/X;

    iget v8, v8, LN/X;->e:I

    invoke-virtual {v7, v8, v0}, LH/f;->d(IZ)I

    move-result v7

    invoke-virtual {v1, v7, v6, v5, v0}, LN/F;->D0(IIIZ)V
    :try_end_0
    .catch LN/k; {:try_start_0 .. :try_end_0} :catch_5
    .catch LQ/g; {:try_start_0 .. :try_end_0} :catch_4
    .catch LG/X; {:try_start_0 .. :try_end_0} :catch_3
    .catch LL/l; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_13

    :goto_6
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    if-nez v4, :cond_6

    instance-of v4, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v4, :cond_7

    :cond_6
    const/16 v3, 0x3ec

    :cond_7
    new-instance v4, LN/k;

    invoke-direct {v4, v2, v0, v3}, LN/k;-><init>(ILjava/lang/Exception;I)V

    invoke-static {v13, v12, v4}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v15, v14}, LN/F;->y0(ZZ)V

    iget-object v0, v1, LN/F;->L:LN/X;

    invoke-virtual {v0, v4}, LN/X;->f(LN/k;)LN/X;

    move-result-object v0

    iput-object v0, v1, LN/F;->L:LN/X;

    goto/16 :goto_13

    :goto_7
    const/16 v2, 0x7d0

    invoke-virtual {v1, v2, v0}, LN/F;->t(ILjava/io/IOException;)V

    goto/16 :goto_13

    :goto_8
    iget v2, v0, LL/l;->e:I

    invoke-virtual {v1, v2, v0}, LN/F;->t(ILjava/io/IOException;)V

    goto/16 :goto_13

    :goto_9
    iget-boolean v2, v0, LG/X;->e:Z

    iget v5, v0, LG/X;->f:I

    if-ne v5, v15, :cond_9

    if-eqz v2, :cond_8

    const/16 v2, 0xbb9

    :goto_a
    move v3, v2

    goto :goto_b

    :cond_8
    const/16 v2, 0xbbb

    goto :goto_a

    :cond_9
    if-ne v5, v4, :cond_b

    if-eqz v2, :cond_a

    const/16 v2, 0xbba

    goto :goto_a

    :cond_a
    const/16 v2, 0xbbc

    goto :goto_a

    :cond_b
    :goto_b
    invoke-virtual {v1, v3, v0}, LN/F;->t(ILjava/io/IOException;)V

    goto/16 :goto_13

    :goto_c
    iget v2, v0, LQ/g;->e:I

    invoke-virtual {v1, v2, v0}, LN/F;->t(ILjava/io/IOException;)V

    goto/16 :goto_13

    :goto_d
    iget v3, v0, LN/k;->n:I

    iget-object v5, v1, LN/F;->u:LN/N;

    if-ne v3, v15, :cond_e

    iget-object v3, v0, LN/k;->s:LU/A;

    if-nez v3, :cond_e

    iget-object v3, v1, LN/F;->e:[LN/f0;

    iget v6, v0, LN/k;->p:I

    aget-object v3, v3, v6

    invoke-virtual {v5}, LN/N;->l()LN/L;

    move-result-object v6

    :goto_e
    if-eqz v6, :cond_c

    invoke-virtual {v3, v6}, LN/f0;->i(LN/L;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v6, v6, LN/L;->m:LN/L;

    goto :goto_e

    :cond_c
    if-nez v6, :cond_d

    invoke-virtual {v5}, LN/N;->d()LN/L;

    move-result-object v6

    :cond_d
    if-eqz v6, :cond_e

    iget-object v3, v6, LN/L;->g:LN/M;

    iget-object v3, v3, LN/M;->a:LU/A;

    invoke-virtual {v0, v3}, LN/k;->b(LU/A;)LN/k;

    move-result-object v0

    :cond_e
    iget v3, v0, LN/k;->p:I

    iget v6, v0, LN/k;->n:I

    iget-object v7, v1, LN/F;->k:LJ/O;

    if-ne v6, v15, :cond_10

    iget-object v6, v0, LN/k;->s:LU/A;

    if-eqz v6, :cond_10

    invoke-virtual {v1, v3, v6}, LN/F;->B(ILU/A;)Z

    move-result v6

    if-eqz v6, :cond_10

    iput-boolean v15, v1, LN/F;->i0:Z

    invoke-virtual {v1}, LN/F;->h()V

    invoke-virtual {v5, v3}, LN/N;->m(I)LN/L;

    move-result-object v0

    invoke-virtual {v5}, LN/N;->l()LN/L;

    move-result-object v3

    invoke-virtual {v5}, LN/N;->l()LN/L;

    move-result-object v6

    if-eq v6, v0, :cond_f

    :goto_f
    if-eqz v3, :cond_f

    iget-object v6, v3, LN/L;->m:LN/L;

    if-eq v6, v0, :cond_f

    move-object v3, v6

    goto :goto_f

    :cond_f
    invoke-virtual {v5, v3}, LN/N;->u(LN/L;)I

    iget-object v0, v1, LN/F;->L:LN/X;

    iget v0, v0, LN/X;->e:I

    if-eq v0, v4, :cond_19

    invoke-virtual {v1}, LN/F;->D()V

    invoke-virtual {v7, v2}, LJ/O;->g(I)Z

    goto/16 :goto_13

    :cond_10
    iget-object v2, v1, LN/F;->e0:LN/k;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object v0, v1, LN/F;->e0:LN/k;

    :cond_11
    iget v2, v0, LN/k;->n:I

    if-ne v2, v15, :cond_15

    invoke-virtual {v5}, LN/N;->l()LN/L;

    move-result-object v2

    invoke-virtual {v5}, LN/N;->g()LN/L;

    move-result-object v3

    if-eq v2, v3, :cond_15

    invoke-virtual {v5}, LN/N;->l()LN/L;

    move-result-object v2

    :goto_10
    if-eqz v2, :cond_12

    iget-object v3, v2, LN/L;->g:LN/M;

    iget-object v3, v3, LN/M;->a:LU/A;

    iget-object v4, v0, LN/k;->s:LU/A;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v2, v2, LN/L;->m:LN/L;

    goto :goto_10

    :cond_12
    if-nez v2, :cond_13

    invoke-virtual {v5}, LN/N;->d()LN/L;

    move-result-object v2

    :cond_13
    :goto_11
    invoke-virtual {v5}, LN/N;->l()LN/L;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v5}, LN/N;->a()LN/L;

    goto :goto_11

    :cond_14
    invoke-virtual {v5}, LN/N;->l()LN/L;

    move-result-object v2

    invoke-static {v2}, LF1/i;->j(LN/L;)V

    iget v3, v11, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, LN/F;->F(I)V

    iget-object v2, v2, LN/L;->g:LN/M;

    iget-object v3, v2, LN/M;->a:LU/A;

    move-object v5, v3

    iget-wide v3, v2, LN/M;->b:J

    iget-wide v8, v2, LN/M;->d:J

    move-object v2, v5

    move-wide v5, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v16, v7

    move-wide v7, v3

    move-object/from16 v14, v16

    invoke-virtual/range {v1 .. v10}, LN/F;->y(LU/A;JJJZI)LN/X;

    move-result-object v2

    iput-object v2, v1, LN/F;->L:LN/X;

    goto :goto_12

    :cond_15
    move-object v14, v7

    :goto_12
    iget-boolean v2, v0, LN/k;->t:Z

    if-eqz v2, :cond_18

    iget-object v2, v1, LN/F;->e0:LN/k;

    if-eqz v2, :cond_16

    iget v2, v0, LG/Z;->e:I

    const/16 v3, 0x138c

    if-eq v2, v3, :cond_16

    const/16 v3, 0x138b

    if-ne v2, v3, :cond_18

    :cond_16
    const-string v2, "Recoverable renderer error"

    invoke-static {v13, v2, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, LN/F;->e0:LN/k;

    if-nez v2, :cond_17

    iput-object v0, v1, LN/F;->e0:LN/k;

    :cond_17
    const/16 v2, 0x19

    invoke-virtual {v14, v2, v0}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object v0

    iget-object v2, v14, LJ/O;->a:Landroid/os/Handler;

    iget-object v3, v0, LJ/N;->a:Landroid/os/Message;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-virtual {v0}, LJ/N;->a()V

    goto :goto_13

    :cond_18
    invoke-static {v13, v12, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2}, LN/F;->y0(ZZ)V

    iget-object v2, v1, LN/F;->L:LN/X;

    invoke-virtual {v2, v0}, LN/X;->f(LN/k;)LN/X;

    move-result-object v0

    iput-object v0, v1, LN/F;->L:LN/X;

    :cond_19
    :goto_13
    iget v0, v11, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, LN/F;->F(I)V

    return v15

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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

.method public final i(I)V
    .locals 8

    iget-object v0, p0, LN/F;->e:[LN/f0;

    aget-object v1, v0, p1

    invoke-virtual {v1}, LN/f0;->c()I

    move-result v1

    aget-object v0, v0, p1

    iget-object v2, v0, LN/f0;->a:LN/a;

    iget-object v3, p0, LN/F;->q:LN/h;

    invoke-virtual {v0, v2, v3}, LN/f0;->a(LN/a;LN/h;)V

    iget-object v2, v0, LN/f0;->c:LN/a;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget v5, v0, LN/f0;->d:I

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1

    if-eq v5, v7, :cond_1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    move v7, v4

    :cond_1
    :goto_0
    invoke-virtual {v0, v2, v3}, LN/f0;->a(LN/a;LN/h;)V

    invoke-virtual {v0, v4}, LN/f0;->l(Z)V

    if-eqz v7, :cond_2

    iget-object v3, v0, LN/f0;->a:LN/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x11

    invoke-interface {v2, v5, v3}, LN/a0;->b(ILjava/lang/Object;)V

    :cond_2
    iput v4, v0, LN/f0;->d:I

    invoke-virtual {p0, p1, v4}, LN/F;->H(IZ)V

    iget p1, p0, LN/F;->Y:I

    sub-int/2addr p1, v1

    iput p1, p0, LN/F;->Y:I

    return-void
.end method

.method public final i0(Z)V
    .locals 0

    iput-boolean p1, p0, LN/F;->O:Z

    invoke-virtual {p0}, LN/F;->Q()V

    iget-boolean p1, p0, LN/F;->P:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LN/F;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LN/F;->W(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LN/F;->u(Z)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 32

    move-object/from16 v1, p0

    iget-object v0, v1, LN/F;->s:LJ/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v0, v1, LN/F;->k:LJ/O;

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, LJ/O;->f(I)V

    iget-object v0, v1, LN/F;->L:LN/X;

    iget v2, v0, LN/X;->e:I

    const/4 v14, 0x1

    if-eq v2, v14, :cond_a0

    const/4 v15, 0x4

    if-ne v2, v15, :cond_0

    goto/16 :goto_5a

    :cond_0
    iget-object v0, v0, LN/X;->a:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v0

    const/4 v9, 0x0

    const/4 v7, 0x3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    if-nez v0, :cond_1

    iget-object v0, v1, LN/F;->v:LN/W;

    iget-boolean v0, v0, LN/W;->l:Z

    if-nez v0, :cond_2

    :cond_1
    move-wide/from16 v25, v2

    move v15, v7

    move-object v13, v9

    move-wide/from16 v27, v11

    const/4 v14, 0x5

    goto/16 :goto_3c

    :cond_2
    iget-object v0, v1, LN/F;->u:LN/N;

    iget-wide v4, v1, LN/F;->a0:J

    invoke-virtual {v0, v4, v5}, LN/N;->t(J)V

    iget-object v0, v1, LN/F;->u:LN/N;

    iget-object v4, v0, LN/N;->l:LN/L;

    if-eqz v4, :cond_4

    iget-object v5, v4, LN/L;->g:LN/M;

    iget-boolean v5, v5, LN/M;->i:Z

    if-nez v5, :cond_3

    invoke-virtual {v4}, LN/L;->g()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, LN/N;->l:LN/L;

    iget-object v4, v4, LN/L;->g:LN/M;

    iget-wide v4, v4, LN/M;->e:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    iget v0, v0, LN/N;->n:I

    const/16 v4, 0x64

    if-ge v0, v4, :cond_3

    goto :goto_0

    :cond_3
    move-wide/from16 v25, v2

    move-wide/from16 v27, v11

    goto/16 :goto_9

    :cond_4
    :goto_0
    iget-object v0, v1, LN/F;->u:LN/N;

    iget-wide v4, v1, LN/F;->a0:J

    iget-object v6, v1, LN/F;->L:LN/X;

    move-wide/from16 v25, v2

    iget-object v2, v0, LN/N;->l:LN/L;

    if-nez v2, :cond_5

    iget-object v2, v6, LN/X;->a:LG/q0;

    iget-object v3, v6, LN/X;->b:LU/A;

    iget-wide v4, v6, LN/X;->c:J

    move-wide/from16 v27, v11

    iget-wide v10, v6, LN/X;->s:J

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-wide/from16 v21, v10

    invoke-virtual/range {v16 .. v24}, LN/N;->i(LG/q0;LU/A;JJJ)LN/M;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-wide/from16 v27, v11

    iget-object v3, v6, LN/X;->a:LG/q0;

    invoke-virtual {v0, v3, v2, v4, v5}, LN/N;->f(LG/q0;LN/L;J)LN/M;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_10

    iget-object v2, v1, LN/F;->u:LN/N;

    iget-object v3, v2, LN/N;->l:LN/L;

    if-nez v3, :cond_6

    const-wide v3, 0xe8d4a51000L

    :goto_2
    move-wide/from16 v18, v3

    goto :goto_3

    :cond_6
    iget-wide v4, v3, LN/L;->p:J

    iget-object v3, v3, LN/L;->g:LN/M;

    iget-wide v10, v3, LN/M;->e:J

    add-long/2addr v4, v10

    iget-wide v10, v0, LN/M;->b:J

    sub-long v3, v4, v10

    goto :goto_2

    :goto_3
    move v3, v8

    :goto_4
    iget-object v4, v2, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    iget-object v4, v2, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN/L;

    iget-object v4, v4, LN/L;->g:LN/M;

    iget-wide v5, v4, LN/M;->e:J

    iget-wide v10, v0, LN/M;->e:J

    cmp-long v16, v5, v25

    if-eqz v16, :cond_7

    cmp-long v5, v5, v10

    if-nez v5, :cond_8

    :cond_7
    iget-wide v5, v4, LN/M;->b:J

    iget-wide v10, v0, LN/M;->b:J

    cmp-long v5, v5, v10

    if-nez v5, :cond_8

    iget-object v4, v4, LN/M;->a:LU/A;

    iget-object v5, v0, LN/M;->a:LU/A;

    invoke-virtual {v4, v5}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v2, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN/L;

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move-object v3, v9

    :goto_5
    if-nez v3, :cond_a

    iget-object v3, v2, LN/N;->e:LI0/E;

    iget-object v3, v3, LI0/E;->f:Ljava/lang/Object;

    check-cast v3, LN/F;

    new-instance v16, LN/L;

    iget-object v4, v3, LN/F;->f:[LN/a;

    iget-object v5, v3, LN/F;->h:LW/s;

    iget-object v6, v3, LN/F;->j:LN/H;

    iget-object v10, v3, LN/F;->y:LO/j;

    check-cast v6, LN/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, LB/A;

    invoke-direct {v11, v6, v10}, LB/A;-><init>(LN/g;LO/j;)V

    iget-object v6, v3, LN/F;->v:LN/W;

    iget-object v10, v3, LN/F;->i:LW/t;

    iget-object v3, v3, LN/F;->g0:LN/n;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v23, v0

    move-object/from16 v17, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v10

    move-object/from16 v21, v11

    invoke-direct/range {v16 .. v24}, LN/L;-><init>([LN/a;JLW/s;LB/A;LN/W;LN/M;LW/t;)V

    move-object/from16 v3, v16

    goto :goto_6

    :cond_a
    move-wide/from16 v4, v18

    iput-object v0, v3, LN/L;->g:LN/M;

    iput-wide v4, v3, LN/L;->p:J

    :goto_6
    iget-object v4, v2, LN/N;->l:LN/L;

    if-eqz v4, :cond_c

    iget-object v5, v4, LN/L;->m:LN/L;

    if-ne v3, v5, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v4}, LN/L;->b()V

    iput-object v3, v4, LN/L;->m:LN/L;

    invoke-virtual {v4}, LN/L;->c()V

    goto :goto_7

    :cond_c
    iput-object v3, v2, LN/N;->i:LN/L;

    iget-object v4, v2, LN/N;->j:[LN/L;

    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v2, LN/N;->k:[LN/L;

    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    iput-object v9, v2, LN/N;->o:Ljava/lang/Object;

    iput-object v3, v2, LN/N;->l:LN/L;

    iget v4, v2, LN/N;->n:I

    add-int/2addr v4, v14

    iput v4, v2, LN/N;->n:I

    invoke-virtual {v2}, LN/N;->s()V

    iget-boolean v2, v3, LN/L;->d:Z

    if-nez v2, :cond_d

    iget-wide v4, v0, LN/M;->b:J

    iput-boolean v14, v3, LN/L;->d:Z

    iget-object v2, v3, LN/L;->a:LU/s;

    invoke-virtual {v2, v1, v4, v5}, LU/s;->f(LU/x;J)V

    goto :goto_8

    :cond_d
    iget-boolean v2, v3, LN/L;->e:Z

    if-eqz v2, :cond_e

    iget-object v2, v1, LN/F;->k:LJ/O;

    const/16 v4, 0x8

    iget-object v5, v3, LN/L;->a:LU/s;

    invoke-virtual {v2, v4, v5}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object v2

    invoke-virtual {v2}, LJ/N;->b()V

    :cond_e
    :goto_8
    iget-object v2, v1, LN/F;->u:LN/N;

    iget-object v2, v2, LN/N;->i:LN/L;

    if-ne v2, v3, :cond_f

    iget-wide v2, v0, LN/M;->b:J

    invoke-virtual {v1, v2, v3, v14}, LN/F;->R(JZ)V

    :cond_f
    invoke-virtual {v1, v8}, LN/F;->u(Z)V

    :cond_10
    :goto_9
    iget-boolean v0, v1, LN/F;->S:Z

    if-eqz v0, :cond_11

    iget-object v0, v1, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->l:LN/L;

    invoke-static {v0}, LN/F;->z(LN/L;)Z

    move-result v0

    iput-boolean v0, v1, LN/F;->S:Z

    invoke-virtual {v1}, LN/F;->A0()V

    goto :goto_a

    :cond_11
    invoke-virtual {v1}, LN/F;->D()V

    :goto_a
    iget-object v0, v1, LN/F;->u:LN/N;

    iget-boolean v2, v1, LN/F;->P:Z

    const-wide/32 v10, 0x989680

    if-nez v2, :cond_12

    iget-boolean v2, v1, LN/F;->C:Z

    if-eqz v2, :cond_12

    iget-boolean v2, v1, LN/F;->i0:Z

    if-nez v2, :cond_12

    invoke-virtual {v1}, LN/F;->f()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    :goto_b
    move-wide/from16 v18, v10

    move-wide/from16 v11, v25

    goto/16 :goto_11

    :cond_13
    invoke-virtual {v0}, LN/N;->c()LN/L;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v0}, LN/N;->d()LN/L;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v2, v2, LN/L;->m:LN/L;

    if-eqz v2, :cond_12

    iget-boolean v3, v2, LN/L;->e:Z

    if-nez v3, :cond_14

    goto :goto_b

    :cond_14
    invoke-static {v3}, LF1/i;->o(Z)V

    invoke-virtual {v2}, LN/L;->e()J

    move-result-wide v2

    iget-wide v4, v1, LN/F;->a0:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget-object v3, v1, LN/F;->q:LN/h;

    invoke-virtual {v3}, LN/h;->g()LG/a0;

    move-result-object v3

    iget v3, v3, LG/a0;->a:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_15

    goto :goto_b

    :cond_15
    move v2, v8

    :goto_c
    iget-object v3, v0, LN/N;->k:[LN/L;

    array-length v4, v3

    if-ge v2, v4, :cond_16

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, LN/L;->m:LN/L;

    aput-object v4, v3, v2

    invoke-virtual {v0}, LN/N;->s()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    iget-object v2, v1, LN/F;->e:[LN/f0;

    invoke-virtual {v0}, LN/N;->c()LN/L;

    move-result-object v3

    if-nez v3, :cond_17

    goto :goto_b

    :cond_17
    iget-object v4, v3, LN/L;->o:LW/t;

    move-object v5, v3

    move v3, v8

    :goto_d
    array-length v6, v2

    if-ge v3, v6, :cond_1c

    invoke-virtual {v4, v3}, LW/t;->b(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    aget-object v6, v2, v3

    iget-object v9, v6, LN/f0;->c:LN/a;

    if-eqz v9, :cond_1b

    invoke-virtual {v6}, LN/f0;->g()Z

    move-result v6

    if-nez v6, :cond_1b

    aget-object v6, v2, v3

    invoke-virtual {v6}, LN/f0;->g()Z

    move-result v9

    xor-int/2addr v9, v14

    invoke-static {v9}, LF1/i;->o(Z)V

    iget-object v9, v6, LN/f0;->a:LN/a;

    invoke-static {v9}, LN/f0;->k(LN/a;)Z

    move-result v9

    if-eqz v9, :cond_18

    iput v15, v6, LN/f0;->d:I

    :goto_e
    move-object v6, v4

    goto :goto_f

    :cond_18
    iget-object v9, v6, LN/f0;->c:LN/a;

    if-eqz v9, :cond_19

    iget v9, v9, LN/a;->l:I

    if-eqz v9, :cond_19

    const/4 v12, 0x5

    iput v12, v6, LN/f0;->d:I

    goto :goto_e

    :cond_19
    iget v9, v6, LN/f0;->d:I

    if-nez v9, :cond_1a

    iput v13, v6, LN/f0;->d:I

    goto :goto_e

    :cond_1a
    iput v7, v6, LN/f0;->d:I

    goto :goto_e

    :goto_f
    const/4 v4, 0x0

    move-object v9, v2

    move-object v2, v5

    move-object/from16 v17, v6

    invoke-virtual {v2}, LN/L;->e()J

    move-result-wide v5

    move-wide/from16 v18, v10

    move-wide/from16 v11, v25

    invoke-virtual/range {v1 .. v6}, LN/F;->k(LN/L;IZJ)V

    goto :goto_10

    :cond_1b
    move-object v9, v2

    move-object/from16 v17, v4

    move-object v2, v5

    move-wide/from16 v18, v10

    move-wide/from16 v11, v25

    :goto_10
    add-int/lit8 v3, v3, 0x1

    move-object v5, v2

    move-object v2, v9

    move-wide/from16 v25, v11

    move-object/from16 v4, v17

    move-wide/from16 v10, v18

    const/4 v9, 0x0

    goto :goto_d

    :cond_1c
    move-object v2, v5

    move-wide/from16 v18, v10

    move-wide/from16 v11, v25

    invoke-virtual {v1}, LN/F;->f()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v2, LN/L;->a:LU/s;

    invoke-virtual {v3}, LU/s;->i()J

    move-result-wide v3

    iput-wide v3, v1, LN/F;->h0:J

    invoke-virtual {v2}, LN/L;->g()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v0, v2}, LN/N;->u(LN/L;)I

    invoke-virtual {v1, v8}, LN/F;->u(Z)V

    invoke-virtual {v1}, LN/F;->D()V

    :cond_1d
    :goto_11
    iget-boolean v0, v1, LN/F;->C:Z

    iget-object v9, v1, LN/F;->e:[LN/f0;

    iget-object v2, v1, LN/F;->u:LN/N;

    invoke-virtual {v2}, LN/N;->d()LN/L;

    move-result-object v3

    if-nez v3, :cond_1e

    move-wide/from16 v25, v11

    :goto_12
    const/16 v21, 0x5

    goto/16 :goto_24

    :cond_1e
    iget-object v4, v3, LN/L;->m:LN/L;

    if-eqz v4, :cond_1f

    iget-boolean v4, v1, LN/F;->P:Z

    if-eqz v4, :cond_20

    :cond_1f
    move-wide/from16 v25, v11

    const/16 v21, 0x5

    goto/16 :goto_20

    :cond_20
    invoke-virtual {v2}, LN/N;->d()LN/L;

    move-result-object v4

    iget-boolean v5, v4, LN/L;->e:Z

    if-nez v5, :cond_21

    move/from16 v20, v8

    goto :goto_14

    :cond_21
    iget-object v5, v1, LN/F;->e:[LN/f0;

    array-length v6, v5

    move v7, v8

    :goto_13
    if-ge v7, v6, :cond_23

    move/from16 v20, v8

    aget-object v8, v5, v7

    iget-object v10, v8, LN/f0;->a:LN/a;

    invoke-virtual {v8, v4, v10}, LN/f0;->e(LN/L;LN/a;)Z

    move-result v10

    if-eqz v10, :cond_22

    iget-object v10, v8, LN/f0;->c:LN/a;

    invoke-virtual {v8, v4, v10}, LN/f0;->e(LN/L;LN/a;)Z

    move-result v8

    if-eqz v8, :cond_22

    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v20

    goto :goto_13

    :cond_22
    :goto_14
    move-wide/from16 v25, v11

    const/4 v7, 0x3

    goto :goto_12

    :cond_23
    move/from16 v20, v8

    invoke-virtual {v1}, LN/F;->f()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v2}, LN/N;->c()LN/L;

    move-result-object v4

    invoke-virtual {v2}, LN/N;->d()LN/L;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_14

    :cond_24
    iget-object v4, v3, LN/L;->m:LN/L;

    iget-boolean v5, v4, LN/L;->e:Z

    if-nez v5, :cond_25

    iget-wide v5, v1, LN/F;->a0:J

    invoke-virtual {v4}, LN/L;->e()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-gez v4, :cond_25

    goto :goto_14

    :cond_25
    iget-object v4, v3, LN/L;->m:LN/L;

    iget-boolean v5, v4, LN/L;->e:Z

    if-eqz v5, :cond_26

    invoke-static {v5}, LF1/i;->o(Z)V

    invoke-virtual {v4}, LN/L;->e()J

    move-result-wide v4

    iget-wide v6, v1, LN/F;->a0:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget-object v5, v1, LN/F;->q:LN/h;

    invoke-virtual {v5}, LN/h;->g()LG/a0;

    move-result-object v5

    iget v5, v5, LG/a0;->a:F

    div-float/2addr v4, v5

    float-to-long v4, v4

    cmp-long v4, v4, v18

    if-lez v4, :cond_26

    goto :goto_14

    :cond_26
    iget-object v10, v3, LN/L;->o:LW/t;

    move/from16 v4, v20

    :goto_15
    iget-object v5, v2, LN/N;->j:[LN/L;

    array-length v6, v5

    if-ge v4, v6, :cond_28

    iget-object v6, v2, LN/N;->k:[LN/L;

    aget-object v7, v6, v4

    aget-object v8, v5, v4

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    aget-object v7, v5, v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, LN/L;->m:LN/L;

    aput-object v7, v6, v4

    :cond_27
    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, LN/L;->m:LN/L;

    aput-object v6, v5, v4

    invoke-virtual {v2}, LN/N;->s()V

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_28
    aget-object v4, v5, v20

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, LN/L;->o:LW/t;

    iget-object v6, v1, LN/F;->L:LN/X;

    iget-object v6, v6, LN/X;->a:LG/q0;

    iget-object v7, v4, LN/L;->g:LN/M;

    iget-object v7, v7, LN/M;->a:LU/A;

    iget-object v3, v3, LN/L;->g:LN/M;

    iget-object v3, v3, LN/M;->a:LU/A;

    move-object v8, v2

    move-object/from16 v18, v5

    move-object v2, v6

    move-object v5, v3

    move-object v3, v7

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v19, v8

    const/4 v8, 0x0

    move-object/from16 v22, v4

    move-object v4, v2

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v15, v22

    invoke-virtual/range {v1 .. v8}, LN/F;->F0(LG/q0;LU/A;LG/q0;LU/A;JZ)V

    iget-boolean v2, v15, LN/L;->e:Z

    const/4 v3, -0x2

    if-eqz v2, :cond_37

    if-eqz v0, :cond_29

    iget-wide v4, v1, LN/F;->h0:J

    cmp-long v2, v4, v11

    if-nez v2, :cond_2a

    :cond_29
    iget-object v2, v15, LN/L;->a:LU/s;

    invoke-virtual {v2}, LU/s;->i()J

    move-result-wide v4

    cmp-long v2, v4, v11

    if-eqz v2, :cond_37

    :cond_2a
    iput-wide v11, v1, LN/F;->h0:J

    if-eqz v0, :cond_2b

    iget-boolean v0, v1, LN/F;->i0:Z

    if-nez v0, :cond_2b

    const/4 v8, 0x1

    goto :goto_16

    :cond_2b
    const/4 v8, 0x0

    :goto_16
    if-eqz v8, :cond_2e

    const/4 v0, 0x0

    :goto_17
    array-length v2, v9

    if-ge v0, v2, :cond_2e

    invoke-virtual {v13, v0}, LW/t;->b(I)Z

    move-result v2

    iget-object v4, v13, LW/t;->c:[LW/q;

    if-eqz v2, :cond_2d

    aget-object v2, v9, v0

    iget-object v2, v2, LN/f0;->a:LN/a;

    iget v2, v2, LN/a;->f:I

    if-ne v2, v3, :cond_2c

    goto :goto_18

    :cond_2c
    aget-object v2, v4, v0

    invoke-interface {v2}, LW/q;->h()LG/x;

    move-result-object v2

    iget-object v2, v2, LG/x;->p:Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v4}, LW/q;->h()LG/x;

    move-result-object v4

    iget-object v4, v4, LG/x;->l:Ljava/lang/String;

    invoke-static {v2, v4}, LG/W;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    aget-object v2, v9, v0

    invoke-virtual {v2}, LN/f0;->g()Z

    move-result v2

    if-nez v2, :cond_2d

    const/4 v8, 0x0

    goto :goto_19

    :cond_2d
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2e
    :goto_19
    if-nez v8, :cond_37

    invoke-virtual {v15}, LN/L;->e()J

    move-result-wide v2

    array-length v0, v9

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v0, :cond_34

    aget-object v4, v9, v8

    iget-object v5, v4, LN/f0;->c:LN/a;

    iget-object v6, v4, LN/f0;->a:LN/a;

    invoke-static {v6}, LN/f0;->k(LN/a;)Z

    move-result v7

    if-eqz v7, :cond_2f

    iget v7, v4, LN/f0;->d:I

    const/4 v10, 0x5

    if-eq v7, v10, :cond_30

    const/4 v13, 0x2

    if-eq v7, v13, :cond_30

    invoke-static {v6, v2, v3}, LN/f0;->o(LN/a;J)V

    goto :goto_1b

    :cond_2f
    const/4 v10, 0x5

    :cond_30
    :goto_1b
    if-eqz v5, :cond_32

    iget v6, v5, LN/a;->l:I

    if-eqz v6, :cond_31

    const/4 v6, 0x1

    goto :goto_1c

    :cond_31
    const/4 v6, 0x0

    :goto_1c
    if-eqz v6, :cond_32

    iget v4, v4, LN/f0;->d:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_32

    const/4 v7, 0x3

    if-eq v4, v7, :cond_33

    invoke-static {v5, v2, v3}, LN/f0;->o(LN/a;J)V

    goto :goto_1d

    :cond_32
    const/4 v7, 0x3

    :cond_33
    :goto_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_34
    const/4 v7, 0x3

    const/4 v10, 0x5

    invoke-virtual {v15}, LN/L;->g()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {v14, v15}, LN/N;->u(LN/L;)I

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, LN/F;->u(Z)V

    invoke-virtual {v1}, LN/F;->D()V

    :cond_35
    move/from16 v21, v10

    :cond_36
    move-wide/from16 v25, v11

    goto/16 :goto_24

    :cond_37
    const/4 v7, 0x3

    const/16 v21, 0x5

    array-length v0, v9

    const/4 v8, 0x0

    :goto_1e
    if-ge v8, v0, :cond_36

    aget-object v2, v9, v8

    invoke-virtual {v15}, LN/L;->e()J

    move-result-wide v4

    iget-object v6, v2, LN/f0;->a:LN/a;

    iget v14, v2, LN/f0;->b:I

    invoke-virtual {v10, v14}, LW/t;->b(I)Z

    move-result v19

    invoke-virtual {v13, v14}, LW/t;->b(I)Z

    move-result v22

    move-wide/from16 v25, v11

    iget-object v11, v2, LN/f0;->c:LN/a;

    if-eqz v11, :cond_38

    iget v12, v2, LN/f0;->d:I

    const/4 v3, 0x4

    if-eq v12, v3, :cond_38

    if-eq v12, v7, :cond_38

    if-nez v12, :cond_39

    invoke-static {v6}, LN/f0;->k(LN/a;)Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_38
    move-object v11, v6

    :cond_39
    if-eqz v19, :cond_3c

    iget-boolean v3, v11, LN/a;->r:Z

    if-nez v3, :cond_3c

    iget v3, v6, LN/a;->f:I

    const/4 v6, -0x2

    if-ne v3, v6, :cond_3a

    const/4 v3, 0x1

    goto :goto_1f

    :cond_3a
    const/4 v3, 0x0

    :goto_1f
    iget-object v12, v10, LW/t;->b:[LN/e0;

    aget-object v12, v12, v14

    iget-object v6, v13, LW/t;->b:[LN/e0;

    aget-object v6, v6, v14

    if-eqz v22, :cond_3b

    invoke-static {v6, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    if-nez v3, :cond_3b

    invoke-virtual {v2}, LN/f0;->g()Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_3b
    invoke-static {v11, v4, v5}, LN/f0;->o(LN/a;J)V

    :cond_3c
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v11, v25

    const/4 v3, -0x2

    goto :goto_1e

    :goto_20
    iget-object v0, v3, LN/L;->g:LN/M;

    iget-boolean v0, v0, LN/M;->i:Z

    if-nez v0, :cond_3d

    iget-boolean v0, v1, LN/F;->P:Z

    if-eqz v0, :cond_41

    :cond_3d
    array-length v0, v9

    const/4 v8, 0x0

    :goto_21
    if-ge v8, v0, :cond_41

    aget-object v2, v9, v8

    invoke-virtual {v2, v3}, LN/f0;->i(LN/L;)Z

    move-result v4

    if-nez v4, :cond_3e

    goto :goto_23

    :cond_3e
    invoke-virtual {v2, v3}, LN/f0;->d(LN/L;)LN/a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, LN/a;->l()Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, v3, LN/L;->g:LN/M;

    iget-wide v4, v4, LN/M;->e:J

    cmp-long v6, v4, v25

    if-eqz v6, :cond_3f

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v6, v4, v10

    if-eqz v6, :cond_3f

    iget-wide v10, v3, LN/L;->p:J

    add-long/2addr v4, v10

    goto :goto_22

    :cond_3f
    move-wide/from16 v4, v25

    :goto_22
    invoke-virtual {v2, v3}, LN/f0;->d(LN/L;)LN/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4, v5}, LN/f0;->o(LN/a;J)V

    :cond_40
    :goto_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    :cond_41
    :goto_24
    iget-object v0, v1, LN/F;->u:LN/N;

    invoke-virtual {v0}, LN/N;->d()LN/L;

    move-result-object v2

    if-eqz v2, :cond_4c

    iget-object v3, v0, LN/N;->i:LN/L;

    if-eq v3, v2, :cond_4c

    const/4 v8, 0x0

    :goto_25
    iget-object v3, v1, LN/F;->e:[LN/f0;

    array-length v3, v3

    if-ge v8, v3, :cond_43

    iget-object v3, v2, LN/L;->h:[Z

    aget-boolean v3, v3, v8

    if-nez v3, :cond_42

    const/4 v8, 0x0

    goto :goto_26

    :cond_42
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_43
    const/4 v8, 0x1

    :goto_26
    if-eqz v8, :cond_44

    goto/16 :goto_2b

    :cond_44
    invoke-virtual {v0}, LN/N;->d()LN/L;

    move-result-object v2

    iget-object v8, v2, LN/L;->o:LW/t;

    iget-object v9, v1, LN/F;->e:[LN/f0;

    array-length v3, v9

    const/4 v4, 0x0

    const/4 v10, 0x1

    :goto_27
    if-ge v4, v3, :cond_49

    aget-object v5, v9, v4

    invoke-virtual {v5}, LN/f0;->c()I

    move-result v6

    iget-object v11, v1, LN/F;->q:LN/h;

    iget-object v12, v5, LN/f0;->a:LN/a;

    invoke-virtual {v5, v12, v2, v8, v11}, LN/f0;->m(LN/a;LN/L;LW/t;LN/h;)I

    move-result v12

    iget-object v13, v5, LN/f0;->c:LN/a;

    invoke-virtual {v5, v13, v2, v8, v11}, LN/f0;->m(LN/a;LN/L;LW/t;LN/h;)I

    move-result v11

    const/4 v13, 0x1

    if-ne v12, v13, :cond_45

    move v12, v11

    :cond_45
    and-int/lit8 v11, v12, 0x2

    if-eqz v11, :cond_47

    iget-boolean v11, v1, LN/F;->X:Z

    if-eqz v11, :cond_47

    if-nez v11, :cond_46

    goto :goto_28

    :cond_46
    const/4 v11, 0x0

    iput-boolean v11, v1, LN/F;->X:Z

    iget-object v11, v1, LN/F;->L:LN/X;

    iget-boolean v11, v11, LN/X;->p:Z

    if-eqz v11, :cond_47

    iget-object v11, v1, LN/F;->k:LJ/O;

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, LJ/O;->g(I)Z

    :cond_47
    :goto_28
    iget v11, v1, LN/F;->Y:I

    invoke-virtual {v5}, LN/f0;->c()I

    move-result v5

    sub-int/2addr v6, v5

    sub-int/2addr v11, v6

    iput v11, v1, LN/F;->Y:I

    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_48

    const/4 v5, 0x1

    goto :goto_29

    :cond_48
    const/4 v5, 0x0

    :goto_29
    and-int/2addr v10, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_49
    if-eqz v10, :cond_4b

    const/4 v3, 0x0

    :goto_2a
    array-length v4, v9

    if-ge v3, v4, :cond_4b

    invoke-virtual {v8, v3}, LW/t;->b(I)Z

    move-result v4

    if-eqz v4, :cond_4a

    aget-object v4, v9, v3

    invoke-virtual {v4, v2}, LN/f0;->i(LN/L;)Z

    move-result v4

    if-nez v4, :cond_4a

    const/4 v4, 0x0

    invoke-virtual {v2}, LN/L;->e()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, LN/F;->k(LN/L;IZJ)V

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_4b
    if-eqz v10, :cond_4c

    invoke-virtual {v0}, LN/N;->d()LN/L;

    move-result-object v0

    invoke-virtual {v1, v0}, LN/F;->b0(LN/L;)V

    :cond_4c
    :goto_2b
    iget-object v0, v1, LN/F;->e:[LN/f0;

    iget-object v11, v1, LN/F;->u:LN/N;

    const/4 v8, 0x0

    :goto_2c
    invoke-virtual {v1}, LN/F;->v0()Z

    move-result v2

    if-nez v2, :cond_4e

    :cond_4d
    :goto_2d
    move v15, v7

    move/from16 v14, v21

    const/4 v13, 0x0

    goto/16 :goto_3b

    :cond_4e
    iget-boolean v2, v1, LN/F;->P:Z

    if-eqz v2, :cond_4f

    goto :goto_2d

    :cond_4f
    iget-object v2, v11, LN/N;->i:LN/L;

    if-nez v2, :cond_50

    goto :goto_2d

    :cond_50
    iget-object v2, v2, LN/L;->m:LN/L;

    if-eqz v2, :cond_4d

    iget-wide v3, v1, LN/F;->a0:J

    invoke-virtual {v2}, LN/L;->e()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4d

    const/4 v3, 0x0

    :goto_2e
    iget-object v4, v1, LN/F;->e:[LN/f0;

    array-length v4, v4

    if-ge v3, v4, :cond_52

    iget-object v4, v2, LN/L;->h:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_51

    const/4 v2, 0x0

    goto :goto_2f

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_52
    const/4 v2, 0x1

    :goto_2f
    if-eqz v2, :cond_4d

    const/4 v2, -0x1

    if-eqz v8, :cond_53

    invoke-virtual {v1, v2}, LN/F;->F(I)V

    :cond_53
    const/4 v3, 0x0

    iput-boolean v3, v1, LN/F;->i0:Z

    invoke-virtual {v11}, LN/N;->a()LN/L;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, LN/F;->L:LN/X;

    iget-object v3, v3, LN/X;->b:LU/A;

    iget-object v3, v3, LU/A;->a:Ljava/lang/Object;

    iget-object v4, v12, LN/L;->g:LN/M;

    iget-object v4, v4, LN/M;->a:LU/A;

    iget-object v4, v4, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, v1, LN/F;->L:LN/X;

    iget-object v3, v3, LN/X;->b:LU/A;

    iget v4, v3, LU/A;->b:I

    if-ne v4, v2, :cond_54

    iget-object v4, v12, LN/L;->g:LN/M;

    iget-object v4, v4, LN/M;->a:LU/A;

    iget v5, v4, LU/A;->b:I

    if-ne v5, v2, :cond_54

    iget v2, v3, LU/A;->e:I

    iget v3, v4, LU/A;->e:I

    if-eq v2, v3, :cond_54

    const/4 v8, 0x1

    goto :goto_30

    :cond_54
    const/4 v8, 0x0

    :goto_30
    iget-object v2, v12, LN/L;->g:LN/M;

    iget-object v3, v2, LN/M;->a:LU/A;

    move-object v5, v3

    iget-wide v3, v2, LN/M;->b:J

    iget-wide v9, v2, LN/M;->d:J

    const/16 v23, 0x1

    xor-int/lit8 v2, v8, 0x1

    move-wide/from16 v30, v9

    move v9, v2

    move-object v2, v5

    move-wide/from16 v5, v30

    const/4 v10, 0x0

    move/from16 v29, v7

    move-wide v7, v3

    move/from16 v14, v21

    move/from16 v15, v29

    const/4 v13, 0x0

    invoke-virtual/range {v1 .. v10}, LN/F;->y(LU/A;JJJZI)LN/X;

    move-result-object v2

    iput-object v2, v1, LN/F;->L:LN/X;

    invoke-virtual {v1}, LN/F;->Q()V

    invoke-virtual {v1}, LN/F;->E0()V

    const/4 v8, 0x0

    :goto_31
    array-length v2, v0

    if-ge v8, v2, :cond_5d

    iget-boolean v2, v1, LN/F;->C:Z

    if-nez v2, :cond_55

    const/4 v2, 0x0

    goto :goto_32

    :cond_55
    iget-object v2, v1, LN/F;->e:[LN/f0;

    aget-object v2, v2, v8

    invoke-virtual {v2}, LN/f0;->g()Z

    move-result v2

    :goto_32
    if-eqz v2, :cond_5c

    iget-object v2, v11, LN/N;->k:[LN/L;

    aget-object v2, v2, v8

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    aget-object v2, v0, v8

    iget v3, v2, LN/f0;->d:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_58

    if-ne v3, v14, :cond_56

    goto :goto_33

    :cond_56
    const/4 v4, 0x2

    if-ne v3, v4, :cond_57

    const/4 v4, 0x0

    iput v4, v2, LN/f0;->d:I

    goto :goto_37

    :cond_57
    if-ne v3, v15, :cond_5c

    const/4 v3, 0x1

    iput v3, v2, LN/f0;->d:I

    goto :goto_37

    :cond_58
    :goto_33
    if-ne v3, v14, :cond_59

    const/4 v3, 0x1

    goto :goto_34

    :cond_59
    const/4 v3, 0x0

    :goto_34
    iget-object v4, v2, LN/f0;->a:LN/a;

    iget-object v5, v2, LN/f0;->c:LN/a;

    const/16 v6, 0x11

    if-eqz v3, :cond_5a

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v6, v4}, LN/a0;->b(ILjava/lang/Object;)V

    goto :goto_35

    :cond_5a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, v6, v5}, LN/a0;->b(ILjava/lang/Object;)V

    :goto_35
    iget v3, v2, LN/f0;->d:I

    if-ne v3, v14, :cond_5b

    const/4 v3, 0x0

    goto :goto_36

    :cond_5b
    const/4 v3, 0x1

    :goto_36
    iput v3, v2, LN/f0;->d:I

    :cond_5c
    :goto_37
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    :cond_5d
    iget-object v2, v1, LN/F;->L:LN/X;

    iget v2, v2, LN/X;->e:I

    if-ne v2, v15, :cond_5e

    invoke-virtual {v1}, LN/F;->x0()V

    :cond_5e
    iget-object v2, v11, LN/N;->i:LN/L;

    iget-object v2, v2, LN/L;->o:LW/t;

    const/4 v8, 0x0

    :goto_38
    array-length v3, v0

    if-ge v8, v3, :cond_63

    invoke-virtual {v2, v8}, LW/t;->b(I)Z

    move-result v3

    if-nez v3, :cond_5f

    goto :goto_3a

    :cond_5f
    aget-object v3, v0, v8

    iget-object v4, v3, LN/f0;->c:LN/a;

    iget-object v3, v3, LN/f0;->a:LN/a;

    invoke-static {v3}, LN/f0;->k(LN/a;)Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-virtual {v3}, LN/a;->h()V

    goto :goto_3a

    :cond_60
    if-eqz v4, :cond_62

    iget v3, v4, LN/a;->l:I

    if-eqz v3, :cond_61

    const/4 v3, 0x1

    goto :goto_39

    :cond_61
    const/4 v3, 0x0

    :goto_39
    if-eqz v3, :cond_62

    invoke-virtual {v4}, LN/a;->h()V

    :cond_62
    :goto_3a
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    :cond_63
    move/from16 v21, v14

    move v7, v15

    const/4 v8, 0x1

    goto/16 :goto_2c

    :goto_3b
    iget-object v0, v1, LN/F;->g0:LN/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3c
    iget-object v0, v1, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->i:LN/L;

    if-nez v0, :cond_64

    move-wide/from16 v2, v27

    invoke-virtual {v1, v2, v3}, LN/F;->V(J)V

    return-void

    :cond_64
    move-wide/from16 v2, v27

    const-string v4, "doSomeWork"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1}, LN/F;->E0()V

    iget-boolean v4, v0, LN/L;->e:Z

    if-eqz v4, :cond_72

    iget-object v4, v1, LN/F;->s:LJ/M;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, LJ/W;->G(J)J

    move-result-wide v4

    iput-wide v4, v1, LN/F;->b0:J

    iget-object v4, v0, LN/L;->a:LU/s;

    iget-object v5, v1, LN/F;->L:LN/X;

    iget-wide v5, v5, LN/X;->s:J

    iget-wide v7, v1, LN/F;->p:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, LU/s;->r(J)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    :goto_3d
    iget-object v7, v1, LN/F;->e:[LN/f0;

    array-length v9, v7

    if-ge v8, v9, :cond_70

    aget-object v7, v7, v8

    invoke-virtual {v7}, LN/f0;->c()I

    move-result v9

    if-nez v9, :cond_65

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v11}, LN/F;->H(IZ)V

    goto/16 :goto_44

    :cond_65
    iget-wide v9, v1, LN/F;->a0:J

    iget-wide v11, v1, LN/F;->b0:J

    iget-object v13, v7, LN/f0;->c:LN/a;

    iget-object v15, v7, LN/f0;->a:LN/a;

    invoke-static {v15}, LN/f0;->k(LN/a;)Z

    move-result v19

    if-eqz v19, :cond_66

    invoke-virtual {v15, v9, v10, v11, v12}, LN/a;->z(JJ)V

    :cond_66
    if-eqz v13, :cond_68

    iget v15, v13, LN/a;->l:I

    if-eqz v15, :cond_67

    const/4 v15, 0x1

    goto :goto_3e

    :cond_67
    const/4 v15, 0x0

    :goto_3e
    if-eqz v15, :cond_68

    invoke-virtual {v13, v9, v10, v11, v12}, LN/a;->z(JJ)V

    :cond_68
    if-eqz v5, :cond_69

    invoke-virtual {v7}, LN/f0;->f()Z

    move-result v5

    if-eqz v5, :cond_69

    const/4 v5, 0x1

    goto :goto_3f

    :cond_69
    const/4 v5, 0x0

    :goto_3f
    iget-boolean v9, v1, LN/F;->I:Z

    if-eqz v9, :cond_6b

    invoke-virtual {v7}, LN/f0;->j()Z

    move-result v9

    if-eqz v9, :cond_6b

    iget-object v9, v7, LN/f0;->a:LN/a;

    iget v9, v9, LN/a;->f:I

    const/4 v13, 0x2

    if-eq v9, v13, :cond_6a

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6b

    :cond_6a
    invoke-virtual {v7}, LN/f0;->f()Z

    move-result v9

    if-nez v9, :cond_6b

    const/4 v13, 0x1

    goto :goto_40

    :cond_6b
    move v13, v4

    :goto_40
    invoke-virtual {v7, v0}, LN/f0;->d(LN/L;)LN/a;

    move-result-object v4

    if-eqz v4, :cond_6d

    invoke-virtual {v4}, LN/a;->l()Z

    move-result v7

    if-nez v7, :cond_6d

    invoke-virtual {v4}, LN/a;->o()Z

    move-result v7

    if-nez v7, :cond_6d

    invoke-virtual {v4}, LN/a;->m()Z

    move-result v4

    if-eqz v4, :cond_6c

    goto :goto_41

    :cond_6c
    const/4 v4, 0x0

    goto :goto_42

    :cond_6d
    :goto_41
    const/4 v4, 0x1

    :goto_42
    invoke-virtual {v1, v8, v4}, LN/F;->H(IZ)V

    if-eqz v6, :cond_6e

    if-eqz v4, :cond_6e

    const/4 v6, 0x1

    goto :goto_43

    :cond_6e
    const/4 v6, 0x0

    :goto_43
    if-nez v4, :cond_6f

    invoke-virtual {v1, v8}, LN/F;->G(I)V

    :cond_6f
    move v4, v13

    :goto_44
    add-int/lit8 v8, v8, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x3

    goto/16 :goto_3d

    :cond_70
    iget-boolean v7, v1, LN/F;->I:Z

    if-eqz v7, :cond_71

    if-nez v4, :cond_71

    iget-object v4, v1, LN/F;->k:LJ/O;

    iget-object v4, v4, LJ/O;->a:Landroid/os/Handler;

    const/16 v7, 0x25

    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_71

    iget-object v4, v1, LN/F;->k:LJ/O;

    invoke-virtual {v4, v7}, LJ/O;->a(I)LJ/N;

    move-result-object v4

    invoke-virtual {v4}, LJ/N;->b()V

    :cond_71
    move v13, v5

    goto :goto_45

    :cond_72
    iget-object v4, v0, LN/L;->a:LU/s;

    invoke-virtual {v4}, LU/s;->p()V

    const/4 v6, 0x1

    const/4 v13, 0x1

    :goto_45
    iget-object v4, v0, LN/L;->g:LN/M;

    iget-wide v4, v4, LN/M;->e:J

    if-eqz v13, :cond_74

    iget-boolean v7, v0, LN/L;->e:Z

    if-eqz v7, :cond_74

    cmp-long v7, v4, v25

    if-eqz v7, :cond_73

    iget-object v7, v1, LN/F;->L:LN/X;

    iget-wide v7, v7, LN/X;->s:J

    cmp-long v4, v4, v7

    if-gtz v4, :cond_74

    :cond_73
    const/4 v8, 0x1

    goto :goto_46

    :cond_74
    const/4 v8, 0x0

    :goto_46
    if-eqz v8, :cond_75

    iget-boolean v4, v1, LN/F;->P:Z

    if-eqz v4, :cond_75

    const/4 v11, 0x0

    iput-boolean v11, v1, LN/F;->P:Z

    iget-object v4, v1, LN/F;->L:LN/X;

    iget v4, v4, LN/X;->n:I

    iget-object v5, v1, LN/F;->M:LI0/w;

    invoke-virtual {v5, v11}, LI0/w;->f(I)V

    iget-object v5, v1, LN/F;->D:LH/f;

    iget-object v7, v1, LN/F;->L:LN/X;

    iget v7, v7, LN/X;->e:I

    invoke-virtual {v5, v7, v11}, LH/f;->d(IZ)I

    move-result v5

    invoke-virtual {v1, v5, v4, v14, v11}, LN/F;->D0(IIIZ)V

    :cond_75
    if-eqz v8, :cond_77

    iget-object v4, v0, LN/L;->g:LN/M;

    iget-boolean v4, v4, LN/M;->i:Z

    if-eqz v4, :cond_77

    const/4 v10, 0x4

    invoke-virtual {v1, v10}, LN/F;->r0(I)V

    invoke-virtual {v1}, LN/F;->z0()V

    :cond_76
    const/4 v13, 0x1

    goto/16 :goto_53

    :cond_77
    iget-object v4, v1, LN/F;->L:LN/X;

    iget v5, v4, LN/X;->e:I

    const/4 v13, 0x2

    if-ne v5, v13, :cond_8a

    iget-object v5, v1, LN/F;->u:LN/N;

    iget v7, v1, LN/F;->Y:I

    if-nez v7, :cond_78

    invoke-virtual {v1}, LN/F;->C()Z

    move-result v8

    goto/16 :goto_4f

    :cond_78
    if-nez v6, :cond_7a

    :cond_79
    const/4 v8, 0x0

    goto/16 :goto_4f

    :cond_7a
    iget-boolean v7, v4, LN/X;->g:Z

    if-nez v7, :cond_7c

    :cond_7b
    :goto_47
    const/4 v8, 0x1

    goto/16 :goto_4f

    :cond_7c
    iget-object v7, v5, LN/N;->i:LN/L;

    iget-object v4, v4, LN/X;->a:LG/q0;

    iget-object v8, v7, LN/L;->g:LN/M;

    iget-object v8, v8, LN/M;->a:LU/A;

    invoke-virtual {v1, v4, v8}, LN/F;->w0(LG/q0;LU/A;)Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, v1, LN/F;->w:LN/e;

    iget-wide v8, v4, LN/e;->h:J

    goto :goto_48

    :cond_7d
    move-wide/from16 v8, v25

    :goto_48
    iget-object v4, v5, LN/N;->l:LN/L;

    invoke-virtual {v4}, LN/L;->g()Z

    move-result v5

    if-eqz v5, :cond_7e

    iget-object v5, v4, LN/L;->g:LN/M;

    iget-boolean v5, v5, LN/M;->i:Z

    if-eqz v5, :cond_7e

    const/4 v5, 0x1

    goto :goto_49

    :cond_7e
    const/4 v5, 0x0

    :goto_49
    iget-object v10, v4, LN/L;->g:LN/M;

    iget-object v10, v10, LN/M;->a:LU/A;

    invoke-virtual {v10}, LU/A;->c()Z

    move-result v10

    if-eqz v10, :cond_7f

    iget-boolean v10, v4, LN/L;->e:Z

    if-nez v10, :cond_7f

    const/4 v10, 0x1

    goto :goto_4a

    :cond_7f
    const/4 v10, 0x0

    :goto_4a
    if-nez v5, :cond_7b

    if-eqz v10, :cond_80

    goto :goto_47

    :cond_80
    invoke-virtual {v4}, LN/L;->d()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, LN/F;->p(J)J

    move-result-wide v4

    iget-object v10, v1, LN/F;->j:LN/H;

    iget-object v11, v1, LN/F;->y:LO/j;

    iget-object v12, v1, LN/F;->L:LN/X;

    iget-object v12, v12, LN/X;->a:LG/q0;

    iget-object v7, v7, LN/L;->g:LN/M;

    iget-object v7, v7, LN/M;->a:LU/A;

    iget-object v13, v1, LN/F;->q:LN/h;

    invoke-virtual {v13}, LN/h;->g()LG/a0;

    move-result-object v13

    iget v13, v13, LG/a0;->a:F

    iget-object v14, v1, LN/F;->L:LN/X;

    iget-boolean v14, v14, LN/X;->l:Z

    iget-boolean v14, v1, LN/F;->Q:Z

    check-cast v10, LN/g;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, LU/A;->a:Ljava/lang/Object;

    iget-object v15, v10, LN/g;->b:LG/n0;

    invoke-virtual {v12, v7, v15}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v7

    iget v7, v7, LG/n0;->c:I

    iget-object v15, v10, LN/g;->a:LG/p0;

    move-wide/from16 v21, v8

    const-wide/16 v8, 0x0

    invoke-virtual {v12, v7, v15, v8, v9}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v7

    iget-object v7, v7, LG/p0;->c:LG/P;

    iget-object v7, v7, LG/P;->b:LG/K;

    if-nez v7, :cond_82

    :cond_81
    const/4 v7, 0x0

    goto :goto_4b

    :cond_82
    iget-object v7, v7, LG/K;->a:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_83

    sget-object v12, LN/g;->r:Lu1/C0;

    invoke-virtual {v12, v7}, Lu1/P;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    :cond_83
    const/4 v7, 0x1

    :goto_4b
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v13, v12

    if-nez v12, :cond_84

    goto :goto_4c

    :cond_84
    long-to-double v4, v4

    float-to-double v12, v13

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    :goto_4c
    if-eqz v14, :cond_86

    if-eqz v7, :cond_85

    iget-wide v12, v10, LN/g;->k:J

    goto :goto_4d

    :cond_85
    iget-wide v12, v10, LN/g;->j:J

    goto :goto_4d

    :cond_86
    if-eqz v7, :cond_87

    iget-wide v12, v10, LN/g;->i:J

    goto :goto_4d

    :cond_87
    iget-wide v12, v10, LN/g;->h:J

    :goto_4d
    cmp-long v14, v21, v25

    if-eqz v14, :cond_88

    const-wide/16 v14, 0x2

    div-long v14, v21, v14

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :cond_88
    cmp-long v8, v12, v8

    if-lez v8, :cond_7b

    cmp-long v4, v4, v12

    if-gez v4, :cond_7b

    if-eqz v7, :cond_89

    iget-boolean v8, v10, LN/g;->m:Z

    goto :goto_4e

    :cond_89
    const/4 v8, 0x0

    :goto_4e
    if-nez v8, :cond_79

    iget-object v4, v10, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN/f;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v4

    :try_start_0
    iget v5, v4, LN/f;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    iget-object v4, v10, LN/g;->c:LX/e;

    iget v4, v4, LX/e;->b:I

    mul-int/2addr v5, v4

    iget-object v4, v10, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN/f;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v4, LN/f;->c:I

    if-lt v5, v4, :cond_79

    goto/16 :goto_47

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_4f
    if-eqz v8, :cond_8a

    const/4 v15, 0x3

    invoke-virtual {v1, v15}, LN/F;->r0(I)V

    const/4 v13, 0x0

    iput-object v13, v1, LN/F;->e0:LN/k;

    invoke-virtual {v1}, LN/F;->v0()Z

    move-result v4

    if-eqz v4, :cond_76

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v11}, LN/F;->G0(ZZ)V

    iget-object v4, v1, LN/F;->q:LN/h;

    const/4 v13, 0x1

    iput-boolean v13, v4, LN/h;->j:Z

    iget-object v4, v4, LN/h;->e:LN/i0;

    invoke-virtual {v4}, LN/i0;->e()V

    invoke-virtual {v1}, LN/F;->x0()V

    goto :goto_53

    :cond_8a
    const/4 v13, 0x1

    iget-object v4, v1, LN/F;->L:LN/X;

    iget v4, v4, LN/X;->e:I

    const/4 v15, 0x3

    if-ne v4, v15, :cond_93

    iget v4, v1, LN/F;->Y:I

    if-nez v4, :cond_8b

    invoke-virtual {v1}, LN/F;->C()Z

    move-result v4

    if-eqz v4, :cond_8c

    goto :goto_53

    :cond_8b
    if-nez v6, :cond_93

    :cond_8c
    invoke-virtual {v1}, LN/F;->v0()Z

    move-result v4

    const/4 v11, 0x0

    invoke-virtual {v1, v4, v11}, LN/F;->G0(ZZ)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, LN/F;->r0(I)V

    iget-boolean v4, v1, LN/F;->Q:Z

    if-eqz v4, :cond_92

    iget-object v4, v1, LN/F;->u:LN/N;

    iget-object v4, v4, LN/N;->i:LN/L;

    :goto_50
    if-eqz v4, :cond_8f

    iget-object v5, v4, LN/L;->o:LW/t;

    iget-object v5, v5, LW/t;->c:[LW/q;

    array-length v6, v5

    const/4 v8, 0x0

    :goto_51
    if-ge v8, v6, :cond_8e

    aget-object v7, v5, v8

    if-eqz v7, :cond_8d

    invoke-interface {v7}, LW/q;->k()V

    :cond_8d
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    :cond_8e
    iget-object v4, v4, LN/L;->m:LN/L;

    goto :goto_50

    :cond_8f
    iget-object v4, v1, LN/F;->w:LN/e;

    iget-wide v5, v4, LN/e;->h:J

    cmp-long v7, v5, v25

    if-nez v7, :cond_90

    goto :goto_52

    :cond_90
    iget-wide v7, v4, LN/e;->b:J

    add-long/2addr v5, v7

    iput-wide v5, v4, LN/e;->h:J

    iget-wide v7, v4, LN/e;->g:J

    cmp-long v9, v7, v25

    if-eqz v9, :cond_91

    cmp-long v5, v5, v7

    if-lez v5, :cond_91

    iput-wide v7, v4, LN/e;->h:J

    :cond_91
    move-wide/from16 v11, v25

    iput-wide v11, v4, LN/e;->l:J

    :cond_92
    :goto_52
    invoke-virtual {v1}, LN/F;->z0()V

    :cond_93
    :goto_53
    iget-object v4, v1, LN/F;->L:LN/X;

    iget v4, v4, LN/X;->e:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_96

    const/4 v8, 0x0

    :goto_54
    iget-object v4, v1, LN/F;->e:[LN/f0;

    array-length v5, v4

    if-ge v8, v5, :cond_95

    aget-object v4, v4, v8

    invoke-virtual {v4, v0}, LN/f0;->i(LN/L;)Z

    move-result v4

    if-eqz v4, :cond_94

    invoke-virtual {v1, v8}, LN/F;->G(I)V

    :cond_94
    add-int/lit8 v8, v8, 0x1

    goto :goto_54

    :cond_95
    iget-object v0, v1, LN/F;->L:LN/X;

    iget-boolean v4, v0, LN/X;->g:Z

    if-nez v4, :cond_96

    iget-wide v4, v0, LN/X;->r:J

    const-wide/32 v6, 0x7a120

    cmp-long v0, v4, v6

    if-gez v0, :cond_96

    iget-object v0, v1, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->l:LN/L;

    invoke-static {v0}, LN/F;->z(LN/L;)Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-virtual {v1}, LN/F;->v0()Z

    move-result v0

    if-eqz v0, :cond_96

    move v8, v13

    goto :goto_55

    :cond_96
    const/4 v8, 0x0

    :goto_55
    if-nez v8, :cond_97

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v11, v1, LN/F;->f0:J

    goto :goto_56

    :cond_97
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v4, v1, LN/F;->f0:J

    cmp-long v0, v4, v11

    if-nez v0, :cond_98

    iget-object v0, v1, LN/F;->s:LJ/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, LN/F;->f0:J

    goto :goto_56

    :cond_98
    iget-object v0, v1, LN/F;->s:LJ/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v1, LN/F;->f0:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xfa0

    cmp-long v0, v4, v6

    if-gez v0, :cond_9f

    :goto_56
    invoke-virtual {v1}, LN/F;->v0()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, v1, LN/F;->L:LN/X;

    iget v0, v0, LN/X;->e:I

    const/4 v15, 0x3

    if-ne v0, v15, :cond_99

    move v8, v13

    goto :goto_57

    :cond_99
    const/4 v8, 0x0

    :goto_57
    iget-boolean v0, v1, LN/F;->X:Z

    if-eqz v0, :cond_9a

    iget-boolean v0, v1, LN/F;->W:Z

    if-eqz v0, :cond_9a

    if-eqz v8, :cond_9a

    move v14, v13

    goto :goto_58

    :cond_9a
    const/4 v14, 0x0

    :goto_58
    iget-object v0, v1, LN/F;->L:LN/X;

    iget-boolean v4, v0, LN/X;->p:Z

    if-eq v4, v14, :cond_9b

    invoke-virtual {v0, v14}, LN/X;->i(Z)LN/X;

    move-result-object v0

    iput-object v0, v1, LN/F;->L:LN/X;

    :cond_9b
    const/4 v11, 0x0

    iput-boolean v11, v1, LN/F;->W:Z

    if-nez v14, :cond_9e

    iget-object v0, v1, LN/F;->L:LN/X;

    iget v0, v0, LN/X;->e:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_9c

    goto :goto_59

    :cond_9c
    if-nez v8, :cond_9d

    const/4 v13, 0x2

    if-eq v0, v13, :cond_9d

    const/4 v15, 0x3

    if-ne v0, v15, :cond_9e

    iget v0, v1, LN/F;->Y:I

    if-eqz v0, :cond_9e

    :cond_9d
    invoke-virtual {v1, v2, v3}, LN/F;->V(J)V

    :cond_9e
    :goto_59
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_9f
    new-instance v0, LJ/L;

    const/16 v2, 0xfa0

    const/4 v11, 0x0

    invoke-direct {v0, v11, v2}, LJ/L;-><init>(II)V

    throw v0

    :cond_a0
    :goto_5a
    return-void
.end method

.method public final j0(LG/a0;)V
    .locals 2

    iget-object v0, p0, LN/F;->k:LJ/O;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, LJ/O;->f(I)V

    iget-object v0, p0, LN/F;->q:LN/h;

    invoke-virtual {v0, p1}, LN/h;->d(LG/a0;)V

    invoke-virtual {v0}, LN/h;->g()LG/a0;

    move-result-object p1

    const/4 v0, 0x1

    iget v1, p1, LG/a0;->a:F

    invoke-virtual {p0, p1, v1, v0, v0}, LN/F;->x(LG/a0;FZZ)V

    return-void
.end method

.method public final k(LN/L;IZJ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LN/F;->e:[LN/f0;

    aget-object v10, v2, p2

    invoke-virtual {v10}, LN/f0;->j()Z

    move-result v2

    move v3, v2

    iget-object v2, v10, LN/f0;->a:LN/a;

    if-eqz v3, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v3, v0, LN/F;->u:LN/N;

    iget-object v3, v3, LN/N;->i:LN/L;

    const/4 v11, 0x1

    if-ne v1, v3, :cond_1

    move v12, v11

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    iget-object v3, v1, LN/L;->o:LW/t;

    iget-object v5, v3, LW/t;->b:[LN/e0;

    aget-object v5, v5, p2

    iget-object v3, v3, LW/t;->c:[LW/q;

    aget-object v3, v3, p2

    invoke-virtual {v0}, LN/F;->v0()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, LN/F;->L:LN/X;

    iget v6, v6, LN/X;->e:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move v13, v11

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-nez p3, :cond_3

    if-eqz v13, :cond_3

    move v14, v11

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    iget v6, v0, LN/F;->Y:I

    add-int/2addr v6, v11

    iput v6, v0, LN/F;->Y:I

    iget-object v6, v1, LN/L;->c:[LU/a0;

    aget-object v6, v6, p2

    iget-wide v7, v1, LN/L;->p:J

    iget-object v9, v1, LN/L;->g:LN/M;

    iget-object v9, v9, LN/M;->a:LU/A;

    move-object v15, v2

    iget-object v2, v10, LN/f0;->c:LN/a;

    if-eqz v3, :cond_4

    invoke-interface {v3}, LW/q;->length()I

    move-result v16

    move/from16 v4, v16

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    new-array v11, v4, [LG/x;

    move-object/from16 p2, v6

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v6}, LW/q;->b(I)LG/x;

    move-result-object v17

    aput-object v17, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    iget v3, v10, LN/f0;->d:I

    iget-object v4, v0, LN/F;->q:LN/h;

    if-eqz v3, :cond_6

    const/4 v6, 0x2

    if-eq v3, v6, :cond_6

    const/4 v6, 0x5

    if-ne v3, v6, :cond_7

    :cond_6
    move-object v2, v4

    move-object v3, v11

    const/4 v11, 0x1

    move-object/from16 v4, p2

    goto :goto_6

    :cond_7
    const/4 v3, 0x1

    iput-boolean v3, v10, LN/f0;->f:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v2, LN/a;->l:I

    if-nez v6, :cond_8

    move/from16 v16, v3

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    :goto_5
    invoke-static/range {v16 .. v16}, LF1/i;->o(Z)V

    iput-object v5, v2, LN/a;->h:LN/e0;

    iput-object v9, v2, LN/a;->u:LU/A;

    iput v3, v2, LN/a;->l:I

    invoke-virtual {v2, v14, v12}, LN/a;->q(ZZ)V

    move-object v5, v11

    move v11, v3

    move-object v3, v5

    move-wide/from16 v5, p4

    move-object v15, v4

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, LN/a;->A([LG/x;LU/a0;JJLU/A;)V

    move-object v4, v2

    move-wide v2, v5

    invoke-virtual {v4, v2, v3, v14, v11}, LN/a;->B(JZZ)V

    invoke-virtual {v15, v4}, LN/h;->b(LN/a;)V

    goto :goto_8

    :goto_6
    iput-boolean v11, v10, LN/f0;->e:Z

    iget v6, v15, LN/a;->l:I

    if-nez v6, :cond_9

    move/from16 v16, v11

    goto :goto_7

    :cond_9
    const/16 v16, 0x0

    :goto_7
    invoke-static/range {v16 .. v16}, LF1/i;->o(Z)V

    iput-object v5, v15, LN/a;->h:LN/e0;

    iput-object v9, v15, LN/a;->u:LU/A;

    iput v11, v15, LN/a;->l:I

    invoke-virtual {v15, v14, v12}, LN/a;->q(ZZ)V

    move-object v5, v15

    move-object v15, v2

    move-object v2, v5

    move-wide/from16 v5, p4

    invoke-virtual/range {v2 .. v9}, LN/a;->A([LG/x;LU/a0;JJLU/A;)V

    invoke-virtual {v2, v5, v6, v14, v11}, LN/a;->B(JZZ)V

    invoke-virtual {v15, v2}, LN/h;->b(LN/a;)V

    :goto_8
    new-instance v2, LN/A;

    invoke-direct {v2, v0}, LN/A;-><init>(LN/F;)V

    invoke-virtual {v10, v1}, LN/f0;->d(LN/L;)LN/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xb

    invoke-interface {v1, v3, v2}, LN/a0;->b(ILjava/lang/Object;)V

    if-eqz v13, :cond_a

    if-eqz v12, :cond_a

    invoke-virtual {v10}, LN/f0;->p()V

    :cond_a
    :goto_9
    return-void
.end method

.method public final k0(LN/n;)V
    .locals 3

    iput-object p1, p0, LN/F;->g0:LN/n;

    iget-object v0, p0, LN/F;->L:LN/X;

    iget-object v0, v0, LN/X;->a:LG/q0;

    iget-object v0, p0, LN/F;->u:LN/N;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN/L;

    invoke-virtual {v2}, LN/L;->i()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, v0, LN/N;->q:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, v0, LN/N;->m:LN/L;

    invoke-virtual {v0}, LN/N;->r()V

    :cond_1
    return-void
.end method

.method public final l([ZJ)V
    .locals 8

    invoke-virtual {p0}, LN/F;->A()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p0, LN/F;->u:LN/N;

    invoke-virtual {v0}, LN/N;->d()LN/L;

    move-result-object v2

    iget-object v0, v2, LN/L;->o:LW/t;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v7, p0, LN/F;->e:[LN/f0;

    array-length v4, v7

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, LW/t;->b(I)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v7, v3

    invoke-virtual {v4}, LN/f0;->n()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    array-length v1, v7

    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, LW/t;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, v7, v3

    invoke-virtual {v1, v2}, LN/f0;->i(LN/L;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-boolean v4, p1, v3

    move-object v1, p0

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, LN/F;->k(LN/L;IZJ)V

    goto :goto_2

    :cond_2
    move-wide v5, p2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-wide p2, v5

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final l0(I)V
    .locals 2

    iput p1, p0, LN/F;->T:I

    iget-object v0, p0, LN/F;->L:LN/X;

    iget-object v0, v0, LN/X;->a:LG/q0;

    iget-object v1, p0, LN/F;->u:LN/N;

    iput p1, v1, LN/N;->g:I

    invoke-virtual {v1, v0}, LN/N;->y(LG/q0;)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LN/F;->W(Z)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LN/F;->h()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LN/F;->u(Z)V

    return-void
.end method

.method public final m(LG/q0;Ljava/lang/Object;J)J
    .locals 4

    iget-object v0, p0, LN/F;->o:LG/n0;

    invoke-virtual {p1, p2, v0}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object p2

    iget p2, p2, LG/n0;->c:I

    iget-object v1, p0, LN/F;->n:LG/p0;

    invoke-virtual {p1, p2, v1}, LG/q0;->n(ILG/p0;)V

    iget-wide p1, v1, LG/p0;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    invoke-virtual {v1}, LG/p0;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, v1, LG/p0;->h:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide p1, v1, LG/p0;->f:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr p1, v2

    :goto_0
    iget-wide v1, v1, LG/p0;->e:J

    sub-long/2addr p1, v1

    invoke-static {p1, p2}, LJ/W;->G(J)J

    move-result-wide p1

    iget-wide v0, v0, LG/n0;->e:J

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_2
    :goto_1
    return-wide v2
.end method

.method public final m0(Z)V
    .locals 4

    if-nez p1, :cond_2

    iget-object v0, p0, LN/F;->J:LN/E;

    const/16 v1, 0x25

    iget-object v2, p0, LN/F;->k:LJ/O;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LN/F;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, LN/F;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LN/F;->K:I

    :cond_0
    iget v0, p0, LN/F;->K:I

    if-lez v0, :cond_1

    new-instance v3, LH/a;

    invoke-direct {v3, p0, v0}, LH/a;-><init>(LN/F;I)V

    iget-object v0, p0, LN/F;->B:LJ/O;

    invoke-virtual {v0, v3}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, LN/F;->K:I

    iput-boolean v0, p0, LN/F;->I:Z

    invoke-virtual {v2, v1}, LJ/O;->f(I)V

    iget-object v1, p0, LN/F;->J:LN/E;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, LN/F;->X(LN/E;)V

    const/4 v1, 0x0

    iput-object v1, p0, LN/F;->J:LN/E;

    iput-boolean v0, p0, LN/F;->I:Z

    :cond_2
    iput-boolean p1, p0, LN/F;->H:Z

    invoke-virtual {p0}, LN/F;->e()V

    return-void
.end method

.method public final n(LG/q0;)Landroid/util/Pair;
    .locals 11

    invoke-virtual {p1}, LG/q0;->p()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, LN/X;->u:LU/A;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, LN/F;->U:Z

    invoke-virtual {p1, v0}, LG/q0;->a(Z)I

    move-result v6

    iget-object v5, p0, LN/F;->o:LG/n0;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v4, p0, LN/F;->n:LG/p0;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, LG/q0;->i(LG/p0;LG/n0;IJ)Landroid/util/Pair;

    move-result-object p1

    iget-object v4, p0, LN/F;->L:LN/X;

    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v3

    iget-object v3, p0, LN/F;->u:LN/N;

    const-wide/16 v7, 0x0

    invoke-virtual/range {v3 .. v10}, LN/N;->w(LN/X;LG/q0;Ljava/lang/Object;JZZ)LU/A;

    move-result-object v0

    move-object v3, v5

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, LU/A;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, LU/A;->a:Ljava/lang/Object;

    iget-object v4, p0, LN/F;->o:LG/n0;

    invoke-virtual {v3, p1, v4}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget p1, v0, LU/A;->c:I

    iget v3, v0, LU/A;->b:I

    invoke-virtual {v4, v3}, LG/n0;->f(I)I

    move-result v3

    if-ne p1, v3, :cond_1

    iget-object p1, v4, LG/n0;->g:LG/c;

    iget-wide v1, p1, LG/c;->b:J

    :cond_1
    move-wide v4, v1

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final n0(LN/g0;)V
    .locals 0

    iput-object p1, p0, LN/F;->G:LN/g0;

    invoke-virtual {p0}, LN/F;->e()V

    return-void
.end method

.method public final o(LN/L;I)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    iget-boolean v0, p1, LN/L;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LN/F;->e:[LN/f0;

    aget-object v1, v0, p2

    invoke-virtual {v1, p1}, LN/f0;->i(LN/L;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, LN/f0;->d(LN/L;)LN/a;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide p1, p1, LN/a;->q:J

    return-wide p1

    :cond_2
    :goto_0
    iget-wide p1, p1, LN/L;->p:J

    return-wide p1
.end method

.method public final o0(LN/h0;)V
    .locals 0

    iput-object p1, p0, LN/F;->F:LN/h0;

    return-void
.end method

.method public final p(J)J
    .locals 7

    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->l:LN/L;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, LN/F;->a0:J

    iget-wide v5, v0, LN/L;->p:J

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final p0(Z)V
    .locals 2

    iput-boolean p1, p0, LN/F;->U:Z

    iget-object v0, p0, LN/F;->L:LN/X;

    iget-object v0, v0, LN/X;->a:LG/q0;

    iget-object v1, p0, LN/F;->u:LN/N;

    iput-boolean p1, v1, LN/N;->h:Z

    invoke-virtual {v1, v0}, LN/N;->y(LG/q0;)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LN/F;->W(Z)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LN/F;->h()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LN/F;->u(Z)V

    return-void
.end method

.method public final q(I)V
    .locals 3

    iget-object v0, p0, LN/F;->L:LN/X;

    iget-boolean v1, v0, LN/X;->l:Z

    iget v2, v0, LN/X;->n:I

    iget v0, v0, LN/X;->m:I

    invoke-virtual {p0, p1, v2, v0, v1}, LN/F;->D0(IIIZ)V

    return-void
.end method

.method public final q0(LU/c0;)V
    .locals 7

    iget-object v0, p0, LN/F;->M:LI0/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LI0/w;->f(I)V

    iget-object v0, p0, LN/F;->v:LN/W;

    iget-object v1, v0, LN/W;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p1, LU/c0;->b:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    new-instance v2, LU/c0;

    new-instance v4, Ljava/util/Random;

    iget-object p1, p1, LU/c0;->a:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v2, v4}, LU/c0;-><init>(Ljava/util/Random;)V

    invoke-virtual {v2, v3, v1}, LU/c0;->a(II)LU/c0;

    move-result-object p1

    :cond_0
    iput-object p1, v0, LN/W;->k:LU/c0;

    invoke-virtual {v0}, LN/W;->b()LG/q0;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, LN/F;->v(LG/q0;Z)V

    return-void
.end method

.method public final r()V
    .locals 1

    iget v0, p0, LN/F;->j0:F

    invoke-virtual {p0, v0}, LN/F;->u0(F)V

    return-void
.end method

.method public final r0(I)V
    .locals 3

    iget-object v0, p0, LN/F;->L:LN/X;

    iget v1, v0, LN/X;->e:I

    if-eq v1, p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, LN/F;->f0:J

    :cond_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    iget-boolean v1, v0, LN/X;->p:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LN/X;->i(Z)LN/X;

    move-result-object v0

    iput-object v0, p0, LN/F;->L:LN/X;

    :cond_1
    iget-object v0, p0, LN/F;->L:LN/X;

    invoke-virtual {v0, p1}, LN/X;->h(I)LN/X;

    move-result-object p1

    iput-object p1, p0, LN/F;->L:LN/X;

    :cond_2
    return-void
.end method

.method public final s(LU/y;)V
    .locals 3

    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v1, v0, LN/N;->l:LN/L;

    if-eqz v1, :cond_0

    iget-object v1, v1, LN/L;->a:LU/s;

    if-ne v1, p1, :cond_0

    iget-wide v1, p0, LN/F;->a0:J

    invoke-virtual {v0, v1, v2}, LN/N;->t(J)V

    invoke-virtual {p0}, LN/F;->D()V

    return-void

    :cond_0
    iget-object v0, v0, LN/N;->m:LN/L;

    if-eqz v0, :cond_1

    iget-object v0, v0, LN/L;->a:LU/s;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, LN/F;->E()V

    :cond_1
    return-void
.end method

.method public final s0(LZ/w;)V
    .locals 7

    iget-object v0, p0, LN/F;->e:[LN/f0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, LN/f0;->a:LN/a;

    iget v5, v4, LN/a;->f:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x7

    invoke-interface {v4, v5, p1}, LN/a0;->b(ILjava/lang/Object;)V

    iget-object v3, v3, LN/f0;->c:LN/a;

    if-eqz v3, :cond_1

    invoke-interface {v3, v5, p1}, LN/a0;->b(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final t(ILjava/io/IOException;)V
    .locals 2

    new-instance v0, LN/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p1}, LN/k;-><init>(ILjava/lang/Exception;I)V

    iget-object p1, p0, LN/F;->u:LN/N;

    iget-object p1, p1, LN/N;->i:LN/L;

    if-eqz p1, :cond_0

    iget-object p1, p1, LN/L;->g:LN/M;

    iget-object p1, p1, LN/M;->a:LU/A;

    invoke-virtual {v0, p1}, LN/k;->b(LU/A;)LN/k;

    move-result-object v0

    :cond_0
    const-string p1, "ExoPlayerImplInternal"

    const-string p2, "Playback error"

    invoke-static {p1, p2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v1}, LN/F;->y0(ZZ)V

    iget-object p1, p0, LN/F;->L:LN/X;

    invoke-virtual {p1, v0}, LN/X;->f(LN/k;)LN/X;

    move-result-object p1

    iput-object p1, p0, LN/F;->L:LN/X;

    return-void
.end method

.method public final t0(Ljava/lang/Object;LJ/j;)V
    .locals 9

    iget-object v0, p0, LN/F;->e:[LN/f0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ge v2, v1, :cond_3

    aget-object v5, v0, v2

    iget-object v6, v5, LN/f0;->a:LN/a;

    iget v7, v6, LN/a;->f:I

    if-eq v7, v4, :cond_0

    goto :goto_2

    :cond_0
    iget v4, v5, LN/f0;->d:I

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eq v4, v7, :cond_2

    if-eq v4, v3, :cond_2

    if-ne v4, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v6, v8, p1}, LN/a0;->b(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, v5, LN/f0;->c:LN/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v8, p1}, LN/a0;->b(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, LN/F;->L:LN/X;

    iget p1, p1, LN/X;->e:I

    if-eq p1, v3, :cond_4

    if-ne p1, v4, :cond_5

    :cond_4
    iget-object p1, p0, LN/F;->k:LJ/O;

    invoke-virtual {p1, v4}, LJ/O;->g(I)Z

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, LJ/j;->d()Z

    :cond_6
    return-void
.end method

.method public final u(Z)V
    .locals 5

    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->l:LN/L;

    if-nez v0, :cond_0

    iget-object v1, p0, LN/F;->L:LN/X;

    iget-object v1, v1, LN/X;->b:LU/A;

    goto :goto_0

    :cond_0
    iget-object v1, v0, LN/L;->g:LN/M;

    iget-object v1, v1, LN/M;->a:LU/A;

    :goto_0
    iget-object v2, p0, LN/F;->L:LN/X;

    iget-object v2, v2, LN/X;->k:LU/A;

    invoke-virtual {v2, v1}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, LN/F;->L:LN/X;

    invoke-virtual {v3, v1}, LN/X;->c(LU/A;)LN/X;

    move-result-object v1

    iput-object v1, p0, LN/F;->L:LN/X;

    :cond_1
    iget-object v1, p0, LN/F;->L:LN/X;

    if-nez v0, :cond_2

    iget-wide v3, v1, LN/X;->s:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, LN/L;->d()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, LN/X;->q:J

    iget-object v1, p0, LN/F;->L:LN/X;

    iget-wide v3, v1, LN/X;->q:J

    invoke-virtual {p0, v3, v4}, LN/F;->p(J)J

    move-result-wide v3

    iput-wide v3, v1, LN/X;->r:J

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, LN/L;->e:Z

    if-eqz p1, :cond_4

    iget-object p1, v0, LN/L;->g:LN/M;

    iget-object p1, p1, LN/M;->a:LU/A;

    iget-object v0, v0, LN/L;->o:LW/t;

    invoke-virtual {p0, p1, v0}, LN/F;->B0(LU/A;LW/t;)V

    :cond_4
    return-void
.end method

.method public final u0(F)V
    .locals 7

    iput p1, p0, LN/F;->j0:F

    iget-object v0, p0, LN/F;->D:LH/f;

    iget v0, v0, LH/f;->g:F

    mul-float/2addr p1, v0

    iget-object v0, p0, LN/F;->e:[LN/f0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, LN/f0;->a:LN/a;

    iget v5, v4, LN/a;->f:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v6, v5}, LN/a0;->b(ILjava/lang/Object;)V

    iget-object v3, v3, LN/f0;->c:LN/a;

    if-eqz v3, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v6, v4}, LN/a0;->b(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final v(LG/q0;Z)V
    .locals 44

    move-object/from16 v1, p0

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-object v3, v1, LN/F;->Z:LN/E;

    iget-object v9, v1, LN/F;->u:LN/N;

    iget v4, v1, LN/F;->T:I

    iget-boolean v5, v1, LN/F;->U:Z

    iget-object v2, v1, LN/F;->n:LG/p0;

    iget-object v8, v1, LN/F;->o:LG/n0;

    iget-boolean v10, v1, LN/F;->E:Z

    invoke-virtual/range {p1 .. p1}, LG/q0;->p()Z

    move-result v6

    const/4 v12, 0x4

    const-wide/16 v13, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v6, :cond_3

    sget-object v2, LN/X;->u:LU/A;

    iget-object v3, v0, LN/X;->b:LU/A;

    invoke-virtual {v2, v3}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, v0, LN/X;->s:J

    cmp-long v3, v3, v13

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v27, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v27, 0x1

    :goto_1
    if-eqz v27, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, v0, LN/X;->a:LG/q0;

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, LN/X;->a:LG/q0;

    iget-object v0, v0, LN/X;->b:LU/A;

    iget-object v0, v0, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0, v8}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v0

    iget-boolean v0, v0, LG/n0;->f:Z

    if-nez v0, :cond_2

    const/16 v28, 0x1

    goto :goto_2

    :cond_2
    const/16 v28, 0x0

    :goto_2
    new-instance v18, LN/D;

    const/16 v26, 0x0

    const/16 v29, 0x4

    const-wide/16 v20, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v29}, LN/D;-><init>(LU/A;JJZZZZZI)V

    move-object/from16 v3, p1

    move-object/from16 v9, v18

    goto/16 :goto_22

    :cond_3
    iget-object v6, v0, LN/X;->b:LU/A;

    iget-object v15, v6, LU/A;->a:Ljava/lang/Object;

    iget-object v7, v0, LN/X;->a:LG/q0;

    invoke-virtual {v7}, LG/q0;->p()Z

    move-result v19

    if-nez v19, :cond_5

    iget-object v11, v6, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v7, v11, v8}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v7

    iget-boolean v7, v7, LG/n0;->f:Z

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    move-object v11, v9

    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    move-object v11, v9

    const/4 v9, 0x1

    :goto_4
    iget-object v7, v0, LN/X;->b:LU/A;

    invoke-virtual {v7}, LU/A;->c()Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    iget-wide v13, v0, LN/X;->s:J

    :goto_5
    move-wide/from16 v22, v13

    goto :goto_7

    :cond_7
    :goto_6
    iget-wide v13, v0, LN/X;->c:J

    goto :goto_5

    :goto_7
    const/4 v7, -0x1

    if-eqz v3, :cond_b

    move-object/from16 v24, v6

    move v6, v5

    move v5, v4

    const/4 v4, 0x1

    move v14, v7

    move-object/from16 v13, v24

    const-wide/16 v28, 0x1

    move-object v7, v2

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, LN/F;->T(LG/q0;LN/E;ZIZLG/p0;LG/n0;)Landroid/util/Pair;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {v2, v6}, LG/q0;->a(Z)I

    move-result v3

    move v5, v3

    move-wide/from16 v3, v22

    const/4 v6, 0x1

    const/4 v14, 0x0

    const/16 v24, 0x0

    goto :goto_a

    :cond_8
    iget-wide v5, v3, LN/E;->c:J

    cmp-long v3, v5, v16

    if-nez v3, :cond_9

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3, v8}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v3

    iget v3, v3, LG/n0;->c:I

    move v5, v3

    move-wide/from16 v3, v22

    const/4 v6, 0x0

    goto :goto_8

    :cond_9
    iget-object v15, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move v5, v14

    const/4 v6, 0x1

    :goto_8
    iget v14, v0, LN/X;->e:I

    if-ne v14, v12, :cond_a

    const/4 v14, 0x1

    goto :goto_9

    :cond_a
    const/4 v14, 0x0

    :goto_9
    move/from16 v24, v14

    move v14, v6

    const/4 v6, 0x0

    :goto_a
    move-wide/from16 v20, v3

    move/from16 v37, v6

    move-object v3, v7

    move/from16 v38, v14

    move-object v6, v15

    move/from16 v36, v24

    const/4 v4, -0x1

    const-wide/16 v14, 0x0

    goto/16 :goto_10

    :cond_b
    move-object v7, v2

    move-object v13, v6

    const-wide/16 v28, 0x1

    move-object/from16 v2, p1

    move v6, v5

    move v5, v4

    iget-object v3, v0, LN/X;->a:LG/q0;

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2, v6}, LG/q0;->a(Z)I

    move-result v3

    move v5, v3

    move-object v3, v7

    move-object v6, v15

    :goto_b
    move-wide/from16 v20, v22

    const/4 v4, -0x1

    const-wide/16 v14, 0x0

    :goto_c
    const/16 v36, 0x0

    const/16 v37, 0x0

    :goto_d
    const/16 v38, 0x0

    goto/16 :goto_10

    :cond_c
    invoke-virtual {v2, v15}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v3

    const/4 v14, -0x1

    if-ne v3, v14, :cond_e

    move-object v3, v7

    iget-object v7, v0, LN/X;->a:LG/q0;

    move-object v4, v8

    move-object v8, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v15

    invoke-static/range {v2 .. v8}, LN/F;->U(LG/p0;LG/n0;IZLjava/lang/Object;LG/q0;LG/q0;)I

    move-result v4

    move-object/from16 v42, v3

    move-object v3, v2

    move-object v2, v8

    move-object/from16 v8, v42

    if-ne v4, v14, :cond_d

    invoke-virtual {v2, v5}, LG/q0;->a(Z)I

    move-result v4

    move v7, v4

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    move v7, v4

    const/4 v4, 0x0

    :goto_e
    move/from16 v37, v4

    move v5, v7

    move-wide/from16 v20, v22

    const/4 v4, -0x1

    const-wide/16 v14, 0x0

    const/16 v36, 0x0

    goto :goto_d

    :cond_e
    move-object v3, v7

    move-object v6, v15

    cmp-long v4, v22, v16

    if-nez v4, :cond_f

    invoke-virtual {v2, v6, v8}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v4

    iget v7, v4, LG/n0;->c:I

    move v5, v7

    goto :goto_b

    :cond_f
    if-eqz v9, :cond_12

    iget-object v4, v0, LN/X;->a:LG/q0;

    iget-object v5, v13, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5, v8}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget-object v4, v0, LN/X;->a:LG/q0;

    iget v5, v8, LG/n0;->c:I

    const-wide/16 v14, 0x0

    invoke-virtual {v4, v5, v3, v14, v15}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v4

    iget v4, v4, LG/p0;->m:I

    iget-object v5, v0, LN/X;->a:LG/q0;

    iget-object v7, v13, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v5, v7}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_10

    iget-wide v4, v8, LG/n0;->e:J

    add-long v4, v22, v4

    invoke-virtual {v2, v6, v8}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v6

    iget v6, v6, LG/n0;->c:I

    move-wide/from16 v42, v4

    move v5, v6

    move-wide/from16 v6, v42

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, LG/q0;->i(LG/p0;LG/n0;IJ)Landroid/util/Pair;

    move-result-object v5

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide/from16 v42, v5

    move-object v6, v4

    move-wide/from16 v4, v42

    goto :goto_f

    :cond_10
    invoke-virtual {v2, v6, v8}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v4

    iget-wide v4, v4, LG/n0;->d:J

    cmp-long v4, v4, v16

    if-eqz v4, :cond_11

    iget-wide v4, v8, LG/n0;->d:J

    sub-long v26, v4, v28

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v27}, LJ/W;->h(JJJ)J

    move-result-wide v4

    goto :goto_f

    :cond_11
    move-wide/from16 v4, v22

    :goto_f
    move-wide/from16 v20, v4

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x1

    goto :goto_10

    :cond_12
    const-wide/16 v14, 0x0

    move-wide/from16 v20, v22

    const/4 v4, -0x1

    const/4 v5, -0x1

    goto/16 :goto_c

    :goto_10
    if-eq v5, v4, :cond_13

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move/from16 v18, v4

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, LG/q0;->i(LG/p0;LG/n0;IJ)Landroid/util/Pair;

    move-result-object v3

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object v3, v0

    move-object v5, v6

    move-object v0, v8

    move v8, v10

    move/from16 v10, v18

    move-wide/from16 v6, v20

    move-wide/from16 v20, v16

    move-object/from16 v4, p1

    move-object v2, v11

    goto :goto_11

    :cond_13
    move-object v3, v0

    move-object v5, v6

    move-object v0, v8

    move v8, v10

    move-wide/from16 v6, v20

    move v10, v4

    move-object v2, v11

    move-object/from16 v4, p1

    :goto_11
    invoke-virtual/range {v2 .. v9}, LN/N;->w(LN/X;LG/q0;Ljava/lang/Object;JZZ)LU/A;

    move-result-object v2

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    move-wide v7, v6

    move-object v6, v5

    iget v5, v2, LU/A;->e:I

    if-eq v5, v10, :cond_15

    iget v11, v13, LU/A;->e:I

    if-eq v11, v10, :cond_14

    if-lt v5, v11, :cond_14

    goto :goto_12

    :cond_14
    const/4 v5, 0x0

    goto :goto_13

    :cond_15
    :goto_12
    const/4 v5, 0x1

    :goto_13
    iget-object v10, v13, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-virtual {v13}, LU/A;->c()Z

    move-result v11

    if-nez v11, :cond_16

    invoke-virtual {v2}, LU/A;->c()Z

    move-result v11

    if-nez v11, :cond_16

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto :goto_14

    :cond_16
    const/4 v5, 0x0

    :goto_14
    if-nez v9, :cond_18

    cmp-long v9, v22, v20

    if-nez v9, :cond_18

    iget-object v9, v13, LU/A;->a:Ljava/lang/Object;

    iget v11, v13, LU/A;->c:I

    iget v14, v13, LU/A;->b:I

    iget-object v15, v2, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    goto :goto_16

    :cond_17
    iget-object v9, v2, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v3, v9, v0}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    invoke-virtual {v13}, LU/A;->c()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-virtual {v0, v14}, LG/n0;->h(I)Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-virtual {v0, v14, v11}, LG/n0;->e(II)I

    move-result v9

    if-eq v9, v12, :cond_18

    invoke-virtual {v0, v14, v11}, LG/n0;->e(II)I

    move-result v9

    const/4 v11, 0x2

    if-eq v9, v11, :cond_18

    :goto_15
    const/4 v9, 0x1

    goto :goto_17

    :cond_18
    :goto_16
    const/4 v9, 0x0

    goto :goto_17

    :cond_19
    invoke-virtual {v2}, LU/A;->c()Z

    move-result v9

    if-eqz v9, :cond_18

    iget v9, v2, LU/A;->b:I

    invoke-virtual {v0, v9}, LG/n0;->h(I)Z

    move-result v9

    if-eqz v9, :cond_18

    goto :goto_15

    :goto_17
    if-nez v5, :cond_1a

    if-eqz v9, :cond_1b

    :cond_1a
    move-object v2, v13

    :cond_1b
    invoke-virtual {v2}, LU/A;->c()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v2, v13}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-wide v7, v4, LN/X;->s:J

    :cond_1c
    :goto_18
    move-wide/from16 v32, v7

    :goto_19
    move-wide/from16 v34, v20

    goto/16 :goto_1c

    :cond_1d
    iget-object v5, v2, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v3, v5, v0}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget v5, v2, LU/A;->c:I

    iget v6, v2, LU/A;->b:I

    invoke-virtual {v0, v6}, LG/n0;->f(I)I

    move-result v6

    if-ne v5, v6, :cond_1e

    iget-object v5, v0, LG/n0;->g:LG/c;

    iget-wide v13, v5, LG/c;->b:J

    goto :goto_1a

    :cond_1e
    const-wide/16 v13, 0x0

    :goto_1a
    move-wide/from16 v32, v13

    goto :goto_19

    :cond_1f
    if-eqz v10, :cond_1c

    invoke-virtual {v13}, LU/A;->c()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v3, v6, v0}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v5

    iget-object v5, v5, LG/n0;->g:LG/c;

    iget v9, v13, LU/A;->b:I

    invoke-virtual {v5, v9}, LG/c;->a(I)LG/a;

    move-result-object v5

    iget-wide v9, v5, LG/a;->j:J

    iget-wide v14, v4, LN/X;->c:J

    cmp-long v11, v14, v16

    move-object/from16 v24, v13

    if-eqz v11, :cond_20

    iget-wide v12, v5, LG/a;->a:J

    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v22, v12, v22

    if-eqz v22, :cond_20

    add-long/2addr v12, v9

    cmp-long v12, v12, v14

    if-gtz v12, :cond_20

    goto :goto_18

    :cond_20
    iget v12, v5, LG/a;->b:I

    move-object/from16 v13, v24

    iget v13, v13, LU/A;->c:I

    if-le v12, v13, :cond_1c

    iget-object v5, v5, LG/a;->f:[I

    aget v5, v5, v13

    const/4 v12, 0x2

    if-ne v5, v12, :cond_1c

    invoke-virtual {v3, v6, v0}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v5

    iget-wide v5, v5, LG/n0;->d:J

    cmp-long v12, v5, v16

    if-eqz v12, :cond_21

    sub-long v5, v5, v28

    add-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-wide/from16 v20, v5

    goto :goto_1b

    :cond_21
    add-long v6, v7, v9

    move-wide/from16 v20, v6

    :goto_1b
    move-wide/from16 v32, v20

    move-wide/from16 v34, v32

    :goto_1c
    iget-object v5, v4, LN/X;->b:LU/A;

    invoke-virtual {v2, v5}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-wide v5, v4, LN/X;->s:J

    cmp-long v5, v32, v5

    if-eqz v5, :cond_22

    goto :goto_1d

    :cond_22
    const/16 v39, 0x0

    goto :goto_1e

    :cond_23
    :goto_1d
    const/16 v39, 0x1

    :goto_1e
    iget-object v5, v4, LN/X;->b:LU/A;

    iget-object v5, v5, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v3, v5}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v5

    const/4 v14, -0x1

    if-ne v5, v14, :cond_24

    const/4 v5, 0x4

    goto :goto_1f

    :cond_24
    const/4 v5, 0x3

    :goto_1f
    iget-object v6, v2, LU/A;->a:Ljava/lang/Object;

    iget-object v7, v4, LN/X;->b:LU/A;

    iget-object v7, v7, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    iget v6, v2, LU/A;->b:I

    if-eq v6, v14, :cond_26

    iget-object v6, v2, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v3, v6, v0}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v6

    iget-object v6, v6, LG/n0;->g:LG/c;

    iget v7, v2, LU/A;->b:I

    invoke-virtual {v6, v7}, LG/c;->a(I)LG/a;

    move-result-object v6

    iget v7, v2, LU/A;->c:I

    iget-object v6, v6, LG/a;->f:[I

    array-length v8, v6

    if-ge v7, v8, :cond_25

    aget v6, v6, v7

    const/4 v12, 0x2

    if-eq v6, v12, :cond_26

    :cond_25
    const/16 v41, 0x0

    goto :goto_20

    :cond_26
    move/from16 v41, v5

    :goto_20
    if-eqz v39, :cond_27

    if-eqz p2, :cond_27

    iget-object v5, v4, LN/X;->a:LG/q0;

    invoke-virtual {v5}, LG/q0;->p()Z

    move-result v5

    if-nez v5, :cond_27

    iget-object v5, v4, LN/X;->a:LG/q0;

    iget-object v4, v4, LN/X;->b:LU/A;

    iget-object v4, v4, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v0

    iget-boolean v0, v0, LG/n0;->f:Z

    if-nez v0, :cond_27

    const/16 v40, 0x1

    goto :goto_21

    :cond_27
    const/16 v40, 0x0

    :goto_21
    new-instance v30, LN/D;

    move-object/from16 v31, v2

    invoke-direct/range {v30 .. v41}, LN/D;-><init>(LU/A;JJZZZZZI)V

    move-object/from16 v9, v30

    :goto_22
    iget-object v8, v9, LN/D;->a:LU/A;

    iget-wide v12, v9, LN/D;->b:J

    const/4 v14, 0x0

    :try_start_0
    iget-boolean v0, v9, LN/D;->e:Z

    if-eqz v0, :cond_29

    iget-object v0, v1, LN/F;->L:LN/X;

    iget v0, v0, LN/X;->e:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_28

    const/4 v11, 0x4

    invoke-virtual {v1, v11}, LN/F;->r0(I)V

    :cond_28
    const/4 v4, 0x0

    goto :goto_24

    :catchall_0
    move-exception v0

    move-object v11, v3

    :goto_23
    move-object v2, v8

    goto/16 :goto_2f

    :goto_24
    invoke-virtual {v1, v4, v4, v4, v2}, LN/F;->P(ZZZZ)V

    :cond_29
    iget-object v0, v1, LN/F;->e:[LN/f0;

    array-length v2, v0

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v2, :cond_2c

    aget-object v5, v0, v4

    iget-object v6, v5, LN/f0;->a:LN/a;

    iget-object v7, v6, LN/a;->t:LG/q0;

    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    iput-object v3, v6, LN/a;->t:LG/q0;

    invoke-virtual {v6}, LN/a;->G()V

    invoke-virtual {v6}, LN/a;->x()V

    :cond_2a
    iget-object v5, v5, LN/f0;->c:LN/a;

    if-eqz v5, :cond_2b

    iget-object v6, v5, LN/a;->t:LG/q0;

    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    iput-object v3, v5, LN/a;->t:LG/q0;

    invoke-virtual {v5}, LN/a;->G()V

    invoke-virtual {v5}, LN/a;->x()V

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_2c
    iget-boolean v0, v9, LN/D;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_31

    :try_start_1
    iget-object v0, v1, LN/F;->e:[LN/f0;

    array-length v0, v0

    new-array v6, v0, [J

    const/4 v0, 0x0

    :goto_26
    iget-object v2, v1, LN/F;->e:[LN/f0;

    array-length v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ge v0, v4, :cond_2d

    :try_start_2
    iget-object v2, v1, LN/F;->u:LN/N;

    iget-object v2, v2, LN/N;->j:[LN/L;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v0}, LN/F;->o(LN/L;I)J

    move-result-wide v4

    aput-wide v4, v6, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_2d
    :try_start_3
    array-length v0, v2

    new-array v7, v0, [J

    const/4 v0, 0x0

    :goto_27
    iget-object v2, v1, LN/F;->e:[LN/f0;

    array-length v2, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ge v0, v2, :cond_2e

    :try_start_4
    iget-object v2, v1, LN/F;->u:LN/N;

    iget-object v2, v2, LN/N;->k:[LN/L;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v0}, LN/F;->o(LN/L;I)J

    move-result-wide v4

    aput-wide v4, v7, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_2e
    :try_start_5
    iget-object v2, v1, LN/F;->u:LN/N;

    iget-wide v4, v1, LN/F;->a0:J

    invoke-virtual/range {v2 .. v7}, LN/N;->z(LG/q0;J[J[J)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v7, v3

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2f

    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v1, v4}, LN/F;->W(Z)V

    goto :goto_29

    :catchall_1
    move-exception v0

    :goto_28
    move-object v11, v7

    goto/16 :goto_23

    :cond_2f
    const/16 v19, 0x2

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_30

    invoke-virtual {v1}, LN/F;->h()V

    :cond_30
    :goto_29
    move-object v2, v8

    goto :goto_2c

    :catchall_2
    move-exception v0

    move-object v7, v3

    goto :goto_28

    :cond_31
    move-object v7, v3

    invoke-virtual {v7}, LG/q0;->p()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v0, :cond_30

    :try_start_7
    iget-object v0, v1, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->i:LN/L;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_2a
    if-eqz v0, :cond_33

    :try_start_8
    iget-object v2, v0, LN/L;->g:LN/M;

    iget-object v2, v2, LN/M;->a:LU/A;

    invoke-virtual {v2, v8}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, v1, LN/F;->u:LN/N;

    iget-object v3, v0, LN/L;->g:LN/M;

    invoke-virtual {v2, v7, v3}, LN/N;->n(LG/q0;LN/M;)LN/M;

    move-result-object v2

    iput-object v2, v0, LN/L;->g:LN/M;

    :cond_32
    iget-object v0, v0, LN/L;->m:LN/L;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2a

    :cond_33
    :try_start_9
    iget-boolean v6, v9, LN/D;->d:Z

    invoke-virtual {v1}, LN/F;->A()Z

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v2, v8

    move-wide v3, v12

    :try_start_a
    invoke-virtual/range {v1 .. v6}, LN/F;->Y(LU/A;JZZ)J

    move-result-wide v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2c

    :catchall_3
    move-exception v0

    move-wide v12, v3

    :goto_2b
    move-object v11, v7

    goto/16 :goto_2f

    :catchall_4
    move-exception v0

    move-object v2, v8

    goto :goto_2b

    :goto_2c
    iget-object v0, v1, LN/F;->L:LN/X;

    iget-object v4, v0, LN/X;->a:LG/q0;

    iget-object v5, v0, LN/X;->b:LU/A;

    iget-boolean v0, v9, LN/D;->f:Z

    if-eqz v0, :cond_34

    move-wide v6, v12

    goto :goto_2d

    :cond_34
    move-wide/from16 v6, v16

    :goto_2d
    const/4 v8, 0x0

    move-object v3, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, LN/F;->F0(LG/q0;LU/A;LG/q0;LU/A;JZ)V

    move-object v11, v2

    move-object v2, v3

    iget-boolean v0, v9, LN/D;->g:Z

    if-nez v0, :cond_35

    iget-wide v3, v9, LN/D;->c:J

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-wide v5, v0, LN/X;->c:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_37

    :cond_35
    iget-wide v5, v9, LN/D;->c:J

    iget-boolean v0, v9, LN/D;->h:Z

    if-eqz v0, :cond_36

    move-wide v7, v12

    goto :goto_2e

    :cond_36
    iget-object v3, v1, LN/F;->L:LN/X;

    iget-wide v3, v3, LN/X;->d:J

    move-wide v7, v3

    :goto_2e
    iget v10, v9, LN/D;->i:I

    move v9, v0

    move-wide v3, v12

    invoke-virtual/range {v1 .. v10}, LN/F;->y(LU/A;JJJZI)LN/X;

    move-result-object v0

    iput-object v0, v1, LN/F;->L:LN/X;

    :cond_37
    invoke-virtual {v1}, LN/F;->Q()V

    iget-object v0, v1, LN/F;->L:LN/X;

    iget-object v0, v0, LN/X;->a:LG/q0;

    invoke-virtual {v1, v11, v0}, LN/F;->S(LG/q0;LG/q0;)V

    iget-object v0, v1, LN/F;->L:LN/X;

    invoke-virtual {v0, v11}, LN/X;->j(LG/q0;)LN/X;

    move-result-object v0

    iput-object v0, v1, LN/F;->L:LN/X;

    invoke-virtual {v11}, LG/q0;->p()Z

    move-result v0

    if-nez v0, :cond_38

    iput-object v14, v1, LN/F;->Z:LN/E;

    :cond_38
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, LN/F;->u(Z)V

    iget-object v0, v1, LN/F;->k:LJ/O;

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, LJ/O;->g(I)Z

    return-void

    :goto_2f
    iget-object v3, v1, LN/F;->L:LN/X;

    iget-object v4, v3, LN/X;->a:LG/q0;

    iget-object v5, v3, LN/X;->b:LU/A;

    iget-boolean v3, v9, LN/D;->f:Z

    if-eqz v3, :cond_39

    move-wide v6, v12

    goto :goto_30

    :cond_39
    move-wide/from16 v6, v16

    :goto_30
    const/4 v8, 0x0

    move-object v3, v2

    move-object v2, v11

    invoke-virtual/range {v1 .. v8}, LN/F;->F0(LG/q0;LU/A;LG/q0;LU/A;JZ)V

    move-object v2, v3

    iget-boolean v3, v9, LN/D;->g:Z

    if-nez v3, :cond_3a

    iget-wide v3, v9, LN/D;->c:J

    iget-object v5, v1, LN/F;->L:LN/X;

    iget-wide v5, v5, LN/X;->c:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3c

    :cond_3a
    iget-wide v5, v9, LN/D;->c:J

    iget-boolean v3, v9, LN/D;->h:Z

    if-eqz v3, :cond_3b

    move-wide v7, v12

    goto :goto_31

    :cond_3b
    iget-object v4, v1, LN/F;->L:LN/X;

    iget-wide v7, v4, LN/X;->d:J

    :goto_31
    iget v10, v9, LN/D;->i:I

    move v9, v3

    move-wide v3, v12

    invoke-virtual/range {v1 .. v10}, LN/F;->y(LU/A;JJJZI)LN/X;

    move-result-object v2

    iput-object v2, v1, LN/F;->L:LN/X;

    :cond_3c
    invoke-virtual {v1}, LN/F;->Q()V

    iget-object v2, v1, LN/F;->L:LN/X;

    iget-object v2, v2, LN/X;->a:LG/q0;

    invoke-virtual {v1, v11, v2}, LN/F;->S(LG/q0;LG/q0;)V

    iget-object v2, v1, LN/F;->L:LN/X;

    invoke-virtual {v2, v11}, LN/X;->j(LG/q0;)LN/X;

    move-result-object v2

    iput-object v2, v1, LN/F;->L:LN/X;

    invoke-virtual {v11}, LG/q0;->p()Z

    move-result v2

    if-nez v2, :cond_3d

    iput-object v14, v1, LN/F;->Z:LN/E;

    :cond_3d
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, LN/F;->u(Z)V

    iget-object v2, v1, LN/F;->k:LJ/O;

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, LJ/O;->g(I)Z

    throw v0
.end method

.method public final v0()Z
    .locals 2

    iget-object v0, p0, LN/F;->L:LN/X;

    iget-boolean v1, v0, LN/X;->l:Z

    if-eqz v1, :cond_0

    iget v0, v0, LN/X;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w(LU/y;)V
    .locals 12

    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v1, v0, LN/N;->l:LN/L;

    iget-object v2, p0, LN/F;->q:LN/h;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v4, v1, LN/L;->a:LU/s;

    if-ne v4, p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, v1, LN/L;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {v2}, LN/h;->g()LG/a0;

    move-result-object p1

    iget p1, p1, LG/a0;->a:F

    iget-object v2, p0, LN/F;->L:LN/X;

    iget-object v4, v2, LN/X;->a:LG/q0;

    iget-boolean v2, v2, LN/X;->l:Z

    invoke-virtual {v1, p1, v4, v2}, LN/L;->f(FLG/q0;Z)V

    :cond_0
    iget-object p1, v1, LN/L;->g:LN/M;

    iget-object p1, p1, LN/M;->a:LU/A;

    iget-object v2, v1, LN/L;->o:LW/t;

    invoke-virtual {p0, p1, v2}, LN/F;->B0(LU/A;LW/t;)V

    iget-object p1, v0, LN/N;->i:LN/L;

    if-ne v1, p1, :cond_1

    iget-object p1, v1, LN/L;->g:LN/M;

    iget-wide v4, p1, LN/M;->b:J

    invoke-virtual {p0, v4, v5, v3}, LN/F;->R(JZ)V

    invoke-virtual {p0}, LN/F;->A()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, LF1/i;->o(Z)V

    iget-object p1, p0, LN/F;->e:[LN/f0;

    array-length p1, p1

    new-array p1, p1, [Z

    invoke-virtual {v0}, LN/N;->d()LN/L;

    move-result-object v0

    invoke-virtual {v0}, LN/L;->e()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, LN/F;->l([ZJ)V

    invoke-virtual {p0, v1}, LN/F;->b0(LN/L;)V

    iget-object p1, p0, LN/F;->L:LN/X;

    iget-object v3, p1, LN/X;->b:LU/A;

    iget-object v0, v1, LN/L;->g:LN/M;

    iget-wide v4, v0, LN/M;->b:J

    iget-wide v6, p1, LN/X;->c:J

    const/4 v10, 0x0

    const/4 v11, 0x5

    move-wide v8, v4

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, LN/F;->y(LU/A;JJJZI)LN/X;

    move-result-object p1

    move-object v1, v2

    iput-object p1, v1, LN/F;->L:LN/X;

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {p0}, LN/F;->D()V

    return-void

    :cond_2
    move-object v1, p0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v0, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, v0, LN/N;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LN/L;

    iget-object v6, v5, LN/L;->a:LU/s;

    if-ne v6, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    iget-boolean v4, v5, LN/L;->e:Z

    xor-int/2addr v3, v4

    invoke-static {v3}, LF1/i;->o(Z)V

    invoke-virtual {v2}, LN/h;->g()LG/a0;

    move-result-object v2

    iget v2, v2, LG/a0;->a:F

    iget-object v3, v1, LN/F;->L:LN/X;

    iget-object v4, v3, LN/X;->a:LG/q0;

    iget-boolean v3, v3, LN/X;->l:Z

    invoke-virtual {v5, v2, v4, v3}, LN/L;->f(FLG/q0;Z)V

    iget-object v0, v0, LN/N;->m:LN/L;

    if-eqz v0, :cond_5

    iget-object v0, v0, LN/L;->a:LU/s;

    if-ne v0, p1, :cond_5

    invoke-virtual {p0}, LN/F;->E()V

    :cond_5
    return-void
.end method

.method public final w0(LG/q0;LU/A;)Z
    .locals 2

    invoke-virtual {p2}, LU/A;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, LG/q0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, LU/A;->a:Ljava/lang/Object;

    iget-object v0, p0, LN/F;->o:LG/n0;

    invoke-virtual {p1, p2, v0}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object p2

    iget p2, p2, LG/n0;->c:I

    iget-object v0, p0, LN/F;->n:LG/p0;

    invoke-virtual {p1, p2, v0}, LG/q0;->n(ILG/p0;)V

    invoke-virtual {v0}, LG/p0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, v0, LG/p0;->h:Z

    if-eqz p1, :cond_1

    iget-wide p1, v0, LG/p0;->e:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final x(LG/a0;FZZ)V
    .locals 4

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iget-object p3, p0, LN/F;->M:LI0/w;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, LI0/w;->f(I)V

    :cond_0
    iget-object p3, p0, LN/F;->L:LN/X;

    invoke-virtual {p3, p1}, LN/X;->g(LG/a0;)LN/X;

    move-result-object p3

    iput-object p3, p0, LN/F;->L:LN/X;

    :cond_1
    iget p3, p1, LG/a0;->a:F

    iget-object p4, p0, LN/F;->u:LN/N;

    iget-object p4, p4, LN/N;->i:LN/L;

    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_4

    iget-object v1, p4, LN/L;->o:LW/t;

    iget-object v1, v1, LW/t;->c:[LW/q;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    invoke-interface {v3, p3}, LW/q;->i(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p4, p4, LN/L;->m:LN/L;

    goto :goto_0

    :cond_4
    iget-object p3, p0, LN/F;->e:[LN/f0;

    array-length p4, p3

    :goto_2
    if-ge v0, p4, :cond_6

    aget-object v1, p3, v0

    iget v2, p1, LG/a0;->a:F

    iget-object v3, v1, LN/f0;->a:LN/a;

    invoke-virtual {v3, p2, v2}, LN/a;->C(FF)V

    iget-object v1, v1, LN/f0;->c:LN/a;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p2, v2}, LN/a;->C(FF)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final x0()V
    .locals 4

    iget-object v0, p0, LN/F;->u:LN/N;

    iget-object v0, v0, LN/N;->i:LN/L;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, LN/L;->o:LW/t;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LN/F;->e:[LN/f0;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, LW/t;->b(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, v2, v1

    invoke-virtual {v2}, LN/f0;->p()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final y(LU/A;JJJZI)LN/X;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    move/from16 v1, p9

    iget-boolean v3, v0, LN/F;->d0:Z

    const/4 v7, 0x0

    if-nez v3, :cond_1

    iget-object v3, v0, LN/F;->L:LN/X;

    iget-wide v8, v3, LN/X;->s:J

    cmp-long v3, p2, v8

    if-nez v3, :cond_1

    iget-object v3, v0, LN/F;->L:LN/X;

    iget-object v3, v3, LN/X;->b:LU/A;

    invoke-virtual {v2, v3}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v0, LN/F;->d0:Z

    invoke-virtual {v0}, LN/F;->Q()V

    iget-object v3, v0, LN/F;->L:LN/X;

    iget-object v8, v3, LN/X;->h:LU/l0;

    iget-object v9, v3, LN/X;->i:LW/t;

    iget-object v10, v3, LN/X;->j:Ljava/util/List;

    iget-object v11, v0, LN/F;->v:LN/W;

    iget-boolean v11, v11, LN/W;->l:Z

    if-eqz v11, :cond_10

    iget-object v3, v0, LN/F;->u:LN/N;

    iget-object v3, v3, LN/N;->i:LN/L;

    if-nez v3, :cond_2

    sget-object v8, LU/l0;->d:LU/l0;

    goto :goto_2

    :cond_2
    iget-object v8, v3, LN/L;->n:LU/l0;

    :goto_2
    if-nez v3, :cond_3

    iget-object v9, v0, LN/F;->i:LW/t;

    goto :goto_3

    :cond_3
    iget-object v9, v3, LN/L;->o:LW/t;

    :goto_3
    iget-object v10, v9, LW/t;->c:[LW/q;

    new-instance v11, Lu1/M;

    const/4 v12, 0x4

    invoke-direct {v11, v12}, Lu1/I;-><init>(I)V

    array-length v12, v10

    move v13, v7

    move v14, v13

    :goto_4
    if-ge v13, v12, :cond_6

    aget-object v15, v10, v13

    if-eqz v15, :cond_5

    invoke-interface {v15, v7}, LW/q;->b(I)LG/x;

    move-result-object v15

    iget-object v15, v15, LG/x;->m:LG/V;

    if-nez v15, :cond_4

    new-instance v15, LG/V;

    new-array v4, v7, [LG/U;

    invoke-direct {v15, v4}, LG/V;-><init>([LG/U;)V

    invoke-virtual {v11, v15}, Lu1/I;->c(Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v11, v15}, Lu1/I;->c(Ljava/lang/Object;)V

    const/4 v14, 0x1

    :cond_5
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    if-eqz v14, :cond_7

    invoke-virtual {v11}, Lu1/M;->f()Lu1/C0;

    move-result-object v4

    :goto_6
    move-object v10, v4

    goto :goto_7

    :cond_7
    sget-object v4, Lu1/P;->f:Lu1/N;

    sget-object v4, Lu1/C0;->i:Lu1/C0;

    goto :goto_6

    :goto_7
    if-eqz v3, :cond_8

    iget-object v4, v3, LN/L;->g:LN/M;

    iget-wide v11, v4, LN/M;->d:J

    cmp-long v11, v11, v5

    if-eqz v11, :cond_8

    invoke-virtual {v4, v5, v6}, LN/M;->a(J)LN/M;

    move-result-object v4

    iput-object v4, v3, LN/L;->g:LN/M;

    :cond_8
    iget-object v3, v0, LN/F;->e:[LN/f0;

    invoke-virtual {v0}, LN/F;->A()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_b

    :cond_9
    iget-object v4, v0, LN/F;->u:LN/N;

    iget-object v4, v4, LN/N;->i:LN/L;

    if-eqz v4, :cond_f

    iget-object v4, v4, LN/L;->o:LW/t;

    move v11, v7

    move v12, v11

    :goto_8
    array-length v13, v3

    if-ge v11, v13, :cond_c

    invoke-virtual {v4, v11}, LW/t;->b(I)Z

    move-result v13

    if-eqz v13, :cond_b

    aget-object v13, v3, v11

    iget-object v13, v13, LN/f0;->a:LN/a;

    iget v13, v13, LN/a;->f:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_a

    move v14, v7

    goto :goto_9

    :cond_a
    iget-object v13, v4, LW/t;->b:[LN/e0;

    aget-object v13, v13, v11

    iget v13, v13, LN/e0;->a:I

    if-eqz v13, :cond_b

    const/4 v12, 0x1

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_c
    const/4 v14, 0x1

    :goto_9
    if-eqz v12, :cond_d

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    goto :goto_a

    :cond_d
    move v14, v7

    :goto_a
    iget-boolean v3, v0, LN/F;->X:Z

    if-ne v14, v3, :cond_e

    goto :goto_b

    :cond_e
    iput-boolean v14, v0, LN/F;->X:Z

    if-nez v14, :cond_f

    iget-object v3, v0, LN/F;->L:LN/X;

    iget-boolean v3, v3, LN/X;->p:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, LN/F;->k:LJ/O;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, LJ/O;->g(I)Z

    :cond_f
    :goto_b
    move-object v11, v8

    move-object v12, v9

    move-object v13, v10

    goto :goto_c

    :cond_10
    iget-object v3, v3, LN/X;->b:LU/A;

    invoke-virtual {v2, v3}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v8, LU/l0;->d:LU/l0;

    iget-object v9, v0, LN/F;->i:LW/t;

    sget-object v10, Lu1/C0;->i:Lu1/C0;

    goto :goto_b

    :goto_c
    if-eqz p8, :cond_13

    iget-object v3, v0, LN/F;->M:LI0/w;

    iget-boolean v4, v3, LI0/w;->d:Z

    if-eqz v4, :cond_12

    iget v4, v3, LI0/w;->e:I

    const/4 v8, 0x5

    if-eq v4, v8, :cond_12

    if-ne v1, v8, :cond_11

    const/4 v4, 0x1

    goto :goto_d

    :cond_11
    move v4, v7

    :goto_d
    invoke-static {v4}, LF1/i;->g(Z)V

    goto :goto_e

    :cond_12
    const/4 v14, 0x1

    iput-boolean v14, v3, LI0/w;->b:Z

    iput-boolean v14, v3, LI0/w;->d:Z

    iput v1, v3, LI0/w;->e:I

    :cond_13
    :goto_e
    iget-object v1, v0, LN/F;->L:LN/X;

    iget-wide v3, v1, LN/X;->q:J

    invoke-virtual {v0, v3, v4}, LN/F;->p(J)J

    move-result-wide v9

    move-wide/from16 v3, p2

    move-wide/from16 v7, p6

    invoke-virtual/range {v1 .. v13}, LN/X;->d(LU/A;JJJJLU/l0;LW/t;Ljava/util/List;)LN/X;

    move-result-object v1

    return-object v1
.end method

.method public final y0(ZZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, LN/F;->V:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v0}, LN/F;->P(ZZZZ)V

    iget-object p1, p0, LN/F;->M:LI0/w;

    invoke-virtual {p1, p2}, LI0/w;->f(I)V

    iget-object p1, p0, LN/F;->j:LN/H;

    check-cast p1, LN/g;

    iget-object p2, p1, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, LN/F;->y:LO/j;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN/f;

    if-eqz v2, :cond_2

    iget v3, v2, LN/f;->a:I

    sub-int/2addr v3, v1

    iput v3, v2, LN/f;->a:I

    if-nez v3, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, LN/g;->c()V

    :cond_2
    iget-object p1, p0, LN/F;->L:LN/X;

    iget-boolean p1, p1, LN/X;->l:Z

    iget-object p2, p0, LN/F;->D:LH/f;

    invoke-virtual {p2, v1, p1}, LH/f;->d(IZ)I

    invoke-virtual {p0, v1}, LN/F;->r0(I)V

    return-void
.end method

.method public final z0()V
    .locals 6

    iget-object v0, p0, LN/F;->q:LN/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, LN/h;->j:Z

    iget-object v0, v0, LN/h;->e:LN/i0;

    iget-boolean v2, v0, LN/i0;->f:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, LN/i0;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, LN/i0;->b(J)V

    iput-boolean v1, v0, LN/i0;->f:Z

    :cond_0
    iget-object v0, p0, LN/F;->e:[LN/f0;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    iget-object v4, v3, LN/f0;->c:LN/a;

    iget-object v3, v3, LN/f0;->a:LN/a;

    invoke-static {v3}, LN/f0;->k(LN/a;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, LN/f0;->b(LN/a;)V

    :cond_1
    if-eqz v4, :cond_2

    iget v3, v4, LN/a;->l:I

    if-eqz v3, :cond_2

    invoke-static {v4}, LN/f0;->b(LN/a;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
