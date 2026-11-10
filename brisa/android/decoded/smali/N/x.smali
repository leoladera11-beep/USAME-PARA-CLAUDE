.class public final LN/x;
.super LC/b;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;


# instance fields
.field public final A:LJ/Z;

.field public final B:J

.field public final C:LJ/c;

.field public final D:LJ/K;

.field public final E:LB/A;

.field public final F:LN0/O;

.field public final G:LN0/O;

.field public H:I

.field public I:Z

.field public J:I

.field public K:I

.field public L:Z

.field public M:Z

.field public N:Lu1/b0;

.field public final O:LN/g0;

.field public P:LU/c0;

.field public Q:LG/c0;

.field public R:LG/T;

.field public S:LG/T;

.field public T:Ljava/lang/Object;

.field public U:Landroid/view/Surface;

.field public V:Landroid/view/SurfaceHolder;

.field public W:La0/l;

.field public X:Z

.field public Y:Landroid/view/TextureView;

.field public final Z:I

.field public a0:LJ/E;

.field public final b:LW/t;

.field public b0:LG/e;

.field public final c:LG/c0;

.field public c0:F

.field public final d:LJ/j;

.field public d0:F

.field public final e:Landroid/content/Context;

.field public e0:Z

.field public final f:LN/x;

.field public f0:LI/c;

.field public final g:[LN/a;

.field public final g0:Z

.field public final h:[LN/a;

.field public h0:Z

.field public final i:LW/s;

.field public final i0:I

.field public final j:LJ/O;

.field public j0:Z

.field public final k:LN/p;

.field public final k0:LG/p;

.field public final l:LN/F;

.field public l0:LG/C0;

.field public final m:LJ/t;

.field public final m0:J

.field public final n:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final n0:J

.field public final o:LG/n0;

.field public final o0:J

.field public final p:Ljava/util/ArrayList;

.field public p0:LG/T;

.field public final q:Z

.field public q0:LN/X;

.field public final r:LU/z;

.field public r0:I

.field public final s:LO/d;

.field public s0:J

.field public final t:Landroid/os/Looper;

.field public final u:LX/d;

.field public final v:LJ/M;

.field public final w:LN/s;

.field public final x:LN/t;

.field public final y:LH/c;

.field public final z:LJ/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer"

    invoke-static {v0}, LG/Q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(LN/m;)V
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v3, v0, LN/m;->a:Lcom/brisa/local/VideoPlaybackService;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v2, " [AndroidXMedia3/1.11.1] ["

    const-string v4, "Init "

    const/4 v15, 0x2

    invoke-direct {v1, v15}, LC/b;-><init>(I)V

    new-instance v5, LJ/j;

    invoke-direct {v5}, LJ/j;-><init>()V

    iput-object v5, v1, LN/x;->d:LJ/j;

    :try_start_0
    const-string v5, "ExoPlayerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, LN/m;->b:LJ/M;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, LN/x;->e:Landroid/content/Context;

    new-instance v2, LO/d;

    invoke-direct {v2, v7}, LO/d;-><init>(LJ/M;)V

    iput-object v2, v1, LN/x;->s:LO/d;

    iget v2, v0, LN/m;->h:I

    iput v2, v1, LN/x;->i0:I

    iget-object v2, v0, LN/m;->i:LG/e;

    iput-object v2, v1, LN/x;->b0:LG/e;

    iget v2, v0, LN/m;->j:I

    iput v2, v1, LN/x;->Z:I

    iput-boolean v8, v1, LN/x;->e0:Z

    iget-wide v4, v0, LN/m;->s:J

    iput-wide v4, v1, LN/x;->B:J

    new-instance v2, LN/s;

    invoke-direct {v2, v1}, LN/s;-><init>(LN/x;)V

    iput-object v2, v1, LN/x;->w:LN/s;

    new-instance v4, LN/t;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v1, LN/x;->x:LN/t;

    new-instance v4, Landroid/os/Handler;

    iget-object v5, v0, LN/m;->g:Landroid/os/Looper;

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, v0, LN/m;->c:LN/l;

    invoke-virtual {v5}, LN/l;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, LN/i;

    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v18, v2

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v21}, LN/i;->a(Landroid/os/Handler;LN/s;LN/s;LN/s;LN/s;)[LN/a;

    move-result-object v2

    iput-object v2, v1, LN/x;->g:[LN/a;

    array-length v4, v2

    const/4 v5, 0x1

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v8

    :goto_0
    invoke-static {v4}, LF1/i;->o(Z)V

    array-length v2, v2

    new-array v2, v2, [LN/a;

    iput-object v2, v1, LN/x;->h:[LN/a;

    move v2, v8

    :goto_1
    iget-object v4, v1, LN/x;->h:[LN/a;

    array-length v6, v4

    const/4 v9, 0x0

    if-ge v2, v6, :cond_1

    iget-object v6, v1, LN/x;->g:[LN/a;

    aget-object v6, v6, v2

    iget v6, v6, LN/a;->f:I

    aput-object v9, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    iget-object v2, v0, LN/m;->e:LN/l;

    invoke-virtual {v2}, LN/l;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LW/s;

    iput-object v2, v1, LN/x;->i:LW/s;

    iget-object v4, v0, LN/m;->d:LN/l;

    invoke-virtual {v4}, LN/l;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU/z;

    iput-object v4, v1, LN/x;->r:LU/z;

    iget-object v4, v0, LN/m;->f:LN/l;

    invoke-virtual {v4}, LN/l;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX/d;

    iput-object v4, v1, LN/x;->u:LX/d;

    iget-boolean v6, v0, LN/m;->k:Z

    iput-boolean v6, v1, LN/x;->q:Z

    iget-object v6, v0, LN/m;->l:LN/h0;

    iget-wide v11, v0, LN/m;->n:J

    iput-wide v11, v1, LN/x;->m0:J

    iget-wide v11, v0, LN/m;->o:J

    iput-wide v11, v1, LN/x;->n0:J

    iget-wide v11, v0, LN/m;->p:J

    iput-wide v11, v1, LN/x;->o0:J

    iget-object v11, v0, LN/m;->m:LN/g0;

    iput-object v11, v1, LN/x;->O:LN/g0;

    iget-object v12, v0, LN/m;->g:Landroid/os/Looper;

    iput-object v12, v1, LN/x;->t:Landroid/os/Looper;

    iput-object v7, v1, LN/x;->v:LJ/M;

    iput-object v1, v1, LN/x;->f:LN/x;

    new-instance v11, LJ/t;

    new-instance v13, LM0/E1;

    const/16 v14, 0x1b

    invoke-direct {v13, v1, v14}, LM0/E1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v11, v12, v7, v13}, LJ/t;-><init>(Landroid/os/Looper;LJ/M;LJ/r;)V

    iput-object v11, v1, LN/x;->m:LJ/t;

    new-instance v11, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v11}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v11, v1, LN/x;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, LN/x;->p:Ljava/util/ArrayList;

    new-instance v13, LU/c0;

    invoke-direct {v13}, LU/c0;-><init>()V

    iput-object v13, v1, LN/x;->P:LU/c0;

    new-instance v13, LW/t;

    iget-object v14, v1, LN/x;->g:[LN/a;

    array-length v15, v14

    new-array v15, v15, [LN/e0;

    array-length v14, v14

    new-array v14, v14, [LW/q;

    sget-object v8, LG/y0;->b:LG/y0;

    invoke-direct {v13, v15, v14, v8, v9}, LW/t;-><init>([LN/e0;[LW/q;LG/y0;Ljava/lang/Object;)V

    iput-object v13, v1, LN/x;->b:LW/t;

    new-instance v8, LG/n0;

    invoke-direct {v8}, LG/n0;-><init>()V

    iput-object v8, v1, LN/x;->o:LG/n0;

    new-instance v8, LG/b0;

    invoke-direct {v8}, LG/b0;-><init>()V

    const/16 v14, 0x14

    new-array v14, v14, [I

    fill-array-data v14, :array_0

    iget-object v15, v8, LG/b0;->a:LE/b;

    invoke-virtual {v15, v14}, LE/b;->c([I)V

    const/16 v14, 0x1d

    invoke-virtual {v8, v14, v5}, LG/b0;->b(IZ)V

    const/16 v14, 0x17

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, LG/b0;->b(IZ)V

    const/16 v14, 0x19

    invoke-virtual {v8, v14, v15}, LG/b0;->b(IZ)V

    const/16 v14, 0x21

    invoke-virtual {v8, v14, v15}, LG/b0;->b(IZ)V

    const/16 v14, 0x1a

    invoke-virtual {v8, v14, v15}, LG/b0;->b(IZ)V

    const/16 v14, 0x22

    invoke-virtual {v8, v14, v15}, LG/b0;->b(IZ)V

    invoke-virtual {v8}, LG/b0;->c()LG/c0;

    move-result-object v8

    iput-object v8, v1, LN/x;->c:LG/c0;

    new-instance v15, LG/b0;

    invoke-direct {v15}, LG/b0;-><init>()V

    iget-object v14, v15, LG/b0;->a:LE/b;

    iget-object v8, v8, LG/c0;->a:LG/u;

    invoke-virtual {v14, v8}, LE/b;->b(LG/u;)V

    const/4 v8, 0x4

    invoke-virtual {v14, v8}, LE/b;->a(I)V

    const/16 v8, 0xa

    invoke-virtual {v14, v8}, LE/b;->a(I)V

    invoke-virtual {v15}, LG/b0;->c()LG/c0;

    move-result-object v8

    iput-object v8, v1, LN/x;->Q:LG/c0;

    invoke-virtual {v7, v12, v9}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object v8

    iput-object v8, v1, LN/x;->j:LJ/O;

    new-instance v8, LN/p;

    const/4 v15, 0x0

    invoke-direct {v8, v1, v15}, LN/p;-><init>(LN/x;I)V

    iput-object v8, v1, LN/x;->k:LN/p;

    invoke-static {v13}, LN/X;->k(LW/t;)LN/X;

    move-result-object v14

    iput-object v14, v1, LN/x;->q0:LN/X;

    iget-object v14, v1, LN/x;->s:LO/d;

    invoke-virtual {v14, v1, v12}, LO/d;->b0(LN/x;Landroid/os/Looper;)V

    new-instance v14, LO/j;

    iget-object v15, v0, LN/m;->z:Ljava/lang/String;

    invoke-direct {v14, v15}, LO/j;-><init>(Ljava/lang/String;)V

    new-instance v16, LN/F;

    iget-object v15, v1, LN/x;->e:Landroid/content/Context;

    iget-object v9, v1, LN/x;->g:[LN/a;

    iget-object v5, v1, LN/x;->h:[LN/a;

    new-instance v22, LN/g;

    invoke-direct/range {v22 .. v22}, LN/g;-><init>()V

    move-object/from16 v20, v2

    iget v2, v1, LN/x;->H:I

    move/from16 v24, v2

    iget-boolean v2, v1, LN/x;->I:Z

    move/from16 v25, v2

    iget-object v2, v1, LN/x;->s:LO/d;

    move-object/from16 v26, v2

    iget-object v2, v0, LN/m;->q:LN/e;

    move-object/from16 v28, v2

    move-object/from16 v41, v3

    iget-wide v2, v0, LN/m;->r:J

    move-wide/from16 v29, v2

    iget-boolean v2, v0, LN/m;->A:Z

    iget-object v3, v1, LN/x;->x:LN/t;

    move/from16 v31, v2

    iget-boolean v2, v0, LN/m;->B:Z

    move/from16 v37, v2

    move-object/from16 v36, v3

    move-object/from16 v23, v4

    move-object/from16 v19, v5

    move-object/from16 v27, v6

    move-object/from16 v33, v7

    move-object/from16 v34, v8

    move-object/from16 v18, v9

    move-object/from16 v32, v12

    move-object/from16 v21, v13

    move-object/from16 v35, v14

    move-object/from16 v17, v15

    invoke-direct/range {v16 .. v37}, LN/F;-><init>(Landroid/content/Context;[LN/a;[LN/a;LW/s;LW/t;LN/H;LX/d;IZLO/d;LN/h0;LN/e;JZLandroid/os/Looper;LJ/M;LN/p;LO/j;LZ/w;Z)V

    move-object/from16 v5, v16

    move-object/from16 v4, v23

    move-object/from16 v12, v32

    move-object/from16 v3, v33

    move-object/from16 v2, v35

    iget-object v8, v5, LN/F;->k:LJ/O;

    iput-object v5, v1, LN/x;->l:LN/F;

    iget-object v6, v5, LN/F;->m:Landroid/os/Looper;

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v1, LN/x;->c0:F

    const/4 v15, 0x0

    iput v15, v1, LN/x;->H:I

    sget-object v7, LG/T;->M:LG/T;

    iput-object v7, v1, LN/x;->R:LG/T;

    iput-object v7, v1, LN/x;->S:LG/T;

    iput-object v7, v1, LN/x;->p0:LG/T;

    const/4 v15, -0x1

    iput v15, v1, LN/x;->r0:I

    sget-object v7, LI/c;->d:LI/c;

    iput-object v7, v1, LN/x;->f0:LI/c;

    const/4 v7, 0x1

    iput-boolean v7, v1, LN/x;->g0:Z

    iget-object v7, v1, LN/x;->s:LO/d;

    invoke-virtual {v1, v7}, LN/x;->O(LG/e0;)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v9, v1, LN/x;->s:LO/d;

    invoke-interface {v4, v7, v9}, LX/d;->b(Landroid/os/Handler;LO/d;)V

    iget-object v4, v1, LN/x;->w:LN/s;

    invoke-virtual {v11, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1f

    if-lt v4, v7, :cond_2

    iget-object v9, v1, LN/x;->e:Landroid/content/Context;

    iget-boolean v11, v0, LN/m;->x:Z

    iget-object v5, v5, LN/F;->m:Landroid/os/Looper;

    const/4 v13, 0x0

    invoke-virtual {v3, v5, v13}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object v5

    new-instance v14, LN/q;

    invoke-direct {v14, v9, v11, v1, v2}, LN/q;-><init>(Landroid/content/Context;ZLN/x;LO/j;)V

    invoke-virtual {v5, v14}, LJ/O;->e(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    new-instance v9, LJ/c;

    new-instance v14, LN/p;

    const/4 v2, 0x1

    invoke-direct {v14, v1, v2}, LN/p;-><init>(LN/x;I)V

    move-object v11, v6

    move-object/from16 v39, v13

    const/16 v38, 0x22

    move-object v13, v3

    invoke-direct/range {v9 .. v14}, LJ/c;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;LJ/M;LN/p;)V

    move-object v3, v13

    iput-object v9, v1, LN/x;->C:LJ/c;

    new-instance v5, LH/a;

    const/4 v12, 0x5

    invoke-direct {v5, v1, v12}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v5}, LJ/c;->e(Ljava/lang/Runnable;)V

    move/from16 v40, v2

    new-instance v2, LH/c;

    iget-object v5, v0, LN/m;->g:Landroid/os/Looper;

    iget-object v6, v1, LN/x;->w:LN/s;

    move-object v9, v11

    move v11, v4

    move-object v4, v9

    move v13, v7

    move/from16 v14, v38

    move/from16 v9, v40

    move-object v7, v3

    move-object/from16 v3, v41

    invoke-direct/range {v2 .. v7}, LH/c;-><init>(Lcom/brisa/local/VideoPlaybackService;Landroid/os/Looper;Landroid/os/Looper;LN/s;LJ/M;)V

    iput-object v2, v1, LN/x;->y:LH/c;

    invoke-virtual {v2}, LH/c;->f()V

    iget v2, v0, LN/m;->t:I

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_4

    iget v2, v0, LN/m;->u:I

    if-eq v2, v5, :cond_4

    iget v2, v0, LN/m;->v:I

    if-eq v2, v5, :cond_4

    iget v2, v0, LN/m;->w:I

    if-ne v2, v5, :cond_3

    goto :goto_3

    :cond_3
    move v5, v9

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x0

    :goto_4
    new-instance v2, LJ/Z;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v7, v6}, LJ/Z;-><init>(Lcom/brisa/local/VideoPlaybackService;Landroid/os/Looper;LJ/M;I)V

    iput-object v2, v1, LN/x;->z:LJ/Z;

    iget-boolean v6, v2, LJ/Z;->d:Z

    if-ne v6, v5, :cond_5

    goto :goto_5

    :cond_5
    iput-boolean v5, v2, LJ/Z;->d:Z

    iget-boolean v6, v2, LJ/Z;->e:Z

    invoke-virtual {v2, v5, v6}, LJ/Z;->a(ZZ)V

    :goto_5
    new-instance v2, LJ/Z;

    invoke-direct {v2, v3, v4, v7, v9}, LJ/Z;-><init>(Lcom/brisa/local/VideoPlaybackService;Landroid/os/Looper;LJ/M;I)V

    iput-object v2, v1, LN/x;->A:LJ/Z;

    const/4 v4, 0x2

    if-ne v5, v4, :cond_6

    move v5, v9

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    iget-boolean v4, v2, LJ/Z;->d:Z

    if-ne v4, v5, :cond_7

    goto :goto_7

    :cond_7
    iput-boolean v5, v2, LJ/Z;->d:Z

    iget-boolean v4, v2, LJ/Z;->e:Z

    invoke-virtual {v2, v5, v4}, LJ/Z;->b(ZZ)V

    :goto_7
    sget-object v2, LG/p;->e:LG/p;

    iput-object v2, v1, LN/x;->k0:LG/p;

    sget-object v2, LG/C0;->d:LG/C0;

    iput-object v2, v1, LN/x;->l0:LG/C0;

    sget-object v2, LJ/E;->c:LJ/E;

    iput-object v2, v1, LN/x;->a0:LJ/E;

    if-lt v11, v14, :cond_8

    new-instance v2, LB/A;

    invoke-direct {v2, v1, v3}, LB/A;-><init>(LN/x;Lcom/brisa/local/VideoPlaybackService;)V

    goto :goto_8

    :cond_8
    move-object/from16 v2, v39

    :goto_8
    iput-object v2, v1, LN/x;->E:LB/A;

    new-instance v2, LN0/O;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, LN0/O;-><init>(I)V

    iput-object v2, v1, LN/x;->F:LN0/O;

    new-instance v2, LN0/O;

    invoke-direct {v2, v3}, LN0/O;-><init>(I)V

    iput-object v2, v1, LN/x;->G:LN0/O;

    new-instance v2, LJ/K;

    move-object v3, v2

    iget-object v2, v1, LN/x;->w:LN/s;

    iget v4, v0, LN/m;->t:I

    iget v5, v0, LN/m;->u:I

    iget v6, v0, LN/m;->v:I

    iget v0, v0, LN/m;->w:I

    move-object/from16 v42, v7

    move v7, v0

    move-object v0, v3

    move-object/from16 v3, v42

    invoke-direct/range {v0 .. v7}, LJ/K;-><init>(LN/x;LN/s;LJ/M;IIII)V

    iput-object v0, v1, LN/x;->D:LJ/K;

    iget-object v0, v1, LN/x;->O:LN/g0;

    const/16 v2, 0x26

    invoke-virtual {v8, v2, v0}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object v0

    invoke-virtual {v0}, LJ/N;->b()V

    iget-object v0, v1, LN/x;->b0:LG/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJ/O;->d()LJ/N;

    move-result-object v2

    iget-object v3, v8, LJ/O;->a:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v3, v13, v6, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v2, LJ/N;->a:Landroid/os/Message;

    invoke-virtual {v2}, LJ/N;->b()V

    iget-object v0, v1, LN/x;->b0:LG/e;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v9, v2}, LN/x;->u1(Ljava/lang/Object;II)V

    iget v0, v1, LN/x;->Z:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v4, v2}, LN/x;->u1(Ljava/lang/Object;II)V

    invoke-virtual {v1, v10, v4, v12}, LN/x;->u1(Ljava/lang/Object;II)V

    iget-boolean v0, v1, LN/x;->e0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v9, v2}, LN/x;->u1(Ljava/lang/Object;II)V

    iget-object v0, v1, LN/x;->x:LN/t;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v2, v3}, LN/x;->u1(Ljava/lang/Object;II)V

    iget v0, v1, LN/x;->i0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v15, v2}, LN/x;->u1(Ljava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, LN/x;->d:LJ/j;

    invoke-virtual {v0}, LJ/j;->d()Z

    return-void

    :goto_9
    iget-object v2, v1, LN/x;->d:LJ/j;

    invoke-virtual {v2}, LJ/j;->d()Z

    throw v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static n1(LN/X;)J
    .locals 6

    new-instance v0, LG/p0;

    invoke-direct {v0}, LG/p0;-><init>()V

    new-instance v1, LG/n0;

    invoke-direct {v1}, LG/n0;-><init>()V

    iget-object v2, p0, LN/X;->a:LG/q0;

    iget-object v3, p0, LN/X;->b:LU/A;

    iget-object v3, v3, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget-wide v2, p0, LN/X;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iget-object p0, p0, LN/X;->a:LG/q0;

    iget v1, v1, LG/n0;->c:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object p0

    iget-wide v0, p0, LG/p0;->k:J

    return-wide v0

    :cond_0
    iget-wide v0, v1, LG/n0;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static o1(LN/X;I)LN/X;
    .locals 1

    invoke-virtual {p0, p1}, LN/X;->h(I)LN/X;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LN/X;->b(Z)LN/X;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0(II)V
    .locals 11

    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LF1/i;->g(Z)V

    iget-object v1, p0, LN/x;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, v1, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, LN/x;->q0:LN/X;

    invoke-virtual {p0, v1, p1, p2}, LN/x;->s1(LN/X;II)LN/X;

    move-result-object v3

    iget-object p1, v3, LN/X;->b:LU/A;

    iget-object p1, p1, LU/A;->a:Ljava/lang/Object;

    iget-object p2, p0, LN/x;->q0:LN/X;

    iget-object p2, p2, LN/X;->b:LU/A;

    iget-object p2, p2, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v3}, LN/x;->k1(LN/X;)J

    move-result-wide v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, LN/x;->B1(LN/X;IZIJIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final A1(IZ)V
    .locals 13

    iget-boolean v0, p0, LN/x;->M:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN/x;->q0:LN/X;

    iget v0, v0, LN/X;->n:I

    if-ne v0, v2, :cond_1

    if-nez p2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, LN/x;->q0:LN/X;

    iget-boolean v4, v3, LN/X;->l:Z

    if-ne v4, p2, :cond_2

    iget v4, v3, LN/X;->n:I

    if-ne v4, v0, :cond_2

    iget v4, v3, LN/X;->m:I

    if-ne v4, p1, :cond_2

    return-void

    :cond_2
    iget v4, p0, LN/x;->J:I

    add-int/2addr v4, v2

    iput v4, p0, LN/x;->J:I

    iget-boolean v4, v3, LN/X;->p:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, LN/X;->a()LN/X;

    move-result-object v3

    :cond_3
    invoke-virtual {v3, p1, v0, p2}, LN/X;->e(IIZ)LN/X;

    move-result-object v5

    shl-int/2addr v0, v1

    or-int/2addr p1, v0

    iget-object v0, p0, LN/x;->l:LN/F;

    iget-object v0, v0, LN/F;->k:LJ/O;

    invoke-virtual {v0, v2, p2, p1}, LJ/O;->b(III)LJ/N;

    move-result-object p1

    invoke-virtual {p1}, LJ/N;->b()V

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, LN/x;->B1(LN/X;IZIJIZ)V

    return-void
.end method

.method public final B(Z)V
    .locals 3

    invoke-virtual {p0}, LN/x;->D1()V

    iget-boolean v0, p0, LN/x;->I:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, LN/x;->I:Z

    iget-object v0, p0, LN/x;->l:LN/F;

    iget-object v0, v0, LN/F;->k:LJ/O;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, LJ/O;->b(III)LJ/N;

    move-result-object v0

    invoke-virtual {v0}, LJ/N;->b()V

    new-instance v0, LM0/Z;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, LM0/Z;-><init>(IZ)V

    iget-object p1, p0, LN/x;->m:LJ/t;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p0}, LN/x;->z1()V

    invoke-virtual {p1}, LJ/t;->b()V

    :cond_0
    return-void
.end method

.method public final B0(I)V
    .locals 0

    invoke-virtual {p0}, LN/x;->D1()V

    return-void
.end method

.method public final B1(LN/X;IZIJIZ)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget-object v3, v0, LN/x;->q0:LN/X;

    iput-object v1, v0, LN/x;->q0:LN/X;

    iget-object v4, v1, LN/X;->a:LG/q0;

    invoke-virtual {v4}, LG/q0;->p()Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_1

    iget-object v4, v1, LN/X;->a:LG/q0;

    iget-object v8, v1, LN/X;->b:LU/A;

    iget-object v8, v8, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v4, v8}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v9, v1, LN/X;->b:LU/A;

    iget-object v9, v9, LU/A;->a:Ljava/lang/Object;

    iget-object v10, v1, LN/X;->a:LG/q0;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, LN/X;->a:LG/q0;

    invoke-virtual {v11}, LG/q0;->o()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "periodUid %s not found in timeline %s with size %d"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, LF1/i;->n(Ljava/lang/String;Z)V

    :cond_1
    iget-object v4, v3, LN/X;->a:LG/q0;

    iget-object v8, v1, LN/X;->a:LG/q0;

    invoke-virtual {v4, v8}, LG/q0;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v8, v0, LC/b;->a:Ljava/lang/Object;

    check-cast v8, LG/p0;

    iget-object v9, v0, LN/x;->o:LG/n0;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v3, LN/X;->a:LG/q0;

    iget-object v12, v3, LN/X;->b:LU/A;

    iget-object v13, v1, LN/X;->a:LG/q0;

    iget-object v14, v1, LN/X;->b:LU/A;

    invoke-virtual {v13}, LG/q0;->p()Z

    move-result v15

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x2

    const-wide/16 v5, 0x0

    if-eqz v15, :cond_2

    invoke-virtual {v11}, LG/q0;->p()Z

    move-result v15

    if-eqz v15, :cond_2

    new-instance v8, Landroid/util/Pair;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v13}, LG/q0;->p()Z

    move-result v15

    invoke-virtual {v11}, LG/q0;->p()Z

    move-result v7

    if-eq v15, v7, :cond_3

    new-instance v8, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v7, v12, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v11, v7, v9}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v7

    iget v7, v7, LG/n0;->c:I

    invoke-virtual {v11, v7, v8, v5, v6}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v7

    iget-object v7, v7, LG/p0;->a:Ljava/lang/Object;

    iget-object v11, v14, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v13, v11, v9}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v9

    iget v9, v9, LG/n0;->c:I

    invoke-virtual {v13, v9, v8, v5, v6}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v8

    iget-object v8, v8, LG/p0;->a:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz p3, :cond_4

    if-nez v2, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    move/from16 v7, v18

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    move/from16 v7, v16

    :goto_1
    new-instance v8, Landroid/util/Pair;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v8, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_7
    if-eqz p3, :cond_8

    if-nez v2, :cond_8

    iget-wide v7, v12, LU/A;->d:J

    iget-wide v11, v14, LU/A;->d:J

    cmp-long v7, v7, v11

    if-gez v7, :cond_8

    new-instance v8, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_9

    const/4 v7, 0x1

    if-ne v2, v7, :cond_9

    if-eqz p8, :cond_9

    new-instance v8, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    new-instance v8, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v8, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iget-object v7, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v7, :cond_b

    iget-object v10, v1, LN/X;->a:LG/q0;

    invoke-virtual {v10}, LG/q0;->p()Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, v1, LN/X;->a:LG/q0;

    iget-object v11, v1, LN/X;->b:LU/A;

    iget-object v11, v11, LU/A;->a:Ljava/lang/Object;

    iget-object v12, v0, LN/x;->o:LG/n0;

    invoke-virtual {v10, v11, v12}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v10

    iget v10, v10, LG/n0;->c:I

    iget-object v11, v1, LN/X;->a:LG/q0;

    iget-object v12, v0, LC/b;->a:Ljava/lang/Object;

    check-cast v12, LG/p0;

    invoke-virtual {v11, v10, v12, v5, v6}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v10

    iget-object v10, v10, LG/p0;->c:LG/P;

    goto :goto_3

    :cond_a
    const/4 v10, 0x0

    :goto_3
    sget-object v11, LG/T;->M:LG/T;

    iput-object v11, v0, LN/x;->p0:LG/T;

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    :goto_4
    if-nez v7, :cond_c

    iget-object v11, v3, LN/X;->j:Ljava/util/List;

    iget-object v12, v1, LN/X;->j:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    :cond_c
    iget-object v11, v0, LN/x;->p0:LG/T;

    invoke-virtual {v11}, LG/T;->a()LG/S;

    move-result-object v11

    iget-object v12, v1, LN/X;->j:Ljava/util/List;

    move/from16 v13, v17

    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_e

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LG/V;

    move/from16 v15, v17

    :goto_6
    iget-object v9, v14, LG/V;->a:[LG/U;

    array-length v5, v9

    if-ge v15, v5, :cond_d

    aget-object v5, v9, v15

    invoke-interface {v5, v11}, LG/U;->c(LG/S;)V

    add-int/lit8 v15, v15, 0x1

    const-wide/16 v5, 0x0

    goto :goto_6

    :cond_d
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v5, 0x0

    goto :goto_5

    :cond_e
    new-instance v5, LG/T;

    invoke-direct {v5, v11}, LG/T;-><init>(LG/S;)V

    iput-object v5, v0, LN/x;->p0:LG/T;

    :cond_f
    invoke-virtual {v0}, LN/x;->f1()LG/T;

    move-result-object v5

    iget-object v6, v0, LN/x;->R:LG/T;

    invoke-virtual {v5, v6}, LG/T;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-object v5, v0, LN/x;->R:LG/T;

    iget-boolean v5, v3, LN/X;->l:Z

    iget-boolean v9, v1, LN/X;->l:Z

    if-eq v5, v9, :cond_10

    const/4 v5, 0x1

    goto :goto_7

    :cond_10
    move/from16 v5, v17

    :goto_7
    iget v9, v3, LN/X;->e:I

    iget v11, v1, LN/X;->e:I

    if-eq v9, v11, :cond_11

    const/4 v9, 0x1

    goto :goto_8

    :cond_11
    move/from16 v9, v17

    :goto_8
    if-nez v9, :cond_12

    if-eqz v5, :cond_13

    :cond_12
    invoke-virtual {v0}, LN/x;->C1()V

    :cond_13
    iget-boolean v11, v3, LN/X;->g:Z

    iget-boolean v12, v1, LN/X;->g:Z

    if-eq v11, v12, :cond_14

    const/4 v11, 0x1

    goto :goto_9

    :cond_14
    move/from16 v11, v17

    :goto_9
    if-nez v4, :cond_15

    iget-object v4, v0, LN/x;->m:LJ/t;

    new-instance v12, LM0/u0;

    const/4 v13, 0x4

    move/from16 v14, p2

    invoke-direct {v12, v1, v14, v13}, LM0/u0;-><init>(Ljava/lang/Object;II)V

    move/from16 v13, v17

    invoke-virtual {v4, v13, v12}, LJ/t;->c(ILJ/q;)V

    :cond_15
    if-eqz p3, :cond_1d

    new-instance v4, LG/n0;

    invoke-direct {v4}, LG/n0;-><init>()V

    iget-object v12, v3, LN/X;->a:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v12

    if-nez v12, :cond_16

    iget-object v12, v3, LN/X;->b:LU/A;

    iget-object v12, v12, LU/A;->a:Ljava/lang/Object;

    iget-object v13, v3, LN/X;->a:LG/q0;

    invoke-virtual {v13, v12, v4}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget v13, v4, LG/n0;->c:I

    iget-object v14, v3, LN/X;->a:LG/q0;

    invoke-virtual {v14, v12}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v14

    iget-object v15, v3, LN/X;->a:LG/q0;

    move/from16 v17, v5

    iget-object v5, v0, LC/b;->a:Ljava/lang/Object;

    check-cast v5, LG/p0;

    move/from16 v20, v6

    move/from16 v19, v7

    const-wide/16 v6, 0x0

    invoke-virtual {v15, v13, v5, v6, v7}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v5

    iget-object v5, v5, LG/p0;->a:Ljava/lang/Object;

    iget-object v6, v0, LC/b;->a:Ljava/lang/Object;

    check-cast v6, LG/p0;

    iget-object v6, v6, LG/p0;->c:LG/P;

    move-object/from16 v22, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v12

    move/from16 v23, v13

    move/from16 v26, v14

    goto :goto_a

    :cond_16
    move/from16 v17, v5

    move/from16 v20, v6

    move/from16 v19, v7

    move/from16 v23, p7

    move/from16 v26, v23

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_a
    if-nez v2, :cond_19

    iget-object v5, v3, LN/X;->b:LU/A;

    invoke-virtual {v5}, LU/A;->c()Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, v3, LN/X;->b:LU/A;

    iget v6, v5, LU/A;->b:I

    iget v5, v5, LU/A;->c:I

    invoke-virtual {v4, v6, v5}, LG/n0;->a(II)J

    move-result-wide v4

    invoke-static {v3}, LN/x;->n1(LN/X;)J

    move-result-wide v6

    goto :goto_c

    :cond_17
    iget-object v5, v3, LN/X;->b:LU/A;

    iget v5, v5, LU/A;->e:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_18

    iget-object v4, v0, LN/x;->q0:LN/X;

    invoke-static {v4}, LN/x;->n1(LN/X;)J

    move-result-wide v4

    :goto_b
    move-wide v6, v4

    goto :goto_c

    :cond_18
    iget-wide v5, v4, LG/n0;->e:J

    iget-wide v12, v4, LG/n0;->d:J

    add-long v4, v5, v12

    goto :goto_b

    :cond_19
    iget-object v5, v3, LN/X;->b:LU/A;

    invoke-virtual {v5}, LU/A;->c()Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-wide v4, v3, LN/X;->s:J

    invoke-static {v3}, LN/x;->n1(LN/X;)J

    move-result-wide v6

    goto :goto_c

    :cond_1a
    iget-wide v4, v4, LG/n0;->e:J

    iget-wide v6, v3, LN/X;->s:J

    add-long/2addr v4, v6

    goto :goto_b

    :goto_c
    new-instance v21, LG/f0;

    invoke-static {v4, v5}, LJ/W;->S(J)J

    move-result-wide v27

    invoke-static {v6, v7}, LJ/W;->S(J)J

    move-result-wide v29

    iget-object v4, v3, LN/X;->b:LU/A;

    iget v5, v4, LU/A;->b:I

    iget v4, v4, LU/A;->c:I

    move/from16 v32, v4

    move/from16 v31, v5

    invoke-direct/range {v21 .. v32}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    move-object/from16 v4, v21

    iget-object v5, v0, LC/b;->a:Ljava/lang/Object;

    check-cast v5, LG/p0;

    invoke-virtual {v0}, LN/x;->V()I

    move-result v6

    invoke-virtual {v0}, LN/x;->K()I

    move-result v7

    iget-object v12, v0, LN/x;->q0:LN/X;

    iget-object v12, v12, LN/X;->a:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v12

    if-nez v12, :cond_1b

    iget-object v7, v0, LN/x;->q0:LN/X;

    iget-object v12, v7, LN/X;->b:LU/A;

    iget-object v12, v12, LU/A;->a:Ljava/lang/Object;

    iget-object v7, v7, LN/X;->a:LG/q0;

    iget-object v13, v0, LN/x;->o:LG/n0;

    invoke-virtual {v7, v12, v13}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget-object v7, v0, LN/x;->q0:LN/X;

    iget-object v7, v7, LN/X;->a:LG/q0;

    invoke-virtual {v7, v12}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v7

    iget-object v13, v0, LN/x;->q0:LN/X;

    iget-object v13, v13, LN/X;->a:LG/q0;

    const-wide/16 v14, 0x0

    invoke-virtual {v13, v6, v5, v14, v15}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v13

    iget-object v13, v13, LG/p0;->a:Ljava/lang/Object;

    iget-object v5, v5, LG/p0;->c:LG/P;

    move-object/from16 v24, v5

    move-object/from16 v25, v12

    move-object/from16 v22, v13

    :goto_d
    move/from16 v26, v7

    goto :goto_e

    :cond_1b
    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    goto :goto_d

    :goto_e
    invoke-static/range {p5 .. p6}, LJ/W;->S(J)J

    move-result-wide v27

    new-instance v21, LG/f0;

    iget-object v5, v0, LN/x;->q0:LN/X;

    iget-object v5, v5, LN/X;->b:LU/A;

    invoke-virtual {v5}, LU/A;->c()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, v0, LN/x;->q0:LN/X;

    invoke-static {v5}, LN/x;->n1(LN/X;)J

    move-result-wide v12

    invoke-static {v12, v13}, LJ/W;->S(J)J

    move-result-wide v12

    move-wide/from16 v29, v12

    goto :goto_f

    :cond_1c
    move-wide/from16 v29, v27

    :goto_f
    iget-object v5, v0, LN/x;->q0:LN/X;

    iget-object v5, v5, LN/X;->b:LU/A;

    iget v7, v5, LU/A;->b:I

    iget v5, v5, LU/A;->c:I

    move/from16 v32, v5

    move/from16 v23, v6

    move/from16 v31, v7

    invoke-direct/range {v21 .. v32}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    move-object/from16 v5, v21

    iget-object v6, v0, LN/x;->m:LJ/t;

    new-instance v7, LM0/E;

    invoke-direct {v7, v2, v4, v5}, LM0/E;-><init>(ILG/f0;LG/f0;)V

    const/16 v2, 0xb

    invoke-virtual {v6, v2, v7}, LJ/t;->c(ILJ/q;)V

    goto :goto_10

    :cond_1d
    move/from16 v17, v5

    move/from16 v20, v6

    move/from16 v19, v7

    :goto_10
    if-eqz v19, :cond_1e

    iget-object v2, v0, LN/x;->m:LJ/t;

    new-instance v4, LM0/u0;

    const/4 v5, 0x5

    invoke-direct {v4, v10, v8, v5}, LM0/u0;-><init>(Ljava/lang/Object;II)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v4}, LJ/t;->c(ILJ/q;)V

    :cond_1e
    iget-object v2, v3, LN/X;->f:LN/k;

    iget-object v4, v1, LN/X;->f:LN/k;

    if-eq v2, v4, :cond_1f

    iget-object v2, v0, LN/x;->m:LJ/t;

    new-instance v4, LN/o;

    const/4 v5, 0x7

    invoke-direct {v4, v1, v5}, LN/o;-><init>(LN/X;I)V

    const/16 v5, 0xa

    invoke-virtual {v2, v5, v4}, LJ/t;->c(ILJ/q;)V

    iget-object v2, v1, LN/X;->f:LN/k;

    if-eqz v2, :cond_1f

    iget-object v2, v0, LN/x;->m:LJ/t;

    new-instance v4, LN/o;

    const/16 v6, 0x8

    invoke-direct {v4, v1, v6}, LN/o;-><init>(LN/X;I)V

    invoke-virtual {v2, v5, v4}, LJ/t;->c(ILJ/q;)V

    :cond_1f
    iget-object v2, v3, LN/X;->i:LW/t;

    iget-object v4, v1, LN/X;->i:LW/t;

    if-eq v2, v4, :cond_20

    iget-object v2, v0, LN/x;->i:LW/s;

    iget-object v4, v4, LW/t;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, LW/r;

    iget-object v2, v0, LN/x;->m:LJ/t;

    new-instance v4, LN/o;

    const/16 v5, 0x9

    invoke-direct {v4, v1, v5}, LN/o;-><init>(LN/X;I)V

    move/from16 v5, v18

    invoke-virtual {v2, v5, v4}, LJ/t;->c(ILJ/q;)V

    :cond_20
    if-nez v20, :cond_21

    iget-object v2, v0, LN/x;->R:LG/T;

    iget-object v4, v0, LN/x;->m:LJ/t;

    new-instance v5, LM0/L;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, LM0/L;-><init>(LG/T;I)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2, v5}, LJ/t;->c(ILJ/q;)V

    :cond_21
    if-eqz v11, :cond_22

    iget-object v2, v0, LN/x;->m:LJ/t;

    new-instance v4, LN/o;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, LN/o;-><init>(LN/X;I)V

    move/from16 v5, v16

    invoke-virtual {v2, v5, v4}, LJ/t;->c(ILJ/q;)V

    :cond_22
    if-nez v9, :cond_23

    if-eqz v17, :cond_24

    :cond_23
    iget-object v2, v0, LN/x;->m:LJ/t;

    new-instance v4, LN/o;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, LN/o;-><init>(LN/X;I)V

    const/4 v6, -0x1

    invoke-virtual {v2, v6, v4}, LJ/t;->c(ILJ/q;)V

    :cond_24
    if-eqz v9, :cond_25

    iget-object v2, v0, LN/x;->m:LJ/t;

    new-instance v4, LN/o;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, LN/o;-><init>(LN/X;I)V

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v4}, LJ/t;->c(ILJ/q;)V

    :cond_25
    if-nez v17, :cond_26

    iget v2, v3, LN/X;->m:I

    iget v4, v1, LN/X;->m:I

    if-eq v2, v4, :cond_27

    :cond_26
    iget-object v2, v0, LN/x;->m:LJ/t;

    new-instance v4, LN/o;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5}, LN/o;-><init>(LN/X;I)V

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v4}, LJ/t;->c(ILJ/q;)V

    :cond_27
    iget v2, v3, LN/X;->n:I

    iget v4, v1, LN/X;->n:I

    if-eq v2, v4, :cond_28

    iget-object v2, v0, LN/x;->m:LJ/t;

    new-instance v4, LN/o;

    const/4 v5, 0x4

    invoke-direct {v4, v1, v5}, LN/o;-><init>(LN/X;I)V

    const/4 v5, 0x6

    invoke-virtual {v2, v5, v4}, LJ/t;->c(ILJ/q;)V

    :cond_28
    invoke-virtual {v3}, LN/X;->m()Z

    move-result v2

    invoke-virtual {v1}, LN/X;->m()Z

    move-result v4

    if-eq v2, v4, :cond_29

    iget-object v2, v0, LN/x;->m:LJ/t;

    new-instance v4, LN/o;

    const/4 v5, 0x5

    invoke-direct {v4, v1, v5}, LN/o;-><init>(LN/X;I)V

    const/4 v5, 0x7

    invoke-virtual {v2, v5, v4}, LJ/t;->c(ILJ/q;)V

    :cond_29
    iget-object v2, v3, LN/X;->o:LG/a0;

    iget-object v4, v1, LN/X;->o:LG/a0;

    invoke-virtual {v2, v4}, LG/a0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, v0, LN/x;->m:LJ/t;

    new-instance v4, LN/o;

    const/4 v5, 0x6

    invoke-direct {v4, v1, v5}, LN/o;-><init>(LN/X;I)V

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v4}, LJ/t;->c(ILJ/q;)V

    :cond_2a
    invoke-virtual {v0}, LN/x;->z1()V

    iget-object v2, v0, LN/x;->m:LJ/t;

    invoke-virtual {v2}, LJ/t;->b()V

    iget-boolean v2, v3, LN/X;->p:Z

    iget-boolean v1, v1, LN/X;->p:Z

    if-eq v2, v1, :cond_2b

    iget-object v1, v0, LN/x;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN/s;

    iget-object v2, v2, LN/s;->a:LN/x;

    invoke-virtual {v2}, LN/x;->C1()V

    goto :goto_11

    :cond_2b
    return-void
.end method

.method public final C1()V
    .locals 6

    invoke-virtual {p0}, LN/x;->c()I

    move-result v0

    iget-object v1, p0, LN/x;->A:LJ/Z;

    iget-object v2, p0, LN/x;->z:LJ/Z;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-boolean v0, v0, LN/X;->p:Z

    invoke-virtual {p0}, LN/x;->z()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v2, v3}, LJ/Z;->c(Z)V

    invoke-virtual {p0}, LN/x;->z()Z

    move-result v0

    invoke-virtual {v1, v0}, LJ/Z;->c(Z)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {v2, v3}, LJ/Z;->c(Z)V

    invoke-virtual {v1, v3}, LJ/Z;->c(Z)V

    return-void
.end method

.method public final D(I)V
    .locals 0

    invoke-virtual {p0}, LN/x;->D1()V

    return-void
.end method

.method public final D0(LG/e;Z)V
    .locals 5

    invoke-virtual {p0}, LN/x;->D1()V

    iget-boolean v0, p0, LN/x;->j0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN/x;->b0:LG/e;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, LN/x;->m:LJ/t;

    if-nez v0, :cond_1

    iput-object p1, p0, LN/x;->b0:LG/e;

    const/4 v0, 0x1

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v0, v2}, LN/x;->u1(Ljava/lang/Object;II)V

    new-instance v0, LM0/e0;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, LM0/e0;-><init>(LG/e;I)V

    const/16 p1, 0x14

    invoke-virtual {v1, p1, v0}, LJ/t;->c(ILJ/q;)V

    :cond_1
    iget-object p1, p0, LN/x;->b0:LG/e;

    iget-object v0, p0, LN/x;->l:LN/F;

    iget-object v0, v0, LN/F;->k:LJ/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJ/O;->d()LJ/N;

    move-result-object v2

    iget-object v0, v0, LJ/O;->a:Landroid/os/Handler;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p2, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iput-object p1, v2, LJ/N;->a:Landroid/os/Message;

    invoke-virtual {v2}, LJ/N;->b()V

    invoke-virtual {v1}, LJ/t;->b()V

    return-void
.end method

.method public final D1()V
    .locals 4

    iget-object v0, p0, LN/x;->d:LJ/j;

    invoke-virtual {v0}, LJ/j;->b()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, LN/x;->t:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v0, v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Player is accessed on the wrong thread.\nCurrent thread: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'\nExpected thread: \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, LN/x;->g0:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, LN/x;->h0:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0, v1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LN/x;->h0:Z

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method public final E()LG/y0;
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v0, v0, LN/X;->i:LW/t;

    iget-object v0, v0, LW/t;->d:LG/y0;

    return-object v0
.end method

.method public final F0(Landroid/view/TextureView;)V
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, LN/x;->g1()V

    return-void

    :cond_0
    invoke-virtual {p0}, LN/x;->t1()V

    iput-object p1, p0, LN/x;->Y:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v1, "Replacing existing SurfaceTextureListener."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, LN/x;->w:LN/s;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, LN/x;->x1(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LN/x;->r1(II)V

    return-void

    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v1}, LN/x;->x1(Ljava/lang/Object;)V

    iput-object v1, p0, LN/x;->U:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, LN/x;->r1(II)V

    return-void
.end method

.method public final G()J
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    iget-wide v0, p0, LN/x;->o0:J

    return-wide v0
.end method

.method public final H()LG/T;
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->S:LG/T;

    return-object v0
.end method

.method public final I0(Landroid/view/SurfaceHolder;)V
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, LN/x;->g1()V

    return-void

    :cond_0
    invoke-virtual {p0}, LN/x;->t1()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LN/x;->X:Z

    iput-object p1, p0, LN/x;->V:Landroid/view/SurfaceHolder;

    iget-object v0, p0, LN/x;->w:LN/s;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, LN/x;->x1(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, LN/x;->r1(II)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LN/x;->x1(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LN/x;->r1(II)V

    return-void
.end method

.method public final J0(F)V
    .locals 3

    invoke-virtual {p0}, LN/x;->D1()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, LJ/W;->f(FFF)F

    move-result p1

    iget v0, p0, LN/x;->c0:F

    cmpl-float v2, v0, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    move v0, p1

    :cond_1
    iput v0, p0, LN/x;->d0:F

    iput p1, p0, LN/x;->c0:F

    iget-object v0, p0, LN/x;->l:LN/F;

    iget-object v0, v0, LN/F;->k:LJ/O;

    const/16 v1, 0x20

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object v0

    invoke-virtual {v0}, LJ/N;->b()V

    new-instance v0, LM0/c0;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, LM0/c0;-><init>(FI)V

    iget-object p1, p0, LN/x;->m:LJ/t;

    const/16 v1, 0x16

    invoke-virtual {p1, v1, v0}, LJ/t;->f(ILJ/q;)V

    return-void
.end method

.method public final K()I
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v0, v0, LN/X;->a:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, LN/x;->r0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v1, v0, LN/X;->a:LG/q0;

    iget-object v0, v0, LN/X;->b:LU/A;

    iget-object v0, v0, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final K0()LG/T;
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->R:LG/T;

    return-object v0
.end method

.method public final L()LI/c;
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->f0:LI/c;

    return-object v0
.end method

.method public final L0(Ljava/util/List;)V
    .locals 6

    invoke-virtual {p0}, LN/x;->D1()V

    invoke-virtual {p0, p1}, LN/x;->h1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LN/x;->v1(Ljava/util/ArrayList;IJZ)V

    return-void
.end method

.method public final M(Landroid/view/TextureView;)V
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LN/x;->Y:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, LN/x;->g1()V

    :cond_0
    return-void
.end method

.method public final N()LG/C0;
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->l0:LG/C0;

    return-object v0
.end method

.method public final O(LG/e0;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LN/x;->m:LJ/t;

    invoke-virtual {v0, p1}, LJ/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final O0()J
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    invoke-virtual {p0, v0}, LN/x;->k1(LN/X;)J

    move-result-wide v0

    invoke-static {v0, v1}, LJ/W;->S(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final P0()J
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    iget-wide v0, p0, LN/x;->m0:J

    return-wide v0
.end method

.method public final R()F
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget v0, p0, LN/x;->c0:F

    return v0
.end method

.method public final T()LG/e;
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->b0:LG/e;

    return-object v0
.end method

.method public final U()I
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    invoke-virtual {p0}, LN/x;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v0, v0, LN/X;->b:LU/A;

    iget v0, v0, LU/A;->b:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final U0()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, LN/x;->t:Landroid/os/Looper;

    return-object v0
.end method

.method public final V()I
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    invoke-virtual {p0, v0}, LN/x;->l1(LN/X;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final W(IZ)V
    .locals 0

    invoke-virtual {p0}, LN/x;->D1()V

    return-void
.end method

.method public final X(LG/T;)V
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LN/x;->S:LG/T;

    invoke-virtual {p1, v0}, LG/T;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, LN/x;->S:LG/T;

    new-instance p1, LN/p;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, LN/p;-><init>(LN/x;I)V

    iget-object v0, p0, LN/x;->m:LJ/t;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, LJ/t;->f(ILJ/q;)V

    return-void
.end method

.method public final Y()LG/p;
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->k0:LG/p;

    return-object v0
.end method

.method public final a0()V
    .locals 0

    invoke-virtual {p0}, LN/x;->D1()V

    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-boolean v0, v0, LN/X;->g:Z

    return v0
.end method

.method public final b0(I)V
    .locals 3

    invoke-virtual {p0}, LN/x;->D1()V

    iget v0, p0, LN/x;->H:I

    if-eq v0, p1, :cond_0

    iput p1, p0, LN/x;->H:I

    iget-object v0, p0, LN/x;->l:LN/F;

    iget-object v0, v0, LN/F;->k:LJ/O;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, LJ/O;->b(III)LJ/N;

    move-result-object v0

    invoke-virtual {v0}, LJ/N;->b()V

    new-instance v0, LG/l0;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, LG/l0;-><init>(II)V

    iget-object p1, p0, LN/x;->m:LJ/t;

    invoke-virtual {p1, v1, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p0}, LN/x;->z1()V

    invoke-virtual {p1}, LJ/t;->b()V

    :cond_0
    return-void
.end method

.method public final b1(JIZ)V
    .locals 10

    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ltz p3, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, LF1/i;->g(Z)V

    iget-object v4, p0, LN/x;->q0:LN/X;

    iget-object v4, v4, LN/X;->a:LG/q0;

    invoke-virtual {v4}, LG/q0;->p()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, LG/q0;->o()I

    move-result v5

    if-lt p3, v5, :cond_2

    :goto_1
    return-void

    :cond_2
    iget-object v5, p0, LN/x;->s:LO/d;

    iget-boolean v6, v5, LO/d;->m:Z

    if-nez v6, :cond_3

    invoke-virtual {v5}, LO/d;->V()LO/a;

    move-result-object v6

    iput-boolean v3, v5, LO/d;->m:Z

    new-instance v7, LO/b;

    const/16 v8, 0xd

    invoke-direct {v7, v8}, LO/b;-><init>(I)V

    invoke-virtual {v5, v6, v2, v7}, LO/d;->a0(LO/a;ILJ/q;)V

    :cond_3
    iget v2, p0, LN/x;->J:I

    add-int/2addr v2, v3

    iput v2, p0, LN/x;->J:I

    invoke-virtual {p0}, LN/x;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "ExoPlayerImpl"

    const-string v2, "seekTo ignored because an ad is playing"

    invoke-static {v1, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, LI0/w;

    iget-object v2, p0, LN/x;->q0:LN/X;

    invoke-direct {v1, v2}, LI0/w;-><init>(LN/X;)V

    invoke-virtual {v1, v3}, LI0/w;->f(I)V

    iget-object v2, p0, LN/x;->k:LN/p;

    iget-object v2, v2, LN/p;->f:LN/x;

    iget-object v3, v2, LN/x;->j:LJ/O;

    new-instance v4, LH/i;

    const/16 v5, 0x10

    invoke-direct {v4, v2, v1, v5}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, LJ/O;->e(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    iget-object v2, p0, LN/x;->q0:LN/X;

    iget v3, v2, LN/X;->e:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    const/4 v6, 0x4

    if-ne v3, v6, :cond_6

    invoke-virtual {v4}, LG/q0;->p()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v2, p0, LN/x;->q0:LN/X;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, LN/X;->h(I)LN/X;

    move-result-object v2

    :cond_6
    invoke-virtual {p0}, LN/x;->V()I

    move-result v7

    invoke-virtual {p0, v4, p3, p1, p2}, LN/x;->q1(LG/q0;IJ)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, LN/x;->p1(LN/X;LG/q0;Landroid/util/Pair;)LN/X;

    move-result-object v2

    invoke-static {p1, p2}, LJ/W;->G(J)J

    move-result-wide v8

    iget-object v3, p0, LN/x;->l:LN/F;

    iget-object v3, v3, LN/F;->k:LJ/O;

    new-instance v6, LN/E;

    invoke-direct {v6, v4, p3, v8, v9}, LN/E;-><init>(LG/q0;IJ)V

    invoke-virtual {v3, v5, v6}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object v1

    invoke-virtual {v1}, LJ/N;->b()V

    const/4 v4, 0x1

    invoke-virtual {p0, v2}, LN/x;->k1(LN/X;)J

    move-result-wide v5

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v8, p4

    invoke-virtual/range {v0 .. v8}, LN/x;->B1(LN/X;IZIJIZ)V

    return-void
.end method

.method public final c()I
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget v0, v0, LN/X;->e:I

    return v0
.end method

.method public final c0(II)V
    .locals 0

    invoke-virtual {p0}, LN/x;->D1()V

    return-void
.end method

.method public final d(LG/a0;)V
    .locals 10

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v0, v0, LN/X;->o:LG/a0;

    invoke-virtual {v0, p1}, LG/a0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN/x;->q0:LN/X;

    invoke-virtual {v0, p1}, LN/X;->g(LG/a0;)LN/X;

    move-result-object v2

    iget v0, p0, LN/x;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LN/x;->J:I

    iget-object v0, p0, LN/x;->l:LN/F;

    iget-object v0, v0, LN/F;->k:LJ/O;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object p1

    invoke-virtual {p1}, LJ/N;->b()V

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, LN/x;->B1(LN/X;IZIJIZ)V

    return-void
.end method

.method public final d0(Z)V
    .locals 0

    invoke-virtual {p0}, LN/x;->D1()V

    return-void
.end method

.method public final e()V
    .locals 12

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget v1, v0, LN/X;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LN/X;->f(LN/k;)LN/X;

    move-result-object v0

    iget-object v1, v0, LN/X;->a:LG/q0;

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-static {v0, v1}, LN/x;->o1(LN/X;I)LN/X;

    move-result-object v4

    iget v0, p0, LN/x;->J:I

    add-int/2addr v0, v2

    iput v0, p0, LN/x;->J:I

    iget-object v0, p0, LN/x;->l:LN/F;

    iget-object v0, v0, LN/F;->k:LJ/O;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, LJ/O;->a(I)LJ/N;

    move-result-object v0

    invoke-virtual {v0}, LJ/N;->b()V

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, LN/x;->B1(LN/X;IZIJIZ)V

    return-void
.end method

.method public final e0(I)V
    .locals 0

    invoke-virtual {p0}, LN/x;->D1()V

    return-void
.end method

.method public final e1(LN/X;ILjava/util/ArrayList;)LN/X;
    .locals 9

    iget-object v1, p1, LN/X;->a:LG/q0;

    iget v0, p0, LN/x;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LN/x;->J:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    move v0, v8

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, LN/x;->p:Ljava/util/ArrayList;

    if-ge v0, v2, :cond_0

    new-instance v2, LN/V;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU/a;

    iget-boolean v5, p0, LN/x;->q:Z

    invoke-direct {v2, v4, v5}, LN/V;-><init>(LU/a;Z)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v4, v0, p2

    new-instance v5, LN/u;

    iget-object v7, v2, LN/V;->b:Ljava/lang/Object;

    iget-object v2, v2, LN/V;->a:LU/v;

    invoke-direct {v5, v7, v2}, LN/u;-><init>(Ljava/lang/Object;LU/v;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p3, p0, LN/x;->P:LU/c0;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, p2, v0}, LU/c0;->a(II)LU/c0;

    move-result-object p3

    iput-object p3, p0, LN/x;->P:LU/c0;

    new-instance v2, LN/d0;

    iget-object p3, p0, LN/x;->P:LU/c0;

    invoke-direct {v2, v3, p3}, LN/d0;-><init>(Ljava/util/ArrayList;LU/c0;)V

    invoke-virtual {p0, p1}, LN/x;->l1(LN/X;)I

    move-result v3

    invoke-virtual {p0, p1}, LN/x;->j1(LN/X;)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LN/x;->m1(LG/q0;LN/d0;IJ)Landroid/util/Pair;

    move-result-object p3

    invoke-virtual {p0, p1, v2, p3}, LN/x;->p1(LN/X;LG/q0;Landroid/util/Pair;)LN/X;

    move-result-object p1

    iget-object v4, v0, LN/x;->P:LU/c0;

    iget-object p3, v0, LN/x;->l:LN/F;

    iget-object p3, p3, LN/F;->k:LJ/O;

    new-instance v2, LN/B;

    const/4 v5, -0x1

    move-object v3, v6

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v7}, LN/B;-><init>(Ljava/util/ArrayList;LU/c0;IJ)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJ/O;->d()LJ/N;

    move-result-object v1

    iget-object p3, p3, LJ/O;->a:Landroid/os/Handler;

    const/16 v3, 0x12

    invoke-virtual {p3, v3, p2, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iput-object p2, v1, LJ/N;->a:Landroid/os/Message;

    invoke-virtual {v1}, LJ/N;->b()V

    return-object p1
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget v0, p0, LN/x;->H:I

    return v0
.end method

.method public final f0()I
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    invoke-virtual {p0}, LN/x;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v0, v0, LN/X;->b:LU/A;

    iget v0, v0, LU/A;->c:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final f1()LG/T;
    .locals 5

    invoke-virtual {p0}, LN/x;->p0()LG/q0;

    move-result-object v0

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, LN/x;->p0:LG/T;

    return-object v0

    :cond_0
    invoke-virtual {p0}, LN/x;->V()I

    move-result v1

    iget-object v2, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v2, LG/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-object v0, v0, LG/p0;->c:LG/P;

    iget-object v1, p0, LN/x;->p0:LG/T;

    invoke-virtual {v1}, LG/T;->a()LG/S;

    move-result-object v1

    iget-object v0, v0, LG/P;->d:LG/T;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v2, v0, LG/T;->L:Lu1/P;

    iget-object v3, v0, LG/T;->k:[B

    iget-object v4, v0, LG/T;->a:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    iput-object v4, v1, LG/S;->a:Ljava/lang/CharSequence;

    :cond_2
    iget-object v4, v0, LG/T;->b:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    iput-object v4, v1, LG/S;->b:Ljava/lang/CharSequence;

    :cond_3
    iget-object v4, v0, LG/T;->c:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iput-object v4, v1, LG/S;->c:Ljava/lang/CharSequence;

    :cond_4
    iget-object v4, v0, LG/T;->d:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    iput-object v4, v1, LG/S;->d:Ljava/lang/CharSequence;

    :cond_5
    iget-object v4, v0, LG/T;->e:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    iput-object v4, v1, LG/S;->e:Ljava/lang/CharSequence;

    :cond_6
    iget-object v4, v0, LG/T;->f:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    iput-object v4, v1, LG/S;->f:Ljava/lang/CharSequence;

    :cond_7
    iget-object v4, v0, LG/T;->g:Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    iput-object v4, v1, LG/S;->g:Ljava/lang/CharSequence;

    :cond_8
    iget-object v4, v0, LG/T;->h:Ljava/lang/Long;

    if-eqz v4, :cond_9

    invoke-virtual {v1, v4}, LG/S;->c(Ljava/lang/Long;)V

    :cond_9
    iget-object v4, v0, LG/T;->i:LG/h0;

    if-eqz v4, :cond_a

    iput-object v4, v1, LG/S;->i:LG/h0;

    :cond_a
    iget-object v4, v0, LG/T;->j:LG/h0;

    if-eqz v4, :cond_b

    iput-object v4, v1, LG/S;->j:LG/h0;

    :cond_b
    iget-object v4, v0, LG/T;->n:Landroid/net/Uri;

    if-nez v4, :cond_c

    if-eqz v3, :cond_d

    :cond_c
    iput-object v4, v1, LG/S;->n:Landroid/net/Uri;

    iget-object v4, v0, LG/T;->m:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, LG/S;->b([BLjava/lang/Integer;)V

    iget-object v3, v0, LG/T;->l:LG/k;

    iput-object v3, v1, LG/S;->l:LG/k;

    :cond_d
    iget-object v3, v0, LG/T;->o:Ljava/lang/Integer;

    if-eqz v3, :cond_e

    iput-object v3, v1, LG/S;->o:Ljava/lang/Integer;

    :cond_e
    iget-object v3, v0, LG/T;->p:Ljava/lang/Integer;

    if-eqz v3, :cond_f

    iput-object v3, v1, LG/S;->p:Ljava/lang/Integer;

    :cond_f
    iget-object v3, v0, LG/T;->q:Ljava/lang/Integer;

    if-eqz v3, :cond_10

    iput-object v3, v1, LG/S;->q:Ljava/lang/Integer;

    :cond_10
    iget-object v3, v0, LG/T;->r:Ljava/lang/Boolean;

    if-eqz v3, :cond_11

    iput-object v3, v1, LG/S;->r:Ljava/lang/Boolean;

    :cond_11
    iget-object v3, v0, LG/T;->s:Ljava/lang/Boolean;

    if-eqz v3, :cond_12

    iput-object v3, v1, LG/S;->s:Ljava/lang/Boolean;

    :cond_12
    iget-object v3, v0, LG/T;->t:Ljava/lang/Integer;

    if-eqz v3, :cond_13

    iput-object v3, v1, LG/S;->t:Ljava/lang/Integer;

    :cond_13
    iget-object v3, v0, LG/T;->u:Ljava/lang/Integer;

    if-eqz v3, :cond_14

    iput-object v3, v1, LG/S;->t:Ljava/lang/Integer;

    :cond_14
    iget-object v3, v0, LG/T;->v:Ljava/lang/Integer;

    if-eqz v3, :cond_15

    iput-object v3, v1, LG/S;->u:Ljava/lang/Integer;

    :cond_15
    iget-object v3, v0, LG/T;->w:Ljava/lang/Integer;

    if-eqz v3, :cond_16

    iput-object v3, v1, LG/S;->v:Ljava/lang/Integer;

    :cond_16
    iget-object v3, v0, LG/T;->x:Ljava/lang/Integer;

    if-eqz v3, :cond_17

    iput-object v3, v1, LG/S;->w:Ljava/lang/Integer;

    :cond_17
    iget-object v3, v0, LG/T;->y:Ljava/lang/Integer;

    if-eqz v3, :cond_18

    iput-object v3, v1, LG/S;->x:Ljava/lang/Integer;

    :cond_18
    iget-object v3, v0, LG/T;->z:Ljava/lang/Integer;

    if-eqz v3, :cond_19

    iput-object v3, v1, LG/S;->y:Ljava/lang/Integer;

    :cond_19
    iget-object v3, v0, LG/T;->A:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1a

    iput-object v3, v1, LG/S;->z:Ljava/lang/CharSequence;

    :cond_1a
    iget-object v3, v0, LG/T;->B:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1b

    iput-object v3, v1, LG/S;->A:Ljava/lang/CharSequence;

    :cond_1b
    iget-object v3, v0, LG/T;->C:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1c

    iput-object v3, v1, LG/S;->B:Ljava/lang/CharSequence;

    :cond_1c
    iget-object v3, v0, LG/T;->D:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1d

    iput-object v3, v1, LG/S;->C:Ljava/lang/CharSequence;

    :cond_1d
    iget-object v3, v0, LG/T;->E:Ljava/lang/Integer;

    if-eqz v3, :cond_1e

    iput-object v3, v1, LG/S;->D:Ljava/lang/Integer;

    :cond_1e
    iget-object v3, v0, LG/T;->F:Ljava/lang/Integer;

    if-eqz v3, :cond_1f

    iput-object v3, v1, LG/S;->E:Ljava/lang/Integer;

    :cond_1f
    iget-object v3, v0, LG/T;->G:Ljava/lang/CharSequence;

    if-eqz v3, :cond_20

    iput-object v3, v1, LG/S;->F:Ljava/lang/CharSequence;

    :cond_20
    iget-object v3, v0, LG/T;->H:Ljava/lang/CharSequence;

    if-eqz v3, :cond_21

    iput-object v3, v1, LG/S;->G:Ljava/lang/CharSequence;

    :cond_21
    iget-object v3, v0, LG/T;->I:Ljava/lang/CharSequence;

    if-eqz v3, :cond_22

    iput-object v3, v1, LG/S;->H:Ljava/lang/CharSequence;

    :cond_22
    iget-object v3, v0, LG/T;->J:Ljava/lang/Integer;

    if-eqz v3, :cond_23

    iput-object v3, v1, LG/S;->I:Ljava/lang/Integer;

    :cond_23
    iget-object v0, v0, LG/T;->K:Landroid/os/Bundle;

    if-eqz v0, :cond_24

    iput-object v0, v1, LG/S;->J:Landroid/os/Bundle;

    :cond_24
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {v2}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v0

    iput-object v0, v1, LG/S;->K:Lu1/P;

    :cond_25
    :goto_0
    new-instance v0, LG/T;

    invoke-direct {v0, v1}, LG/T;-><init>(LG/S;)V

    return-object v0
.end method

.method public final g()LG/a0;
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v0, v0, LN/X;->o:LG/a0;

    return-object v0
.end method

.method public final g0(Landroid/view/SurfaceView;)V
    .locals 3

    invoke-virtual {p0}, LN/x;->D1()V

    instance-of v0, p1, LZ/v;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LN/x;->t1()V

    invoke-virtual {p0, p1}, LN/x;->x1(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, LN/x;->w1(Landroid/view/SurfaceHolder;)V

    return-void

    :cond_0
    instance-of v0, p1, La0/l;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LN/x;->t1()V

    move-object v0, p1

    check-cast v0, La0/l;

    iput-object v0, p0, LN/x;->W:La0/l;

    iget-object v0, p0, LN/x;->x:LN/t;

    invoke-virtual {p0, v0}, LN/x;->i1(LN/a0;)LN/b0;

    move-result-object v0

    iget-boolean v1, v0, LN/b0;->f:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, LF1/i;->o(Z)V

    const/16 v1, 0x2710

    iput v1, v0, LN/b0;->c:I

    iget-object v1, p0, LN/x;->W:La0/l;

    iget-boolean v2, v0, LN/b0;->f:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, LF1/i;->o(Z)V

    iput-object v1, v0, LN/b0;->d:Ljava/lang/Object;

    invoke-virtual {v0}, LN/b0;->b()V

    iget-object v0, p0, LN/x;->W:La0/l;

    iget-object v1, p0, LN/x;->w:LN/s;

    iget-object v0, v0, La0/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LN/x;->W:La0/l;

    invoke-virtual {v0}, La0/l;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, LN/x;->x1(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, LN/x;->w1(Landroid/view/SurfaceHolder;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, LN/x;->I0(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final g1()V
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    invoke-virtual {p0}, LN/x;->t1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/x;->x1(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, LN/x;->r1(II)V

    return-void
.end method

.method public final getDuration()J
    .locals 4

    invoke-virtual {p0}, LN/x;->D1()V

    invoke-virtual {p0}, LN/x;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v1, v0, LN/X;->b:LU/A;

    iget-object v0, v0, LN/X;->a:LG/q0;

    iget-object v2, v1, LU/A;->a:Ljava/lang/Object;

    iget-object v3, p0, LN/x;->o:LG/n0;

    invoke-virtual {v0, v2, v3}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget v0, v1, LU/A;->b:I

    iget v1, v1, LU/A;->c:I

    invoke-virtual {v3, v0, v1}, LG/n0;->a(II)J

    move-result-wide v0

    invoke-static {v0, v1}, LJ/W;->S(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, LC/b;->J()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h1(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LG/P;

    iget-object v3, p0, LN/x;->r:LU/z;

    invoke-interface {v3, v2}, LU/z;->c(LG/P;)LU/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final i(Ljava/util/List;IJ)V
    .locals 6

    invoke-virtual {p0}, LN/x;->D1()V

    invoke-virtual {p0, p1}, LN/x;->h1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, LN/x;->v1(Ljava/util/ArrayList;IJZ)V

    return-void
.end method

.method public final i0(Landroid/view/SurfaceView;)V
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, LN/x;->D1()V

    if-eqz p1, :cond_1

    iget-object v0, p0, LN/x;->V:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, LN/x;->g1()V

    :cond_1
    return-void
.end method

.method public final i1(LN/a0;)LN/b0;
    .locals 7

    iget-object v0, p0, LN/x;->q0:LN/X;

    invoke-virtual {p0, v0}, LN/x;->l1(LN/X;)I

    move-result v0

    new-instance v1, LN/b0;

    iget-object v2, p0, LN/x;->q0:LN/X;

    iget-object v4, v2, LN/X;->a:LG/q0;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    iget-object v2, p0, LN/x;->l:LN/F;

    iget-object v6, v2, LN/F;->m:Landroid/os/Looper;

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, LN/b0;-><init>(LN/Z;LN/a0;LG/q0;ILandroid/os/Looper;)V

    return-object v1
.end method

.method public final isScrubbingModeEnabled()Z
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-boolean v0, p0, LN/x;->M:Z

    return v0
.end method

.method public final j()LG/Z;
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v0, v0, LN/X;->f:LN/k;

    return-object v0
.end method

.method public final j1(LN/X;)J
    .locals 7

    iget-object v0, p1, LN/X;->b:LU/A;

    iget-wide v1, p1, LN/X;->c:J

    iget-object v3, p1, LN/X;->a:LG/q0;

    invoke-virtual {v0}, LU/A;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, LN/X;->b:LU/A;

    iget-object v0, v0, LU/A;->a:Ljava/lang/Object;

    iget-object v4, p0, LN/x;->o:LG/n0;

    invoke-virtual {v3, v0, v4}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, LN/x;->l1(LN/X;)I

    move-result p1

    iget-object v0, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v0, LG/p0;

    const-wide/16 v1, 0x0

    invoke-virtual {v3, p1, v0, v1, v2}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object p1

    iget-wide v0, p1, LG/p0;->k:J

    invoke-static {v0, v1}, LJ/W;->S(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v3, v4, LG/n0;->e:J

    invoke-static {v3, v4}, LJ/W;->S(J)J

    move-result-wide v3

    invoke-static {v1, v2}, LJ/W;->S(J)J

    move-result-wide v0

    add-long/2addr v0, v3

    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, LN/x;->k1(LN/X;)J

    move-result-wide v0

    invoke-static {v0, v1}, LJ/W;->S(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v0, 0x0

    return v0
.end method

.method public final k0(III)V
    .locals 10

    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    if-ltz p3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, LF1/i;->g(Z)V

    iget-object v4, p0, LN/x;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v1, v7, p1

    sub-int v1, v5, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge p1, v5, :cond_2

    if-eq p1, v7, :cond_2

    if-ne p1, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, LN/x;->p0()LG/q0;

    move-result-object v1

    iget v2, p0, LN/x;->J:I

    add-int/2addr v2, v3

    iput v2, p0, LN/x;->J:I

    invoke-static {v4, p1, v7, v8}, LJ/W;->F(Ljava/util/ArrayList;III)V

    iget-object v2, p0, LN/x;->P:LU/c0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, LN/x;->P:LU/c0;

    new-instance v2, LN/d0;

    iget-object v3, p0, LN/x;->P:LU/c0;

    invoke-direct {v2, v4, v3}, LN/d0;-><init>(Ljava/util/ArrayList;LU/c0;)V

    iget-object v9, p0, LN/x;->q0:LN/X;

    invoke-virtual {p0, v9}, LN/x;->l1(LN/X;)I

    move-result v3

    iget-object v4, p0, LN/x;->q0:LN/X;

    invoke-virtual {p0, v4}, LN/x;->j1(LN/X;)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LN/x;->m1(LG/q0;LN/d0;IJ)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {p0, v9, v2, v1}, LN/x;->p1(LN/X;LG/q0;Landroid/util/Pair;)LN/X;

    move-result-object v1

    iget-object v2, p0, LN/x;->P:LU/c0;

    iget-object v3, p0, LN/x;->l:LN/F;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, LN/C;

    invoke-direct {v4, p1, v7, v8, v2}, LN/C;-><init>(IIILU/c0;)V

    iget-object v2, v3, LN/F;->k:LJ/O;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v4}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object v2

    invoke-virtual {v2}, LJ/N;->b()V

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v8}, LN/x;->B1(LN/X;IZIJIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final k1(LN/X;)J
    .locals 4

    iget-object v0, p1, LN/X;->a:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LN/x;->s0:J

    invoke-static {v0, v1}, LJ/W;->G(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-boolean v0, p1, LN/X;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LN/X;->l()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p1, LN/X;->s:J

    :goto_0
    iget-object v2, p1, LN/X;->b:LU/A;

    invoke-virtual {v2}, LU/A;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    return-wide v0

    :cond_2
    iget-object v2, p1, LN/X;->a:LG/q0;

    iget-object p1, p1, LN/X;->b:LU/A;

    iget-object p1, p1, LU/A;->a:Ljava/lang/Object;

    iget-object v3, p0, LN/x;->o:LG/n0;

    invoke-virtual {v2, p1, v3}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget-wide v2, v3, LG/n0;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final l(Z)V
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, LN/x;->A1(IZ)V

    return-void
.end method

.method public final l0()I
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget v0, v0, LN/X;->n:I

    return v0
.end method

.method public final l1(LN/X;)I
    .locals 2

    iget-object v0, p1, LN/X;->a:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, LN/x;->r0:I

    return p1

    :cond_0
    iget-object v0, p1, LN/X;->a:LG/q0;

    iget-object p1, p1, LN/X;->b:LU/A;

    iget-object p1, p1, LU/A;->a:Ljava/lang/Object;

    iget-object v1, p0, LN/x;->o:LG/n0;

    invoke-virtual {v0, p1, v1}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object p1

    iget p1, p1, LG/n0;->c:I

    return p1
.end method

.method public final m()Z
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v0, v0, LN/X;->b:LU/A;

    invoke-virtual {v0}, LU/A;->c()Z

    move-result v0

    return v0
.end method

.method public final m1(LG/q0;LN/d0;IJ)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, LG/q0;->p()Z

    move-result v1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    if-nez v1, :cond_3

    invoke-virtual {v7}, LG/q0;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, LC/b;->a:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, LG/p0;

    iget-object v13, v0, LN/x;->o:LG/n0;

    invoke-static/range {p4 .. p5}, LJ/W;->G(J)J

    move-result-wide v15

    move-object/from16 v11, p1

    move/from16 v14, p3

    invoke-virtual/range {v11 .. v16}, LG/q0;->i(LG/p0;LG/n0;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v5}, LN/d0;->b(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v10, :cond_1

    return-object v1

    :cond_1
    iget-object v1, v0, LC/b;->a:Ljava/lang/Object;

    check-cast v1, LG/p0;

    iget v3, v0, LN/x;->H:I

    iget-boolean v4, v0, LN/x;->I:Z

    iget-object v2, v0, LN/x;->o:LG/n0;

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, LN/F;->U(LG/p0;LG/n0;IZLjava/lang/Object;LG/q0;LG/q0;)I

    move-result v1

    if-eq v1, v10, :cond_2

    iget-object v2, v0, LC/b;->a:Ljava/lang/Object;

    check-cast v2, LG/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {v7, v1, v2, v3, v4}, LN/d0;->m(ILG/p0;J)LG/p0;

    iget-wide v2, v2, LG/p0;->k:J

    invoke-static {v2, v3}, LJ/W;->S(J)J

    move-result-wide v2

    invoke-virtual {v0, v7, v1, v2, v3}, LN/x;->q1(LG/q0;IJ)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {v0, v7, v10, v8, v9}, LN/x;->q1(LG/q0;IJ)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, LG/q0;->p()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v7}, LG/q0;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v10, p3

    :goto_2
    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-wide/from16 v8, p4

    :goto_3
    invoke-virtual {v0, v7, v10, v8, v9}, LN/x;->q1(LG/q0;IJ)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method public final n0(LG/w0;)V
    .locals 6

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->i:LW/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LN/x;->x0()LG/w0;

    move-result-object v1

    iget-boolean v2, p0, LN/x;->M:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, LG/w0;->I:Lu1/b0;

    iput-object v2, p0, LN/x;->N:Lu1/b0;

    iget-object v2, p0, LN/x;->O:LN/g0;

    iget-object v2, v2, LN/g0;->a:Lu1/b0;

    invoke-virtual {p1}, LG/w0;->a()LG/v0;

    move-result-object v3

    invoke-virtual {v2}, Lu1/K;->h()Lu1/R0;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, LG/v0;->l(IZ)LG/v0;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, LG/v0;->b()LG/w0;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_1
    check-cast v0, LW/o;

    iget-object v3, v0, LW/o;->e:LW/j;

    invoke-virtual {v2, v3}, LG/w0;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, v2, LW/j;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, LW/j;

    invoke-virtual {v0, v3}, LW/o;->m(LW/j;)V

    :cond_2
    new-instance v3, LW/i;

    iget-object v4, v0, LW/o;->e:LW/j;

    invoke-direct {v3, v4}, LW/i;-><init>(LW/j;)V

    invoke-virtual {v3, v2}, LG/v0;->e(LG/w0;)V

    new-instance v2, LW/j;

    invoke-direct {v2, v3}, LW/j;-><init>(LW/i;)V

    invoke-virtual {v0, v2}, LW/o;->m(LW/j;)V

    :cond_3
    invoke-virtual {v1, p1}, LG/w0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, LM0/d0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LM0/d0;-><init>(LG/w0;I)V

    iget-object p1, p0, LN/x;->m:LJ/t;

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, LJ/t;->f(ILJ/q;)V

    :cond_4
    return-void
.end method

.method public final o()J
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    iget-wide v0, p0, LN/x;->n0:J

    return-wide v0
.end method

.method public final o0(LG/e0;)V
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LN/x;->m:LJ/t;

    invoke-virtual {v0, p1}, LJ/t;->e(LG/e0;)V

    return-void
.end method

.method public final p0()LG/q0;
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v0, v0, LN/X;->a:LG/q0;

    return-object v0
.end method

.method public final p1(LN/X;LG/q0;Landroid/util/Pair;)LN/X;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    invoke-static {v3}, LF1/i;->g(Z)V

    move-object/from16 v3, p1

    iget-object v6, v3, LN/X;->a:LG/q0;

    invoke-virtual/range {p0 .. p1}, LN/x;->j1(LN/X;)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p2}, LN/X;->j(LG/q0;)LN/X;

    move-result-object v9

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v10, LN/X;->u:LU/A;

    iget-wide v1, v0, LN/x;->s0:J

    invoke-static {v1, v2}, LJ/W;->G(J)J

    move-result-wide v11

    sget-object v19, LU/l0;->d:LU/l0;

    iget-object v1, v0, LN/x;->b:LW/t;

    sget-object v21, Lu1/C0;->i:Lu1/C0;

    const-wide/16 v17, 0x0

    move-wide v13, v11

    move-wide v15, v11

    move-object/from16 v20, v1

    invoke-virtual/range {v9 .. v21}, LN/X;->d(LU/A;JJJJLU/l0;LW/t;Ljava/util/List;)LN/X;

    move-result-object v1

    invoke-virtual {v1, v10}, LN/X;->c(LU/A;)LN/X;

    move-result-object v1

    iget-wide v2, v1, LN/X;->s:J

    iput-wide v2, v1, LN/X;->q:J

    return-object v1

    :cond_2
    iget-object v3, v9, LN/X;->b:LU/A;

    iget-object v3, v3, LU/A;->a:Ljava/lang/Object;

    sget-object v10, LJ/W;->a:Ljava/lang/String;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v11, LU/A;

    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v11, v12}, LU/A;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v11, v9, LN/X;->b:LU/A;

    :goto_2
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v7, v8}, LJ/W;->G(J)J

    move-result-wide v7

    invoke-virtual {v6}, LG/q0;->p()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, LN/x;->o:LG/n0;

    invoke-virtual {v6, v3, v2}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v2

    iget-wide v14, v2, LG/n0;->e:J

    sub-long/2addr v7, v14

    if-eqz v10, :cond_4

    sub-long v14, v7, v12

    const-wide/16 v16, 0x1

    cmp-long v2, v14, v16

    if-nez v2, :cond_4

    iget-object v2, v0, LN/x;->o:LG/n0;

    invoke-virtual {v6, v3, v2}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v2

    iget-wide v2, v2, LG/n0;->d:J

    cmp-long v2, v7, v2

    if-nez v2, :cond_4

    sub-long v7, v7, v16

    :cond_4
    if-eqz v10, :cond_5

    cmp-long v2, v12, v7

    if-gez v2, :cond_6

    :cond_5
    move v1, v10

    move-object v10, v11

    move-wide v11, v12

    goto/16 :goto_6

    :cond_6
    if-nez v2, :cond_a

    iget-object v2, v9, LN/X;->k:LU/A;

    iget-object v2, v2, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget-object v3, v0, LN/x;->o:LG/n0;

    invoke-virtual {v1, v2, v3, v4}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v2

    iget v2, v2, LG/n0;->c:I

    iget-object v3, v11, LU/A;->a:Ljava/lang/Object;

    iget-object v4, v0, LN/x;->o:LG/n0;

    invoke-virtual {v1, v3, v4}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v3

    iget v3, v3, LG/n0;->c:I

    if-eq v2, v3, :cond_7

    goto :goto_3

    :cond_7
    return-object v9

    :cond_8
    :goto_3
    iget-object v2, v11, LU/A;->a:Ljava/lang/Object;

    iget-object v3, v0, LN/x;->o:LG/n0;

    invoke-virtual {v1, v2, v3}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    invoke-virtual {v11}, LU/A;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, LN/x;->o:LG/n0;

    iget v2, v11, LU/A;->b:I

    iget v3, v11, LU/A;->c:I

    invoke-virtual {v1, v2, v3}, LG/n0;->a(II)J

    move-result-wide v1

    :goto_4
    move-object v10, v11

    goto :goto_5

    :cond_9
    iget-object v1, v0, LN/x;->o:LG/n0;

    iget-wide v1, v1, LG/n0;->d:J

    goto :goto_4

    :goto_5
    iget-wide v11, v9, LN/X;->s:J

    iget-wide v13, v9, LN/X;->s:J

    iget-wide v3, v9, LN/X;->d:J

    iget-wide v5, v9, LN/X;->s:J

    sub-long v17, v1, v5

    iget-object v5, v9, LN/X;->h:LU/l0;

    iget-object v6, v9, LN/X;->i:LW/t;

    iget-object v7, v9, LN/X;->j:Ljava/util/List;

    move-wide v15, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v9 .. v21}, LN/X;->d(LU/A;JJJJLU/l0;LW/t;Ljava/util/List;)LN/X;

    move-result-object v3

    invoke-virtual {v3, v10}, LN/X;->c(LU/A;)LN/X;

    move-result-object v3

    iput-wide v1, v3, LN/X;->q:J

    return-object v3

    :cond_a
    move-object v10, v11

    invoke-virtual {v10}, LU/A;->c()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, LF1/i;->o(Z)V

    iget-wide v1, v9, LN/X;->r:J

    sub-long v3, v12, v7

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    iget-wide v1, v9, LN/X;->q:J

    iget-object v3, v9, LN/X;->k:LU/A;

    iget-object v4, v9, LN/X;->b:LU/A;

    invoke-virtual {v3, v4}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-long v1, v12, v17

    :cond_b
    iget-object v3, v9, LN/X;->h:LU/l0;

    iget-object v4, v9, LN/X;->i:LW/t;

    iget-object v5, v9, LN/X;->j:Ljava/util/List;

    move-wide v11, v12

    move-wide v13, v11

    move-wide v15, v11

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v9 .. v21}, LN/X;->d(LU/A;JJJJLU/l0;LW/t;Ljava/util/List;)LN/X;

    move-result-object v3

    iput-wide v1, v3, LN/X;->q:J

    return-object v3

    :goto_6
    invoke-virtual {v10}, LU/A;->c()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, LF1/i;->o(Z)V

    if-nez v1, :cond_c

    sget-object v2, LU/l0;->d:LU/l0;

    :goto_7
    move-object/from16 v19, v2

    goto :goto_8

    :cond_c
    iget-object v2, v9, LN/X;->h:LU/l0;

    goto :goto_7

    :goto_8
    if-nez v1, :cond_d

    iget-object v2, v0, LN/x;->b:LW/t;

    :goto_9
    move-object/from16 v20, v2

    goto :goto_a

    :cond_d
    iget-object v2, v9, LN/X;->i:LW/t;

    goto :goto_9

    :goto_a
    if-nez v1, :cond_e

    sget-object v1, Lu1/P;->f:Lu1/N;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    :goto_b
    move-object/from16 v21, v1

    goto :goto_c

    :cond_e
    iget-object v1, v9, LN/X;->j:Ljava/util/List;

    goto :goto_b

    :goto_c
    const-wide/16 v17, 0x0

    move-wide v13, v11

    move-wide v15, v11

    invoke-virtual/range {v9 .. v21}, LN/X;->d(LU/A;JJJJLU/l0;LW/t;Ljava/util/List;)LN/X;

    move-result-object v1

    invoke-virtual {v1, v10}, LN/X;->c(LU/A;)LN/X;

    move-result-object v1

    iput-wide v11, v1, LN/X;->q:J

    return-object v1
.end method

.method public final q0(ILjava/util/List;I)V
    .locals 10

    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz p1, :cond_0

    if-lt p3, p1, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-static {v6}, LF1/i;->g(Z)V

    iget-object v6, p0, LN/x;->p:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le p1, v7, :cond_1

    return-void

    :cond_1
    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v7, v3, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_2

    goto :goto_2

    :cond_2
    move v7, p1

    :goto_1
    if-ge v7, v3, :cond_6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LN/u;

    iget-object v8, v8, LN/u;->b:LU/v;

    sub-int v9, v7, p1

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LG/P;

    iget-object v8, v8, LU/n0;->k:LU/a;

    invoke-virtual {v8, v9}, LU/a;->a(LG/P;)Z

    move-result v8

    if-nez v8, :cond_5

    :goto_2
    invoke-virtual {p0, p2}, LN/x;->h1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, LN/x;->q0:LN/X;

    iget-object v2, v2, LN/X;->a:LG/q0;

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, LN/x;->r0:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LN/x;->v1(Ljava/util/ArrayList;IJZ)V

    return-void

    :cond_4
    iget-object v2, p0, LN/x;->q0:LN/X;

    invoke-virtual {p0, v2, v3, v1}, LN/x;->e1(LN/X;ILjava/util/ArrayList;)LN/X;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v3}, LN/x;->s1(LN/X;II)LN/X;

    move-result-object v1

    iget-object v2, v1, LN/X;->b:LU/A;

    iget-object v2, v2, LU/A;->a:Ljava/lang/Object;

    iget-object v3, p0, LN/x;->q0:LN/X;

    iget-object v3, v3, LN/X;->b:LU/A;

    iget-object v3, v3, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1}, LN/x;->k1(LN/X;)J

    move-result-wide v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, LN/x;->B1(LN/X;IZIJIZ)V

    return-void

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    iget v1, p0, LN/x;->J:I

    add-int/2addr v1, v5

    iput v1, p0, LN/x;->J:I

    iget-object v1, p0, LN/x;->l:LN/F;

    iget-object v1, v1, LN/F;->k:LJ/O;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJ/O;->d()LJ/N;

    move-result-object v4

    iget-object v1, v1, LJ/O;->a:Landroid/os/Handler;

    const/16 v5, 0x1b

    invoke-virtual {v1, v5, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v4, LJ/N;->a:Landroid/os/Message;

    invoke-virtual {v4}, LJ/N;->b()V

    move v1, p1

    :goto_4
    if-ge v1, v3, :cond_8

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN/u;

    iget-object v5, v4, LN/u;->c:LG/q0;

    sub-int v7, v1, p1

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LG/P;

    instance-of v9, v5, LU/k0;

    if-eqz v9, :cond_7

    new-instance v9, LU/k0;

    check-cast v5, LU/k0;

    iget-object v5, v5, LU/o;->e:LG/q0;

    invoke-direct {v9, v5, v7}, LU/k0;-><init>(LG/q0;LG/P;)V

    goto :goto_5

    :cond_7
    new-instance v9, LU/k0;

    invoke-direct {v9, v5, v7}, LU/k0;-><init>(LG/q0;LG/P;)V

    :goto_5
    iput-object v9, v4, LN/u;->c:LG/q0;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    new-instance v1, LN/d0;

    iget-object v2, p0, LN/x;->P:LU/c0;

    invoke-direct {v1, v6, v2}, LN/d0;-><init>(Ljava/util/ArrayList;LU/c0;)V

    iget-object v2, p0, LN/x;->q0:LN/X;

    invoke-virtual {v2, v1}, LN/X;->j(LG/q0;)LN/X;

    move-result-object v1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, LN/x;->B1(LN/X;IZIJIZ)V

    return-void
.end method

.method public final q1(LG/q0;IJ)Landroid/util/Pair;
    .locals 6

    invoke-virtual {p1}, LG/q0;->p()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, LN/x;->r0:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, LN/x;->s0:J

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, LG/q0;->o()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, p2

    goto :goto_2

    :cond_3
    :goto_1
    iget-boolean p2, p0, LN/x;->I:Z

    invoke-virtual {p1, p2}, LG/q0;->a(Z)I

    move-result p2

    iget-object p3, p0, LC/b;->a:Ljava/lang/Object;

    check-cast p3, LG/p0;

    invoke-virtual {p1, p2, p3, v1, v2}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object p3

    iget-wide p3, p3, LG/p0;->k:J

    invoke-static {p3, p4}, LJ/W;->S(J)J

    move-result-wide p3

    goto :goto_0

    :goto_2
    iget-object p2, p0, LC/b;->a:Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, LG/p0;

    iget-object v2, p0, LN/x;->o:LG/n0;

    invoke-static {p3, p4}, LJ/W;->G(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, LG/q0;->i(LG/p0;LG/n0;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final r()J
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    invoke-virtual {p0, v0}, LN/x;->j1(LN/X;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final r0()Z
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v0, 0x0

    return v0
.end method

.method public final r1(II)V
    .locals 3

    iget-object v0, p0, LN/x;->a0:LJ/E;

    iget v1, v0, LJ/E;->a:I

    if-ne p1, v1, :cond_1

    iget v0, v0, LJ/E;->b:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, LJ/E;

    invoke-direct {v0, p1, p2}, LJ/E;-><init>(II)V

    iput-object v0, p0, LN/x;->a0:LJ/E;

    new-instance v0, LM0/H;

    const/4 v1, 0x5

    invoke-direct {v0, p1, p2, v1}, LM0/H;-><init>(III)V

    iget-object v1, p0, LN/x;->m:LJ/t;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v0}, LJ/t;->f(ILJ/q;)V

    new-instance v0, LJ/E;

    invoke-direct {v0, p1, p2}, LJ/E;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {p0, v0, p1, p2}, LN/x;->u1(Ljava/lang/Object;II)V

    return-void
.end method

.method public final s()J
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-wide v0, v0, LN/X;->r:J

    invoke-static {v0, v1}, LJ/W;->S(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s1(LN/X;II)LN/X;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p1}, LN/x;->l1(LN/X;)I

    move-result v3

    invoke-virtual/range {p0 .. p1}, LN/x;->j1(LN/X;)J

    move-result-wide v4

    iget-object v14, v6, LN/X;->a:LG/q0;

    iget v1, v0, LN/x;->J:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    iput v1, v0, LN/x;->J:I

    add-int/lit8 v1, v8, -0x1

    :goto_0
    iget-object v2, v0, LN/x;->p:Ljava/util/ArrayList;

    if-lt v1, v7, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, LN/x;->P:LU/c0;

    sub-int v10, v8, v7

    iget-object v11, v1, LU/c0;->b:[I

    array-length v12, v11

    sub-int/2addr v12, v10

    new-array v12, v12, [I

    const/4 v13, 0x0

    move v15, v13

    :goto_1
    array-length v9, v11

    if-ge v13, v9, :cond_3

    aget v9, v11, v13

    if-lt v9, v7, :cond_1

    if-ge v9, v8, :cond_1

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_1
    sub-int v16, v13, v15

    if-lt v9, v7, :cond_2

    sub-int/2addr v9, v10

    :cond_2
    aput v9, v12, v16

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    new-instance v9, LU/c0;

    new-instance v10, Ljava/util/Random;

    iget-object v1, v1, LU/c0;->a:Ljava/util/Random;

    move v11, v3

    move-wide/from16 v16, v4

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v10, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v9, v12, v10}, LU/c0;-><init>([ILjava/util/Random;)V

    iput-object v9, v0, LN/x;->P:LU/c0;

    new-instance v15, LN/d0;

    iget-object v1, v0, LN/x;->P:LU/c0;

    invoke-direct {v15, v2, v1}, LN/d0;-><init>(Ljava/util/ArrayList;LU/c0;)V

    move v3, v11

    move-object v1, v14

    move-object v2, v15

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, LN/x;->m1(LG/q0;LN/d0;IJ)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v0, v6, v15, v4}, LN/x;->p1(LN/X;LG/q0;Landroid/util/Pair;)LN/X;

    move-result-object v1

    iget v2, v1, LN/X;->e:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x4

    if-eq v2, v4, :cond_4

    if-lt v3, v7, :cond_4

    if-ge v3, v8, :cond_4

    iget-object v2, v6, LN/X;->b:LU/A;

    iget-object v13, v2, LU/A;->a:Ljava/lang/Object;

    iget-object v2, v0, LC/b;->a:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, LG/p0;

    iget v11, v0, LN/x;->H:I

    iget-boolean v12, v0, LN/x;->I:Z

    iget-object v10, v0, LN/x;->o:LG/n0;

    invoke-static/range {v9 .. v15}, LN/F;->U(LG/p0;LG/n0;IZLjava/lang/Object;LG/q0;LG/q0;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    invoke-static {v1, v4}, LN/x;->o1(LN/X;I)LN/X;

    move-result-object v1

    :cond_4
    iget-object v2, v0, LN/x;->P:LU/c0;

    iget-object v3, v0, LN/x;->l:LN/F;

    iget-object v3, v3, LN/F;->k:LJ/O;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJ/O;->d()LJ/N;

    move-result-object v4

    iget-object v3, v3, LJ/O;->a:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v3, v5, v7, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iput-object v2, v4, LJ/N;->a:Landroid/os/Message;

    invoke-virtual {v4}, LJ/N;->b()V

    return-object v1
.end method

.method public final setImageOutput(Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v0, 0x4

    const/16 v1, 0xf

    invoke-virtual {p0, p1, v0, v1}, LN/x;->u1(Ljava/lang/Object;II)V

    return-void
.end method

.method public final setScrubbingModeEnabled(Z)V
    .locals 6

    invoke-virtual {p0}, LN/x;->D1()V

    iget-boolean v0, p0, LN/x;->M:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, LN/x;->M:Z

    iget-object v0, p0, LN/x;->O:LN/g0;

    iget-object v1, v0, LN/g0;->a:Lu1/b0;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, LN/x;->i:LW/s;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, LW/o;

    iget-object v2, v1, LW/o;->e:LW/j;

    if-eqz p1, :cond_2

    iget-object v3, v2, LG/w0;->I:Lu1/b0;

    iput-object v3, p0, LN/x;->N:Lu1/b0;

    iget-object v0, v0, LN/g0;->a:Lu1/b0;

    invoke-virtual {v2}, LW/j;->a()LG/v0;

    move-result-object v3

    invoke-virtual {v0}, Lu1/K;->h()Lu1/R0;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, LG/v0;->l(IZ)LG/v0;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, LG/v0;->b()LG/w0;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LW/i;

    invoke-direct {v0, v2}, LW/i;-><init>(LW/j;)V

    iget-object v3, p0, LN/x;->N:Lu1/b0;

    invoke-virtual {v0, v3}, LW/i;->m(Ljava/util/Set;)V

    new-instance v3, LW/j;

    invoke-direct {v3, v0}, LW/j;-><init>(LW/i;)V

    const/4 v0, 0x0

    iput-object v0, p0, LN/x;->N:Lu1/b0;

    move-object v0, v3

    :goto_1
    invoke-virtual {v0, v2}, LG/w0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    instance-of v2, v0, LW/j;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, LW/j;

    invoke-virtual {v1, v2}, LW/o;->m(LW/j;)V

    :cond_3
    new-instance v2, LW/i;

    iget-object v3, v1, LW/o;->e:LW/j;

    invoke-direct {v2, v3}, LW/i;-><init>(LW/j;)V

    invoke-virtual {v2, v0}, LG/v0;->e(LG/w0;)V

    new-instance v0, LW/j;

    invoke-direct {v0, v2}, LW/j;-><init>(LW/i;)V

    invoke-virtual {v1, v0}, LW/o;->m(LW/j;)V

    :cond_4
    iget-object v0, p0, LN/x;->l:LN/F;

    iget-object v0, v0, LN/F;->k:LJ/O;

    const/16 v1, 0x24

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object p1

    invoke-virtual {p1}, LJ/N;->b()V

    iget-object p1, p0, LN/x;->q0:LN/X;

    iget-boolean v0, p1, LN/X;->l:Z

    iget p1, p1, LN/X;->m:I

    invoke-virtual {p0, p1, v0}, LN/x;->A1(IZ)V

    return-void
.end method

.method public final t0()V
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    iget v0, p0, LN/x;->c0:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, LN/x;->J0(F)V

    :cond_0
    return-void
.end method

.method public final t1()V
    .locals 4

    iget-object v0, p0, LN/x;->W:La0/l;

    iget-object v1, p0, LN/x;->w:LN/s;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN/x;->x:LN/t;

    invoke-virtual {p0, v0}, LN/x;->i1(LN/a0;)LN/b0;

    move-result-object v0

    iget-boolean v3, v0, LN/b0;->f:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, LF1/i;->o(Z)V

    const/16 v3, 0x2710

    iput v3, v0, LN/b0;->c:I

    iget-boolean v3, v0, LN/b0;->f:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, LF1/i;->o(Z)V

    iput-object v2, v0, LN/b0;->d:Ljava/lang/Object;

    invoke-virtual {v0}, LN/b0;->b()V

    iget-object v0, p0, LN/x;->W:La0/l;

    iget-object v0, v0, La0/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v2, p0, LN/x;->W:La0/l;

    :cond_0
    iget-object v0, p0, LN/x;->Y:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eq v0, v1, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v3, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v3}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LN/x;->Y:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    iput-object v2, p0, LN/x;->Y:Landroid/view/TextureView;

    :cond_2
    iget-object v0, p0, LN/x;->V:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v2, p0, LN/x;->V:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method public final u()V
    .locals 4

    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/x;->y1(LN/k;)V

    new-instance v0, LI/c;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    iget-object v2, p0, LN/x;->q0:LN/X;

    iget-wide v2, v2, LN/X;->s:J

    invoke-direct {v0, v1, v2, v3}, LI/c;-><init>(Ljava/util/List;J)V

    iput-object v0, p0, LN/x;->f0:LI/c;

    return-void
.end method

.method public final u1(Ljava/lang/Object;II)V
    .locals 6

    iget-object v0, p0, LN/x;->g:[LN/a;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    if-eq p2, v4, :cond_0

    iget v4, v5, LN/a;->f:I

    if-ne v4, p2, :cond_1

    :cond_0
    invoke-virtual {p0, v5}, LN/x;->i1(LN/a0;)LN/b0;

    move-result-object v4

    iget-boolean v5, v4, LN/b0;->f:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, LF1/i;->o(Z)V

    iput p3, v4, LN/b0;->c:I

    iget-boolean v5, v4, LN/b0;->f:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, LF1/i;->o(Z)V

    iput-object p1, v4, LN/b0;->d:Ljava/lang/Object;

    invoke-virtual {v4}, LN/b0;->b()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, LN/x;->h:[LN/a;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    if-eqz v3, :cond_4

    if-eq p2, v4, :cond_3

    iget v5, v3, LN/a;->f:I

    if-ne v5, p2, :cond_4

    :cond_3
    invoke-virtual {p0, v3}, LN/x;->i1(LN/a0;)LN/b0;

    move-result-object v3

    iget-boolean v5, v3, LN/b0;->f:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, LF1/i;->o(Z)V

    iput p3, v3, LN/b0;->c:I

    iget-boolean v5, v3, LN/b0;->f:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, LF1/i;->o(Z)V

    iput-object p1, v3, LN/b0;->d:Ljava/lang/Object;

    invoke-virtual {v3}, LN/b0;->b()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final v(ILjava/util/List;)V
    .locals 9

    invoke-virtual {p0}, LN/x;->D1()V

    invoke-virtual {p0, p2}, LN/x;->h1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, LN/x;->D1()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-static {v5}, LF1/i;->g(Z)V

    iget-object v5, p0, LN/x;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v5, p0, LN/x;->q0:LN/X;

    iget-object v5, v5, LN/X;->a:LG/q0;

    invoke-virtual {v5}, LG/q0;->p()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v1, p0, LN/x;->r0:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {p0}, LN/x;->D1()V

    move-object v1, v2

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LN/x;->v1(Ljava/util/ArrayList;IJZ)V

    return-void

    :cond_2
    iget-object v3, p0, LN/x;->q0:LN/X;

    invoke-virtual {p0, v3, v1, v2}, LN/x;->e1(LN/X;ILjava/util/ArrayList;)LN/X;

    move-result-object v1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, LN/x;->B1(LN/X;IZIJIZ)V

    return-void
.end method

.method public final v0()V
    .locals 0

    invoke-virtual {p0}, LN/x;->D1()V

    return-void
.end method

.method public final v1(Ljava/util/ArrayList;IJZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, LN/x;->q0:LN/X;

    invoke-virtual {v0, v2}, LN/x;->l1(LN/X;)I

    move-result v2

    invoke-virtual {v0}, LN/x;->O0()J

    move-result-wide v3

    iget v5, v0, LN/x;->J:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v0, LN/x;->J:I

    iget-object v5, v0, LN/x;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    move v7, v13

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_0

    new-instance v9, LN/V;

    move-object/from16 v10, p1

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LU/a;

    iget-boolean v12, v0, LN/x;->q:Z

    invoke-direct {v9, v11, v12}, LN/V;-><init>(LU/a;Z)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, LN/u;

    iget-object v12, v9, LN/V;->b:Ljava/lang/Object;

    iget-object v9, v9, LN/V;->a:LU/v;

    invoke-direct {v11, v12, v9}, LN/u;-><init>(Ljava/lang/Object;LU/v;)V

    invoke-virtual {v5, v7, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, v0, LN/x;->P:LU/c0;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, LU/c0;

    new-instance v11, Ljava/util/Random;

    iget-object v7, v7, LU/c0;->a:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextLong()J

    move-result-wide v14

    invoke-direct {v11, v14, v15}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v10, v11}, LU/c0;-><init>(Ljava/util/Random;)V

    invoke-virtual {v10, v13, v9}, LU/c0;->a(II)LU/c0;

    move-result-object v7

    iput-object v7, v0, LN/x;->P:LU/c0;

    new-instance v7, LN/d0;

    iget-object v9, v0, LN/x;->P:LU/c0;

    invoke-direct {v7, v5, v9}, LN/d0;-><init>(Ljava/util/ArrayList;LU/c0;)V

    invoke-virtual {v7}, LG/q0;->p()Z

    move-result v5

    iget v9, v7, LN/d0;->g:I

    if-nez v5, :cond_2

    if-ge v1, v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, LG/A;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_2
    :goto_1
    const/4 v5, -0x1

    if-eqz p5, :cond_3

    iget-boolean v1, v0, LN/x;->I:Z

    invoke-virtual {v7, v1}, LN/d0;->a(Z)I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    move v10, v1

    goto :goto_3

    :cond_3
    if-ne v1, v5, :cond_4

    move v10, v2

    move-wide v2, v3

    goto :goto_3

    :cond_4
    move-wide/from16 v2, p3

    goto :goto_2

    :goto_3
    iget-object v1, v0, LN/x;->q0:LN/X;

    invoke-virtual {v0, v7, v10, v2, v3}, LN/x;->q1(LG/q0;IJ)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v0, v1, v7, v4}, LN/x;->p1(LN/X;LG/q0;Landroid/util/Pair;)LN/X;

    move-result-object v1

    iget v4, v1, LN/X;->e:I

    if-ne v4, v6, :cond_5

    move v4, v6

    goto :goto_5

    :cond_5
    invoke-virtual {v7}, LG/q0;->p()Z

    move-result v7

    const/4 v11, 0x4

    if-eqz v7, :cond_6

    :goto_4
    move v4, v11

    goto :goto_5

    :cond_6
    if-ne v10, v5, :cond_7

    goto :goto_5

    :cond_7
    if-lt v10, v9, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x2

    :goto_5
    invoke-static {v1, v4}, LN/x;->o1(LN/X;I)LN/X;

    move-result-object v1

    invoke-static {v2, v3}, LJ/W;->G(J)J

    move-result-wide v11

    iget-object v9, v0, LN/x;->P:LU/c0;

    iget-object v2, v0, LN/x;->l:LN/F;

    iget-object v2, v2, LN/F;->k:LJ/O;

    new-instance v7, LN/B;

    invoke-direct/range {v7 .. v12}, LN/B;-><init>(Ljava/util/ArrayList;LU/c0;IJ)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v7}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object v2

    invoke-virtual {v2}, LJ/N;->b()V

    iget-object v2, v0, LN/x;->q0:LN/X;

    iget-object v2, v2, LN/X;->b:LU/A;

    iget-object v2, v2, LU/A;->a:Ljava/lang/Object;

    iget-object v3, v1, LN/X;->b:LU/A;

    iget-object v3, v3, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, LN/x;->q0:LN/X;

    iget-object v2, v2, LN/X;->a:LG/q0;

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v2

    if-nez v2, :cond_9

    move v3, v6

    goto :goto_6

    :cond_9
    move v3, v13

    :goto_6
    invoke-virtual {v0, v1}, LN/x;->k1(LN/X;)J

    move-result-wide v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v8}, LN/x;->B1(LN/X;IZIJIZ)V

    return-void
.end method

.method public final w()LG/c0;
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->Q:LG/c0;

    return-object v0
.end method

.method public final w0()Z
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-boolean v0, p0, LN/x;->I:Z

    return v0
.end method

.method public final w1(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LN/x;->X:Z

    iput-object p1, p0, LN/x;->V:Landroid/view/SurfaceHolder;

    iget-object v1, p0, LN/x;->w:LN/s;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, LN/x;->V:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LN/x;->V:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, LN/x;->r1(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, v0}, LN/x;->r1(II)V

    return-void
.end method

.method public final x()V
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    iget v0, p0, LN/x;->c0:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, LN/x;->d0:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, LN/x;->J0(F)V

    :cond_0
    return-void
.end method

.method public final x0()LG/w0;
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->i:LW/s;

    check-cast v0, LW/o;

    iget-object v0, v0, LW/o;->e:LW/j;

    iget-boolean v1, p0, LN/x;->M:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LW/i;

    invoke-direct {v1, v0}, LW/i;-><init>(LW/j;)V

    iget-object v0, p0, LN/x;->N:Lu1/b0;

    invoke-virtual {v1, v0}, LW/i;->m(Ljava/util/Set;)V

    new-instance v0, LW/j;

    invoke-direct {v0, v1}, LW/j;-><init>(LW/i;)V

    :cond_0
    return-object v0
.end method

.method public final x1(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, LN/x;->T:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v4, p0, LN/x;->B:J

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    iget-object v6, p0, LN/x;->l:LN/F;

    iget-boolean v7, v6, LN/F;->N:Z

    if-nez v7, :cond_3

    iget-object v7, v6, LN/F;->m:Landroid/os/Looper;

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, LJ/j;

    iget-object v8, v6, LN/F;->s:LJ/M;

    invoke-direct {v7, v8}, LJ/j;-><init>(LJ/M;)V

    iget-object v6, v6, LN/F;->k:LJ/O;

    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, p1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v9, 0x1e

    invoke-virtual {v6, v9, v8}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object v6

    invoke-virtual {v6}, LJ/N;->b()V

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    invoke-virtual {v7, v4, v5}, LJ/j;->c(J)Z

    move-result v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, LN/x;->T:Ljava/lang/Object;

    iget-object v2, p0, LN/x;->U:Landroid/view/Surface;

    if-ne v0, v2, :cond_4

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, LN/x;->U:Landroid/view/Surface;

    :cond_4
    iput-object p1, p0, LN/x;->T:Ljava/lang/Object;

    if-nez v1, :cond_5

    new-instance p1, LC1/i;

    const-string v0, "Detaching surface timed out."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-instance v0, LN/k;

    const/4 v1, 0x2

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, p1, v2}, LN/k;-><init>(ILjava/lang/Exception;I)V

    invoke-virtual {p0, v0}, LN/x;->y1(LN/k;)V

    :cond_5
    return-void
.end method

.method public final y()J
    .locals 2

    invoke-virtual {p0}, LN/x;->D1()V

    invoke-virtual {p0}, LN/x;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v1, v0, LN/X;->k:LU/A;

    iget-object v0, v0, LN/X;->b:LU/A;

    invoke-virtual {v1, v0}, LU/A;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-wide v0, v0, LN/X;->q:J

    invoke-static {v0, v1}, LJ/W;->S(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, LN/x;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0}, LN/x;->z0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final y1(LN/k;)V
    .locals 11

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v1, v0, LN/X;->b:LU/A;

    invoke-virtual {v0, v1}, LN/X;->c(LU/A;)LN/X;

    move-result-object v0

    iget-wide v1, v0, LN/X;->s:J

    iput-wide v1, v0, LN/X;->q:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, LN/X;->r:J

    const/4 v1, 0x1

    invoke-static {v0, v1}, LN/x;->o1(LN/X;I)LN/X;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, LN/X;->f(LN/k;)LN/X;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget p1, p0, LN/x;->J:I

    add-int/2addr p1, v1

    iput p1, p0, LN/x;->J:I

    iget-object p1, p0, LN/x;->l:LN/F;

    iget-object p1, p1, LN/F;->k:LJ/O;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, LJ/O;->a(I)LJ/N;

    move-result-object p1

    invoke-virtual {p1}, LJ/N;->b()V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, LN/x;->B1(LN/X;IZIJIZ)V

    return-void
.end method

.method public final z()Z
    .locals 1

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-boolean v0, v0, LN/X;->l:Z

    return v0
.end method

.method public final z0()J
    .locals 5

    invoke-virtual {p0}, LN/x;->D1()V

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v0, v0, LN/X;->a:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LN/x;->s0:J

    return-wide v0

    :cond_0
    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v1, v0, LN/X;->k:LU/A;

    iget-wide v1, v1, LU/A;->d:J

    iget-object v3, v0, LN/X;->b:LU/A;

    iget-wide v3, v3, LU/A;->d:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v0, v0, LN/X;->a:LG/q0;

    invoke-virtual {p0}, LN/x;->V()I

    move-result v1

    iget-object v2, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v2, LG/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-wide v0, v0, LG/p0;->l:J

    invoke-static {v0, v1}, LJ/W;->S(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-wide v0, v0, LN/X;->q:J

    iget-object v2, p0, LN/x;->q0:LN/X;

    iget-object v2, v2, LN/X;->k:LU/A;

    invoke-virtual {v2}, LU/A;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, LN/x;->q0:LN/X;

    iget-object v1, v0, LN/X;->a:LG/q0;

    iget-object v0, v0, LN/X;->k:LU/A;

    iget-object v0, v0, LU/A;->a:Ljava/lang/Object;

    iget-object v2, p0, LN/x;->o:LG/n0;

    invoke-virtual {v1, v0, v2}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v0

    iget-object v1, p0, LN/x;->q0:LN/X;

    iget-object v1, v1, LN/X;->k:LU/A;

    iget v1, v1, LU/A;->b:I

    invoke-virtual {v0, v1}, LG/n0;->d(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    iget-wide v0, v0, LG/n0;->d:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    :cond_3
    :goto_0
    iget-object v2, p0, LN/x;->q0:LN/X;

    iget-object v3, v2, LN/X;->a:LG/q0;

    iget-object v2, v2, LN/X;->k:LU/A;

    iget-object v2, v2, LU/A;->a:Ljava/lang/Object;

    iget-object v4, p0, LN/x;->o:LG/n0;

    invoke-virtual {v3, v2, v4}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget-wide v2, v4, LG/n0;->e:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, LJ/W;->S(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final z1()V
    .locals 14

    iget-object v0, p0, LN/x;->Q:LG/c0;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    iget-object v1, p0, LN/x;->f:LN/x;

    invoke-virtual {v1}, LN/x;->m()Z

    move-result v2

    invoke-virtual {v1}, LC/b;->Q0()Z

    move-result v3

    invoke-virtual {v1}, LC/b;->Z0()Z

    move-result v4

    invoke-virtual {v1}, LC/b;->Y0()Z

    move-result v5

    invoke-virtual {v1}, LC/b;->V0()Z

    move-result v6

    invoke-virtual {v1}, LC/b;->T0()Z

    move-result v7

    invoke-virtual {v1}, LN/x;->p0()LG/q0;

    move-result-object v1

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v1

    new-instance v8, LG/b0;

    invoke-direct {v8}, LG/b0;-><init>()V

    iget-object v9, v8, LG/b0;->a:LE/b;

    iget-object v10, p0, LN/x;->c:LG/c0;

    iget-object v10, v10, LG/c0;->a:LG/u;

    invoke-virtual {v9, v10}, LE/b;->b(LG/u;)V

    xor-int/lit8 v9, v2, 0x1

    const/4 v10, 0x4

    invoke-virtual {v8, v10, v9}, LG/b0;->b(IZ)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    move v12, v10

    :goto_0
    const/4 v13, 0x5

    invoke-virtual {v8, v13, v12}, LG/b0;->b(IZ)V

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    move v12, v11

    goto :goto_1

    :cond_1
    move v12, v10

    :goto_1
    const/4 v13, 0x6

    invoke-virtual {v8, v13, v12}, LG/b0;->b(IZ)V

    if-nez v1, :cond_3

    if-nez v4, :cond_2

    if-eqz v6, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    if-nez v2, :cond_3

    move v4, v11

    goto :goto_2

    :cond_3
    move v4, v10

    :goto_2
    const/4 v12, 0x7

    invoke-virtual {v8, v12, v4}, LG/b0;->b(IZ)V

    if-eqz v5, :cond_4

    if-nez v2, :cond_4

    move v4, v11

    goto :goto_3

    :cond_4
    move v4, v10

    :goto_3
    const/16 v12, 0x8

    invoke-virtual {v8, v12, v4}, LG/b0;->b(IZ)V

    if-nez v1, :cond_6

    if-nez v5, :cond_5

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    :cond_5
    if-nez v2, :cond_6

    move v1, v11

    goto :goto_4

    :cond_6
    move v1, v10

    :goto_4
    const/16 v4, 0x9

    invoke-virtual {v8, v4, v1}, LG/b0;->b(IZ)V

    const/16 v1, 0xa

    invoke-virtual {v8, v1, v9}, LG/b0;->b(IZ)V

    if-eqz v3, :cond_7

    if-nez v2, :cond_7

    move v1, v11

    goto :goto_5

    :cond_7
    move v1, v10

    :goto_5
    const/16 v4, 0xb

    invoke-virtual {v8, v4, v1}, LG/b0;->b(IZ)V

    if-eqz v3, :cond_8

    if-nez v2, :cond_8

    move v10, v11

    :cond_8
    const/16 v1, 0xc

    invoke-virtual {v8, v1, v10}, LG/b0;->b(IZ)V

    invoke-virtual {v8}, LG/b0;->c()LG/c0;

    move-result-object v1

    iput-object v1, p0, LN/x;->Q:LG/c0;

    invoke-virtual {v1, v0}, LG/c0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, LN/p;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LN/p;-><init>(LN/x;I)V

    iget-object v1, p0, LN/x;->m:LJ/t;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, LJ/t;->c(ILJ/q;)V

    :cond_9
    return-void
.end method
