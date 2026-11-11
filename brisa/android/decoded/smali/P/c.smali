.class public final LP/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lu1/C0;

.field public static final f:LP/c;

.field public static final g:Lu1/C0;

.field public static final h:Lu1/T;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:I

.field public final c:Lu1/P;

.field public final d:Lu1/P;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    sput-object v0, LP/c;->e:Lu1/C0;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    new-instance v2, LP/c;

    sget-object v3, LP/b;->d:LP/b;

    invoke-static {v3}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, LP/c;-><init>(Lu1/C0;Lu1/P;Ljava/util/List;)V

    sput-object v2, LP/c;->f:LP/c;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lu1/s;->c(I[Ljava/lang/Object;)V

    invoke-static {v3, v2}, Lu1/P;->i(I[Ljava/lang/Object;)Lu1/C0;

    move-result-object v2

    sput-object v2, LP/c;->g:Lu1/C0;

    new-instance v2, LC1/e;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, LC1/e;-><init>(I)V

    invoke-virtual {v2, v0, v1}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    invoke-virtual {v2, v0, v0}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, LC1/e;->b(Z)Lu1/H0;

    move-result-object v0

    sput-object v0, LP/c;->h:Lu1/T;

    return-void
.end method

.method public constructor <init>(Lu1/C0;Lu1/P;Ljava/util/List;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LP/c;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Lu1/C0;->h:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LP/b;

    iget-object v3, p0, LP/c;->a:Landroid/util/SparseArray;

    iget v4, v2, LP/b;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_1
    iget-object v1, p0, LP/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LP/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LP/b;

    iget v1, v1, LP/b;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput p1, p0, LP/c;->b:I

    invoke-static {p2}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object p1

    iput-object p1, p0, LP/c;->c:Lu1/P;

    invoke-static {p3}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object p1

    iput-object p1, p0, LP/c;->d:Lu1/P;

    return-void
.end method

.method public static a(I[I)Lu1/C0;
    .locals 4

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [I

    :cond_0
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    new-instance v3, LP/b;

    invoke-direct {v3, v2, p0}, LP/b;-><init>(II)V

    invoke-virtual {v0, v3}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;LG/e;Landroid/media/AudioDeviceInfo;Ljava/util/List;)LP/c;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Le/a;->d(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v4

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    move-object/from16 v7, p3

    goto :goto_1

    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x0

    if-lt v7, v5, :cond_2

    invoke-virtual/range {p2 .. p2}, LG/e;->c()Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-static {v4, v7}, LP/a;->h(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioDeviceInfo;

    goto :goto_1

    :cond_2
    :goto_0
    move-object v7, v8

    :goto_1
    const/16 v8, 0x1d

    const/4 v9, 0x4

    const/16 v10, 0xc

    const/16 v11, 0xa

    const/4 v12, 0x1

    if-eqz v7, :cond_27

    sget-object v13, LP/V;->a:Lu1/C0;

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v14

    invoke-static {v14}, Lcom/brisa/local/a;->r(I)Z

    move-result v14

    if-eqz v14, :cond_3

    :goto_2
    move/from16 v16, v6

    goto/16 :goto_d

    :cond_3
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v14

    if-ne v14, v12, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v13

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v14

    if-ne v14, v2, :cond_6

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x24

    if-lt v14, v15, :cond_5

    invoke-static {v7}, LL/p;->a(Landroid/media/AudioDeviceInfo;)I

    move-result v14

    if-eqz v14, :cond_5

    if-eq v14, v12, :cond_5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v13

    goto :goto_2

    :cond_5
    const-string v14, "SpeakerLayoutUtil"

    const-string v15, "Built-in speaker\'s getSpeakerLayoutChannelMask not usable, defaulting to stereo."

    invoke-static {v14, v15}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1f

    move/from16 v16, v6

    if-lt v14, v15, :cond_8

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    if-ne v6, v11, :cond_8

    invoke-static {v7}, LP/V;->a(Landroid/media/AudioDeviceInfo;)Lu1/P;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    :goto_3
    move-object v13, v6

    goto/16 :goto_d

    :cond_7
    invoke-static {v7}, LO/h;->B(Landroid/media/AudioDeviceInfo;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/media/session/b;->e(Ljava/util/List;)Lu1/P;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_28

    :goto_4
    goto :goto_3

    :cond_8
    if-lt v14, v15, :cond_24

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    if-lt v14, v15, :cond_24

    if-ne v6, v8, :cond_24

    invoke-static {v7}, LP/V;->a(Landroid/media/AudioDeviceInfo;)Lu1/P;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {v7}, LO/h;->B(Landroid/media/AudioDeviceInfo;)Ljava/util/List;

    move-result-object v6

    const/16 v15, 0x22

    if-lt v14, v15, :cond_23

    if-lt v14, v15, :cond_22

    if-nez v6, :cond_a

    goto/16 :goto_a

    :cond_a
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_21

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, LO/h;->e(Ljava/lang/Object;)Landroid/media/AudioDescriptor;

    move-result-object v18

    invoke-static/range {v18 .. v18}, LO/h;->a(Landroid/media/AudioDescriptor;)I

    move-result v11

    if-ne v11, v2, :cond_b

    invoke-static/range {v18 .. v18}, LO/h;->y(Landroid/media/AudioDescriptor;)[B

    move-result-object v11

    array-length v8, v11

    const/4 v9, 0x3

    if-eq v8, v9, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid SADB length: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AudioDescriptorUtil"

    invoke-static {v9, v8}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_6
    const/16 v8, 0x1d

    const/4 v9, 0x4

    const/16 v11, 0xa

    goto :goto_5

    :cond_c
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v15, :cond_20

    array-length v8, v11

    if-eq v8, v9, :cond_d

    goto/16 :goto_8

    :cond_d
    aget-byte v8, v11, v16

    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_e

    move v9, v10

    goto :goto_7

    :cond_e
    move/from16 v9, v16

    :goto_7
    and-int/lit8 v19, v8, 0x2

    if-eqz v19, :cond_f

    or-int/lit8 v9, v9, 0x20

    :cond_f
    and-int/lit8 v19, v8, 0x4

    if-eqz v19, :cond_10

    or-int/lit8 v9, v9, 0x10

    :cond_10
    and-int/lit8 v19, v8, 0x8

    if-eqz v19, :cond_11

    or-int/lit16 v9, v9, 0xc0

    :cond_11
    and-int/lit8 v19, v8, 0x10

    if-eqz v19, :cond_12

    or-int/lit16 v9, v9, 0x400

    :cond_12
    and-int/lit8 v19, v8, 0x20

    if-eqz v19, :cond_13

    or-int/lit16 v9, v9, 0x300

    :cond_13
    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_14

    const/high16 v8, 0xc000000

    or-int/2addr v9, v8

    :cond_14
    aget-byte v8, v11, v12

    and-int/lit8 v19, v8, 0x1

    if-eqz v19, :cond_15

    const v19, 0x14000

    or-int v9, v9, v19

    :cond_15
    and-int/lit8 v19, v8, 0x2

    if-eqz v19, :cond_16

    or-int/lit16 v9, v9, 0x2000

    :cond_16
    and-int/lit8 v19, v8, 0x4

    if-eqz v19, :cond_17

    const v19, 0x8000

    or-int v9, v9, v19

    :cond_17
    and-int/lit8 v19, v8, 0x8

    if-eqz v19, :cond_18

    or-int/lit16 v9, v9, 0x1800

    :cond_18
    and-int/lit8 v19, v8, 0x10

    if-eqz v19, :cond_19

    const/high16 v19, 0x2000000

    or-int v9, v9, v19

    :cond_19
    and-int/lit8 v19, v8, 0x20

    if-eqz v19, :cond_1a

    const/high16 v19, 0x40000

    or-int v9, v9, v19

    :cond_1a
    and-int/lit8 v19, v8, 0x40

    if-eqz v19, :cond_1b

    or-int/lit16 v9, v9, 0x1800

    :cond_1b
    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_1c

    const/high16 v8, 0x300000

    or-int/2addr v9, v8

    :cond_1c
    aget-byte v8, v11, v2

    and-int/lit8 v11, v8, 0x1

    if-eqz v11, :cond_1d

    const/high16 v11, 0xa0000

    or-int/2addr v9, v11

    :cond_1d
    and-int/lit8 v11, v8, 0x2

    if-eqz v11, :cond_1e

    const/high16 v11, 0x800000

    or-int/2addr v9, v11

    :cond_1e
    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_1f

    const/high16 v8, 0x1400000

    or-int/2addr v8, v9

    goto :goto_9

    :cond_1f
    move v8, v9

    goto :goto_9

    :cond_20
    :goto_8
    move/from16 v8, v16

    :goto_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_21
    new-instance v8, LH0/d;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, LH0/d;-><init>(I)V

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {v14}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v8

    goto :goto_b

    :cond_22
    :goto_a
    sget-object v8, Lu1/P;->f:Lu1/N;

    sget-object v8, Lu1/C0;->i:Lu1/C0;

    :goto_b
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_23

    move-object v13, v8

    goto :goto_d

    :cond_23
    invoke-static {v6}, Landroid/support/v4/media/session/b;->e(Ljava/util/List;)Lu1/P;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_28

    goto/16 :goto_4

    :cond_24
    if-lt v14, v15, :cond_28

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v8, 0xb

    if-eq v6, v8, :cond_26

    if-ne v6, v10, :cond_25

    goto :goto_c

    :cond_25
    if-lt v14, v15, :cond_28

    const/16 v8, 0x16

    if-ne v6, v8, :cond_28

    :cond_26
    :goto_c
    invoke-static {v7}, LP/V;->a(Landroid/media/AudioDeviceInfo;)Lu1/P;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_28

    goto/16 :goto_3

    :cond_27
    move/from16 v16, v6

    sget-object v13, LP/c;->e:Lu1/C0;

    :cond_28
    :goto_d
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v8, LP/c;->h:Lu1/T;

    const-string v9, "android.hardware.type.automotive"

    if-lt v6, v5, :cond_2f

    invoke-static/range {p0 .. p0}, LJ/W;->E(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    :cond_29
    invoke-virtual/range {p2 .. p2}, LG/e;->c()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-static {v4, v0}, LP/a;->n(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    new-instance v2, LP/c;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    filled-new-array {v10}, [I

    move-result-object v6

    invoke-static {v6}, LS1/e;->c([I)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v6, v16

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_2d

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LO/h;->f(Ljava/lang/Object;)Landroid/media/AudioProfile;

    move-result-object v3

    invoke-static {v3}, LO/h;->c(Landroid/media/AudioProfile;)I

    move-result v5

    if-ne v5, v12, :cond_2a

    goto :goto_f

    :cond_2a
    invoke-static {v3}, LO/h;->A(Landroid/media/AudioProfile;)I

    move-result v5

    invoke-static {v5}, LJ/W;->C(I)Z

    move-result v7

    if-nez v7, :cond_2b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lu1/T;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b

    goto :goto_f

    :cond_2b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, LO/h;->z(Landroid/media/AudioProfile;)[I

    move-result-object v3

    invoke-static {v3}, LS1/e;->c([I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_2c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Ljava/util/HashSet;

    invoke-static {v3}, LO/h;->z(Landroid/media/AudioProfile;)[I

    move-result-object v3

    invoke-static {v3}, LS1/e;->c([I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_2d
    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, LP/b;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-direct {v5, v6, v4}, LP/b;-><init>(ILjava/util/Set;)V

    invoke-virtual {v0, v5}, Lu1/I;->c(Ljava/lang/Object;)V

    goto :goto_10

    :cond_2e
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object v0

    invoke-direct {v2, v0, v13, v1}, LP/c;-><init>(Lu1/C0;Lu1/P;Ljava/util/List;)V

    return-object v2

    :cond_2f
    if-nez v7, :cond_30

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    goto :goto_11

    :cond_30
    new-array v2, v12, [Landroid/media/AudioDeviceInfo;

    aput-object v7, v2, v16

    :goto_11
    array-length v4, v2

    move/from16 v5, v16

    :goto_12
    if-ge v5, v4, :cond_32

    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    invoke-static {v6}, Lcom/brisa/local/a;->r(I)Z

    move-result v6

    if-eqz v6, :cond_31

    new-instance v0, LP/c;

    sget-object v2, LP/b;->d:LP/b;

    invoke-static {v2}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v2

    invoke-direct {v0, v2, v13, v1}, LP/c;-><init>(Lu1/C0;Lu1/P;Ljava/util/List;)V

    return-object v0

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_32
    new-instance v2, Lu1/a0;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Lu1/I;-><init>(I)V

    invoke-virtual {v2, v3}, Lu1/I;->c(Ljava/lang/Object;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_38

    invoke-static/range {p0 .. p0}, LJ/W;->E(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    :cond_33
    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    iget-object v4, v8, Lu1/T;->f:Lu1/b0;

    if-nez v4, :cond_34

    invoke-virtual {v8}, Lu1/T;->c()Lu1/F0;

    move-result-object v4

    iput-object v4, v8, Lu1/T;->f:Lu1/b0;

    :cond_34
    invoke-virtual {v4}, Lu1/K;->h()Lu1/R0;

    move-result-object v4

    :cond_35
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, LJ/W;->m(I)I

    move-result v8

    if-ge v7, v8, :cond_36

    goto :goto_13

    :cond_36
    new-instance v7, Landroid/media/AudioFormat$Builder;

    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v7, v10}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    const v7, 0xbb80

    invoke-virtual {v6, v7}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, LG/e;->c()Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-static {v6, v7}, LB/r;->w(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual {v0, v5}, Lu1/I;->c(Ljava/lang/Object;)V

    goto :goto_13

    :cond_37
    invoke-virtual {v0, v3}, Lu1/I;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lu1/I;->d(Ljava/lang/Iterable;)V

    new-instance v0, LP/c;

    invoke-virtual {v2}, Lu1/a0;->g()Lu1/b0;

    move-result-object v2

    invoke-static {v2}, LS1/e;->t(Ljava/util/Collection;)[I

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3, v2}, LP/c;->a(I[I)Lu1/C0;

    move-result-object v2

    invoke-direct {v0, v2, v13, v1}, LP/c;-><init>(Lu1/C0;Lu1/P;Ljava/util/List;)V

    return-object v0

    :cond_38
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "use_external_surround_sound_flag"

    move/from16 v5, v16

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v12, :cond_39

    move v5, v12

    goto :goto_14

    :cond_39
    const/4 v5, 0x0

    :goto_14
    if-nez v5, :cond_3b

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "Amazon"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    const-string v6, "Xiaomi"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    goto :goto_15

    :cond_3a
    const/4 v6, 0x0

    goto :goto_16

    :cond_3b
    :goto_15
    const-string v4, "external_surround_sound_enabled"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v12, :cond_3c

    sget-object v3, LP/c;->g:Lu1/C0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lu1/I;->d(Ljava/lang/Iterable;)V

    :cond_3c
    :goto_16
    if-eqz v0, :cond_3e

    if-nez v5, :cond_3e

    const-string v3, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v12, :cond_3e

    const-string v3, "android.media.extra.ENCODINGS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-static {v3}, LS1/e;->c([I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lu1/I;->d(Ljava/lang/Iterable;)V

    :cond_3d
    new-instance v3, LP/c;

    invoke-virtual {v2}, Lu1/a0;->g()Lu1/b0;

    move-result-object v2

    invoke-static {v2}, LS1/e;->t(Ljava/util/Collection;)[I

    move-result-object v2

    const-string v4, "android.media.extra.MAX_CHANNEL_COUNT"

    const/16 v5, 0xa

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0, v2}, LP/c;->a(I[I)Lu1/C0;

    move-result-object v0

    invoke-direct {v3, v0, v13, v1}, LP/c;-><init>(Lu1/C0;Lu1/P;Ljava/util/List;)V

    return-object v3

    :cond_3e
    const/16 v5, 0xa

    new-instance v0, LP/c;

    invoke-virtual {v2}, Lu1/a0;->g()Lu1/b0;

    move-result-object v2

    invoke-static {v2}, LS1/e;->t(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-static {v5, v2}, LP/c;->a(I[I)Lu1/C0;

    move-result-object v2

    invoke-direct {v0, v2, v13, v1}, LP/c;-><init>(Lu1/C0;Lu1/P;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final c(LG/x;LG/e;)Landroid/util/Pair;
    .locals 16

    move-object/from16 v0, p1

    iget-object v1, v0, LG/x;->p:Ljava/lang/String;

    iget v2, v0, LG/x;->K:I

    iget v3, v0, LG/x;->J:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, LG/x;->l:Ljava/lang/String;

    invoke-static {v1, v4}, LG/W;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, LP/c;->h:Lu1/T;

    invoke-virtual {v5, v4}, Lu1/T;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v9, p0

    goto/16 :goto_a

    :cond_0
    const/4 v4, 0x7

    const/16 v7, 0x8

    const/16 v8, 0x12

    move-object/from16 v9, p0

    iget-object v10, v9, LP/c;->a:Landroid/util/SparseArray;

    if-ne v1, v8, :cond_1

    invoke-static {v10, v8}, LJ/W;->i(Landroid/util/SparseArray;I)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    if-ne v1, v7, :cond_2

    invoke-static {v10, v7}, LJ/W;->i(Landroid/util/SparseArray;I)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    const/16 v11, 0x1e

    if-ne v1, v11, :cond_4

    invoke-static {v10, v11}, LJ/W;->i(Landroid/util/SparseArray;I)Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    :goto_0
    invoke-static {v10, v1}, LJ/W;->i(Landroid/util/SparseArray;I)Z

    move-result v11

    if-nez v11, :cond_5

    goto/16 :goto_a

    :cond_5
    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LP/b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v10, LP/b;->b:I

    iget-object v12, v10, LP/b;->c:Lu1/b0;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0xa

    const/4 v6, -0x1

    if-eq v3, v6, :cond_d

    if-ne v1, v8, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, v0, LG/x;->p:Ljava/lang/String;

    const-string v5, "audio/vnd.dts.uhd;profile=p2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-ge v0, v5, :cond_7

    if-le v3, v15, :cond_c

    goto/16 :goto_a

    :cond_7
    if-nez v12, :cond_8

    if-gt v3, v11, :cond_b

    move v14, v13

    goto :goto_2

    :cond_8
    if-eq v2, v6, :cond_9

    move v0, v2

    goto :goto_1

    :cond_9
    invoke-static {v3}, LJ/W;->n(I)I

    move-result v0

    :goto_1
    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lu1/K;->contains(Ljava/lang/Object;)Z

    move-result v14

    :cond_b
    :goto_2
    if-nez v14, :cond_c

    goto/16 :goto_a

    :cond_c
    move v11, v3

    goto :goto_7

    :cond_d
    :goto_3
    iget v0, v0, LG/x;->L:I

    if-eq v0, v6, :cond_e

    goto :goto_4

    :cond_e
    const v0, 0xbb80

    :goto_4
    iget v8, v10, LP/b;->a:I

    if-eqz v12, :cond_f

    goto :goto_7

    :cond_f
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-lt v10, v11, :cond_13

    move v11, v15

    :goto_5
    if-lez v11, :cond_12

    invoke-static {v11}, LJ/W;->n(I)I

    move-result v5

    if-nez v5, :cond_10

    goto :goto_6

    :cond_10
    new-instance v10, Landroid/media/AudioFormat$Builder;

    invoke-direct {v10}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v10, v8}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, LG/e;->c()Landroid/media/AudioAttributes;

    move-result-object v10

    invoke-static {v5, v10}, LB/r;->w(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    :cond_11
    :goto_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_12
    move v11, v14

    goto :goto_7

    :cond_13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v0}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    move-object v8, v0

    :cond_14
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-gt v0, v5, :cond_17

    if-ne v11, v4, :cond_15

    goto :goto_8

    :cond_15
    const/4 v4, 0x3

    if-eq v11, v4, :cond_16

    const/4 v4, 0x4

    if-eq v11, v4, :cond_16

    const/4 v4, 0x5

    if-ne v11, v4, :cond_17

    :cond_16
    const/4 v7, 0x6

    goto :goto_8

    :cond_17
    move v7, v11

    :goto_8
    sget-object v4, LG/Q;->a:Ljava/util/HashSet;

    const/16 v4, 0x1a

    if-gt v0, v4, :cond_18

    const-string v0, "fugu"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    if-ne v7, v13, :cond_18

    const/4 v7, 0x2

    :cond_18
    if-eq v2, v6, :cond_19

    if-ne v3, v7, :cond_19

    goto :goto_9

    :cond_19
    invoke-static {v7}, LJ/W;->n(I)I

    move-result v2

    :goto_9
    if-nez v2, :cond_1a

    :goto_a
    const/4 v0, 0x0

    return-object v0

    :cond_1a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, LP/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    check-cast p1, LP/c;

    iget-object v1, p1, LP/c;->a:Landroid/util/SparseArray;

    sget-object v3, LJ/W;->a:Ljava/lang/String;

    iget-object v3, p0, LP/c;->a:Landroid/util/SparseArray;

    if-nez v3, :cond_4

    if-nez v1, :cond_3

    :cond_2
    move v1, v0

    goto :goto_2

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_6

    invoke-static {v3, v1}, LJ/w;->t(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_7

    goto :goto_0

    :cond_7
    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_9

    iget v1, p0, LP/c;->b:I

    iget v3, p1, LP/c;->b:I

    if-ne v1, v3, :cond_9

    iget-object v1, p0, LP/c;->c:Lu1/P;

    iget-object v3, p1, LP/c;->c:Lu1/P;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, LP/c;->d:Lu1/P;

    iget-object p1, p1, LP/c;->d:Lu1/P;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :goto_3
    return v0

    :cond_9
    :goto_4
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, LP/c;->b:I

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, LP/c;->a:Landroid/util/SparseArray;

    if-lt v2, v1, :cond_0

    invoke-static {v3}, LJ/w;->a(Landroid/util/SparseArray;)I

    move-result v2

    goto :goto_1

    :cond_0
    const/16 v2, 0x11

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    add-int/2addr v5, v2

    mul-int/2addr v5, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, LP/c;->c:Lu1/P;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, LP/c;->d:Lu1/P;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LP/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioProfiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LP/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", speakerLayoutChannelMasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LP/c;->c:Lu1/P;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spatializerChannelMasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LP/c;->d:Lu1/P;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
