.class public final LS/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:Lt1/t;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public j:I

.field public k:I

.field public l:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LS/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, LS1/e;->o(Lt1/t;)Lt1/t;

    move-result-object v0

    sput-object v0, LS/o;->m:Lt1/t;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LS/o;->a:Ljava/lang/String;

    iput-object p2, p0, LS/o;->b:Ljava/lang/String;

    iput-object p3, p0, LS/o;->c:Ljava/lang/String;

    iput-object p4, p0, LS/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iput-boolean p5, p0, LS/o;->g:Z

    iput-boolean p8, p0, LS/o;->e:Z

    iput-boolean p9, p0, LS/o;->f:Z

    iput-boolean p10, p0, LS/o;->h:Z

    invoke-static {p2}, LG/W;->k(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, LS/o;->i:Z

    const p1, -0x800001

    iput p1, p0, LS/o;->l:F

    const/4 p1, -0x1

    iput p1, p0, LS/o;->j:I

    iput p1, p0, LS/o;->k:I

    return-void
.end method

.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-static {p1, v0}, LJ/W;->e(II)I

    move-result p1

    mul-int/2addr p1, v0

    invoke-static {p2, v1}, LJ/W;->e(II)I

    move-result p2

    mul-int/2addr p2, v1

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget p1, v2, Landroid/graphics/Point;->x:I

    iget p2, v2, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getAchievableFrameRatesFor(II)Landroid/util/Range;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, p3, p0

    if-gtz p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)LS/o;
    .locals 11

    new-instance v0, LS/o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    const-string v3, "adaptive-playback"

    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    if-eqz p3, :cond_1

    const-string v3, "tunneled-playback"

    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    :cond_1
    if-nez p7, :cond_3

    if-eqz p3, :cond_2

    const-string v3, "secure-playback"

    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v9, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v9, v2

    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x23

    if-lt v3, v4, :cond_6

    if-eqz p3, :cond_6

    const-string v3, "detached-surface"

    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, LS/o;->m:Lt1/t;

    invoke-interface {v3}, Lt1/t;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x3176c

    if-le v3, v4, :cond_4

    goto :goto_3

    :cond_4
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Xiaomi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "OPPO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "realme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "motorola"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "LENOVO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "Fairphone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    move v10, v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v2, p1

    goto :goto_5

    :cond_6
    :goto_4
    move v10, v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v1, p0

    :goto_5
    invoke-direct/range {v0 .. v10}, LS/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    return-object v0
.end method


# virtual methods
.method public final b(LG/x;LG/x;)LN/d;
    .locals 8

    iget-object v0, p1, LG/x;->p:Ljava/lang/String;

    iget-object v1, p1, LG/x;->H:LG/n;

    iget-object v2, p2, LG/x;->p:Ljava/lang/String;

    iget-object v3, p2, LG/x;->H:LG/n;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v4, p0, LS/o;->i:Z

    if-eqz v4, :cond_e

    iget v4, p1, LG/x;->C:I

    iget v5, p2, LG/x;->C:I

    if-eq v4, v5, :cond_1

    or-int/lit16 v0, v0, 0x400

    :cond_1
    iget v4, p1, LG/x;->w:I

    iget v5, p2, LG/x;->w:I

    if-ne v4, v5, :cond_2

    iget v4, p1, LG/x;->x:I

    iget v5, p2, LG/x;->x:I

    if-eq v4, v5, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    iget-boolean v4, p0, LS/o;->e:Z

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x200

    :cond_4
    invoke-static {v1}, LG/n;->f(LG/n;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, LG/n;->f(LG/n;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    or-int/lit16 v0, v0, 0x800

    :cond_6
    sget-object v1, LG/Q;->a:Ljava/util/HashSet;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-T230"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    iget-object v3, p0, LS/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, p2}, LG/x;->b(LG/x;)Z

    move-result v1

    if-nez v1, :cond_7

    or-int/lit8 v0, v0, 0x2

    :cond_7
    iget v1, p1, LG/x;->z:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    iget v4, p1, LG/x;->A:I

    if-eq v4, v3, :cond_8

    iget v3, p2, LG/x;->z:I

    if-ne v1, v3, :cond_8

    iget v1, p2, LG/x;->A:I

    if-ne v4, v1, :cond_8

    if-eqz v2, :cond_8

    or-int/lit8 v0, v0, 0x2

    :cond_8
    if-nez v0, :cond_a

    iget-object v1, p2, LG/x;->p:Ljava/lang/String;

    const-string v2, "video/dolby-vision"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p1}, LJ/h;->c(LG/x;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {p2}, LJ/h;->c(LG/x;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    or-int/lit8 v0, v0, 0x2

    :cond_a
    if-nez v0, :cond_c

    new-instance v1, LN/d;

    invoke-virtual {p1, p2}, LG/x;->b(LG/x;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    :goto_1
    move v5, v0

    goto :goto_2

    :cond_b
    const/4 v0, 0x2

    goto :goto_1

    :goto_2
    const/4 v6, 0x0

    iget-object v2, p0, LS/o;->a:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, LN/d;-><init>(Ljava/lang/String;LG/x;LG/x;II)V

    return-object v1

    :cond_c
    move-object v4, p1

    move-object v5, p2

    :cond_d
    move v7, v0

    goto/16 :goto_3

    :cond_e
    move-object v4, p1

    move-object v5, p2

    iget p1, v4, LG/x;->J:I

    iget p2, v5, LG/x;->J:I

    if-eq p1, p2, :cond_f

    or-int/lit16 v0, v0, 0x1000

    :cond_f
    iget p1, v4, LG/x;->L:I

    iget p2, v5, LG/x;->L:I

    if-eq p1, p2, :cond_10

    or-int/lit16 v0, v0, 0x2000

    :cond_10
    iget p1, v4, LG/x;->M:I

    iget p2, v5, LG/x;->M:I

    if-eq p1, p2, :cond_11

    or-int/lit16 v0, v0, 0x4000

    :cond_11
    iget-object p1, p0, LS/o;->b:Ljava/lang/String;

    if-nez v0, :cond_14

    const-string p2, "audio/mp4a-latm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "audio/ac4"

    if-nez p2, :cond_12

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    :cond_12
    invoke-static {v4}, LJ/h;->c(LG/x;)Landroid/util/Pair;

    move-result-object p2

    invoke-static {v5}, LJ/h;->c(LG/x;)Landroid/util/Pair;

    move-result-object v2

    if-eqz p2, :cond_14

    if-eqz v2, :cond_14

    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x2a

    if-ne v3, v7, :cond_13

    if-ne v6, v7, :cond_13

    new-instance v2, LN/d;

    const/4 v6, 0x3

    const/4 v7, 0x0

    iget-object v3, p0, LS/o;->a:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, LN/d;-><init>(Ljava/lang/String;LG/x;LG/x;II)V

    return-object v2

    :cond_13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p2, v2}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    new-instance v2, LN/d;

    const/4 v6, 0x3

    const/4 v7, 0x0

    iget-object v3, p0, LS/o;->a:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, LN/d;-><init>(Ljava/lang/String;LG/x;LG/x;II)V

    return-object v2

    :cond_14
    if-nez v0, :cond_16

    const-string p2, "audio/eac3-joc"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    const-string p2, "audio/eac3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    :cond_15
    new-instance v2, LN/d;

    const/4 v6, 0x3

    const/4 v7, 0x0

    iget-object v3, p0, LS/o;->a:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, LN/d;-><init>(Ljava/lang/String;LG/x;LG/x;II)V

    return-object v2

    :cond_16
    invoke-virtual {v4, v5}, LG/x;->b(LG/x;)Z

    move-result p2

    if-nez p2, :cond_17

    or-int/lit8 v0, v0, 0x20

    :cond_17
    const-string p2, "audio/opus"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    or-int/lit8 p1, v0, 0x2

    move v0, p1

    :cond_18
    if-nez v0, :cond_d

    new-instance v2, LN/d;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, LS/o;->a:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, LN/d;-><init>(Ljava/lang/String;LG/x;LG/x;II)V

    return-object v2

    :goto_3
    new-instance v2, LN/d;

    iget-object v3, p0, LS/o;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, LN/d;-><init>(Ljava/lang/String;LG/x;LG/x;II)V

    return-object v2
.end method

.method public final c(Landroid/content/Context;LG/x;Z)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v1}, LJ/h;->e(LG/x;)LJ/g;

    move-result-object v2

    iget-object v3, v1, LG/x;->p:Ljava/lang/String;

    const-string v5, "video/hevc"

    iget-object v6, v0, LS/o;->c:Ljava/lang/String;

    if-eqz v3, :cond_9

    const-string v9, "video/mv-hevc"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v6}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    const/16 v17, 0x1

    goto/16 :goto_f

    :cond_1
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v2, LS/w;->a:Ljava/util/HashMap;

    iget-object v2, v1, LG/x;->s:Ljava/util/List;

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v12, v10

    const/4 v13, 0x3

    if-le v12, v13, :cond_5

    new-array v14, v13, [Z

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v15

    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_2
    array-length v4, v10

    if-ge v8, v4, :cond_3

    array-length v4, v10

    invoke-static {v10, v8, v4, v14}, LK/t;->c([BII[Z)I

    move-result v4

    array-length v8, v10

    if-eq v4, v8, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v8}, Lu1/I;->c(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v8, v4, 0x3

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Lu1/M;->f()Lu1/C0;

    move-result-object v4

    move/from16 v8, v16

    :goto_3
    iget v14, v4, Lu1/C0;->h:I

    if-ge v8, v14, :cond_6

    invoke-virtual {v4, v8}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v13

    if-ge v14, v12, :cond_4

    new-instance v14, LJ/v;

    invoke-virtual {v4, v8}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v13

    invoke-direct {v14, v15, v10, v12}, LJ/v;-><init>(I[BI)V

    invoke-static {v14}, LK/t;->j(LJ/v;)LK/k;

    move-result-object v15

    iget v7, v15, LK/k;->a:I

    const/16 v11, 0x21

    if-ne v7, v11, :cond_4

    iget v7, v15, LK/k;->b:I

    if-nez v7, :cond_4

    const/4 v2, 0x4

    invoke-virtual {v14, v2}, LJ/v;->p(I)V

    invoke-virtual {v14, v13}, LJ/v;->j(I)I

    move-result v2

    invoke-virtual {v14}, LJ/v;->o()V

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v14, v4, v2, v7}, LK/t;->k(LJ/v;ZILK/l;)LK/l;

    move-result-object v2

    iget v8, v2, LK/l;->a:I

    iget-boolean v9, v2, LK/l;->b:Z

    iget v10, v2, LK/l;->c:I

    iget v11, v2, LK/l;->d:I

    iget-object v12, v2, LK/l;->e:[I

    iget v13, v2, LK/l;->f:I

    invoke-static/range {v8 .. v13}, LJ/h;->a(IZII[II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v2, v7

    :goto_4
    if-nez v2, :cond_8

    move-object v2, v7

    const/4 v8, -0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v7, LJ/W;->a:Ljava/lang/String;

    const-string v7, "\\."

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    iget-object v7, v1, LG/x;->H:LG/n;

    invoke-static {v2, v4, v7}, LJ/h;->d(Ljava/lang/String;[Ljava/lang/String;LG/n;)LJ/g;

    move-result-object v2

    goto :goto_5

    :cond_9
    const/4 v8, -0x1

    const/16 v16, 0x0

    :goto_5
    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-boolean v4, v2, LJ/g;->c:Z

    if-nez v4, :cond_b

    return v16

    :cond_b
    invoke-static {v4}, LF1/i;->o(Z)V

    iget v7, v2, LJ/g;->a:I

    invoke-static {v4}, LF1/i;->o(Z)V

    iget v2, v2, LJ/g;->b:I

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v9, 0x2

    iget-object v10, v0, LS/o;->b:Ljava/lang/String;

    if-eqz v3, :cond_f

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v3, "video/avc"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    move v8, v9

    goto :goto_6

    :sswitch_1
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_6

    :cond_d
    const/4 v8, 0x1

    goto :goto_6

    :sswitch_2
    const-string v3, "video/av01"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_6

    :cond_e
    move/from16 v8, v16

    :goto_6
    packed-switch v8, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    move v7, v4

    :goto_7
    move/from16 v2, v16

    goto :goto_8

    :pswitch_1
    move v7, v9

    goto :goto_7

    :cond_f
    :goto_8
    iget-boolean v3, v0, LS/o;->i:Z

    const-string v8, "audio/ac4"

    if-nez v3, :cond_10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const/16 v3, 0x2a

    if-eq v7, v3, :cond_10

    goto/16 :goto_0

    :cond_10
    iget-object v3, v0, LS/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v3, :cond_11

    iget-object v11, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v11, :cond_12

    :cond_11
    move/from16 v11, v16

    new-array v12, v11, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object v11, v12

    :cond_12
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    array-length v8, v11

    if-nez v8, :cond_16

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v3

    goto :goto_9

    :cond_13
    move v3, v9

    :goto_9
    const/16 v8, 0x12

    if-le v3, v8, :cond_14

    const/16 v4, 0x10

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v8, "android.hardware.type.automotive"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/16 v8, 0x402

    if-eqz v3, :cond_15

    invoke-static {v8, v4}, LS/w;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    filled-new-array {v3}, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    :goto_a
    move-object v11, v3

    goto :goto_b

    :cond_15
    const/16 v3, 0x101

    invoke-static {v3, v4}, LS/w;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    const/16 v11, 0x201

    invoke-static {v11, v4}, LS/w;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v11

    const/16 v12, 0x202

    invoke-static {v12, v4}, LS/w;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v12

    invoke-static {v8, v4}, LS/w;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v8

    const/16 v13, 0x404

    invoke-static {v13, v4}, LS/w;->b(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v4

    filled-new-array {v3, v11, v12, v8, v4}, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    goto :goto_a

    :cond_16
    :goto_b
    array-length v3, v11

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_19

    aget-object v8, v11, v4

    iget v12, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v12, v7, :cond_17

    iget v8, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ge v8, v2, :cond_18

    if-nez p3, :cond_17

    goto :goto_e

    :cond_17
    :goto_d
    const/16 v17, 0x1

    goto :goto_10

    :cond_18
    :goto_e
    sget-object v8, LG/Q;->a:Ljava/util/HashSet;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v9, v7, :cond_0

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v12, "sailfish"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    const-string v12, "marlin"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_d

    :goto_f
    return v17

    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "codec.profileLevel, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, LG/x;->l:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LS/o;->h(Ljava/lang/String;)V

    const/16 v16, 0x0

    return v16

    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_2
        -0x63185e82 -> :sswitch_1
        0x4f62373a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(LG/x;)Z
    .locals 2

    iget-object v0, p1, LG/x;->p:Ljava/lang/String;

    const-string v1, "audio/flac"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, LG/x;->M:I

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-ge p1, v0, :cond_1

    iget-object p1, p0, LS/o;->a:Ljava/lang/String;

    const-string v0, "c2.android.flac.decoder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Landroid/content/Context;LG/x;)Z
    .locals 6

    iget-object v0, p2, LG/x;->p:Ljava/lang/String;

    iget-object v1, p0, LS/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, LS/w;->c(LG/x;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LS/o;->c(Landroid/content/Context;LG/x;Z)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, LS/o;->d(LG/x;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_1
    return v2

    :cond_3
    iget-boolean p1, p0, LS/o;->i:Z

    if-eqz p1, :cond_5

    iget p1, p2, LG/x;->w:I

    if-lez p1, :cond_10

    iget v1, p2, LG/x;->x:I

    if-gtz v1, :cond_4

    goto/16 :goto_4

    :cond_4
    iget p2, p2, LG/x;->B:F

    float-to-double v2, p2

    invoke-virtual {p0, p1, v1, v2, v3}, LS/o;->g(IID)Z

    move-result p1

    return p1

    :cond_5
    iget p1, p2, LG/x;->L:I

    iget-object v3, p0, LS/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v4, -0x1

    if-eq p1, v4, :cond_8

    if-nez v3, :cond_6

    const-string p1, "sampleRate.caps"

    invoke-virtual {p0, p1}, LS/o;->h(Ljava/lang/String;)V

    return v2

    :cond_6
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v5

    if-nez v5, :cond_7

    const-string p1, "sampleRate.aCaps"

    invoke-virtual {p0, p1}, LS/o;->h(Ljava/lang/String;)V

    return v2

    :cond_7
    invoke-virtual {v5, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v5

    if-nez v5, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "sampleRate.support, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LS/o;->h(Ljava/lang/String;)V

    return v2

    :cond_8
    iget p1, p2, LG/x;->J:I

    if-eq p1, v4, :cond_10

    if-nez v3, :cond_9

    const-string p1, "channelCount.caps"

    invoke-virtual {p0, p1}, LS/o;->h(Ljava/lang/String;)V

    return v2

    :cond_9
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object p2

    if-nez p2, :cond_a

    const-string p1, "channelCount.aCaps"

    invoke-virtual {p0, p1}, LS/o;->h(Ljava/lang/String;)V

    return v2

    :cond_a
    invoke-virtual {p2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result p2

    if-gt p2, v0, :cond_f

    if-lez p2, :cond_b

    goto/16 :goto_3

    :cond_b
    const-string v3, "audio/mpeg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "audio/3gpp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "audio/amr-wb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "audio/vorbis"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "audio/opus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "audio/raw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "audio/flac"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "audio/g711-alaw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "audio/g711-mlaw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "audio/gsm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_c
    const-string v3, "audio/ac3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v1, 0x6

    goto :goto_2

    :cond_d
    const-string v3, "audio/eac3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x10

    goto :goto_2

    :cond_e
    const/16 v1, 0x1e

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AssumedMaxChannelAdjustment: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, LS/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "MediaCodecInfo"

    invoke-static {v3, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v1

    :cond_f
    :goto_3
    if-ge p2, p1, :cond_10

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "channelCount.support, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LS/o;->h(Ljava/lang/String;)V

    return v2

    :cond_10
    :goto_4
    return v0
.end method

.method public final f(LG/x;)Z
    .locals 1

    iget-boolean v0, p0, LS/o;->i:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, LS/o;->e:Z

    return p1

    :cond_0
    invoke-static {p1}, LJ/h;->e(LG/x;)LJ/g;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean v0, p1, LJ/g;->c:Z

    if-eqz v0, :cond_1

    invoke-static {v0}, LF1/i;->o(Z)V

    iget p1, p1, LJ/g;->a:I

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final g(IID)Z
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, LS/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v1, :cond_0

    const-string p1, "sizeAndRate.caps"

    invoke-virtual {p0, p1}, LS/o;->h(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "sizeAndRate.vCaps"

    invoke-virtual {p0, p1}, LS/o;->h(Ljava/lang/String;)V

    return v0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const-string v4, "@"

    const-string v5, "x"

    const/4 v6, 0x1

    if-lt v2, v3, :cond_d

    const/4 v7, 0x2

    if-lt v2, v3, :cond_a

    sget-object v3, LF1/i;->a:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {v1}, LB/r;->h(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {}, LB/r;->i()V

    double-to-int v8, p3

    invoke-static {p1, p2, v8}, LB/r;->d(III)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    move-result-object v8

    move v9, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, LB/r;->e(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    move-result-object v10

    invoke-static {v10, v8}, LB/r;->y(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v3, v7

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    move v3, v6

    :goto_1
    if-ne v3, v6, :cond_b

    sget-object v8, LF1/i;->a:Ljava/lang/Boolean;

    if-nez v8, :cond_b

    const/16 v8, 0x25

    if-lt v2, v8, :cond_7

    :cond_6
    move v2, v0

    goto :goto_3

    :cond_7
    invoke-static {v6}, Le2/d;->i(Z)I

    move-result v8

    const/16 v9, 0x23

    if-lt v2, v9, :cond_9

    if-ne v8, v6, :cond_6

    :cond_8
    :goto_2
    move v2, v6

    goto :goto_3

    :cond_9
    invoke-static {v0}, Le2/d;->i(Z)I

    move-result v2

    if-ne v2, v7, :cond_8

    if-ne v8, v6, :cond_6

    goto :goto_2

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, LF1/i;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    :cond_a
    :goto_4
    move v3, v0

    :cond_b
    if-ne v3, v7, :cond_c

    goto/16 :goto_6

    :cond_c
    if-ne v3, v6, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sizeAndRate.cover, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LS/o;->h(Ljava/lang/String;)V

    return v0

    :cond_d
    invoke-static {v1, p1, p2, p3, p4}, LS/o;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_11

    if-ge p1, p2, :cond_10

    sget-object v2, LG/Q;->a:Ljava/util/HashSet;

    const-string v2, "OMX.MTK.VIDEO.DECODER.HEVC"

    iget-object v3, p0, LS/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "mcv5a"

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5

    :cond_e
    invoke-static {v1, p2, p1, p3, p4}, LS/o;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sizeAndRate.rotated, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AssumedSupport ["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, LS/o;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p1}, LJ/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_10
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sizeAndRate.support, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LS/o;->h(Ljava/lang/String;)V

    return v0

    :cond_11
    :goto_6
    return v6
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NoSupport ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LS/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LS/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, LJ/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LS/o;->a:Ljava/lang/String;

    return-object v0
.end method
