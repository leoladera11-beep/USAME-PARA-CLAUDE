.class public final LP/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP/q;


# static fields
.field public static final l:Lt1/t;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LP/P;

.field public final c:LN0/O;

.field public final d:LZ0/i;

.field public final e:F

.field public f:LJ/t;

.field public g:LJ/M;

.field public h:LP/c;

.field public i:LP/f;

.field public j:Landroid/os/Looper;

.field public k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LL/i;-><init>(I)V

    invoke-static {v0}, LS1/e;->o(Lt1/t;)Lt1/t;

    move-result-object v0

    sput-object v0, LP/G;->l:Lt1/t;

    return-void
.end method

.method public constructor <init>(LP/F;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LP/F;->a:Landroid/content/Context;

    iput-object v0, p0, LP/G;->a:Landroid/content/Context;

    iget-object v1, p1, LP/F;->b:LN0/O;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, LP/G;->c:LN0/O;

    iget-object v1, p1, LP/F;->c:LP/P;

    iput-object v1, p0, LP/G;->b:LP/P;

    iget-object v1, p1, LP/F;->d:LP/c;

    iput-object v1, p0, LP/G;->h:LP/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, LZ0/i;

    invoke-direct {v0, p0}, LZ0/i;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, LP/G;->d:LZ0/i;

    iget p1, p1, LP/F;->e:F

    iput p1, p0, LP/G;->e:F

    sget-object p1, LJ/M;->a:LJ/M;

    iput-object p1, p0, LP/G;->g:LJ/M;

    return-void
.end method


# virtual methods
.method public final a(LP/p;)LP/E;
    .locals 8

    :try_start_0
    iget v0, p1, LP/p;->h:I

    iget v1, p1, LP/p;->i:I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    const/16 v3, 0x22

    if-eq v1, v2, :cond_2

    iget-object v2, p0, LP/G;->a:Landroid/content/Context;

    if-eqz v2, :cond_2

    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_2

    iget-object v0, p0, LP/G;->k:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, LN/v;->a(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-static {v1, v2}, LN/v;->c(ILandroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LP/G;->k:Landroid/content/Context;

    :cond_1
    iget-object v0, p0, LP/G;->k:Landroid/content/Context;

    const/4 v1, 0x0

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v4, p1, LP/p;->b:I

    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget v4, p1, LP/p;->c:I

    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget v4, p1, LP/p;->a:I

    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    iget-object v4, p1, LP/p;->g:LG/e;

    iget-boolean v5, p1, LP/p;->d:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, LG/e;->c()Landroid/media/AudioAttributes;

    move-result-object v4

    :goto_3
    new-instance v5, Landroid/media/AudioTrack$Builder;

    invoke-direct {v5}, Landroid/media/AudioTrack$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    iget v4, p1, LP/p;->f:I

    invoke-virtual {v2, v4}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_4

    iget-boolean v4, p1, LP/p;->e:Z

    invoke-static {v0, v4}, LB/r;->o(Landroid/media/AudioTrack$Builder;Z)V

    :cond_4
    if-lt v2, v3, :cond_5

    if-eqz v1, :cond_5

    invoke-static {v0, v1}, LN/v;->f(Landroid/media/AudioTrack$Builder;Landroid/content/Context;)V

    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v6, :cond_6

    new-instance v0, LP/E;

    iget v4, p0, LP/G;->e:F

    iget-object v5, p0, LP/G;->g:LJ/M;

    iget-object v3, p0, LP/G;->d:LZ0/i;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, LP/E;-><init>(Landroid/media/AudioTrack;LP/p;LZ0/i;FLJ/M;)V

    return-object v0

    :cond_6
    :try_start_2
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    new-instance p1, LP/n;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :goto_4
    new-instance v0, LP/n;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(LP/k;)LP/m;
    .locals 7

    invoke-virtual {p0, p1}, LP/G;->e(LP/k;)V

    iget-object v0, p1, LP/k;->a:LG/x;

    iget-object p1, p1, LP/k;->b:LG/e;

    iget-object v1, p0, LP/G;->c:LN0/O;

    invoke-virtual {v1, v0, p1}, LN0/O;->P(LG/x;LG/e;)LP/h;

    move-result-object v1

    new-instance v2, LP/l;

    invoke-direct {v2}, LP/l;-><init>()V

    iget-object v3, v0, LG/x;->p:Ljava/lang/String;

    iget v4, v0, LG/x;->M:I

    const-string v5, "audio/raw"

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_0

    if-ne v4, v6, :cond_1

    :goto_0
    move v5, v6

    goto :goto_1

    :cond_0
    iget-object v3, p0, LP/G;->h:LP/c;

    invoke-virtual {v3, v0, p1}, LP/c;->c(LG/x;LG/e;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput v5, v2, LP/l;->a:I

    iget-boolean p1, v1, LP/h;->a:Z

    iput-boolean p1, v2, LP/l;->b:Z

    iget-boolean p1, v1, LP/h;->b:Z

    iput-boolean p1, v2, LP/l;->c:Z

    iget-boolean p1, v1, LP/h;->c:Z

    iput-boolean p1, v2, LP/l;->d:Z

    invoke-virtual {v2}, LP/l;->a()LP/m;

    move-result-object p1

    return-object p1
.end method

.method public final c(LP/k;)LP/p;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, LP/k;->a:LG/x;

    iget-boolean v3, v1, LP/k;->d:Z

    iget-object v4, v1, LP/k;->b:LG/e;

    invoke-virtual/range {p0 .. p1}, LP/G;->e(LP/k;)V

    iget-object v5, v2, LG/x;->p:Ljava/lang/String;

    iget v6, v2, LG/x;->K:I

    iget v7, v2, LG/x;->J:I

    iget v8, v2, LG/x;->L:I

    iget v9, v2, LG/x;->M:I

    const-string v10, "audio/raw"

    invoke-static {v5, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-eqz v10, :cond_1

    invoke-static {v9}, LJ/W;->C(I)Z

    move-result v3

    invoke-static {v3}, LF1/i;->g(Z)V

    if-eq v6, v12, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v7}, LJ/W;->n(I)I

    move-result v6

    :goto_0
    invoke-static {v9}, LJ/W;->o(I)I

    move-result v3

    mul-int/2addr v3, v7

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_1
    if-eqz v3, :cond_2

    iget-object v9, v0, LP/G;->c:LN0/O;

    invoke-virtual {v9, v2, v4}, LN0/O;->P(LG/x;LG/e;)LP/h;

    move-result-object v9

    goto :goto_2

    :cond_2
    sget-object v9, LP/h;->d:LP/h;

    :goto_2
    if-eqz v3, :cond_7

    iget-boolean v3, v9, LP/h;->a:Z

    if-eqz v3, :cond_7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, LG/x;->l:Ljava/lang/String;

    invoke-static {v5, v3}, LG/W;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v6, v12, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v7}, LJ/W;->n(I)I

    move-result v6

    :goto_3
    const/16 v10, 0xb

    const/16 v15, 0xc

    if-eq v3, v10, :cond_4

    if-ne v3, v15, :cond_6

    :cond_4
    const/16 v10, 0x3e80

    if-lt v8, v10, :cond_6

    sget-object v10, LP/G;->l:Lt1/t;

    invoke-interface {v10}, Lt1/t;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_6

    if-ne v3, v15, :cond_5

    if-ne v7, v11, :cond_5

    const/4 v6, 0x4

    :cond_5
    div-int/lit8 v8, v8, 0x2

    const/16 v3, 0xa

    :cond_6
    iget-boolean v7, v9, LP/h;->b:Z

    move v9, v3

    move v3, v12

    move v10, v13

    move v15, v10

    goto :goto_4

    :cond_7
    iget-object v3, v0, LP/G;->h:LP/c;

    invoke-virtual {v3, v2, v4}, LP/c;->c(LG/x;LG/e;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v10, v11

    move v3, v12

    const/4 v7, 0x0

    goto :goto_1

    :goto_4
    iget v2, v2, LG/x;->k:I

    const-string v14, "audio/vnd.dts.hd;profile=lbr"

    invoke-static {v5, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-ne v2, v12, :cond_8

    const v2, 0xbb800

    :cond_8
    iget v5, v1, LP/k;->h:I

    if-eq v5, v12, :cond_9

    move/from16 v18, v13

    goto/16 :goto_e

    :cond_9
    invoke-static {v8, v6, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    const/4 v14, -0x2

    if-eq v5, v14, :cond_a

    move v14, v13

    goto :goto_5

    :cond_a
    const/4 v14, 0x0

    :goto_5
    invoke-static {v14}, LF1/i;->o(Z)V

    if-eq v3, v12, :cond_b

    goto :goto_6

    :cond_b
    move v3, v13

    :goto_6
    if-eqz v15, :cond_c

    iget v14, v0, LP/G;->e:F

    float-to-double v11, v14

    goto :goto_7

    :cond_c
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    :goto_7
    iget-object v14, v0, LP/G;->b:LP/P;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v16, 0xf4240

    if-eqz v10, :cond_14

    if-eq v10, v13, :cond_12

    move/from16 v18, v13

    const/4 v13, 0x2

    if-ne v10, v13, :cond_11

    const/4 v13, 0x5

    const/16 v14, 0x8

    if-ne v9, v13, :cond_d

    const v13, 0x7a120

    :goto_8
    const/4 v14, -0x1

    goto :goto_9

    :cond_d
    if-ne v9, v14, :cond_e

    const v13, 0xf4240

    goto :goto_8

    :cond_e
    const v13, 0x3d090

    goto :goto_8

    :goto_9
    if-eq v2, v14, :cond_f

    sget-object v14, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    const/16 v14, 0x8

    invoke-static {v2, v14}, Lcom/brisa/local/v;->g(II)I

    move-result v2

    goto :goto_b

    :cond_f
    invoke-static {v9}, Lb0/a;->j(I)I

    move-result v2

    const v14, -0x7fffffff

    if-eq v2, v14, :cond_10

    move/from16 v14, v18

    goto :goto_a

    :cond_10
    const/4 v14, 0x0

    :goto_a
    invoke-static {v14}, LF1/i;->o(Z)V

    :goto_b
    int-to-long v13, v13

    move-wide/from16 v19, v11

    int-to-long v11, v2

    mul-long/2addr v13, v11

    div-long v13, v13, v16

    invoke-static {v13, v14}, LS1/e;->e(J)I

    move-result v2

    goto :goto_d

    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_12
    move-wide/from16 v19, v11

    move/from16 v18, v13

    invoke-static {v9}, Lb0/a;->j(I)I

    move-result v2

    const v14, -0x7fffffff

    if-eq v2, v14, :cond_13

    move/from16 v11, v18

    goto :goto_c

    :cond_13
    const/4 v11, 0x0

    :goto_c
    invoke-static {v11}, LF1/i;->o(Z)V

    const v11, 0x2faf080

    int-to-long v11, v11

    int-to-long v13, v2

    mul-long/2addr v11, v13

    div-long v11, v11, v16

    invoke-static {v11, v12}, LS1/e;->e(J)I

    move-result v2

    goto :goto_d

    :cond_14
    move-wide/from16 v19, v11

    move/from16 v18, v13

    const v2, 0x7a120

    int-to-long v11, v2

    int-to-long v13, v8

    mul-long/2addr v11, v13

    int-to-long v13, v3

    mul-long/2addr v11, v13

    div-long v11, v11, v16

    invoke-static {v11, v12}, LS1/e;->e(J)I

    move-result v2

    :goto_d
    int-to-double v11, v2

    mul-double v11, v11, v19

    double-to-int v2, v11

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v3

    mul-int v5, v2, v3

    :goto_e
    new-instance v2, LP/o;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v3, LG/e;->i:LG/e;

    const/4 v14, -0x1

    iput v14, v2, LP/o;->i:I

    iput v8, v2, LP/o;->b:I

    iput v6, v2, LP/o;->c:I

    iput v9, v2, LP/o;->a:I

    iput v5, v2, LP/o;->f:I

    iget v3, v1, LP/k;->e:I

    iput v3, v2, LP/o;->h:I

    iput-object v4, v2, LP/o;->g:LG/e;

    move/from16 v3, v18

    if-ne v10, v3, :cond_15

    move v13, v3

    goto :goto_f

    :cond_15
    const/4 v13, 0x0

    :goto_f
    iput-boolean v13, v2, LP/o;->e:Z

    iget-boolean v3, v1, LP/k;->g:Z

    iput-boolean v3, v2, LP/o;->d:Z

    iput-boolean v15, v2, LP/o;->j:Z

    iput-boolean v7, v2, LP/o;->k:Z

    iget v1, v1, LP/k;->f:I

    iput v1, v2, LP/o;->i:I

    new-instance v1, LP/p;

    invoke-direct {v1, v2}, LP/p;-><init>(LP/o;)V

    return-object v1

    :cond_16
    new-instance v1, LP/j;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to configure passthrough for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, LP/G;->f:LJ/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LJ/t;->d()V

    :cond_0
    iget-object v0, p0, LP/G;->i:LP/f;

    if-eqz v0, :cond_6

    iget-object v1, v0, LP/f;->a:Landroid/content/Context;

    iget-boolean v2, v0, LP/f;->k:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, LP/f;->h:LP/c;

    invoke-static {v1}, Le/a;->d(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, v0, LP/f;->d:LP/d;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x20

    if-lt v3, v4, :cond_4

    iget-object v3, v0, LP/f;->g:LH/c;

    if-eqz v3, :cond_4

    iget-object v4, v3, LH/c;->g:Ljava/lang/Object;

    check-cast v4, Landroid/os/Handler;

    iget-object v5, v3, LH/c;->f:Ljava/lang/Object;

    check-cast v5, Landroid/media/Spatializer;

    if-eqz v5, :cond_3

    iget-object v3, v3, LH/c;->h:Ljava/lang/Object;

    check-cast v3, LY/b;

    if-eqz v3, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v5, v3}, LG/d;->i(Landroid/media/Spatializer;LY/b;)V

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iput-object v2, v0, LP/f;->g:LH/c;

    :cond_4
    iget-object v2, v0, LP/f;->e:LJ/z;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, v0, LP/f;->f:LP/e;

    if-eqz v1, :cond_5

    iget-object v2, v1, LP/e;->a:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, v0, LP/f;->k:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public final e(LP/k;)V
    .locals 8

    iget-object v0, p1, LP/k;->c:Landroid/media/AudioDeviceInfo;

    iget-object p1, p1, LP/k;->b:LG/e;

    invoke-virtual {p0}, LP/G;->f()V

    iget-object v1, p0, LP/G;->i:LP/f;

    const/4 v2, 0x0

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    if-nez v1, :cond_3

    iget-object v4, p0, LP/G;->a:Landroid/content/Context;

    if-eqz v4, :cond_3

    new-instance v1, LP/f;

    new-instance v5, LI0/E;

    const/16 v6, 0x14

    invoke-direct {v5, p0, v6}, LI0/E;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v4, v5, p1, v0}, LP/f;-><init>(Landroid/content/Context;LI0/E;LG/e;Landroid/media/AudioDeviceInfo;)V

    iput-object v1, p0, LP/G;->i:LP/f;

    iget-boolean p1, v1, LP/f;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, v1, LP/f;->h:LP/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, v1, LP/f;->k:Z

    iget-object p1, v1, LP/f;->f:LP/e;

    if-eqz p1, :cond_1

    iget-object v0, p1, LP/e;->a:Landroid/content/ContentResolver;

    iget-object v4, p1, LP/e;->b:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object p1, v1, LP/f;->a:Landroid/content/Context;

    invoke-static {p1}, Le/a;->d(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v4, v1, LP/f;->d:LP/d;

    iget-object v5, v1, LP/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x20

    if-lt v0, v4, :cond_2

    iget-object v0, v1, LP/f;->g:LH/c;

    if-nez v0, :cond_2

    invoke-static {p1}, LJ/W;->E(Landroid/content/Context;)Z

    move-result v0

    new-instance v4, LH/c;

    new-instance v6, LH/a;

    const/16 v7, 0xc

    invoke-direct {v6, v1, v7}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v4, p1, v6, v0}, LH/c;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    iput-object v4, v1, LP/f;->g:LH/c;

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, LP/f;->e:LJ/z;

    invoke-virtual {p1, v3, v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1}, LP/f;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, LP/f;->j:LG/e;

    iget-object v4, v1, LP/f;->i:Landroid/media/AudioDeviceInfo;

    invoke-static {p1, v0, v3, v4, v2}, LP/c;->b(Landroid/content/Context;Landroid/content/Intent;LG/e;Landroid/media/AudioDeviceInfo;Ljava/util/List;)LP/c;

    move-result-object p1

    iput-object p1, v1, LP/f;->h:LP/c;

    :goto_0
    iput-object p1, p0, LP/G;->h:LP/c;

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_7

    if-eqz v0, :cond_5

    iget-object v4, v1, LP/f;->i:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iput-object v0, v1, LP/f;->i:Landroid/media/AudioDeviceInfo;

    iget-object v4, v1, LP/f;->a:Landroid/content/Context;

    iget-object v5, v1, LP/f;->j:LG/e;

    invoke-virtual {v1}, LP/f;->a()Ljava/util/List;

    move-result-object v6

    sget-object v7, LP/c;->e:Lu1/C0;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v4, v7, v5, v0, v6}, LP/c;->b(Landroid/content/Context;Landroid/content/Intent;LG/e;Landroid/media/AudioDeviceInfo;Ljava/util/List;)LP/c;

    move-result-object v0

    invoke-virtual {v1, v0}, LP/f;->b(LP/c;)V

    :cond_5
    :goto_1
    iget-object v0, p0, LP/G;->i:LP/f;

    iget-object v1, v0, LP/f;->j:LG/e;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iput-object p1, v0, LP/f;->j:LG/e;

    iget-object v1, v0, LP/f;->a:Landroid/content/Context;

    iget-object v4, v0, LP/f;->i:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0}, LP/f;->a()Ljava/util/List;

    move-result-object v5

    sget-object v6, LP/c;->e:Lu1/C0;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2, p1, v4, v5}, LP/c;->b(Landroid/content/Context;Landroid/content/Intent;LG/e;Landroid/media/AudioDeviceInfo;Ljava/util/List;)LP/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LP/f;->b(LP/c;)V

    :cond_7
    :goto_2
    iget-object p1, p0, LP/G;->h:LP/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, LP/G;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, LP/G;->j:Landroid/os/Looper;

    if-eqz v1, :cond_2

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "null"

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-eqz v2, :cond_5

    iput-object v0, p0, LP/G;->j:Landroid/os/Looper;

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AudioTrackAudioOutputProvider accessed on multiple threads: %s and %s"

    invoke-static {v2, v1}, Lj1/a;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
