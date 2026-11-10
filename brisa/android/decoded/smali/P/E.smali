.class public final LP/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final q:Ljava/lang/Object;

.field public static r:Ljava/util/concurrent/ScheduledExecutorService;

.field public static s:I


# instance fields
.field public final a:Landroid/media/AudioTrack;

.field public final b:LP/p;

.field public final c:F

.field public final d:LZ0/i;

.field public e:LB0/b;

.field public final f:LP/H;

.field public final g:Z

.field public final h:I

.field public final i:LB/A;

.field public final j:LJ/t;

.field public k:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:I

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LP/E;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;LP/p;LZ0/i;FLJ/M;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP/E;->a:Landroid/media/AudioTrack;

    iput-object p2, p0, LP/E;->b:LP/p;

    iput p4, p0, LP/E;->c:F

    iput-object p3, p0, LP/E;->d:LZ0/i;

    new-instance p4, LJ/t;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p4, v0}, LJ/t;-><init>(Ljava/lang/Thread;)V

    iput-object p4, p0, LP/E;->j:LJ/t;

    iget p4, p2, LP/p;->a:I

    invoke-static {p4}, LJ/W;->C(I)Z

    move-result v0

    iput-boolean v0, p0, LP/E;->g:Z

    if-eqz v0, :cond_0

    iget v0, p2, LP/p;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    invoke-static {p4}, LJ/W;->o(I)I

    move-result p4

    mul-int/2addr p4, v0

    iput p4, p0, LP/E;->h:I

    goto :goto_0

    :cond_0
    const/4 p4, -0x1

    iput p4, p0, LP/E;->h:I

    :goto_0
    new-instance v0, LP/H;

    new-instance v1, La1/g;

    invoke-direct {v1, p0}, La1/g;-><init>(Ljava/lang/Object;)V

    iget v4, p2, LP/p;->a:I

    iget v5, p0, LP/E;->h:I

    iget v6, p2, LP/p;->f:I

    move-object v3, p1

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, LP/H;-><init>(La1/g;LJ/M;Landroid/media/AudioTrack;III)V

    iput-object v0, p0, LP/E;->f:LP/H;

    if-eqz p3, :cond_1

    new-instance p1, LB0/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v3, p1, LB0/b;->e:Ljava/lang/Object;

    iput-object p3, p1, LB0/b;->f:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {p2}, LJ/W;->l(LZ/l;)Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p1, LB0/b;->g:Ljava/lang/Object;

    new-instance p3, LP/C;

    invoke-direct {p3, p1}, LP/C;-><init>(LB0/b;)V

    iput-object p3, p1, LB0/b;->h:Ljava/lang/Object;

    invoke-virtual {v3, p3, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    iput-object p1, p0, LP/E;->e:LB0/b;

    :cond_1
    invoke-virtual {p0}, LP/E;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, LB/A;

    invoke-direct {p1, p0}, LB/A;-><init>(LP/E;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, LP/E;->i:LB/A;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 40

    invoke-virtual/range {p0 .. p0}, LP/E;->b()J

    move-result-wide v0

    move-object/from16 v2, p0

    iget-object v3, v2, LP/E;->f:LP/H;

    iget-object v4, v3, LP/H;->b:LJ/M;

    iget v5, v3, LP/H;->e:I

    iget-object v6, v3, LP/H;->h:LP/A;

    iget-object v7, v3, LP/H;->d:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v8

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x3e8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_1a

    iget-object v8, v3, LP/H;->c:[J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    div-long v10, v18, v16

    const/16 v19, 0x1

    iget-wide v14, v3, LP/H;->l:J

    sub-long v14, v10, v14

    const-wide/16 v20, 0x7530

    cmp-long v14, v14, v20

    if-ltz v14, :cond_3

    invoke-virtual {v3}, LP/H;->a()J

    move-result-wide v14

    invoke-static {v5, v14, v15}, LJ/W;->L(IJ)J

    move-result-wide v14

    cmp-long v20, v14, v12

    if-nez v20, :cond_0

    goto/16 :goto_a

    :cond_0
    iget v9, v3, LP/H;->s:I

    iget v12, v3, LP/H;->i:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v12, v13

    if-nez v13, :cond_1

    move/from16 v23, v9

    move-wide/from16 v38, v14

    move-object v15, v8

    move-wide/from16 v8, v38

    goto :goto_0

    :cond_1
    long-to-double v13, v14

    move-object v15, v8

    move/from16 v23, v9

    float-to-double v8, v12

    div-double/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    :goto_0
    sub-long/2addr v8, v10

    aput-wide v8, v15, v23

    iget v8, v3, LP/H;->s:I

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0xa

    rem-int/2addr v8, v9

    iput v8, v3, LP/H;->s:I

    iget v8, v3, LP/H;->t:I

    if-ge v8, v9, :cond_2

    add-int/lit8 v8, v8, 0x1

    iput v8, v3, LP/H;->t:I

    :cond_2
    iput-wide v10, v3, LP/H;->l:J

    const-wide/16 v8, 0x0

    iput-wide v8, v3, LP/H;->k:J

    const/4 v8, 0x0

    :goto_1
    iget v9, v3, LP/H;->t:I

    if-ge v8, v9, :cond_3

    iget-wide v12, v3, LP/H;->k:J

    aget-wide v23, v15, v8

    move v14, v8

    int-to-long v8, v9

    div-long v23, v23, v8

    add-long v8, v23, v12

    iput-wide v8, v3, LP/H;->k:J

    add-int/lit8 v8, v14, 0x1

    goto :goto_1

    :cond_3
    iget-wide v8, v3, LP/H;->n:J

    iget-boolean v12, v3, LP/H;->g:Z

    const-string v13, "AudioTrackAudioOutput"

    if-eqz v12, :cond_6

    iget-object v12, v3, LP/H;->m:Ljava/lang/reflect/Method;

    if-eqz v12, :cond_6

    const-wide/32 v23, 0x7a120

    iget-wide v14, v3, LP/H;->o:J

    sub-long v14, v10, v14

    cmp-long v14, v14, v23

    if-ltz v14, :cond_5

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v12, v7, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    sget-object v15, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    int-to-long v14, v12

    mul-long v14, v14, v16

    move-object v12, v7

    move-wide/from16 v26, v8

    :try_start_1
    iget-wide v7, v3, LP/H;->f:J

    sub-long/2addr v14, v7

    iput-wide v14, v3, LP/H;->n:J

    const-wide/16 v8, 0x0

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iput-wide v14, v3, LP/H;->n:J

    const-wide/32 v7, 0x989680

    cmp-long v7, v14, v7

    if-lez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring impossibly large audio latency: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    iput-wide v8, v3, LP/H;->n:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    const/4 v7, 0x0

    goto :goto_2

    :catch_1
    move-object v12, v7

    move-wide/from16 v26, v8

    move-object v7, v14

    :goto_2
    iput-object v7, v3, LP/H;->m:Ljava/lang/reflect/Method;

    :cond_4
    :goto_3
    iput-wide v10, v3, LP/H;->o:J

    goto :goto_4

    :cond_5
    move-object v12, v7

    move-wide/from16 v26, v8

    goto :goto_4

    :cond_6
    move-object v12, v7

    move-wide/from16 v26, v8

    const-wide/32 v23, 0x7a120

    :goto_4
    iget-wide v7, v3, LP/H;->n:J

    cmp-long v7, v26, v7

    if-eqz v7, :cond_7

    move/from16 v7, v19

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    iget v8, v3, LP/H;->i:F

    invoke-virtual {v3, v10, v11}, LP/H;->b(J)J

    move-result-wide v14

    iget-object v9, v6, LP/A;->a:LP/z;

    iget-object v2, v6, LP/A;->a:LP/z;

    move-object/from16 v25, v4

    iget v4, v6, LP/A;->b:I

    move-wide/from16 v26, v0

    if-nez v7, :cond_8

    iget-wide v0, v6, LP/A;->g:J

    sub-long v0, v10, v0

    move-wide/from16 v28, v0

    iget-wide v0, v6, LP/A;->f:J

    cmp-long v0, v28, v0

    if-gez v0, :cond_8

    move-object/from16 v34, v3

    move/from16 v30, v5

    move-object/from16 v28, v12

    goto/16 :goto_b

    :cond_8
    iput-wide v10, v6, LP/A;->g:J

    iget-object v0, v9, LP/z;->a:Landroid/media/AudioTrack;

    iget-object v1, v9, LP/z;->b:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v28, v12

    move-object v7, v13

    iget-wide v12, v1, Landroid/media/AudioTimestamp;->framePosition:J

    move-wide/from16 v29, v14

    iget-wide v14, v9, LP/z;->d:J

    cmp-long v31, v14, v12

    if-lez v31, :cond_a

    move/from16 v31, v0

    iget-boolean v0, v9, LP/z;->f:Z

    if-eqz v0, :cond_9

    move-wide/from16 v32, v14

    iget-wide v14, v9, LP/z;->g:J

    add-long v14, v14, v32

    iput-wide v14, v9, LP/z;->g:J

    const/4 v0, 0x0

    iput-boolean v0, v9, LP/z;->f:Z

    goto :goto_6

    :cond_9
    iget-wide v14, v9, LP/z;->c:J

    const-wide/16 v32, 0x1

    add-long v14, v14, v32

    iput-wide v14, v9, LP/z;->c:J

    goto :goto_6

    :cond_a
    move/from16 v31, v0

    :goto_6
    iput-wide v12, v9, LP/z;->d:J

    iget-wide v14, v9, LP/z;->g:J

    add-long/2addr v12, v14

    iget-wide v14, v9, LP/z;->c:J

    const/16 v0, 0x20

    shl-long/2addr v14, v0

    add-long/2addr v12, v14

    iput-wide v12, v9, LP/z;->e:J

    goto :goto_7

    :cond_b
    move/from16 v31, v0

    move-object/from16 v28, v12

    move-object v7, v13

    move-wide/from16 v29, v14

    :goto_7
    if-eqz v31, :cond_e

    iget-object v12, v6, LP/A;->c:La1/g;

    iget-wide v13, v1, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v13, v13, v16

    move-object v15, v1

    iget-wide v0, v2, LP/z;->e:J

    move-object/from16 v33, v7

    iget-object v7, v2, LP/z;->b:Landroid/media/AudioTimestamp;

    move-object/from16 v35, v2

    move-object/from16 v34, v3

    iget-wide v2, v7, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v2, v2, v16

    invoke-static {v4, v0, v1}, LJ/W;->L(IJ)J

    move-result-wide v0

    sub-long v2, v10, v2

    invoke-static {v2, v3, v8}, LJ/W;->u(JF)J

    move-result-wide v2

    add-long/2addr v2, v0

    sub-long v0, v13, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v36, 0x4c4b40

    cmp-long v0, v0, v36

    const-string v1, ", "

    if-lez v0, :cond_c

    iget-wide v2, v9, LP/z;->e:J

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Spurious audio timestamp (system clock mismatch): "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v29

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, La1/g;->e:Ljava/lang/Object;

    check-cast v1, LP/E;

    invoke-virtual {v1}, LP/E;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LG/Q;->a:Ljava/util/HashSet;

    move-object/from16 v7, v33

    invoke-static {v7, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, LP/A;->a(I)V

    move/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v33, v15

    goto/16 :goto_8

    :cond_c
    move-wide/from16 v38, v29

    move-wide/from16 v29, v2

    move-wide/from16 v2, v38

    move-object/from16 v7, v33

    sub-long v29, v29, v2

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->abs(J)J

    move-result-wide v29

    cmp-long v0, v29, v36

    if-lez v0, :cond_d

    move/from16 v29, v4

    move v0, v5

    iget-wide v4, v9, LP/z;->e:J

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v30, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v33, v15

    const-string v15, "Spurious audio timestamp (frame position mismatch): "

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, La1/g;->e:Ljava/lang/Object;

    check-cast v1, LP/E;

    invoke-virtual {v1}, LP/E;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LG/Q;->a:Ljava/util/HashSet;

    invoke-static {v7, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, LP/A;->a(I)V

    goto :goto_8

    :cond_d
    move/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v33, v15

    const/4 v0, 0x4

    iget v1, v6, LP/A;->d:I

    if-ne v1, v0, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, LP/A;->a(I)V

    goto :goto_8

    :cond_e
    move-object/from16 v33, v1

    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move/from16 v29, v4

    move/from16 v30, v5

    const/4 v0, 0x4

    :cond_f
    :goto_8
    iget v1, v6, LP/A;->d:I

    if-eqz v1, :cond_18

    move/from16 v2, v19

    if-eq v1, v2, :cond_13

    const/4 v2, 0x2

    if-eq v1, v2, :cond_12

    const/4 v2, 0x3

    if-eq v1, v2, :cond_11

    if-ne v1, v0, :cond_10

    goto/16 :goto_b

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_11
    if-eqz v31, :cond_1b

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, LP/A;->a(I)V

    goto/16 :goto_b

    :cond_12
    const/4 v0, 0x0

    if-nez v31, :cond_1b

    invoke-virtual {v6, v0}, LP/A;->a(I)V

    goto/16 :goto_b

    :cond_13
    if-eqz v31, :cond_17

    iget-wide v0, v9, LP/z;->e:J

    iget-wide v2, v6, LP/A;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    goto :goto_9

    :cond_14
    iget-wide v0, v6, LP/A;->i:J

    move/from16 v4, v29

    invoke-static {v4, v2, v3}, LJ/W;->L(IJ)J

    move-result-wide v2

    sub-long v0, v10, v0

    invoke-static {v0, v1, v8}, LJ/W;->u(JF)J

    move-result-wide v0

    add-long/2addr v0, v2

    move-object/from16 v2, v35

    iget-wide v12, v2, LP/z;->e:J

    iget-object v2, v2, LP/z;->b:Landroid/media/AudioTimestamp;

    iget-wide v2, v2, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v2, v2, v16

    invoke-static {v4, v12, v13}, LJ/W;->L(IJ)J

    move-result-wide v4

    sub-long v2, v10, v2

    invoke-static {v2, v3, v8}, LJ/W;->u(JF)J

    move-result-wide v2

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v16

    if-gez v0, :cond_15

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, LP/A;->a(I)V

    goto :goto_b

    :cond_15
    :goto_9
    iget-wide v0, v6, LP/A;->e:J

    sub-long/2addr v10, v0

    const-wide/32 v0, 0x1e8480

    cmp-long v0, v10, v0

    if-lez v0, :cond_16

    const/4 v2, 0x3

    invoke-virtual {v6, v2}, LP/A;->a(I)V

    goto :goto_b

    :cond_16
    iget-wide v0, v9, LP/z;->e:J

    iput-wide v0, v6, LP/A;->h:J

    move-object/from16 v15, v33

    iget-wide v0, v15, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v0, v0, v16

    iput-wide v0, v6, LP/A;->i:J

    goto :goto_b

    :cond_17
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, LP/A;->a(I)V

    goto :goto_b

    :cond_18
    move-object/from16 v15, v33

    if-eqz v31, :cond_19

    iget-wide v0, v15, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v2, v0, v16

    iget-wide v4, v6, LP/A;->e:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1b

    iget-wide v2, v9, LP/z;->e:J

    iput-wide v2, v6, LP/A;->h:J

    div-long v0, v0, v16

    iput-wide v0, v6, LP/A;->i:J

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, LP/A;->a(I)V

    goto :goto_b

    :cond_19
    iget-wide v0, v6, LP/A;->e:J

    sub-long/2addr v10, v0

    cmp-long v0, v10, v23

    if-lez v0, :cond_1b

    const/4 v2, 0x3

    invoke-virtual {v6, v2}, LP/A;->a(I)V

    goto :goto_b

    :cond_1a
    :goto_a
    move-wide/from16 v26, v0

    move-object/from16 v34, v3

    move-object/from16 v25, v4

    move/from16 v30, v5

    move-object/from16 v28, v7

    :cond_1b
    :goto_b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long v0, v0, v16

    iget v2, v6, LP/A;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x1

    goto :goto_c

    :cond_1c
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_1d

    move-object/from16 v3, v34

    iget v4, v3, LP/H;->i:F

    iget-object v5, v6, LP/A;->a:LP/z;

    iget-wide v7, v5, LP/z;->e:J

    iget-object v5, v5, LP/z;->b:Landroid/media/AudioTimestamp;

    iget-wide v9, v5, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v9, v9, v16

    iget v5, v6, LP/A;->b:I

    invoke-static {v5, v7, v8}, LJ/W;->L(IJ)J

    move-result-wide v7

    sub-long v9, v0, v9

    invoke-static {v9, v10, v4}, LJ/W;->u(JF)J

    move-result-wide v4

    add-long/2addr v4, v7

    :goto_d
    move-wide v7, v4

    move-wide/from16 v4, v26

    move/from16 v9, v30

    goto :goto_e

    :cond_1d
    move-object/from16 v3, v34

    invoke-virtual {v3, v0, v1}, LP/H;->b(J)J

    move-result-wide v4

    goto :goto_d

    :goto_e
    invoke-static {v9, v4, v5}, LJ/W;->L(IJ)J

    move-result-wide v4

    cmp-long v9, v7, v4

    if-ltz v9, :cond_1e

    invoke-virtual {v3}, LP/H;->e()V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, LP/A;->a(I)V

    goto :goto_11

    :cond_1e
    invoke-virtual/range {v28 .. v28}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_22

    if-nez v2, :cond_1f

    iget v2, v6, LP/A;->d:I

    if-eqz v2, :cond_20

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1f

    goto :goto_f

    :cond_1f
    invoke-virtual {v3, v7, v8}, LP/H;->d(J)V

    :cond_20
    :goto_f
    iget-wide v4, v3, LP/H;->z:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v9

    if-eqz v2, :cond_21

    sub-long v4, v0, v4

    iget-wide v9, v3, LP/H;->y:J

    sub-long v9, v7, v9

    iget v2, v3, LP/H;->i:F

    invoke-static {v4, v5, v2}, LJ/W;->u(JF)J

    move-result-wide v4

    iget-wide v11, v3, LP/H;->y:J

    add-long/2addr v11, v4

    sub-long v13, v11, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/16 v21, 0x0

    cmp-long v2, v9, v21

    if-eqz v2, :cond_21

    const-wide/32 v9, 0xf4240

    cmp-long v2, v13, v9

    if-gez v2, :cond_21

    const-wide/16 v9, 0xa

    mul-long/2addr v4, v9

    const-wide/16 v9, 0x64

    div-long/2addr v4, v9

    sub-long v9, v11, v4

    add-long/2addr v11, v4

    invoke-static/range {v7 .. v12}, LJ/W;->h(JJJ)J

    move-result-wide v7

    :cond_21
    iput-wide v0, v3, LP/H;->z:J

    iput-wide v7, v3, LP/H;->y:J

    goto :goto_10

    :cond_22
    const/4 v2, 0x1

    if-ne v4, v2, :cond_23

    invoke-virtual {v3, v7, v8}, LP/H;->d(J)V

    :cond_23
    :goto_10
    move-wide v4, v7

    :goto_11
    return-wide v4
.end method

.method public final b()J
    .locals 6

    iget-boolean v0, p0, LP/E;->g:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, LP/E;->l:J

    iget v2, p0, LP/E;->h:I

    int-to-long v2, v2

    sget-object v4, LJ/W;->a:Ljava/lang/String;

    add-long/2addr v0, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, LP/E;->m:J

    return-wide v0
.end method

.method public final c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, LP/E;->a:Landroid/media/AudioTrack;

    invoke-static {v0}, LB/r;->x(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Ljava/nio/ByteBuffer;IJ)Z
    .locals 11

    move-wide v2, p3

    iget-object v0, p0, LP/E;->b:LP/p;

    iget-boolean v6, p0, LP/E;->g:Z

    if-nez v6, :cond_0

    iget v4, p0, LP/E;->o:I

    if-nez v4, :cond_0

    iget v4, v0, LP/p;->a:I

    invoke-static {v4, p1}, LP/O;->i(ILjava/nio/ByteBuffer;)I

    move-result v4

    iput v4, p0, LP/E;->o:I

    :cond_0
    iget-object v4, p0, LP/E;->j:LJ/t;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iget-object v7, v4, LJ/t;->a:Ljava/lang/Thread;

    iget-object v8, p0, LP/E;->a:Landroid/media/AudioTrack;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v5, v7, :cond_2

    invoke-virtual {p0}, LP/E;->b()J

    invoke-virtual {v8}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v5

    iget v7, p0, LP/E;->p:I

    if-le v5, v7, :cond_1

    move v7, v10

    goto :goto_0

    :cond_1
    move v7, v9

    :goto_0
    iput v5, p0, LP/E;->p:I

    if-eqz v7, :cond_2

    new-instance v5, LP/B;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, LP/B;-><init>(I)V

    const/4 v7, -0x1

    invoke-virtual {v4, v7, v5}, LJ/t;->f(ILJ/q;)V

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    iget-boolean v0, v0, LP/p;->d:Z

    if-eqz v0, :cond_4

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iget-wide v2, p0, LP/E;->n:J

    goto :goto_1

    :cond_3
    iput-wide v2, p0, LP/E;->n:J

    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    const/4 v3, 0x1

    move-object v1, p1

    move v2, v0

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result v0

    goto :goto_2

    :cond_4
    move-object v0, v8

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v0, p1, v2, v10}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    :goto_2
    if-gez v0, :cond_8

    const/4 v1, -0x6

    if-eq v0, v1, :cond_5

    const/16 v1, -0x20

    if-ne v0, v1, :cond_6

    :cond_5
    move v9, v10

    :cond_6
    if-eqz v9, :cond_7

    iget-object v1, p0, LP/E;->d:LZ0/i;

    if-eqz v1, :cond_7

    iget-object v1, v1, LZ0/i;->e:Ljava/lang/Object;

    check-cast v1, LP/G;

    iget-object v2, v1, LP/G;->i:LP/f;

    if-eqz v2, :cond_7

    sget-object v3, LP/c;->f:LP/c;

    iput-object v3, v1, LP/G;->h:LP/c;

    invoke-virtual {v2, v3}, LP/f;->b(LP/c;)V

    :cond_7
    new-instance v1, LP/i;

    invoke-direct {v1, v0, v9}, LP/i;-><init>(IZ)V

    throw v1

    :cond_8
    if-ne v0, v7, :cond_9

    move v9, v10

    :cond_9
    if-eqz v6, :cond_a

    iget-wide v1, p0, LP/E;->l:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, LP/E;->l:J

    return v9

    :cond_a
    if-eqz v9, :cond_b

    iget-wide v0, p0, LP/E;->m:J

    iget v2, p0, LP/E;->o:I

    int-to-long v2, v2

    int-to-long v4, p2

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, LP/E;->m:J

    :cond_b
    return v9
.end method
