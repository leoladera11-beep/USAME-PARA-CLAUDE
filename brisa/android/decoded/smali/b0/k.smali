.class public final Lb0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/q;


# static fields
.field public static final k:[I

.field public static final l:LW0/c;

.field public static final m:LW0/c;


# instance fields
.field public e:Lu1/C0;

.field public f:Z

.field public g:Ld1/m;

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lb0/k;->k:[I

    new-instance v0, LW0/c;

    new-instance v1, LP/B;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, LP/B;-><init>(I)V

    invoke-direct {v0, v1}, LW0/c;-><init>(LP/B;)V

    sput-object v0, Lb0/k;->l:LW0/c;

    new-instance v0, LW0/c;

    new-instance v1, LP/B;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, LP/B;-><init>(I)V

    invoke-direct {v0, v1}, LW0/c;-><init>(LP/B;)V

    sput-object v0, Lb0/k;->m:LW0/c;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld1/m;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ld1/m;-><init>(I)V

    iput-object v0, p0, Lb0/k;->g:Ld1/m;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb0/k;->f:Z

    const/4 v0, 0x3

    iput v0, p0, Lb0/k;->h:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/ArrayList;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance p1, LK0/a;

    invoke-direct {p1, v1}, LK0/a;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    new-instance p1, Li0/b;

    iget v0, p0, Lb0/k;->j:I

    invoke-direct {p1, v0, v2}, Li0/b;-><init>(II)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_3
    new-instance p1, Lf0/a;

    invoke-direct {p1, v2}, Lf0/a;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_4
    new-instance p1, LK0/a;

    invoke-direct {p1, v2}, LK0/a;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_5
    new-instance p1, Lf0/a;

    invoke-direct {p1, v1}, Lf0/a;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_6
    new-instance p1, Ld0/b;

    iget-boolean v0, p0, Lb0/k;->f:Z

    xor-int/2addr v0, v1

    iget-object v1, p0, Lb0/k;->g:Ld1/m;

    invoke-direct {p1, v0, v1}, Ld0/b;-><init>(ILd1/m;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_7
    sget-object p1, Lb0/k;->m:LW0/c;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, LW0/c;->s([Ljava/lang/Object;)Lb0/n;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_8
    new-instance p1, Li0/b;

    iget v0, p0, Lb0/k;->i:I

    invoke-direct {p1, v0, v1}, Li0/b;-><init>(II)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_9
    new-instance p1, LJ0/d;

    invoke-direct {p1}, LJ0/d;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_a
    iget-object p1, p0, Lb0/k;->e:Lu1/C0;

    if-nez p1, :cond_1

    sget-object p1, Lu1/P;->f:Lu1/N;

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    iput-object p1, p0, Lb0/k;->e:Lu1/C0;

    :cond_1
    new-instance p1, LI0/H;

    iget-boolean v0, p0, Lb0/k;->f:Z

    xor-int/2addr v0, v1

    iget-object v1, p0, Lb0/k;->g:Ld1/m;

    new-instance v2, LJ/S;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, LJ/S;-><init>(J)V

    new-instance v3, LZ0/i;

    iget-object v4, p0, Lb0/k;->e:Lu1/C0;

    invoke-direct {v3, v4}, LZ0/i;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, v1, v2, v3}, LI0/H;-><init>(ILy0/k;LJ/S;LZ0/i;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_b
    new-instance p1, LI0/B;

    invoke-direct {p1}, LI0/B;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_c
    new-instance p1, Lw0/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_d
    new-instance p1, Lv0/j;

    iget-object v1, p0, Lb0/k;->g:Ld1/m;

    iget v3, p0, Lb0/k;->h:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    const/16 v4, 0x40

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    or-int/lit16 v4, v4, 0x80

    :cond_3
    const/16 v3, 0x200

    or-int/2addr v3, v4

    iget-boolean v4, p0, Lb0/k;->f:Z

    const/16 v5, 0x20

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    or-int/2addr v3, v4

    invoke-direct {p1, v1, v3}, Lv0/j;-><init>(Ly0/k;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lv0/n;

    iget-object v1, p0, Lb0/k;->g:Ld1/m;

    iget v3, p0, Lb0/k;->h:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    or-int/lit16 v5, v5, 0x80

    :cond_6
    iget-boolean v0, p0, Lb0/k;->f:Z

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const/16 v2, 0x10

    :goto_4
    or-int v0, v5, v2

    invoke-direct {p1, v1, v0}, Lv0/n;-><init>(Ly0/k;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_e
    new-instance p1, Lu0/d;

    invoke-direct {p1}, Lu0/d;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_f
    new-instance p1, Lt0/g;

    iget-object v1, p0, Lb0/k;->g:Ld1/m;

    iget-boolean v3, p0, Lb0/k;->f:Z

    if-eqz v3, :cond_8

    move v0, v2

    :cond_8
    invoke-direct {p1, v1, v0}, Lt0/g;-><init>(Ly0/k;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_10
    new-instance p1, Lh0/b;

    invoke-direct {p1}, Lh0/b;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lb0/k;->l:LW0/c;

    invoke-virtual {v0, p1}, LW0/c;->s([Ljava/lang/Object;)Lb0/n;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_9
    new-instance p1, Lg0/b;

    invoke-direct {p1}, Lg0/b;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_12
    new-instance p1, Lc0/a;

    invoke-direct {p1}, Lc0/a;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_13
    new-instance p1, LI0/d;

    invoke-direct {p1}, LI0/d;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_14
    new-instance p1, LI0/c;

    invoke-direct {p1}, LI0/c;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_15
    new-instance p1, LI0/a;

    invoke-direct {p1}, LI0/a;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized d()[Lb0/n;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lb0/k;->f(Landroid/net/Uri;Ljava/util/Map;)[Lb0/n;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized f(Landroid/net/Uri;Ljava/util/Map;)[Lb0/n;
    .locals 27

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lb0/k;->k:[I

    const/16 v3, 0x15

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v4, "Content-Type"

    move-object/from16 v5, p2

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/4 v6, -0x1

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v4}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x14

    const/16 v9, 0x13

    const/16 v10, 0x12

    const/16 v11, 0x11

    const/16 v12, 0x10

    const/16 v13, 0xf

    const/16 v14, 0xe

    const/16 v15, 0xd

    const/16 v16, 0xc

    const/16 v17, 0xb

    const/16 v18, 0xa

    const/16 v19, 0x9

    const/16 v20, 0x8

    const/16 v21, 0x7

    const/16 v22, 0x6

    const/16 v23, 0x5

    const/16 v24, 0x4

    const/16 v25, 0x3

    const/16 v26, 0x1

    sparse-switch v7, :sswitch_data_0

    :goto_2
    move v4, v6

    goto/16 :goto_3

    :sswitch_0
    const-string v7, "video/x-matroska"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x1f

    goto/16 :goto_3

    :sswitch_1
    const-string v7, "audio/webm"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    const/16 v4, 0x1e

    goto/16 :goto_3

    :sswitch_2
    const-string v7, "audio/mpeg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    const/16 v4, 0x1d

    goto/16 :goto_3

    :sswitch_3
    const-string v7, "audio/midi"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    const/16 v4, 0x1c

    goto/16 :goto_3

    :sswitch_4
    const-string v7, "audio/flac"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    const/16 v4, 0x1b

    goto/16 :goto_3

    :sswitch_5
    const-string v7, "audio/eac3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    const/16 v4, 0x1a

    goto/16 :goto_3

    :sswitch_6
    const-string v7, "audio/3gpp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    const/16 v4, 0x19

    goto/16 :goto_3

    :sswitch_7
    const-string v7, "video/mp4"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_2

    :cond_a
    const/16 v4, 0x18

    goto/16 :goto_3

    :sswitch_8
    const-string v7, "audio/wav"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_2

    :cond_b
    const/16 v4, 0x17

    goto/16 :goto_3

    :sswitch_9
    const-string v7, "audio/ogg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v4, 0x16

    goto/16 :goto_3

    :sswitch_a
    const-string v7, "audio/mp4"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_2

    :cond_d
    move v4, v3

    goto/16 :goto_3

    :sswitch_b
    const-string v7, "audio/amr"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_2

    :cond_e
    move v4, v8

    goto/16 :goto_3

    :sswitch_c
    const-string v7, "audio/ac4"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_2

    :cond_f
    move v4, v9

    goto/16 :goto_3

    :sswitch_d
    const-string v7, "audio/ac3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_2

    :cond_10
    move v4, v10

    goto/16 :goto_3

    :sswitch_e
    const-string v7, "video/x-flv"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_2

    :cond_11
    move v4, v11

    goto/16 :goto_3

    :sswitch_f
    const-string v7, "application/webm"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_2

    :cond_12
    move v4, v12

    goto/16 :goto_3

    :sswitch_10
    const-string v7, "audio/x-matroska"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_2

    :cond_13
    move v4, v13

    goto/16 :goto_3

    :sswitch_11
    const-string v7, "image/png"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_2

    :cond_14
    move v4, v14

    goto/16 :goto_3

    :sswitch_12
    const-string v7, "image/bmp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_2

    :cond_15
    move v4, v15

    goto/16 :goto_3

    :sswitch_13
    const-string v7, "text/vtt"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_2

    :cond_16
    move/from16 v4, v16

    goto/16 :goto_3

    :sswitch_14
    const-string v7, "video/x-msvideo"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_2

    :cond_17
    move/from16 v4, v17

    goto/16 :goto_3

    :sswitch_15
    const-string v7, "application/mp4"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_2

    :cond_18
    move/from16 v4, v18

    goto/16 :goto_3

    :sswitch_16
    const-string v7, "image/webp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_2

    :cond_19
    move/from16 v4, v19

    goto/16 :goto_3

    :sswitch_17
    const-string v7, "image/jpeg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_2

    :cond_1a
    move/from16 v4, v20

    goto/16 :goto_3

    :sswitch_18
    const-string v7, "image/heif"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto/16 :goto_2

    :cond_1b
    move/from16 v4, v21

    goto :goto_3

    :sswitch_19
    const-string v7, "image/heic"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_2

    :cond_1c
    move/from16 v4, v22

    goto :goto_3

    :sswitch_1a
    const-string v7, "image/avif"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto/16 :goto_2

    :cond_1d
    move/from16 v4, v23

    goto :goto_3

    :sswitch_1b
    const-string v7, "audio/amr-wb"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto/16 :goto_2

    :cond_1e
    move/from16 v4, v24

    goto :goto_3

    :sswitch_1c
    const-string v7, "video/webm"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_2

    :cond_1f
    move/from16 v4, v25

    goto :goto_3

    :sswitch_1d
    const-string v7, "video/mp2t"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    goto/16 :goto_2

    :cond_20
    const/4 v4, 0x2

    goto :goto_3

    :sswitch_1e
    const-string v7, "video/mp2p"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto/16 :goto_2

    :cond_21
    move/from16 v4, v26

    goto :goto_3

    :sswitch_1f
    const-string v7, "audio/eac3-joc"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto/16 :goto_2

    :cond_22
    move v4, v5

    :goto_3
    packed-switch v4, :pswitch_data_0

    :goto_4
    move v8, v6

    goto :goto_5

    :pswitch_0
    move/from16 v8, v21

    goto :goto_5

    :pswitch_1
    move v8, v13

    goto :goto_5

    :pswitch_2
    move/from16 v8, v24

    goto :goto_5

    :pswitch_3
    move/from16 v8, v16

    goto :goto_5

    :pswitch_4
    move/from16 v8, v19

    goto :goto_5

    :pswitch_5
    move/from16 v8, v26

    goto :goto_5

    :pswitch_6
    move/from16 v8, v23

    goto :goto_5

    :pswitch_7
    move v8, v11

    goto :goto_5

    :pswitch_8
    move v8, v9

    goto :goto_5

    :pswitch_9
    move v8, v15

    goto :goto_5

    :pswitch_a
    move v8, v12

    goto :goto_5

    :pswitch_b
    move/from16 v8, v20

    goto :goto_5

    :pswitch_c
    move v8, v10

    goto :goto_5

    :pswitch_d
    move v8, v14

    goto :goto_5

    :pswitch_e
    move v8, v3

    goto :goto_5

    :pswitch_f
    move/from16 v8, v25

    goto :goto_5

    :pswitch_10
    move/from16 v8, v22

    goto :goto_5

    :pswitch_11
    move/from16 v8, v17

    goto :goto_5

    :pswitch_12
    move/from16 v8, v18

    goto :goto_5

    :pswitch_13
    move v8, v5

    :goto_5
    :pswitch_14
    if-eq v8, v6, :cond_23

    :try_start_1
    invoke-virtual {v1, v8, v0}, Lb0/k;->a(ILjava/util/ArrayList;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_23
    :goto_6
    invoke-static/range {p1 .. p1}, LS1/e;->j(Landroid/net/Uri;)I

    move-result v4

    if-eq v4, v6, :cond_24

    if-eq v4, v8, :cond_24

    invoke-virtual {v1, v4, v0}, Lb0/k;->a(ILjava/util/ArrayList;)V

    :cond_24
    move v6, v5

    :goto_7
    if-ge v6, v3, :cond_26

    aget v7, v2, v6

    if-eq v7, v8, :cond_25

    if-eq v7, v4, :cond_25

    invoke-virtual {v1, v7, v0}, Lb0/k;->a(ILjava/util/ArrayList;)V

    :cond_25
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_26
    new-array v2, v5, [Lb0/n;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb0/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_1f
        -0x6315f78b -> :sswitch_1e
        -0x6315f787 -> :sswitch_1d
        -0x63118f53 -> :sswitch_1c
        -0x5fc6f775 -> :sswitch_1b
        -0x58abd7ba -> :sswitch_1a
        -0x58a8e8f5 -> :sswitch_19
        -0x58a8e8f2 -> :sswitch_18
        -0x58a7d764 -> :sswitch_17
        -0x58a21830 -> :sswitch_16
        -0x4a681e4e -> :sswitch_15
        -0x405dba54 -> :sswitch_14
        -0x3be2f26c -> :sswitch_13
        -0x3468a12f -> :sswitch_12
        -0x34686c8b -> :sswitch_11
        -0x17118226 -> :sswitch_10
        -0x2974308 -> :sswitch_f
        0xd45707 -> :sswitch_e
        0xb269698 -> :sswitch_d
        0xb269699 -> :sswitch_c
        0xb26980d -> :sswitch_b
        0xb26c538 -> :sswitch_a
        0xb26cbd6 -> :sswitch_9
        0xb26e933 -> :sswitch_8
        0x4f62635d -> :sswitch_7
        0x59976a2d -> :sswitch_6
        0x59ae0c65 -> :sswitch_5
        0x59aeaa01 -> :sswitch_4
        0x59b1cdba -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x59b64a32 -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_14
        :pswitch_14
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_10
        :pswitch_10
        :pswitch_6
        :pswitch_13
        :pswitch_5
        :pswitch_f
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method
