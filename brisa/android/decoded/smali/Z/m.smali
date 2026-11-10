.class public final LZ/m;
.super LS/r;
.source "SourceFile"


# static fields
.field public static final I1:[I

.field public static J1:Z

.field public static K1:Z


# instance fields
.field public A1:I

.field public B1:Z

.field public C1:I

.field public D1:LZ/l;

.field public E1:LZ/w;

.field public F1:J

.field public G1:Z

.field public H1:I

.field public final N0:Landroid/content/Context;

.field public final O0:Z

.field public final P0:LP/t;

.field public final Q0:I

.field public final R0:Z

.field public final S0:LZ/y;

.field public final T0:LZ/x;

.field public final U0:LZ/g;

.field public final V0:LW0/c;

.field public final W0:J

.field public final X0:LZ/z;

.field public final Y0:Ljava/util/PriorityQueue;

.field public Z0:LK/k;

.field public a1:Z

.field public b1:Z

.field public c1:Z

.field public d1:Z

.field public e1:LZ/K;

.field public f1:Z

.field public g1:I

.field public h1:Ljava/util/List;

.field public i1:Landroid/view/Surface;

.field public j1:LZ/o;

.field public k1:LJ/E;

.field public l1:Z

.field public m1:I

.field public n1:I

.field public o1:J

.field public p1:I

.field public q1:I

.field public r1:I

.field public s1:LN/g0;

.field public t1:J

.field public u1:Z

.field public v1:J

.field public w1:I

.field public x1:J

.field public y1:LG/C0;

.field public z1:LG/C0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LZ/m;->I1:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(LZ/k;)V
    .locals 9

    iget-object v0, p1, LZ/k;->a:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, LZ/k;->c:LS/j;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3, v2}, LS/r;-><init>(Landroid/content/Context;ILS/j;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LZ/m;->N0:Landroid/content/Context;

    iget v1, p1, LZ/k;->g:I

    iput v1, p0, LZ/m;->Q0:I

    const/4 v1, 0x0

    iput-object v1, p0, LZ/m;->e1:LZ/K;

    new-instance v2, LP/t;

    iget-object v4, p1, LZ/k;->e:Landroid/os/Handler;

    iget-object v5, p1, LZ/k;->f:LN/s;

    const/4 v6, 0x1

    invoke-direct {v2, v4, v5, v6}, LP/t;-><init>(Landroid/os/Handler;LN/s;I)V

    iput-object v2, p0, LZ/m;->P0:LP/t;

    iget-object v2, p0, LZ/m;->e1:LZ/K;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, LZ/m;->O0:Z

    new-instance v2, LZ/y;

    iget-wide v7, p1, LZ/k;->d:J

    invoke-direct {v2, v0, p0, v7, v8}, LZ/y;-><init>(Landroid/content/Context;LZ/m;J)V

    iput-object v2, p0, LZ/m;->S0:LZ/y;

    new-instance p1, LZ/x;

    invoke-direct {p1}, LZ/x;-><init>()V

    iput-object p1, p0, LZ/m;->T0:LZ/x;

    new-instance p1, LZ/g;

    new-instance v0, LI0/E;

    const/16 v2, 0x18

    invoke-direct {v0, p0, v2}, LI0/E;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0}, LZ/g;-><init>(LI0/E;)V

    iput-object p1, p0, LZ/m;->U0:LZ/g;

    sget-object p1, LG/Q;->a:Ljava/util/HashSet;

    const-string p1, "NVIDIA"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, LZ/m;->R0:Z

    sget-object p1, LJ/E;->c:LJ/E;

    iput-object p1, p0, LZ/m;->k1:LJ/E;

    iput v6, p0, LZ/m;->m1:I

    iput v4, p0, LZ/m;->n1:I

    sget-object p1, LG/C0;->d:LG/C0;

    iput-object p1, p0, LZ/m;->y1:LG/C0;

    iput v4, p0, LZ/m;->C1:I

    iput-object v1, p0, LZ/m;->z1:LG/C0;

    const/16 p1, -0x3e8

    iput p1, p0, LZ/m;->A1:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, p0, LZ/m;->F1:J

    new-instance p1, LW0/c;

    invoke-direct {p1, v3}, LW0/c;-><init>(I)V

    iput-object p1, p0, LZ/m;->V0:LW0/c;

    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, LZ/m;->Y0:Ljava/util/PriorityQueue;

    const-wide/16 v2, -0x3a98

    iput-wide v2, p0, LZ/m;->W0:J

    new-instance p1, LZ/z;

    invoke-direct {p1}, LZ/z;-><init>()V

    iput-object p1, p0, LZ/m;->X0:LZ/z;

    iput-object v1, p0, LZ/m;->s1:LN/g0;

    return-void
.end method

.method public static G0(Ljava/lang/String;)Z
    .locals 17

    const-string v0, "OMX.google"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-class v2, LZ/m;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, LZ/m;->J1:Z

    if-nez v0, :cond_a2

    sget-object v0, LG/Q;->a:Ljava/util/HashSet;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-gt v0, v3, :cond_a

    sget-object v12, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :goto_0
    move v12, v10

    goto/16 :goto_1

    :sswitch_0
    const-string v13, "machuca"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_0

    :cond_1
    move v12, v4

    goto :goto_1

    :sswitch_1
    const-string v13, "once"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_0

    :cond_2
    move v12, v5

    goto :goto_1

    :sswitch_2
    const-string v13, "magnolia"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    move v12, v6

    goto :goto_1

    :sswitch_3
    const-string v13, "aquaman"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_0

    :cond_4
    move v12, v7

    goto :goto_1

    :sswitch_4
    const-string v13, "oneday"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_0

    :cond_5
    move v12, v8

    goto :goto_1

    :sswitch_5
    const-string v13, "dangalUHD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_0

    :cond_6
    move v12, v9

    goto :goto_1

    :sswitch_6
    const-string v13, "dangalFHD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_0

    :cond_7
    move v12, v11

    goto :goto_1

    :sswitch_7
    const-string v13, "dangal"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_0

    :cond_8
    move v12, v1

    :goto_1
    packed-switch v12, :pswitch_data_0

    goto :goto_3

    :cond_9
    :goto_2
    :pswitch_0
    move v1, v11

    goto/16 :goto_8

    :cond_a
    :goto_3
    const/16 v12, 0x1b

    if-gt v0, v12, :cond_b

    :try_start_1
    const-string v13, "HWEML"

    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_2

    :cond_b
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/16 v15, 0x8

    sparse-switch v14, :sswitch_data_1

    :goto_4
    move v14, v10

    goto/16 :goto_5

    :sswitch_8
    const-string v14, "AFTEUFF014"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_4

    :cond_c
    move v14, v15

    goto/16 :goto_5

    :sswitch_9
    const-string v14, "AFTSO001"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_4

    :cond_d
    move v14, v4

    goto :goto_5

    :sswitch_a
    const-string v14, "AFTEU014"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    goto :goto_4

    :cond_e
    move v14, v5

    goto :goto_5

    :sswitch_b
    const-string v14, "AFTEU011"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_4

    :cond_f
    move v14, v6

    goto :goto_5

    :sswitch_c
    const-string v14, "AFTR"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_4

    :cond_10
    move v14, v7

    goto :goto_5

    :sswitch_d
    const-string v14, "AFTN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    goto :goto_4

    :cond_11
    move v14, v8

    goto :goto_5

    :sswitch_e
    const-string v14, "AFTA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_4

    :cond_12
    move v14, v9

    goto :goto_5

    :sswitch_f
    const-string v14, "AFTKMST12"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    goto :goto_4

    :cond_13
    move v14, v11

    goto :goto_5

    :sswitch_10
    const-string v14, "AFTJMST12"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    goto :goto_4

    :cond_14
    move v14, v1

    :goto_5
    packed-switch v14, :pswitch_data_1

    const/16 v14, 0x1a

    if-gt v0, v14, :cond_a1

    :try_start_2
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_2

    :goto_6
    move v3, v10

    goto/16 :goto_7

    :sswitch_11
    const-string v3, "HWWAS-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_6

    :cond_15
    const/16 v3, 0x8b

    goto/16 :goto_7

    :sswitch_12
    const-string v3, "HWVNS-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_6

    :cond_16
    const/16 v3, 0x8a

    goto/16 :goto_7

    :sswitch_13
    const-string v3, "ELUGA_Prim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_6

    :cond_17
    const/16 v3, 0x89

    goto/16 :goto_7

    :sswitch_14
    const-string v3, "ELUGA_Note"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_6

    :cond_18
    const/16 v3, 0x88

    goto/16 :goto_7

    :sswitch_15
    const-string v3, "ASUS_X00AD_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_6

    :cond_19
    const/16 v3, 0x87

    goto/16 :goto_7

    :sswitch_16
    const-string v3, "HWCAM-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_6

    :cond_1a
    const/16 v3, 0x86

    goto/16 :goto_7

    :sswitch_17
    const-string v3, "HWBLN-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_6

    :cond_1b
    const/16 v3, 0x85

    goto/16 :goto_7

    :sswitch_18
    const-string v3, "DM-01K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_6

    :cond_1c
    const/16 v3, 0x84

    goto/16 :goto_7

    :sswitch_19
    const-string v3, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_6

    :cond_1d
    const/16 v3, 0x83

    goto/16 :goto_7

    :sswitch_1a
    const-string v3, "Infinix-X572"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_6

    :cond_1e
    const/16 v3, 0x82

    goto/16 :goto_7

    :sswitch_1b
    const-string v3, "PB2-670M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_6

    :cond_1f
    const/16 v3, 0x81

    goto/16 :goto_7

    :sswitch_1c
    const-string v3, "santoni"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_6

    :cond_20
    const/16 v3, 0x80

    goto/16 :goto_7

    :sswitch_1d
    const-string v3, "iball8735_9806"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_6

    :cond_21
    const/16 v3, 0x7f

    goto/16 :goto_7

    :sswitch_1e
    const-string v3, "CPH1715"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_6

    :cond_22
    const/16 v3, 0x7e

    goto/16 :goto_7

    :sswitch_1f
    const-string v3, "CPH1609"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_6

    :cond_23
    const/16 v3, 0x7d

    goto/16 :goto_7

    :sswitch_20
    const-string v3, "woods_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_6

    :cond_24
    const/16 v3, 0x7c

    goto/16 :goto_7

    :sswitch_21
    const-string v3, "htc_e56ml_dtul"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_6

    :cond_25
    const/16 v3, 0x7b

    goto/16 :goto_7

    :sswitch_22
    const-string v3, "EverStar_S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_6

    :cond_26
    const/16 v3, 0x7a

    goto/16 :goto_7

    :sswitch_23
    const-string v3, "hwALE-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_6

    :cond_27
    const/16 v3, 0x79

    goto/16 :goto_7

    :sswitch_24
    const-string v3, "itel_S41"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_6

    :cond_28
    const/16 v3, 0x78

    goto/16 :goto_7

    :sswitch_25
    const-string v3, "LS-5017"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_6

    :cond_29
    const/16 v3, 0x77

    goto/16 :goto_7

    :sswitch_26
    const-string v3, "panell_d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_6

    :cond_2a
    const/16 v3, 0x76

    goto/16 :goto_7

    :sswitch_27
    const-string v3, "j2xlteins"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_6

    :cond_2b
    const/16 v3, 0x75

    goto/16 :goto_7

    :sswitch_28
    const-string v3, "A7000plus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_6

    :cond_2c
    const/16 v3, 0x74

    goto/16 :goto_7

    :sswitch_29
    const-string v3, "manning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_6

    :cond_2d
    const/16 v3, 0x73

    goto/16 :goto_7

    :sswitch_2a
    const-string v3, "GIONEE_WBL7519"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_6

    :cond_2e
    const/16 v3, 0x72

    goto/16 :goto_7

    :sswitch_2b
    const-string v3, "GIONEE_WBL7365"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_6

    :cond_2f
    const/16 v3, 0x71

    goto/16 :goto_7

    :sswitch_2c
    const-string v3, "GIONEE_WBL5708"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_6

    :cond_30
    const/16 v3, 0x70

    goto/16 :goto_7

    :sswitch_2d
    const-string v3, "QM16XE_U"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_6

    :cond_31
    const/16 v3, 0x6f

    goto/16 :goto_7

    :sswitch_2e
    const-string v3, "Pixi5-10_4G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_6

    :cond_32
    const/16 v3, 0x6e

    goto/16 :goto_7

    :sswitch_2f
    const-string v3, "TB3-850M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_6

    :cond_33
    const/16 v3, 0x6d

    goto/16 :goto_7

    :sswitch_30
    const-string v3, "TB3-850F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_6

    :cond_34
    const/16 v3, 0x6c

    goto/16 :goto_7

    :sswitch_31
    const-string v3, "TB3-730X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_6

    :cond_35
    const/16 v3, 0x6b

    goto/16 :goto_7

    :sswitch_32
    const-string v3, "TB3-730F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_6

    :cond_36
    const/16 v3, 0x6a

    goto/16 :goto_7

    :sswitch_33
    const-string v3, "A7020a48"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_6

    :cond_37
    const/16 v3, 0x69

    goto/16 :goto_7

    :sswitch_34
    const-string v3, "A7010a48"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_6

    :cond_38
    const/16 v3, 0x68

    goto/16 :goto_7

    :sswitch_35
    const-string v3, "griffin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_6

    :cond_39
    const/16 v3, 0x67

    goto/16 :goto_7

    :sswitch_36
    const-string v3, "marino_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_6

    :cond_3a
    const/16 v3, 0x66

    goto/16 :goto_7

    :sswitch_37
    const-string v3, "CPY83_I00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_6

    :cond_3b
    const/16 v3, 0x65

    goto/16 :goto_7

    :sswitch_38
    const-string v3, "A2016a40"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_6

    :cond_3c
    const/16 v3, 0x64

    goto/16 :goto_7

    :sswitch_39
    const-string v3, "le_x6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_6

    :cond_3d
    const/16 v3, 0x63

    goto/16 :goto_7

    :sswitch_3a
    const-string v3, "l5460"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_6

    :cond_3e
    const/16 v3, 0x62

    goto/16 :goto_7

    :sswitch_3b
    const-string v3, "i9031"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_6

    :cond_3f
    const/16 v3, 0x61

    goto/16 :goto_7

    :sswitch_3c
    const-string v3, "X3_HK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_6

    :cond_40
    const/16 v3, 0x60

    goto/16 :goto_7

    :sswitch_3d
    const-string v3, "V23GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_6

    :cond_41
    const/16 v3, 0x5f

    goto/16 :goto_7

    :sswitch_3e
    const-string v3, "Q4310"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_6

    :cond_42
    const/16 v3, 0x5e

    goto/16 :goto_7

    :sswitch_3f
    const-string v3, "Q4260"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_6

    :cond_43
    const/16 v3, 0x5d

    goto/16 :goto_7

    :sswitch_40
    const-string v3, "PRO7S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_6

    :cond_44
    const/16 v3, 0x5c

    goto/16 :goto_7

    :sswitch_41
    const-string v3, "F3311"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_6

    :cond_45
    const/16 v3, 0x5b

    goto/16 :goto_7

    :sswitch_42
    const-string v3, "F3215"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_6

    :cond_46
    const/16 v3, 0x5a

    goto/16 :goto_7

    :sswitch_43
    const-string v3, "F3213"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_6

    :cond_47
    const/16 v3, 0x59

    goto/16 :goto_7

    :sswitch_44
    const-string v3, "F3211"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_6

    :cond_48
    const/16 v3, 0x58

    goto/16 :goto_7

    :sswitch_45
    const-string v3, "F3116"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_6

    :cond_49
    const/16 v3, 0x57

    goto/16 :goto_7

    :sswitch_46
    const-string v3, "F3113"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_6

    :cond_4a
    const/16 v3, 0x56

    goto/16 :goto_7

    :sswitch_47
    const-string v3, "F3111"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_6

    :cond_4b
    const/16 v3, 0x55

    goto/16 :goto_7

    :sswitch_48
    const-string v3, "E5643"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_6

    :cond_4c
    const/16 v3, 0x54

    goto/16 :goto_7

    :sswitch_49
    const-string v3, "A1601"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_6

    :cond_4d
    const/16 v3, 0x53

    goto/16 :goto_7

    :sswitch_4a
    const-string v3, "Aura_Note_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_6

    :cond_4e
    const/16 v3, 0x52

    goto/16 :goto_7

    :sswitch_4b
    const-string v3, "602LV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_6

    :cond_4f
    const/16 v3, 0x51

    goto/16 :goto_7

    :sswitch_4c
    const-string v3, "601LV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_6

    :cond_50
    const/16 v3, 0x50

    goto/16 :goto_7

    :sswitch_4d
    const-string v3, "MEIZU_M5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_6

    :cond_51
    const/16 v3, 0x4f

    goto/16 :goto_7

    :sswitch_4e
    const-string v3, "p212"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_6

    :cond_52
    const/16 v3, 0x4e

    goto/16 :goto_7

    :sswitch_4f
    const-string v3, "mido"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_6

    :cond_53
    const/16 v3, 0x4d

    goto/16 :goto_7

    :sswitch_50
    const-string v3, "kate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_6

    :cond_54
    const/16 v3, 0x4c

    goto/16 :goto_7

    :sswitch_51
    const-string v3, "fugu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_6

    :cond_55
    const/16 v3, 0x4b

    goto/16 :goto_7

    :sswitch_52
    const-string v3, "XE2X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_6

    :cond_56
    const/16 v3, 0x4a

    goto/16 :goto_7

    :sswitch_53
    const-string v3, "Q427"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_6

    :cond_57
    const/16 v3, 0x49

    goto/16 :goto_7

    :sswitch_54
    const-string v3, "Q350"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_6

    :cond_58
    const/16 v3, 0x48

    goto/16 :goto_7

    :sswitch_55
    const-string v3, "P681"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_6

    :cond_59
    const/16 v3, 0x47

    goto/16 :goto_7

    :sswitch_56
    const-string v3, "F04J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_6

    :cond_5a
    const/16 v3, 0x46

    goto/16 :goto_7

    :sswitch_57
    const-string v3, "F04H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_6

    :cond_5b
    const/16 v3, 0x45

    goto/16 :goto_7

    :sswitch_58
    const-string v3, "F03H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_6

    :cond_5c
    const/16 v3, 0x44

    goto/16 :goto_7

    :sswitch_59
    const-string v3, "F02H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_6

    :cond_5d
    const/16 v3, 0x43

    goto/16 :goto_7

    :sswitch_5a
    const-string v3, "F01J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_6

    :cond_5e
    const/16 v3, 0x42

    goto/16 :goto_7

    :sswitch_5b
    const-string v3, "F01H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_6

    :cond_5f
    const/16 v3, 0x41

    goto/16 :goto_7

    :sswitch_5c
    const-string v3, "1714"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_6

    :cond_60
    const/16 v3, 0x40

    goto/16 :goto_7

    :sswitch_5d
    const-string v3, "1713"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_6

    :cond_61
    const/16 v3, 0x3f

    goto/16 :goto_7

    :sswitch_5e
    const-string v3, "1601"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_6

    :cond_62
    const/16 v3, 0x3e

    goto/16 :goto_7

    :sswitch_5f
    const-string v3, "flo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_6

    :cond_63
    const/16 v3, 0x3d

    goto/16 :goto_7

    :sswitch_60
    const-string v3, "deb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_6

    :cond_64
    const/16 v3, 0x3c

    goto/16 :goto_7

    :sswitch_61
    const-string v3, "cv3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_6

    :cond_65
    const/16 v3, 0x3b

    goto/16 :goto_7

    :sswitch_62
    const-string v3, "cv1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_6

    :cond_66
    const/16 v3, 0x3a

    goto/16 :goto_7

    :sswitch_63
    const-string v3, "Z80"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_6

    :cond_67
    const/16 v3, 0x39

    goto/16 :goto_7

    :sswitch_64
    const-string v3, "QX1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_6

    :cond_68
    const/16 v3, 0x38

    goto/16 :goto_7

    :sswitch_65
    const-string v3, "PLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_6

    :cond_69
    const/16 v3, 0x37

    goto/16 :goto_7

    :sswitch_66
    const-string v3, "P85"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_6

    :cond_6a
    const/16 v3, 0x36

    goto/16 :goto_7

    :sswitch_67
    const-string v3, "MX6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_6

    :cond_6b
    const/16 v3, 0x35

    goto/16 :goto_7

    :sswitch_68
    const-string v3, "M5c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_6

    :cond_6c
    const/16 v3, 0x34

    goto/16 :goto_7

    :sswitch_69
    const-string v3, "M04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_6

    :cond_6d
    const/16 v3, 0x33

    goto/16 :goto_7

    :sswitch_6a
    const-string v3, "JGZ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_6

    :cond_6e
    const/16 v3, 0x32

    goto/16 :goto_7

    :sswitch_6b
    const-string v3, "mh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_6

    :cond_6f
    const/16 v3, 0x31

    goto/16 :goto_7

    :sswitch_6c
    const-string v3, "b5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_6

    :cond_70
    const/16 v3, 0x30

    goto/16 :goto_7

    :sswitch_6d
    const-string v3, "V5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_6

    :cond_71
    const/16 v3, 0x2f

    goto/16 :goto_7

    :sswitch_6e
    const-string v3, "V1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_6

    :cond_72
    const/16 v3, 0x2e

    goto/16 :goto_7

    :sswitch_6f
    const-string v3, "Q5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_6

    :cond_73
    const/16 v3, 0x2d

    goto/16 :goto_7

    :sswitch_70
    const-string v3, "C1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_6

    :cond_74
    const/16 v3, 0x2c

    goto/16 :goto_7

    :sswitch_71
    const-string v3, "woods_fn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_6

    :cond_75
    const/16 v3, 0x2b

    goto/16 :goto_7

    :sswitch_72
    const-string v3, "ELUGA_A3_Pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_6

    :cond_76
    const/16 v3, 0x2a

    goto/16 :goto_7

    :sswitch_73
    const-string v3, "Z12_PRO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_6

    :cond_77
    const/16 v3, 0x29

    goto/16 :goto_7

    :sswitch_74
    const-string v3, "BLACK-1X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto/16 :goto_6

    :cond_78
    const/16 v3, 0x28

    goto/16 :goto_7

    :sswitch_75
    const-string v3, "taido_row"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_6

    :cond_79
    const/16 v3, 0x27

    goto/16 :goto_7

    :sswitch_76
    const-string v3, "Pixi4-7_3G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_6

    :cond_7a
    const/16 v3, 0x26

    goto/16 :goto_7

    :sswitch_77
    const-string v3, "GIONEE_GBL7360"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_6

    :cond_7b
    const/16 v3, 0x25

    goto/16 :goto_7

    :sswitch_78
    const-string v3, "GiONEE_CBL7513"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_6

    :cond_7c
    const/16 v3, 0x24

    goto/16 :goto_7

    :sswitch_79
    const-string v3, "OnePlus5T"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_6

    :cond_7d
    const/16 v3, 0x23

    goto/16 :goto_7

    :sswitch_7a
    const-string v3, "whyred"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_6

    :cond_7e
    const/16 v3, 0x22

    goto/16 :goto_7

    :sswitch_7b
    const-string v3, "watson"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_6

    :cond_7f
    const/16 v3, 0x21

    goto/16 :goto_7

    :sswitch_7c
    const-string v3, "SVP-DTV15"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_6

    :cond_80
    const/16 v3, 0x20

    goto/16 :goto_7

    :sswitch_7d
    const-string v3, "A7000-a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_6

    :cond_81
    const/16 v3, 0x1f

    goto/16 :goto_7

    :sswitch_7e
    const-string v3, "nicklaus_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_6

    :cond_82
    const/16 v3, 0x1e

    goto/16 :goto_7

    :sswitch_7f
    const-string v3, "tcl_eu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_6

    :cond_83
    const/16 v3, 0x1d

    goto/16 :goto_7

    :sswitch_80
    const-string v4, "ELUGA_Ray_X"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto/16 :goto_6

    :sswitch_81
    const-string v3, "s905x018"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto/16 :goto_6

    :cond_84
    move v3, v12

    goto/16 :goto_7

    :sswitch_82
    const-string v3, "A10-70L"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_6

    :cond_85
    move v3, v14

    goto/16 :goto_7

    :sswitch_83
    const-string v3, "A10-70F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_6

    :cond_86
    const/16 v3, 0x19

    goto/16 :goto_7

    :sswitch_84
    const-string v3, "namath"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto/16 :goto_6

    :cond_87
    const/16 v3, 0x18

    goto/16 :goto_7

    :sswitch_85
    const-string v3, "Slate_Pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_6

    :cond_88
    const/16 v3, 0x17

    goto/16 :goto_7

    :sswitch_86
    const-string v3, "iris60"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_6

    :cond_89
    const/16 v3, 0x16

    goto/16 :goto_7

    :sswitch_87
    const-string v3, "BRAVIA_ATV2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_6

    :cond_8a
    const/16 v3, 0x15

    goto/16 :goto_7

    :sswitch_88
    const-string v3, "GiONEE_GBL7319"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_6

    :cond_8b
    const/16 v3, 0x14

    goto/16 :goto_7

    :sswitch_89
    const-string v3, "panell_dt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_6

    :cond_8c
    const/16 v3, 0x13

    goto/16 :goto_7

    :sswitch_8a
    const-string v3, "panell_ds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_6

    :cond_8d
    const/16 v3, 0x12

    goto/16 :goto_7

    :sswitch_8b
    const-string v3, "panell_dl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_6

    :cond_8e
    const/16 v3, 0x11

    goto/16 :goto_7

    :sswitch_8c
    const-string v3, "vernee_M5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_6

    :cond_8f
    const/16 v3, 0x10

    goto/16 :goto_7

    :sswitch_8d
    const-string v3, "pacificrim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_6

    :cond_90
    const/16 v3, 0xf

    goto/16 :goto_7

    :sswitch_8e
    const-string v3, "Phantom6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_6

    :cond_91
    const/16 v3, 0xe

    goto/16 :goto_7

    :sswitch_8f
    const-string v3, "ComioS1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_6

    :cond_92
    const/16 v3, 0xd

    goto/16 :goto_7

    :sswitch_90
    const-string v3, "XT1663"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_6

    :cond_93
    const/16 v3, 0xc

    goto/16 :goto_7

    :sswitch_91
    const-string v3, "RAIJIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto/16 :goto_6

    :cond_94
    const/16 v3, 0xb

    goto/16 :goto_7

    :sswitch_92
    const-string v3, "AquaPowerM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto/16 :goto_6

    :cond_95
    const/16 v3, 0xa

    goto/16 :goto_7

    :sswitch_93
    const-string v3, "PGN611"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_6

    :cond_96
    const/16 v3, 0x9

    goto/16 :goto_7

    :sswitch_94
    const-string v3, "PGN610"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto/16 :goto_6

    :cond_97
    move v3, v15

    goto/16 :goto_7

    :sswitch_95
    const-string v3, "PGN528"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto/16 :goto_6

    :cond_98
    move v3, v4

    goto :goto_7

    :sswitch_96
    const-string v3, "NX573J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_6

    :cond_99
    move v3, v5

    goto :goto_7

    :sswitch_97
    const-string v3, "NX541J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_6

    :cond_9a
    move v3, v6

    goto :goto_7

    :sswitch_98
    const-string v3, "CP8676_I02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto/16 :goto_6

    :cond_9b
    move v3, v7

    goto :goto_7

    :sswitch_99
    const-string v3, "K50a40"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_6

    :cond_9c
    move v3, v8

    goto :goto_7

    :sswitch_9a
    const-string v3, "GIONEE_SWW1631"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto/16 :goto_6

    :cond_9d
    move v3, v9

    goto :goto_7

    :sswitch_9b
    const-string v3, "GIONEE_SWW1627"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto/16 :goto_6

    :cond_9e
    move v3, v11

    goto :goto_7

    :sswitch_9c
    const-string v3, "GIONEE_SWW1609"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto/16 :goto_6

    :cond_9f
    move v3, v1

    :cond_a0
    :goto_7
    packed-switch v3, :pswitch_data_2

    const-string v0, "JSN-L21"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_a1
    :goto_8
    :try_start_3
    sput-boolean v1, LZ/m;->K1:Z

    sput-boolean v11, LZ/m;->J1:Z

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_a2
    :goto_9
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-boolean v0, LZ/m;->K1:Z

    return v0

    :goto_a
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
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
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
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
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_9c
        -0x7fd6c381 -> :sswitch_9b
        -0x7fd6c368 -> :sswitch_9a
        -0x7d026749 -> :sswitch_99
        -0x78929d6a -> :sswitch_98
        -0x75f50a1e -> :sswitch_97
        -0x75f4fe9d -> :sswitch_96
        -0x736f875c -> :sswitch_95
        -0x736f83c2 -> :sswitch_94
        -0x736f83c1 -> :sswitch_93
        -0x7327ce1c -> :sswitch_92
        -0x705c574b -> :sswitch_91
        -0x651ebb62 -> :sswitch_90
        -0x6423293b -> :sswitch_8f
        -0x604f5117 -> :sswitch_8e
        -0x5f691e13 -> :sswitch_8d
        -0x5ca40cc4 -> :sswitch_8c
        -0x58520ec1 -> :sswitch_8b
        -0x58520eba -> :sswitch_8a
        -0x58520eb9 -> :sswitch_89
        -0x4eaed329 -> :sswitch_88
        -0x4892fb4f -> :sswitch_87
        -0x465b3df3 -> :sswitch_86
        -0x43e6c939 -> :sswitch_85
        -0x3ec0fcc5 -> :sswitch_84
        -0x3b33cca0 -> :sswitch_83
        -0x3b33cc9a -> :sswitch_82
        -0x398ae3f6 -> :sswitch_81
        -0x391f0fb4 -> :sswitch_80
        -0x346837ae -> :sswitch_7f
        -0x323788e3 -> :sswitch_7e
        -0x30f57652 -> :sswitch_7d
        -0x2f88a116 -> :sswitch_7c
        -0x2f61ed98 -> :sswitch_7b
        -0x2efd0837 -> :sswitch_7a
        -0x2e9e9441 -> :sswitch_79
        -0x2247b8b1 -> :sswitch_78
        -0x1f0fa2b7 -> :sswitch_77
        -0x19af3b41 -> :sswitch_76
        -0x114fad3e -> :sswitch_75
        -0x10dae90b -> :sswitch_74
        -0x1084b7b7 -> :sswitch_73
        -0xa5988e9 -> :sswitch_72
        -0x35f9fbf -> :sswitch_71
        0x84e -> :sswitch_70
        0xa04 -> :sswitch_6f
        0xa9b -> :sswitch_6e
        0xa9f -> :sswitch_6d
        0xc13 -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0x11ebd -> :sswitch_6a
        0x12711 -> :sswitch_69
        0x127db -> :sswitch_68
        0x12beb -> :sswitch_67
        0x1334d -> :sswitch_66
        0x135c9 -> :sswitch_65
        0x13aea -> :sswitch_64
        0x158d2 -> :sswitch_63
        0x1821e -> :sswitch_62
        0x18220 -> :sswitch_61
        0x18401 -> :sswitch_60
        0x18c69 -> :sswitch_5f
        0x1716e6 -> :sswitch_5e
        0x171ac8 -> :sswitch_5d
        0x171ac9 -> :sswitch_5c
        0x208c61 -> :sswitch_5b
        0x208c63 -> :sswitch_5a
        0x208c80 -> :sswitch_59
        0x208c9f -> :sswitch_58
        0x208cbe -> :sswitch_57
        0x208cc0 -> :sswitch_56
        0x252f5f -> :sswitch_55
        0x25981d -> :sswitch_54
        0x259b88 -> :sswitch_53
        0x290a13 -> :sswitch_52
        0x3021fd -> :sswitch_51
        0x321e47 -> :sswitch_50
        0x332327 -> :sswitch_4f
        0x33ab63 -> :sswitch_4e
        0x27691fb -> :sswitch_4d
        0x30f8881 -> :sswitch_4c
        0x30f8c42 -> :sswitch_4b
        0x349f581 -> :sswitch_4a
        0x3ab0ea7 -> :sswitch_49
        0x3e53ea5 -> :sswitch_48
        0x3f25a44 -> :sswitch_47
        0x3f25a46 -> :sswitch_46
        0x3f25a49 -> :sswitch_45
        0x3f25e05 -> :sswitch_44
        0x3f25e07 -> :sswitch_43
        0x3f25e09 -> :sswitch_42
        0x3f261c6 -> :sswitch_41
        0x48dce49 -> :sswitch_40
        0x48dd589 -> :sswitch_3f
        0x48dd8af -> :sswitch_3e
        0x4d36832 -> :sswitch_3d
        0x4f0b0e7 -> :sswitch_3c
        0x5e2479e -> :sswitch_3b
        0x60acc05 -> :sswitch_3a
        0x6214744 -> :sswitch_39
        0x9d91379 -> :sswitch_38
        0xadc0551 -> :sswitch_37
        0xea056b3 -> :sswitch_36
        0x1121dbc3 -> :sswitch_35
        0x1255818c -> :sswitch_34
        0x1263990d -> :sswitch_33
        0x12d90f3a -> :sswitch_32
        0x12d90f4c -> :sswitch_31
        0x12d98b1b -> :sswitch_30
        0x12d98b22 -> :sswitch_2f
        0x1844c711 -> :sswitch_2e
        0x1e3e8044 -> :sswitch_2d
        0x2f5336ed -> :sswitch_2c
        0x2f54115e -> :sswitch_2b
        0x2f541849 -> :sswitch_2a
        0x31cf010e -> :sswitch_29
        0x36ad82f4 -> :sswitch_28
        0x391a0b61 -> :sswitch_27
        0x3f3728cd -> :sswitch_26
        0x448ec687 -> :sswitch_25
        0x46260f63 -> :sswitch_24
        0x4c505106 -> :sswitch_23
        0x4de67084 -> :sswitch_22
        0x506ac5a9 -> :sswitch_21
        0x5abad9cd -> :sswitch_20
        0x64d2e6e9 -> :sswitch_1f
        0x64d2eac5 -> :sswitch_1e
        0x65e4085b -> :sswitch_1d
        0x6f373556 -> :sswitch_1c
        0x719f1dcb -> :sswitch_1b
        0x75d9a0f0 -> :sswitch_1a
        0x7796d144 -> :sswitch_19
        0x785bcb26 -> :sswitch_18
        0x78fc0e50 -> :sswitch_17
        0x790521fb -> :sswitch_16
        0x7933207f -> :sswitch_15
        0x7a05a409 -> :sswitch_14
        0x7a0696bd -> :sswitch_13
        0x7a16dfe7 -> :sswitch_12
        0x7a1f0e95 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
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
.end method

.method public static H0(LS/o;LG/x;)I
    .locals 11

    iget v0, p1, LG/x;->w:I

    iget v1, p1, LG/x;->x:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    if-ne v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, p1, LG/x;->p:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "video/avc"

    const-string v6, "video/av01"

    const/4 v7, 0x1

    const-string v8, "video/hevc"

    const/4 v9, 0x2

    if-eqz v4, :cond_4

    invoke-static {p1}, LJ/h;->c(LG/x;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_2

    if-eq p1, v7, :cond_2

    if-ne p1, v9, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x400

    if-ne p1, v3, :cond_3

    move-object v3, v6

    goto :goto_1

    :cond_2
    :goto_0
    move-object v3, v5

    goto :goto_1

    :cond_3
    move-object v3, v8

    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x4

    const/4 v10, 0x3

    sparse-switch p1, :sswitch_data_0

    :goto_2
    move v7, v2

    goto :goto_3

    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x6

    goto :goto_3

    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x5

    goto :goto_3

    :sswitch_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move v7, v4

    goto :goto_3

    :sswitch_3
    const-string p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    move v7, v10

    goto :goto_3

    :sswitch_4
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move v7, v9

    goto :goto_3

    :sswitch_5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_2

    :sswitch_6
    const-string p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v7, 0x0

    :cond_b
    :goto_3
    packed-switch v7, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    mul-int/2addr v0, v1

    mul-int/2addr v0, v10

    div-int/lit8 v0, v0, 0x8

    return v0

    :pswitch_1
    sget-object p1, LG/Q;->a:Ljava/util/HashSet;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "BRAVIA 4K 2015"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "Amazon"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "KFSOWI"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "AFTS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p0, p0, LS/o;->f:Z

    if-eqz p0, :cond_c

    goto :goto_4

    :cond_c
    const/16 p0, 0x10

    invoke-static {v0, p0}, LJ/W;->e(II)I

    move-result p1

    invoke-static {v1, p0}, LJ/W;->e(II)I

    move-result p0

    mul-int/2addr p0, p1

    mul-int/lit16 p0, p0, 0x300

    div-int/2addr p0, v4

    return p0

    :pswitch_2
    mul-int/2addr v0, v1

    mul-int/2addr v0, v10

    div-int/2addr v0, v4

    const/high16 p0, 0x200000

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :pswitch_3
    mul-int/2addr v0, v1

    mul-int/2addr v0, v10

    div-int/2addr v0, v4

    return v0

    :cond_d
    :goto_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static I0(Landroid/content/Context;LS/i;LG/x;ZZ)Ljava/util/List;
    .locals 2

    iget-object v0, p2, LG/x;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object p0, Lu1/C0;->i:Lu1/C0;

    return-object p0

    :cond_0
    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, LZ/a;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2}, LS/w;->c(LG/x;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lu1/C0;->i:Lu1/C0;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0, p3, p4}, LS/i;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    invoke-static {p1, p2, p3, p4}, LS/w;->g(LS/i;LG/x;ZZ)Lu1/C0;

    move-result-object p0

    return-object p0
.end method

.method public static J0(LS/o;LG/x;)I
    .locals 4

    iget v0, p1, LG/x;->q:I

    iget-object v1, p1, LG/x;->s:Ljava/util/List;

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p0, p1, LG/x;->q:I

    add-int/2addr p0, v2

    return p0

    :cond_1
    invoke-static {p0, p1}, LZ/m;->H0(LS/o;LG/x;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0()Z
    .locals 2

    iget-object v0, p0, LS/r;->Y:LS/o;

    iget-object v1, p0, LZ/m;->e1:LZ/K;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, v0, LS/o;->a:Ljava/lang/String;

    const-string v1, "c2.mtk.avc.decoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "c2.mtk.hevc.decoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "c2.mtk.vp9.decoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0}, LS/r;->A0()Z

    move-result v0

    return v0
.end method

.method public final C(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, LS/r;->C(FF)V

    iget-object p2, p0, LZ/m;->e1:LZ/K;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, LZ/K;->h(F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LZ/m;->S0:LZ/y;

    invoke-virtual {p2, p1}, LZ/y;->g(F)V

    :goto_0
    iget-object p2, p0, LZ/m;->X0:LZ/z;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, LZ/z;->c(F)V

    :cond_1
    return-void
.end method

.method public final C0(LS/i;LG/x;)I
    .locals 11

    iget-object v0, p2, LG/x;->p:Ljava/lang/String;

    invoke-static {v0}, LG/W;->k(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1, v1, v1, v1}, LN/a;->e(IIII)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p2, LG/x;->t:LG/s;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, LZ/m;->N0:Landroid/content/Context;

    invoke-static {v3, p1, p2, v0, v1}, LZ/m;->I0(Landroid/content/Context;LS/i;LG/x;ZZ)Ljava/util/List;

    move-result-object v4

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3, p1, p2, v1, v1}, LZ/m;->I0(Landroid/content/Context;LS/i;LG/x;ZZ)Ljava/util/List;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2, v1, v1, v1}, LN/a;->e(IIII)I

    move-result p1

    return p1

    :cond_3
    iget v5, p2, LG/x;->T:I

    if-eqz v5, :cond_5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v6, v1, v1, v1}, LN/a;->e(IIII)I

    move-result p1

    return p1

    :cond_5
    :goto_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LS/o;

    invoke-virtual {v5, v3, p2}, LS/o;->e(Landroid/content/Context;LG/x;)Z

    move-result v6

    if-nez v6, :cond_7

    move v7, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LS/o;

    invoke-virtual {v8, v3, p2}, LS/o;->e(Landroid/content/Context;LG/x;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v4, v1

    move v6, v2

    move-object v5, v8

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    move v4, v2

    :goto_3
    if-eqz v6, :cond_8

    const/4 v7, 0x4

    goto :goto_4

    :cond_8
    const/4 v7, 0x3

    :goto_4
    invoke-virtual {v5, p2}, LS/o;->f(LG/x;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x10

    goto :goto_5

    :cond_9
    const/16 v8, 0x8

    :goto_5
    iget-boolean v5, v5, LS/o;->g:Z

    if-eqz v5, :cond_a

    const/16 v5, 0x40

    goto :goto_6

    :cond_a
    move v5, v1

    :goto_6
    if-eqz v4, :cond_b

    const/16 v4, 0x80

    goto :goto_7

    :cond_b
    move v4, v1

    :goto_7
    const-string v9, "video/dolby-vision"

    iget-object v10, p2, LG/x;->p:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {v3}, LZ/a;->a(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_c

    const/16 v4, 0x100

    :cond_c
    if-eqz v6, :cond_d

    invoke-static {v3, p1, p2, v0, v2}, LZ/m;->I0(Landroid/content/Context;LS/i;LG/x;ZZ)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, LS/w;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, LM0/K;

    const/16 v2, 0x12

    invoke-direct {p1, v3, p2, v2}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, LS/s;

    invoke-direct {v2, p1}, LS/s;-><init>(LS/v;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LS/o;

    invoke-virtual {p1, v3, p2}, LS/o;->e(Landroid/content/Context;LG/x;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1, p2}, LS/o;->f(LG/x;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 v1, 0x20

    :cond_d
    or-int p1, v7, v8

    or-int/2addr p1, v1

    or-int/2addr p1, v5

    or-int/2addr p1, v4

    return p1
.end method

.method public final F(J)Z
    .locals 6

    iget-wide v0, p0, LS/r;->u0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v4, p0, LZ/m;->t1:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-wide v4, p0, LS/r;->D0:J

    cmp-long v0, v4, v2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    return v2

    :cond_2
    cmp-long p1, p1, v4

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final J(LS/o;LG/x;LG/x;Z)LN/d;
    .locals 10

    invoke-virtual {p1, p2, p3}, LS/o;->b(LG/x;LG/x;)LN/d;

    move-result-object v0

    iget v1, p2, LG/x;->B:F

    iget v2, p3, LG/x;->B:F

    iget v3, v0, LN/d;->e:I

    iget-object v4, p0, LZ/m;->Z0:LK/k;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, p3, LG/x;->w:I

    iget v6, v4, LK/k;->a:I

    if-gt v5, v6, :cond_0

    iget v5, p3, LG/x;->x:I

    iget v6, v4, LK/k;->b:I

    if-le v5, v6, :cond_1

    :cond_0
    or-int/lit16 v3, v3, 0x100

    :cond_1
    invoke-static {p1, p3}, LZ/m;->J0(LS/o;LG/x;)I

    move-result v5

    iget v4, v4, LK/k;->c:I

    if-le v5, v4, :cond_2

    or-int/lit8 v3, v3, 0x40

    :cond_2
    iget v4, p0, LZ/m;->n1:I

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_3

    goto :goto_0

    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-ge v4, v5, :cond_7

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_4

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "MiTV"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_7

    cmpl-float v4, v2, v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v4, p1, LS/o;->f:Z

    if-eqz v4, :cond_6

    if-eqz p4, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr p4, v1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p4, v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float p4, p4, v1

    if-lez p4, :cond_7

    const/high16 p4, 0x10000

    or-int/2addr v3, p4

    :cond_7
    :goto_0
    move v9, v3

    new-instance v4, LN/d;

    iget-object v5, p1, LS/o;->a:Ljava/lang/String;

    if-eqz v9, :cond_8

    const/4 p1, 0x0

    :goto_1
    move v8, p1

    move-object v6, p2

    move-object v7, p3

    goto :goto_2

    :cond_8
    iget p1, v0, LN/d;->d:I

    goto :goto_1

    :goto_2
    invoke-direct/range {v4 .. v9}, LN/d;-><init>(Ljava/lang/String;LG/x;LG/x;II)V

    return-object v4
.end method

.method public final K(Ljava/lang/IllegalStateException;LS/o;)LS/m;
    .locals 2

    new-instance v0, LZ/h;

    iget-object v1, p0, LZ/m;->i1:Landroid/view/Surface;

    invoke-direct {v0, p1, p2}, LS/m;-><init>(Ljava/lang/IllegalStateException;LS/o;)V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    :cond_0
    return-object v0
.end method

.method public final K0(LS/o;)Landroid/view/Surface;
    .locals 5

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LZ/K;->d()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, LZ/m;->i1:Landroid/view/Surface;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iget-boolean v0, p1, LS/o;->h:Z

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p0, p1}, LZ/m;->S0(LS/o;)Z

    move-result v0

    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p0, LZ/m;->j1:LZ/o;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, LZ/o;->e:Z

    iget-boolean v3, p1, LS/o;->f:Z

    if-eq v1, v3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LZ/o;->release()V

    iput-object v2, p0, LZ/m;->j1:LZ/o;

    :cond_3
    iget-object v0, p0, LZ/m;->j1:LZ/o;

    if-nez v0, :cond_b

    iget-boolean p1, p1, LS/o;->f:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-static {}, LZ/o;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    sget v2, LZ/o;->h:I

    :goto_0
    move v2, v0

    :goto_1
    invoke-static {v2}, LF1/i;->o(Z)V

    new-instance v2, LZ/n;

    const-string v3, "ExoPlayer:PlaceholderSurface"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    sget p1, LZ/o;->h:I

    goto :goto_2

    :cond_6
    move p1, v1

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, v2, LZ/n;->f:Landroid/os/Handler;

    new-instance v4, LJ/m;

    invoke-direct {v4, v3}, LJ/m;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, LZ/n;->e:LJ/m;

    monitor-enter v2

    :try_start_0
    iget-object v3, v2, LZ/n;->f:Landroid/os/Handler;

    invoke-virtual {v3, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    iget-object p1, v2, LZ/n;->i:LZ/o;

    if-nez p1, :cond_7

    iget-object p1, v2, LZ/n;->h:Ljava/lang/RuntimeException;

    if-nez p1, :cond_7

    iget-object p1, v2, LZ/n;->g:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_7

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move v1, v0

    goto :goto_3

    :cond_7
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_8
    iget-object p1, v2, LZ/n;->h:Ljava/lang/RuntimeException;

    if-nez p1, :cond_a

    iget-object p1, v2, LZ/n;->g:Ljava/lang/Error;

    if-nez p1, :cond_9

    iget-object p1, v2, LZ/n;->i:LZ/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LZ/m;->j1:LZ/o;

    goto :goto_5

    :cond_9
    throw p1

    :cond_a
    throw p1

    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_b
    :goto_5
    iget-object p1, p0, LZ/m;->j1:LZ/o;

    return-object p1
.end method

.method public final L0(LS/o;)Z
    .locals 2

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    if-nez v0, :cond_3

    iget-object v0, p0, LZ/m;->i1:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    iget-boolean v0, p1, LS/o;->h:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, LZ/m;->S0(LS/o;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final M0(LM/f;)Z
    .locals 8

    invoke-virtual {p0}, LN/a;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, LK/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, LN/a;->v:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-wide v4, p1, LM/f;->k:J

    iget-object p1, p0, LS/r;->C0:LS/q;

    iget-wide v6, p1, LS/q;->c:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x186a0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final N0()V
    .locals 8

    iget v0, p0, LZ/m;->p1:I

    if-lez v0, :cond_1

    iget-object v0, p0, LN/a;->k:LJ/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, LZ/m;->o1:J

    sub-long v2, v0, v2

    iget v4, p0, LZ/m;->p1:I

    iget-object v5, p0, LZ/m;->P0:LP/t;

    iget-object v6, v5, LP/t;->a:Landroid/os/Handler;

    if-eqz v6, :cond_0

    new-instance v7, LZ/F;

    invoke-direct {v7, v5, v4, v2, v3}, LZ/F;-><init>(LP/t;IJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, LZ/m;->p1:I

    iput-wide v0, p0, LZ/m;->o1:J

    :cond_1
    return-void
.end method

.method public final O0()V
    .locals 4

    iget-boolean v0, p0, LZ/m;->B1:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LS/r;->R:LS/k;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, LZ/l;

    invoke-direct {v1, p0, v0}, LZ/l;-><init>(LZ/m;LS/k;)V

    iput-object v1, p0, LZ/m;->D1:LZ/l;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tunnel-peek"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, LS/k;->e(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final P0(LS/k;IJ)V
    .locals 3

    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3, p4}, LS/k;->v(IJ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, LS/r;->B0:LN/c;

    iget p2, p1, LN/c;->e:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p1, LN/c;->e:I

    const/4 p1, 0x0

    iput p1, p0, LZ/m;->q1:I

    iget-object p2, p0, LZ/m;->e1:LZ/K;

    if-nez p2, :cond_3

    iget-object p2, p0, LZ/m;->y1:LG/C0;

    sget-object p4, LG/C0;->d:LG/C0;

    invoke-virtual {p2, p4}, LG/C0;->equals(Ljava/lang/Object;)Z

    move-result p4

    iget-object v0, p0, LZ/m;->P0:LP/t;

    if-nez p4, :cond_0

    iget-object p4, p0, LZ/m;->z1:LG/C0;

    invoke-virtual {p2, p4}, LG/C0;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    iput-object p2, p0, LZ/m;->z1:LG/C0;

    invoke-virtual {v0, p2}, LP/t;->b(LG/C0;)V

    :cond_0
    iget-object p2, p0, LZ/m;->S0:LZ/y;

    iget p4, p2, LZ/y;->e:I

    const/4 v1, 0x3

    if-eq p4, v1, :cond_1

    move p1, p3

    :cond_1
    iput v1, p2, LZ/y;->e:I

    iget-object p4, p2, LZ/y;->k:LJ/M;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, LJ/W;->G(J)J

    move-result-wide v1

    iput-wide v1, p2, LZ/y;->g:J

    if-eqz p1, :cond_3

    iget-object p1, p0, LZ/m;->i1:Landroid/view/Surface;

    if-eqz p1, :cond_3

    iget-object p2, v0, LP/t;->a:Landroid/os/Handler;

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance p4, LZ/G;

    invoke-direct {p4, v0, p1, v1, v2}, LZ/G;-><init>(LP/t;Ljava/lang/Object;J)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iput-boolean p3, p0, LZ/m;->l1:Z

    :cond_3
    return-void
.end method

.method public final Q0(Ljava/lang/Object;)V
    .locals 9

    instance-of v0, p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/Surface;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v0, p0, LZ/m;->i1:Landroid/view/Surface;

    iget-object v2, p0, LZ/m;->P0:LP/t;

    if-eq v0, p1, :cond_b

    iput-object p1, p0, LZ/m;->i1:Landroid/view/Surface;

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    iget-object v3, p0, LZ/m;->S0:LZ/y;

    if-nez v0, :cond_1

    invoke-virtual {v3, p1}, LZ/y;->f(Landroid/view/Surface;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, LZ/m;->l1:Z

    iget v4, p0, LN/a;->l:I

    iget-object v5, p0, LS/r;->R:LS/k;

    if-eqz v5, :cond_6

    iget-object v6, p0, LZ/m;->e1:LZ/K;

    const/4 v7, 0x1

    if-nez v6, :cond_5

    iget-object v6, p0, LS/r;->Y:LS/o;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v6}, LZ/m;->L0(LS/o;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, LZ/m;->a1:Z

    if-nez v8, :cond_4

    invoke-virtual {p0, v6}, LZ/m;->K0(LS/o;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v5, v0}, LS/k;->q(Landroid/view/Surface;)V

    goto :goto_1

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x23

    if-lt v0, v6, :cond_3

    invoke-interface {v5}, LS/k;->n()V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_4
    invoke-virtual {p0}, LS/r;->q0()V

    invoke-virtual {p0}, LS/r;->a0()V

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v7

    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    iget-object p1, p0, LZ/m;->z1:LG/C0;

    if-eqz p1, :cond_8

    invoke-virtual {v2, p1}, LP/t;->b(LG/C0;)V

    goto :goto_3

    :cond_7
    iput-object v1, p0, LZ/m;->z1:LG/C0;

    iget-object p1, p0, LZ/m;->e1:LZ/K;

    if-eqz p1, :cond_8

    invoke-interface {p1}, LZ/K;->c()V

    :cond_8
    :goto_3
    const/4 p1, 0x2

    if-ne v4, p1, :cond_a

    iget-object p1, p0, LZ/m;->e1:LZ/K;

    if-eqz p1, :cond_9

    invoke-interface {p1, v0}, LZ/K;->n(Z)V

    goto :goto_4

    :cond_9
    invoke-virtual {v3, v0}, LZ/y;->c(Z)V

    :cond_a
    :goto_4
    invoke-virtual {p0}, LZ/m;->O0()V

    return-void

    :cond_b
    if-eqz p1, :cond_d

    iget-object p1, p0, LZ/m;->z1:LG/C0;

    if-eqz p1, :cond_c

    invoke-virtual {v2, p1}, LP/t;->b(LG/C0;)V

    :cond_c
    iget-object p1, p0, LZ/m;->i1:Landroid/view/Surface;

    if-eqz p1, :cond_d

    iget-boolean v0, p0, LZ/m;->l1:Z

    if-eqz v0, :cond_d

    iget-object v0, v2, LP/t;->a:Landroid/os/Handler;

    if-eqz v0, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    new-instance v1, LZ/G;

    invoke-direct {v1, v2, p1, v3, v4}, LZ/G;-><init>(LP/t;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    return-void
.end method

.method public final R(LM/f;)I
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    iget-object v0, p0, LZ/m;->s1:LN/g0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, LZ/m;->B1:Z

    if-eqz v0, :cond_1

    :goto_0
    iget-wide v0, p1, LM/f;->k:J

    iget-wide v2, p0, LN/a;->p:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0, p1}, LZ/m;->M0(LM/f;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x20

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final R0(JJZZ)Z
    .locals 7

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LZ/m;->O0:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, LZ/m;->F1:J

    neg-long v0, v0

    sub-long/2addr p3, v0

    :cond_0
    const-wide/32 v0, -0x7a120

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-gez p1, :cond_8

    if-nez p5, :cond_8

    iget-object p1, p0, LN/a;->m:LU/a0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, LN/a;->o:J

    sub-long v0, p3, v0

    invoke-interface {p1, v0, v1}, LU/a0;->y(J)I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    iput-wide p3, p0, LZ/m;->t1:J

    iget-object p3, p0, LZ/m;->S0:LZ/y;

    iget-wide p3, p3, LZ/y;->h:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p3, v0

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    move p3, p4

    goto :goto_0

    :cond_2
    move p3, p2

    :goto_0
    iget-object p5, p0, LZ/m;->Y0:Ljava/util/PriorityQueue;

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p2

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, LN/a;->p:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    if-nez p3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p5}, Ljava/util/PriorityQueue;->clear()V

    if-eqz p6, :cond_5

    iget-object p3, p0, LS/r;->B0:LN/c;

    iget p5, p3, LN/c;->d:I

    add-int/2addr p5, p1

    iget p1, p3, LN/c;->f:I

    iget p6, p0, LZ/m;->r1:I

    add-int/2addr p1, p6

    iput p1, p3, LN/c;->f:I

    add-int/2addr p5, v1

    add-int/2addr p5, v2

    iput p5, p3, LN/c;->d:I

    goto :goto_2

    :cond_5
    iget-object p3, p0, LS/r;->B0:LN/c;

    iget p5, p3, LN/c;->j:I

    add-int/2addr p5, p4

    iput p5, p3, LN/c;->j:I

    add-int/2addr p1, v1

    iget p3, p0, LZ/m;->r1:I

    invoke-virtual {p0, p1, p3}, LZ/m;->U0(II)V

    iget-object p1, p0, LS/r;->B0:LN/c;

    iget p3, p1, LN/c;->d:I

    add-int/2addr p3, v2

    iput p3, p1, LN/c;->d:I

    :goto_2
    invoke-virtual {p0}, LS/r;->P()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, LS/r;->a0()V

    :cond_6
    iget-object p1, p0, LZ/m;->e1:LZ/K;

    if-eqz p1, :cond_7

    invoke-interface {p1, p2}, LZ/K;->e(Z)V

    :cond_7
    return p4

    :cond_8
    :goto_3
    return p2
.end method

.method public final S(FLG/x;[LG/x;)F
    .locals 8

    array-length v0, p3

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p3, v2

    iget v4, v4, LG/x;->B:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p3, v3, v1

    if-nez p3, :cond_2

    iget-object p3, p0, LS/r;->R:LS/k;

    if-eqz p3, :cond_2

    iget-object p3, p0, LZ/m;->U0:LZ/g;

    invoke-virtual {p3}, LZ/g;->a()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    invoke-virtual {p3}, LZ/g;->a()J

    move-result-wide v2

    long-to-float p3, v2

    const v0, 0x4e6e6b28    # 1.0E9f

    div-float v3, v0, p3

    :cond_2
    cmpl-float p3, v3, v1

    if-nez p3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    mul-float/2addr v3, p1

    :goto_1
    iget-object p1, p0, LZ/m;->s1:LN/g0;

    if-eqz p1, :cond_a

    iget-object p1, p0, LS/r;->Y:LS/o;

    if-eqz p1, :cond_a

    iget p3, p2, LG/x;->w:I

    iget p2, p2, LG/x;->x:I

    iget-boolean v0, p1, LS/o;->i:Z

    const v2, -0x800001

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget v0, p1, LS/o;->l:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_5

    iget v2, p1, LS/o;->j:I

    if-ne v2, p3, :cond_5

    iget v2, p1, LS/o;->k:I

    if-ne v2, p2, :cond_5

    move v2, v0

    goto :goto_4

    :cond_5
    const/high16 v0, 0x44800000    # 1024.0f

    float-to-double v4, v0

    invoke-virtual {p1, p3, p2, v4, v5}, LS/o;->g(IID)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_2
    sub-float v4, v0, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v2

    float-to-double v5, v4

    invoke-virtual {p1, p3, p2, v5, v6}, LS/o;->g(IID)Z

    move-result v5

    if-eqz v5, :cond_7

    move v2, v4

    goto :goto_2

    :cond_7
    move v0, v4

    goto :goto_2

    :cond_8
    :goto_3
    iput v2, p1, LS/o;->l:F

    iput p3, p1, LS/o;->j:I

    iput p2, p1, LS/o;->k:I

    :goto_4
    cmpl-float p1, v3, v1

    if-eqz p1, :cond_9

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    :cond_9
    return v2

    :cond_a
    return v3
.end method

.method public final S0(LS/o;)Z
    .locals 1

    iget-boolean v0, p0, LZ/m;->B1:Z

    if-nez v0, :cond_1

    iget-object v0, p1, LS/o;->a:Ljava/lang/String;

    invoke-static {v0}, LZ/m;->G0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, LS/o;->f:Z

    if-eqz p1, :cond_0

    invoke-static {}, LZ/o;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final T(LS/i;LG/x;Z)Ljava/util/ArrayList;
    .locals 2

    iget-boolean v0, p0, LZ/m;->B1:Z

    iget-object v1, p0, LZ/m;->N0:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3, v0}, LZ/m;->I0(Landroid/content/Context;LS/i;LG/x;ZZ)Ljava/util/List;

    move-result-object p1

    sget-object p3, LS/w;->a:Ljava/util/HashMap;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, LM0/K;

    const/16 v0, 0x12

    invoke-direct {p1, v1, p2, v0}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p2, LS/s;

    invoke-direct {p2, p1}, LS/s;-><init>(LS/v;)V

    invoke-static {p3, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p3
.end method

.method public final T0(LS/k;I)V
    .locals 1

    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {p1, p2}, LS/k;->i(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, LS/r;->B0:LN/c;

    iget p2, p1, LN/c;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, LN/c;->f:I

    return-void
.end method

.method public final U0(II)V
    .locals 2

    iget-object v0, p0, LS/r;->B0:LN/c;

    iget v1, v0, LN/c;->h:I

    add-int/2addr v1, p1

    iput v1, v0, LN/c;->h:I

    add-int/2addr p1, p2

    iget p2, v0, LN/c;->g:I

    add-int/2addr p2, p1

    iput p2, v0, LN/c;->g:I

    iget p2, p0, LZ/m;->p1:I

    add-int/2addr p2, p1

    iput p2, p0, LZ/m;->p1:I

    iget p2, p0, LZ/m;->q1:I

    add-int/2addr p2, p1

    iput p2, p0, LZ/m;->q1:I

    iget p1, v0, LN/c;->i:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, LN/c;->i:I

    iget p1, p0, LZ/m;->Q0:I

    if-lez p1, :cond_0

    iget p2, p0, LZ/m;->p1:I

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, LZ/m;->N0()V

    :cond_0
    return-void
.end method

.method public final V0(J)V
    .locals 3

    iget-object v0, p0, LS/r;->B0:LN/c;

    iget-wide v1, v0, LN/c;->k:J

    add-long/2addr v1, p1

    iput-wide v1, v0, LN/c;->k:J

    iget v1, v0, LN/c;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LN/c;->l:I

    iget-wide v0, p0, LZ/m;->v1:J

    add-long/2addr v0, p1

    iput-wide v0, p0, LZ/m;->v1:J

    iget p1, p0, LZ/m;->w1:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LZ/m;->w1:I

    return-void
.end method

.method public final W(LS/o;LG/x;Landroid/media/MediaCrypto;F)LM0/r0;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    iget-object v3, v2, LS/o;->c:Ljava/lang/String;

    iget-object v5, v0, LN/a;->n:[LG/x;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v4, LG/x;->w:I

    iget v7, v4, LG/x;->B:F

    iget-object v8, v4, LG/x;->H:LG/n;

    iget v9, v4, LG/x;->x:I

    invoke-static/range {p1 .. p2}, LZ/m;->J0(LS/o;LG/x;)I

    move-result v10

    array-length v11, v5

    const/4 v13, -0x1

    const/4 v14, 0x1

    if-ne v11, v14, :cond_1

    if-eq v10, v13, :cond_0

    invoke-static/range {p1 .. p2}, LZ/m;->H0(LS/o;LG/x;)I

    move-result v5

    if-eq v5, v13, :cond_0

    int-to-float v10, v10

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_0
    new-instance v5, LK/k;

    invoke-direct {v5, v6, v9, v10}, LK/k;-><init>(III)V

    move-object/from16 v19, v8

    move v15, v9

    goto/16 :goto_11

    :cond_1
    array-length v11, v5

    move v14, v6

    move v12, v9

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v15, v11, :cond_6

    aget-object v13, v5, v15

    move-object/from16 v18, v5

    if-eqz v8, :cond_2

    iget-object v5, v13, LG/x;->H:LG/n;

    if-nez v5, :cond_2

    invoke-virtual {v13}, LG/x;->a()LG/w;

    move-result-object v5

    iput-object v8, v5, LG/w;->G:LG/n;

    new-instance v13, LG/x;

    invoke-direct {v13, v5}, LG/x;-><init>(LG/w;)V

    :cond_2
    invoke-virtual {v2, v4, v13}, LS/o;->b(LG/x;LG/x;)LN/d;

    move-result-object v5

    move/from16 v19, v11

    iget v11, v13, LG/x;->x:I

    iget v5, v5, LN/d;->d:I

    if-eqz v5, :cond_5

    iget v5, v13, LG/x;->w:I

    move/from16 v20, v15

    const/4 v15, -0x1

    if-eq v5, v15, :cond_4

    if-ne v11, v15, :cond_3

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v17, 0x1

    :goto_2
    or-int v16, v16, v17

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v2, v13}, LZ/m;->J0(LS/o;LG/x;)I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v10, v5

    goto :goto_3

    :cond_5
    move/from16 v20, v15

    const/4 v15, -0x1

    :goto_3
    add-int/lit8 v5, v20, 0x1

    move v13, v15

    move/from16 v11, v19

    move v15, v5

    move-object/from16 v5, v18

    goto :goto_0

    :cond_6
    if-eqz v16, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "Resolutions unknown. Codec max resolution: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v13, "MediaCodecVideoRenderer"

    invoke-static {v13, v5}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-le v9, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_8

    move v15, v9

    goto :goto_5

    :cond_8
    move v15, v6

    :goto_5
    move/from16 v16, v5

    if-eqz v5, :cond_9

    move v5, v6

    goto :goto_6

    :cond_9
    move v5, v9

    :goto_6
    int-to-float v1, v5

    move/from16 v17, v1

    int-to-float v1, v15

    div-float v1, v17, v1

    move/from16 v17, v1

    const/4 v1, 0x0

    :goto_7
    const/16 v18, 0x0

    move-object/from16 v19, v8

    const/16 v8, 0x9

    if-ge v1, v8, :cond_11

    sget-object v8, LZ/m;->I1:[I

    aget v8, v8, v1

    move/from16 v20, v1

    int-to-float v1, v8

    mul-float v1, v1, v17

    float-to-int v1, v1

    if-le v8, v15, :cond_11

    if-gt v1, v5, :cond_a

    goto/16 :goto_e

    :cond_a
    move/from16 v21, v1

    if-eqz v16, :cond_b

    goto :goto_8

    :cond_b
    move v1, v8

    :goto_8
    if-eqz v16, :cond_c

    :goto_9
    move/from16 v21, v5

    goto :goto_a

    :cond_c
    move/from16 v8, v21

    goto :goto_9

    :goto_a
    iget-object v5, v2, LS/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v5, :cond_d

    :goto_b
    move/from16 v23, v15

    move-object/from16 v4, v18

    goto :goto_c

    :cond_d
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v5

    if-nez v5, :cond_e

    goto :goto_b

    :cond_e
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v5

    move/from16 v23, v15

    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v15

    new-instance v4, Landroid/graphics/Point;

    invoke-static {v1, v5}, LJ/W;->e(II)I

    move-result v1

    mul-int/2addr v1, v5

    invoke-static {v8, v15}, LJ/W;->e(II)I

    move-result v5

    mul-int/2addr v5, v15

    invoke-direct {v4, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    :goto_c
    if-eqz v4, :cond_f

    iget v1, v4, Landroid/graphics/Point;->x:I

    iget v5, v4, Landroid/graphics/Point;->y:I

    move v15, v9

    float-to-double v8, v7

    invoke-virtual {v2, v1, v5, v8, v9}, LS/o;->g(IID)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_f

    :cond_f
    move v15, v9

    :cond_10
    add-int/lit8 v1, v20, 0x1

    move-object/from16 v4, p2

    move v9, v15

    move-object/from16 v8, v19

    move/from16 v5, v21

    move/from16 v15, v23

    goto :goto_7

    :goto_d
    move-object/from16 v4, v18

    goto :goto_f

    :cond_11
    :goto_e
    move v15, v9

    goto :goto_d

    :goto_f
    if-eqz v4, :cond_13

    iget v1, v4, Landroid/graphics/Point;->x:I

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget v1, v4, Landroid/graphics/Point;->y:I

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual/range {p2 .. p2}, LG/x;->a()LG/w;

    move-result-object v1

    iput v14, v1, LG/w;->v:I

    iput v12, v1, LG/w;->w:I

    new-instance v4, LG/x;

    invoke-direct {v4, v1}, LG/x;-><init>(LG/w;)V

    invoke-static {v2, v4}, LZ/m;->H0(LS/o;LG/x;)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Codec max resolution adjusted to: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_12
    move-object/from16 v19, v8

    move v15, v9

    :cond_13
    :goto_10
    new-instance v5, LK/k;

    invoke-direct {v5, v14, v12, v10}, LK/k;-><init>(III)V

    :goto_11
    iput-object v5, v0, LZ/m;->Z0:LK/k;

    iget-boolean v1, v0, LZ/m;->B1:Z

    if-eqz v1, :cond_14

    iget v1, v0, LZ/m;->C1:I

    goto :goto_12

    :cond_14
    const/4 v1, 0x0

    :goto_12
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    const-string v8, "mime"

    invoke-virtual {v4, v8, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "width"

    invoke-virtual {v4, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "height"

    invoke-virtual {v4, v3, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move-object/from16 v3, p2

    iget-object v6, v3, LG/x;->s:Ljava/util/List;

    invoke-static {v4, v6}, LJ/a;->i(Landroid/media/MediaFormat;Ljava/util/List;)V

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v8, v7, v6

    if-eqz v8, :cond_15

    const-string v8, "frame-rate"

    invoke-virtual {v4, v8, v7}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_15
    const-string v7, "rotation-degrees"

    iget v8, v3, LG/x;->C:I

    invoke-static {v4, v7, v8}, LJ/a;->h(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    if-eqz v19, :cond_16

    const-string v7, "color-transfer"

    move-object/from16 v8, v19

    iget v9, v8, LG/n;->c:I

    invoke-static {v4, v7, v9}, LJ/a;->h(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v7, "color-standard"

    iget v9, v8, LG/n;->a:I

    invoke-static {v4, v7, v9}, LJ/a;->h(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v7, "color-range"

    iget v9, v8, LG/n;->b:I

    invoke-static {v4, v7, v9}, LJ/a;->h(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v7, v8, LG/n;->d:[B

    if-eqz v7, :cond_16

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    const-string v8, "hdr-static-info"

    invoke-virtual {v4, v8, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_16
    const-string v7, "video/dolby-vision"

    iget-object v8, v3, LG/x;->p:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-static {v3}, LJ/h;->c(LG/x;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_17

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "profile"

    invoke-static {v4, v8, v7}, LJ/a;->h(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_17
    const-string v7, "max-width"

    iget v8, v5, LK/k;->a:I

    invoke-virtual {v4, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v7, "max-height"

    iget v8, v5, LK/k;->b:I

    invoke-virtual {v4, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v7, "max-input-size"

    iget v5, v5, LK/k;->c:I

    invoke-static {v4, v7, v5}, LJ/a;->h(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v5, "priority"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    cmpl-float v5, p4, v6

    if-eqz v5, :cond_18

    const-string v5, "operating-rate"

    move/from16 v6, p4

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_18
    iget-boolean v5, v0, LZ/m;->R0:Z

    if-eqz v5, :cond_19

    const-string v5, "no-post-process"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "auto-frc"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_13

    :cond_19
    const/4 v6, 0x1

    :goto_13
    if-eqz v1, :cond_1a

    const-string v5, "tunneled-playback"

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v5, "audio-session-id"

    invoke-virtual {v4, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x23

    if-lt v1, v5, :cond_1b

    iget v1, v0, LZ/m;->A1:I

    neg-int v1, v1

    const/4 v7, 0x0

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v5, "importance"

    invoke-virtual {v4, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1b
    invoke-virtual {v0, v4}, LS/r;->H(Landroid/media/MediaFormat;)V

    invoke-virtual/range {p0 .. p1}, LZ/m;->K0(LS/o;)Landroid/view/Surface;

    move-result-object v5

    iget-object v1, v0, LZ/m;->e1:LZ/K;

    if-eqz v1, :cond_1c

    iget-object v1, v0, LZ/m;->N0:Landroid/content/Context;

    invoke-static {v1}, LJ/W;->D(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "allow-frame-drop"

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1c
    new-instance v1, LM0/r0;

    const/4 v7, 0x0

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, LM0/r0;-><init>(LS/o;Landroid/media/MediaFormat;LG/x;Landroid/view/Surface;Landroid/media/MediaCrypto;LB/A;)V

    return-object v1
.end method

.method public final X(LM/f;)V
    .locals 8

    iget-object p1, p1, LM/f;->l:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    const/4 v7, 0x1

    if-ne v0, v6, :cond_2

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_2

    if-ne v2, v7, :cond_2

    const/4 v0, 0x4

    if-ne v3, v0, :cond_2

    if-eqz v4, :cond_1

    if-ne v4, v7, :cond_2

    :cond_1
    iget-boolean v0, p0, LZ/m;->c1:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, LS/r;->R:LS/k;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hdr10-plus-info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-interface {p1, v1}, LS/k;->e(Landroid/os/Bundle;)V

    return-void

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x25

    if-lt v0, v1, :cond_7

    sget-object v0, LJ/h;->a:[B

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    sget-object v1, LJ/h;->d:[B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    move v2, v5

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_5

    add-int v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aget-byte v4, v1, v2

    if-eq v3, v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-lez v0, :cond_6

    move v5, v7

    :cond_6
    iput-boolean v5, p0, LZ/m;->d1:Z

    if-eqz v5, :cond_7

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "hdr-st2094-50-info"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, LS/r;->R:LS/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, LS/k;->e(Landroid/os/Bundle;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v1, 0x7

    if-eq p1, v1, :cond_c

    const/16 v1, 0xa

    if-eq p1, v1, :cond_b

    const/4 v1, 0x4

    if-eq p1, v1, :cond_a

    const/4 v1, 0x5

    if-eq p1, v1, :cond_7

    const/16 v1, 0xd

    if-eq p1, v1, :cond_4

    const/16 v1, 0xe

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, LS/r;->b(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object p1, p0, LZ/m;->s1:LN/g0;

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    check-cast p2, LN/g0;

    iput-object p2, p0, LZ/m;->s1:LN/g0;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq p1, v0, :cond_d

    iget-object p1, p0, LS/r;->S:LG/x;

    invoke-virtual {p0, p1}, LS/r;->D0(LG/x;)V

    return-void

    :pswitch_1
    iget-object p1, p0, LZ/m;->i1:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LZ/m;->Q0(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, LZ/m;

    invoke-virtual {p2, v0, p1}, LZ/m;->b(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LZ/m;->A1:I

    iget-object p1, p0, LS/r;->R:LS/k;

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p2, v0, :cond_d

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, LZ/m;->A1:I

    neg-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "importance"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, LS/k;->e(Landroid/os/Bundle;)V

    return-void

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, LJ/E;

    iget p1, p2, LJ/E;->a:I

    if-eqz p1, :cond_d

    iget p1, p2, LJ/E;->b:I

    if-eqz p1, :cond_d

    iput-object p2, p0, LZ/m;->k1:LJ/E;

    iget-object p1, p0, LZ/m;->e1:LZ/K;

    if-eqz p1, :cond_d

    iget-object v0, p0, LZ/m;->i1:Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v0, p2}, LZ/K;->t(Landroid/view/Surface;LJ/E;)V

    return-void

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/util/List;

    sget-object p1, LG/B0;->a:Lu1/C0;

    invoke-interface {p2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, LZ/m;->e1:LZ/K;

    if-eqz p1, :cond_d

    invoke-interface {p1}, LZ/K;->v()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, LZ/m;->e1:LZ/K;

    invoke-interface {p1}, LZ/K;->q()V

    return-void

    :cond_6
    iput-object p2, p0, LZ/m;->h1:Ljava/util/List;

    iget-object p1, p0, LZ/m;->e1:LZ/K;

    if-eqz p1, :cond_d

    invoke-interface {p1, p2}, LZ/K;->g(Ljava/util/List;)V

    return-void

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LZ/m;->n1:I

    iget-object p2, p0, LZ/m;->e1:LZ/K;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, LZ/K;->x(I)V

    return-void

    :cond_8
    iget-object p2, p0, LZ/m;->S0:LZ/y;

    iget-object p2, p2, LZ/y;->b:LZ/D;

    iget v1, p2, LZ/D;->i:I

    if-ne v1, p1, :cond_9

    goto :goto_2

    :cond_9
    iput p1, p2, LZ/D;->i:I

    invoke-virtual {p2, v0}, LZ/D;->c(Z)V

    return-void

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LZ/m;->m1:I

    iget-object p2, p0, LS/r;->R:LS/k;

    if-eqz p2, :cond_d

    invoke-interface {p2, p1}, LS/k;->j(I)V

    return-void

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, LZ/m;->C1:I

    if-eq p2, p1, :cond_d

    iput p1, p0, LZ/m;->C1:I

    iget-boolean p1, p0, LZ/m;->B1:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, LS/r;->q0()V

    return-void

    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, LZ/w;

    iput-object p2, p0, LZ/m;->E1:LZ/w;

    iget-object p1, p0, LZ/m;->e1:LZ/K;

    if-eqz p1, :cond_d

    invoke-interface {p1, p2}, LZ/K;->r(LZ/w;)V

    :cond_d
    :goto_2
    return-void

    :cond_e
    invoke-virtual {p0, p2}, LZ/m;->Q0(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c0(LG/x;)Z
    .locals 3

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LZ/K;->v()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, LZ/m;->e1:LZ/K;

    invoke-interface {v0, p1}, LZ/K;->j(LG/x;)Z

    move-result p1
    :try_end_0
    .catch LZ/J; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/16 v1, 0x1b58

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object p1

    throw p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final d0(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, LZ/m;->P0:LP/t;

    iget-object v1, v0, LP/t;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, LZ/F;

    const/4 v3, 0x4

    invoke-direct {v2, v0, p1, v3}, LZ/F;-><init>(LP/t;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final e0(JJLjava/lang/String;)V
    .locals 8

    iget-object v1, p0, LZ/m;->P0:LP/t;

    iget-object v7, v1, LP/t;->a:Landroid/os/Handler;

    if-eqz v7, :cond_0

    new-instance v0, LZ/F;

    move-wide v3, p1

    move-wide v5, p3

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, LZ/F;-><init>(LP/t;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    move-object v2, p5

    :goto_0
    invoke-static {v2}, LZ/m;->G0(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, LZ/m;->a1:Z

    iget-object p1, p0, LS/r;->Y:LS/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-lt p2, p3, :cond_4

    const-string p2, "video/x-vnd.on2.vp9"

    iget-object p3, p1, LS/o;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, LS/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez p1, :cond_2

    :cond_1
    new-array p1, p4, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_2
    array-length p2, p1

    move p3, p4

    :goto_1
    if-ge p3, p2, :cond_4

    aget-object v0, p1, p3

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_3

    move p1, p5

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    move p1, p4

    :goto_2
    iput-boolean p1, p0, LZ/m;->c1:Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x25

    if-ge p1, p2, :cond_5

    iget-object p1, p0, LS/r;->Y:LS/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LS/o;->b:Ljava/lang/String;

    const-string p2, "video/av01"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p4, p5

    :cond_5
    iput-boolean p4, p0, LZ/m;->b1:Z

    invoke-virtual {p0}, LZ/m;->O0()V

    return-void
.end method

.method public final f0(LN/b;)V
    .locals 4

    iget-object v0, p0, LZ/m;->P0:LP/t;

    iget-object v1, v0, LP/t;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, LZ/d;

    const/4 v3, 0x3

    invoke-direct {v2, v0, p1, v3}, LZ/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, LZ/m;->P0:LP/t;

    iget-object v1, v0, LP/t;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, LZ/F;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, LZ/F;-><init>(LP/t;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v2, p0, LZ/m;->g1:I

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, LZ/K;->w()V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, LZ/m;->g1:I

    return-void

    :cond_2
    iget-object v0, p0, LZ/m;->S0:LZ/y;

    iget v2, v0, LZ/y;->e:I

    if-nez v2, :cond_3

    iput v1, v0, LZ/y;->e:I

    :cond_3
    return-void
.end method

.method public final h0(LN0/O;)LN/d;
    .locals 4

    invoke-super {p0, p1}, LS/r;->h0(LN0/O;)LN/d;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, LZ/m;->d1:Z

    iget-object p1, p1, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, LG/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LZ/m;->P0:LP/t;

    iget-object v2, v1, LP/t;->a:Landroid/os/Handler;

    if-eqz v2, :cond_0

    new-instance v3, LZ/F;

    invoke-direct {v3, v1, p1, v0}, LZ/F;-><init>(LP/t;LG/x;LN/d;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, LZ/m;->X0:LZ/z;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LZ/z;->b()V

    :cond_1
    return-object v0
.end method

.method public final i0(LG/x;Landroid/media/MediaFormat;)V
    .locals 11

    iget-object v0, p0, LS/r;->R:LS/k;

    if-eqz v0, :cond_0

    iget v1, p0, LZ/m;->m1:I

    invoke-interface {v0, v1}, LS/k;->j(I)V

    :cond_0
    iget-boolean v0, p0, LZ/m;->B1:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget p2, p1, LG/x;->w:I

    iget v0, p1, LG/x;->x:I

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "crop-top"

    const-string v4, "crop-bottom"

    const-string v5, "crop-left"

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v0, v5

    add-int/2addr v0, v6

    goto :goto_1

    :cond_3
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v2, p2

    add-int/2addr v2, v6

    move p2, v2

    goto :goto_2

    :cond_4
    const-string v2, "height"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    :goto_2
    move v10, v0

    move v0, p2

    move p2, v10

    :goto_3
    iget v2, p1, LG/x;->E:F

    iget v3, p1, LG/x;->C:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_6

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    move v10, v0

    move v0, p2

    move p2, v10

    :cond_6
    new-instance v3, LG/C0;

    invoke-direct {v3, v2, p2, v0}, LG/C0;-><init>(FII)V

    iput-object v3, p0, LZ/m;->y1:LG/C0;

    iget-object v4, p0, LZ/m;->e1:LZ/K;

    if-eqz v4, :cond_a

    iget-boolean v3, p0, LZ/m;->G1:Z

    if-eqz v3, :cond_a

    if-lez p2, :cond_9

    if-gtz v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, LG/x;->a()LG/w;

    move-result-object p1

    iput p2, p1, LG/w;->v:I

    iput v0, p1, LG/w;->w:I

    iput v2, p1, LG/w;->D:F

    new-instance v5, LG/x;

    invoke-direct {v5, p1}, LG/x;-><init>(LG/w;)V

    iget v8, p0, LZ/m;->g1:I

    iget-object p1, p0, LZ/m;->h1:Ljava/util/List;

    if-eqz p1, :cond_8

    :goto_4
    move-object v9, p1

    goto :goto_5

    :cond_8
    sget-object p1, Lu1/P;->f:Lu1/N;

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    goto :goto_4

    :goto_5
    iget-object p1, p0, LS/r;->C0:LS/q;

    iget-wide v6, p1, LS/q;->b:J

    invoke-interface/range {v4 .. v9}, LZ/K;->f(LG/x;JILjava/util/List;)V

    const/4 p1, 0x2

    iput p1, p0, LZ/m;->g1:I

    goto :goto_7

    :cond_9
    :goto_6
    return-void

    :cond_a
    iget p1, p1, LG/x;->B:F

    iget-object p2, p0, LZ/m;->U0:LZ/g;

    iput p1, p2, LZ/g;->f:F

    iget-object p1, p2, LZ/g;->a:LZ/f;

    invoke-virtual {p1}, LZ/f;->c()V

    iget-object p1, p2, LZ/g;->b:LZ/f;

    invoke-virtual {p1}, LZ/f;->c()V

    iput-boolean v1, p2, LZ/g;->c:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p2, LZ/g;->d:J

    iput v1, p2, LZ/g;->e:I

    invoke-virtual {p2}, LZ/g;->c()V

    :goto_7
    iput-boolean v1, p0, LZ/m;->G1:Z

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method public final k0(J)V
    .locals 0

    invoke-super {p0, p1, p2}, LS/r;->k0(J)V

    iget-boolean p1, p0, LZ/m;->B1:Z

    if-nez p1, :cond_0

    iget p1, p0, LZ/m;->r1:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LZ/m;->r1:I

    :cond_0
    return-void
.end method

.method public final l0()V
    .locals 4

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LZ/K;->u()V

    iget-wide v0, p0, LZ/m;->F1:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, LS/r;->C0:LS/q;

    iget-wide v0, v0, LS/q;->b:J

    iput-wide v0, p0, LZ/m;->F1:J

    :cond_0
    iget-object v0, p0, LZ/m;->e1:LZ/K;

    iget-wide v1, p0, LZ/m;->F1:J

    neg-long v1, v1

    invoke-interface {v0, v1, v2}, LZ/K;->s(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LZ/m;->S0:LZ/y;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LZ/y;->e(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LZ/m;->G1:Z

    invoke-virtual {p0}, LZ/m;->O0()V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, LS/r;->x0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LZ/K;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final m0(LM/f;)V
    .locals 14

    iget-object v0, p0, LS/r;->Y:LS/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LS/o;->b:Ljava/lang/String;

    const-string v1, "video/av01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p1, LM/f;->i:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    iget-object v0, p0, LS/r;->S:LG/x;

    if-eqz v0, :cond_0

    iget-object v0, v0, LG/x;->H:LG/n;

    if-eqz v0, :cond_0

    iget v0, v0, LG/n;->e:I

    const/16 v4, 0x8

    if-le v0, v4, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v4, p0, LZ/m;->d1:Z

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1, v2}, LZ/a;->c(Ljava/nio/ByteBuffer;Z)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v0, p0, LZ/m;->b1:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1, v3}, LZ/a;->c(Ljava/nio/ByteBuffer;Z)V

    :cond_2
    :goto_1
    iget-object v0, p0, LZ/m;->V0:LW0/c;

    if-eqz v0, :cond_17

    invoke-virtual {p1, v3}, LK/f;->f(I)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v5

    add-int/lit16 v6, v4, 0x1f4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, v0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_c

    :cond_3
    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, LM/f;->i:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_17

    iget-boolean v1, p0, LZ/m;->d1:Z

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p1, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_4

    goto/16 :goto_c

    :cond_4
    :goto_2
    if-ge v1, v4, :cond_17

    invoke-static {v0, v1, v4}, LZ/a;->b(Ljava/nio/ByteBuffer;II)I

    move-result v1

    if-ne v1, v4, :cond_5

    goto/16 :goto_c

    :cond_5
    add-int/lit8 v5, v1, 0x3

    if-lt v5, v4, :cond_6

    goto/16 :goto_c

    :cond_6
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x7e

    shr-int/2addr v7, v3

    if-ltz v7, :cond_7

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_7

    goto/16 :goto_c

    :cond_7
    const/16 v8, 0x27

    if-ne v7, v8, :cond_16

    add-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1, v4}, LZ/a;->b(Ljava/nio/ByteBuffer;II)I

    move-result v5

    move v7, v2

    :cond_8
    :goto_3
    if-ge v1, v5, :cond_16

    move v8, v2

    :goto_4
    const/4 v9, 0x2

    const/4 v10, 0x3

    const/16 v11, 0xff

    if-ge v1, v5, :cond_d

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    and-int/2addr v12, v11

    if-ne v12, v10, :cond_9

    if-lt v7, v9, :cond_9

    add-int/lit8 v1, v1, 0x1

    move v7, v2

    goto :goto_4

    :cond_9
    if-nez v12, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    move v7, v2

    :goto_5
    add-int/lit8 v13, v1, 0x1

    add-int/2addr v8, v12

    if-eq v12, v11, :cond_c

    if-ne v8, v6, :cond_b

    const/4 v8, -0x2

    invoke-virtual {v0, v1, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_b
    move v1, v13

    goto :goto_6

    :cond_c
    move v1, v13

    goto :goto_4

    :cond_d
    :goto_6
    if-lt v1, v5, :cond_e

    goto :goto_b

    :cond_e
    move v8, v2

    :cond_f
    :goto_7
    if-ge v1, v5, :cond_12

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    and-int/2addr v12, v11

    if-ne v12, v10, :cond_10

    if-lt v7, v9, :cond_10

    add-int/lit8 v1, v1, 0x1

    move v7, v2

    goto :goto_7

    :cond_10
    if-nez v12, :cond_11

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_11
    move v7, v2

    :goto_8
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v8, v12

    if-eq v12, v11, :cond_f

    :cond_12
    move v12, v2

    :goto_9
    if-ge v12, v8, :cond_8

    if-lt v1, v5, :cond_13

    goto :goto_3

    :cond_13
    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/2addr v1, v11

    if-ne v1, v10, :cond_15

    if-lt v7, v9, :cond_15

    add-int/lit8 v12, v12, -0x1

    :cond_14
    move v7, v2

    goto :goto_a

    :cond_15
    if-nez v1, :cond_14

    add-int/lit8 v7, v7, 0x1

    :goto_a
    add-int/2addr v12, v3

    move v1, v13

    goto :goto_9

    :cond_16
    :goto_b
    move v1, v5

    goto/16 :goto_2

    :cond_17
    :goto_c
    iput v2, p0, LZ/m;->H1:I

    invoke-virtual {p0, p1}, LZ/m;->R(LM/f;)I

    move-result p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_18

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_19

    :cond_18
    iget-boolean p1, p0, LZ/m;->B1:Z

    if-nez p1, :cond_19

    iget p1, p0, LZ/m;->r1:I

    add-int/2addr p1, v3

    iput p1, p0, LZ/m;->r1:I

    :cond_19
    return-void
.end method

.method public final o()Z
    .locals 7

    iget-object v0, p0, LS/r;->I:LG/x;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LN/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LN/a;->r:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN/a;->m:LU/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LU/a0;->o()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    iget v0, p0, LS/r;->h0:I

    if-ltz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    iget-wide v3, p0, LS/r;->f0:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, LN/a;->k:LJ/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, LS/r;->f0:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iget-object v0, p0, LZ/m;->e1:LZ/K;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, LZ/K;->o(Z)Z

    move-result v0

    return v0

    :cond_4
    if-eqz v1, :cond_6

    iget-object v0, p0, LS/r;->R:LS/k;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, LZ/m;->B1:Z

    if-eqz v0, :cond_6

    :cond_5
    return v2

    :cond_6
    iget-object v0, p0, LZ/m;->S0:LZ/y;

    invoke-virtual {v0, v1}, LZ/y;->b(Z)Z

    move-result v0

    return v0
.end method

.method public final o0(JJLS/k;Ljava/nio/ByteBuffer;IIIJZZLG/x;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide/from16 v6, p10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, LS/r;->C0:LS/q;

    iget-wide v4, v0, LS/q;->c:J

    sub-long v4, v6, v4

    iget-object v0, v1, LZ/m;->S0:LZ/y;

    iget-wide v8, v0, LZ/y;->h:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v10

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    move v10, v9

    move v11, v10

    :goto_1
    iget-object v12, v1, LZ/m;->Y0:Ljava/util/PriorityQueue;

    invoke-virtual {v12}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    const-wide/16 v14, 0x3e8

    const/16 p6, 0x1

    iget-object v8, v1, LZ/m;->U0:LZ/g;

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v16, v16, v6

    if-gez v16, :cond_2

    invoke-virtual {v12}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    mul-long v14, v14, v16

    invoke-virtual {v8, v14, v15}, LZ/g;->b(J)V

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v14, v1, LN/a;->p:J

    cmp-long v8, v12, v14

    if-ltz v8, :cond_1

    if-nez v0, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v10, v9}, LZ/m;->U0(II)V

    iget-object v0, v1, LS/r;->B0:LN/c;

    iget v10, v0, LN/c;->d:I

    add-int/2addr v10, v11

    iput v10, v0, LN/c;->d:I

    mul-long v10, v6, v14

    invoke-virtual {v8, v10, v11}, LZ/g;->b(J)V

    iget-object v10, v1, LZ/m;->e1:LZ/K;

    if-eqz v10, :cond_4

    if-eqz p12, :cond_3

    if-nez p13, :cond_3

    invoke-virtual {v1, v2, v3}, LZ/m;->T0(LS/k;I)V

    return p6

    :cond_3
    new-instance v0, LZ/j;

    invoke-direct/range {v0 .. v5}, LZ/j;-><init>(LZ/m;LS/k;IJ)V

    move-object/from16 v19, v1

    move-object v1, v0

    move-object/from16 v0, v19

    invoke-interface {v10, v6, v7, v1}, LZ/K;->k(JLZ/j;)Z

    move-result v1

    return v1

    :cond_4
    move-object v0, v1

    move-wide/from16 v17, v4

    iget-object v1, v0, LS/r;->C0:LS/q;

    iget-wide v1, v1, LS/q;->b:J

    invoke-virtual {v8}, LZ/g;->a()J

    move-result-wide v12

    iget-wide v14, v8, LZ/g;->h:J

    iget-object v3, v0, LZ/m;->T0:LZ/x;

    move-wide/from16 v19, v1

    move v2, v9

    move-wide/from16 v8, v19

    iget-object v1, v0, LZ/m;->S0:LZ/y;

    move-wide/from16 v4, p1

    move/from16 v10, p12

    move/from16 v11, p13

    move-object/from16 v16, v3

    move-wide v2, v6

    move-wide/from16 v6, p3

    invoke-virtual/range {v1 .. v16}, LZ/y;->a(JJJJZZJJLZ/x;)I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x5

    iget-object v13, v0, LZ/m;->T0:LZ/x;

    iget-object v6, v0, LZ/m;->X0:LZ/z;

    if-eqz v6, :cond_5

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_5

    iget-wide v7, v13, LZ/x;->a:J

    invoke-virtual {v6, v2, v3, v7, v8}, LZ/z;->a(JJ)V

    :cond_5
    if-eqz v1, :cond_d

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    if-eq v1, v4, :cond_6

    if-ne v1, v5, :cond_7

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_2
    return v1

    :cond_8
    move-object/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual {v0, v3, v4}, LZ/m;->T0(LS/k;I)V

    iget-wide v3, v13, LZ/x;->a:J

    invoke-virtual {v0, v3, v4}, LZ/m;->V0(J)V

    return v2

    :cond_9
    move-object/from16 v3, p5

    move/from16 v4, p7

    const/4 v1, 0x0

    const-string v5, "dropVideoBuffer"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {v3, v4}, LS/k;->i(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v0, v1, v2}, LZ/m;->U0(II)V

    iget-wide v3, v13, LZ/x;->a:J

    invoke-virtual {v0, v3, v4}, LZ/m;->V0(J)V

    return v2

    :cond_a
    move-object/from16 v3, p5

    move/from16 v4, p7

    iget-wide v9, v13, LZ/x;->b:J

    iget-wide v13, v13, LZ/x;->a:J

    iget-wide v5, v0, LZ/m;->x1:J

    cmp-long v1, v9, v5

    if-nez v1, :cond_b

    invoke-virtual {v0, v3, v4}, LZ/m;->T0(LS/k;I)V

    goto :goto_3

    :cond_b
    iget-object v6, v0, LZ/m;->E1:LZ/w;

    if-eqz v6, :cond_c

    iget-object v12, v0, LS/r;->T:Landroid/media/MediaFormat;

    move-object/from16 v11, p14

    move-wide/from16 v7, v17

    invoke-interface/range {v6 .. v12}, LZ/w;->d(JJLG/x;Landroid/media/MediaFormat;)V

    :cond_c
    invoke-virtual {v0, v3, v4, v9, v10}, LZ/m;->P0(LS/k;IJ)V

    :goto_3
    invoke-virtual {v0, v13, v14}, LZ/m;->V0(J)V

    iput-wide v9, v0, LZ/m;->x1:J

    return v2

    :cond_d
    move-object/from16 v3, p5

    move/from16 v4, p7

    move-wide/from16 v7, v17

    const/4 v2, 0x1

    iget-object v1, v0, LN/a;->k:LJ/M;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-object v6, v0, LZ/m;->E1:LZ/w;

    if-eqz v6, :cond_e

    iget-object v12, v0, LS/r;->T:Landroid/media/MediaFormat;

    move-object/from16 v11, p14

    invoke-interface/range {v6 .. v12}, LZ/w;->d(JJLG/x;Landroid/media/MediaFormat;)V

    :cond_e
    invoke-virtual {v0, v3, v4, v9, v10}, LZ/m;->P0(LS/k;IJ)V

    iget-wide v3, v13, LZ/x;->a:J

    invoke-virtual {v0, v3, v4}, LZ/m;->V0(J)V

    return v2
.end method

.method public final p()V
    .locals 6

    iget-object v0, p0, LZ/m;->P0:LP/t;

    const/4 v1, 0x0

    iput-object v1, p0, LZ/m;->z1:LG/C0;

    invoke-virtual {p0}, LZ/m;->O0()V

    const/4 v2, 0x0

    iput-boolean v2, p0, LZ/m;->l1:Z

    iput-object v1, p0, LZ/m;->D1:LZ/l;

    invoke-virtual {p0}, LZ/m;->y0()Z

    move-result v1

    iput-boolean v1, p0, LZ/m;->u1:Z

    :try_start_0
    invoke-super {p0}, LS/r;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LS/r;->B0:LN/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v1

    monitor-exit v1

    iget-object v2, v0, LP/t;->a:Landroid/os/Handler;

    if-eqz v2, :cond_0

    new-instance v3, LZ/d;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, LZ/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object v1, LG/C0;->d:LG/C0;

    invoke-virtual {v0, v1}, LP/t;->b(LG/C0;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, LS/r;->B0:LN/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v2

    monitor-exit v2

    iget-object v3, v0, LP/t;->a:Landroid/os/Handler;

    if-eqz v3, :cond_1

    new-instance v4, LZ/d;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v2, v5}, LZ/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    sget-object v2, LG/C0;->d:LG/C0;

    invoke-virtual {v0, v2}, LP/t;->b(LG/C0;)V

    throw v1
.end method

.method public final q(ZZ)V
    .locals 8

    new-instance p1, LN/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/r;->B0:LN/c;

    iget-object p1, p0, LN/a;->h:LN/e0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p1, LN/e0;->b:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget v2, p0, LZ/m;->C1:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, LF1/i;->o(Z)V

    iget-boolean v2, p0, LZ/m;->B1:Z

    if-eq v2, p1, :cond_2

    iput-boolean p1, p0, LZ/m;->B1:Z

    invoke-virtual {p0}, LS/r;->q0()V

    :cond_2
    iget-object p1, p0, LS/r;->B0:LN/c;

    iget-object v2, p0, LZ/m;->P0:LP/t;

    iget-object v3, v2, LP/t;->a:Landroid/os/Handler;

    if-eqz v3, :cond_3

    new-instance v4, LZ/F;

    const/4 v5, 0x5

    invoke-direct {v4, v2, p1, v5}, LZ/F;-><init>(LP/t;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-boolean p1, p0, LZ/m;->f1:Z

    iget-object v2, p0, LZ/m;->S0:LZ/y;

    if-nez p1, :cond_9

    iget-object p1, p0, LZ/m;->h1:Ljava/util/List;

    if-eqz p1, :cond_8

    iget-object p1, p0, LZ/m;->e1:LZ/K;

    if-nez p1, :cond_8

    new-instance p1, LZ/p;

    iget-object v3, p0, LZ/m;->N0:Landroid/content/Context;

    invoke-direct {p1, v3, v2}, LZ/p;-><init>(Landroid/content/Context;LZ/y;)V

    iput-boolean v1, p1, LZ/p;->d:Z

    iget-wide v3, p0, LZ/m;->W0:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    neg-long v5, v3

    :cond_4
    iput-wide v5, p1, LZ/p;->g:J

    iget-object v3, p0, LN/a;->k:LJ/M;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p1, LZ/p;->e:LJ/M;

    iget-boolean v3, p1, LZ/p;->f:Z

    xor-int/2addr v3, v1

    invoke-static {v3}, LF1/i;->o(Z)V

    iget-object v3, p1, LZ/p;->c:LZ/s;

    if-nez v3, :cond_5

    new-instance v3, LZ/s;

    invoke-direct {v3}, LZ/s;-><init>()V

    iput-object v3, p1, LZ/p;->c:LZ/s;

    :cond_5
    new-instance v3, LZ/u;

    invoke-direct {v3, p1}, LZ/u;-><init>(LZ/p;)V

    iput-boolean v1, p1, LZ/p;->f:Z

    iget p1, v3, LZ/u;->p:I

    if-ge v1, p1, :cond_6

    goto :goto_2

    :cond_6
    iput v1, v3, LZ/u;->p:I

    :goto_2
    iget-object p1, v3, LZ/u;->c:Landroid/util/SparseArray;

    invoke-static {p1, v0}, LJ/W;->i(Landroid/util/SparseArray;I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LZ/K;

    goto :goto_3

    :cond_7
    new-instance v4, LZ/q;

    iget-object v5, v3, LZ/u;->a:Landroid/content/Context;

    invoke-direct {v4, v3, v5}, LZ/q;-><init>(LZ/u;Landroid/content/Context;)V

    iget-object v3, v3, LZ/u;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p1, v4

    :goto_3
    iput-object p1, p0, LZ/m;->e1:LZ/K;

    :cond_8
    iput-boolean v1, p0, LZ/m;->f1:Z

    :cond_9
    iget-object p1, p0, LZ/m;->e1:LZ/K;

    if-eqz p1, :cond_d

    new-instance v0, LZ/i;

    invoke-direct {v0, p0}, LZ/i;-><init>(LZ/m;)V

    invoke-interface {p1, v0}, LZ/K;->m(LZ/i;)V

    iget-object p1, p0, LZ/m;->E1:LZ/w;

    if-eqz p1, :cond_a

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    invoke-interface {v0, p1}, LZ/K;->r(LZ/w;)V

    :cond_a
    iget-object p1, p0, LZ/m;->i1:Landroid/view/Surface;

    if-eqz p1, :cond_b

    iget-object p1, p0, LZ/m;->k1:LJ/E;

    sget-object v0, LJ/E;->c:LJ/E;

    invoke-virtual {p1, v0}, LJ/E;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, LZ/m;->e1:LZ/K;

    iget-object v0, p0, LZ/m;->i1:Landroid/view/Surface;

    iget-object v2, p0, LZ/m;->k1:LJ/E;

    invoke-interface {p1, v0, v2}, LZ/K;->t(Landroid/view/Surface;LJ/E;)V

    :cond_b
    iget-object p1, p0, LZ/m;->e1:LZ/K;

    iget v0, p0, LZ/m;->n1:I

    invoke-interface {p1, v0}, LZ/K;->x(I)V

    iget-object p1, p0, LZ/m;->e1:LZ/K;

    iget v0, p0, LS/r;->P:F

    invoke-interface {p1, v0}, LZ/K;->h(F)V

    iget-object p1, p0, LZ/m;->h1:Ljava/util/List;

    if-eqz p1, :cond_c

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    invoke-interface {v0, p1}, LZ/K;->g(Ljava/util/List;)V

    :cond_c
    xor-int/lit8 p1, p2, 0x1

    iput p1, p0, LZ/m;->g1:I

    iput-boolean v1, p0, LS/r;->F0:Z

    return-void

    :cond_d
    iget-object p1, p0, LN/a;->k:LJ/M;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v2, LZ/y;->k:LJ/M;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {v2, p1}, LZ/y;->e(I)V

    return-void
.end method

.method public final r(JZZ)V
    .locals 4

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-interface {v0, v1}, LZ/K;->e(Z)V

    :cond_0
    if-eqz p4, :cond_1

    iput-wide p1, p0, LZ/m;->t1:J

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, LS/r;->r(JZZ)V

    iget-object p1, p0, LZ/m;->e1:LZ/K;

    iget-object p2, p0, LZ/m;->S0:LZ/y;

    const/4 p4, 0x0

    if-nez p1, :cond_2

    iget-object p1, p2, LZ/y;->b:LZ/D;

    invoke-virtual {p1}, LZ/D;->b()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p2, LZ/y;->f:J

    iget p1, p2, LZ/y;->e:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, LZ/y;->e:I

    iput-wide v2, p2, LZ/y;->h:J

    iput-boolean p4, p2, LZ/y;->m:Z

    :cond_2
    iget-object p1, p0, LZ/m;->X0:LZ/z;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, LZ/z;->b()V

    :cond_3
    if-eqz p3, :cond_5

    iget-object p1, p0, LZ/m;->e1:LZ/K;

    if-eqz p1, :cond_4

    invoke-interface {p1, p4}, LZ/K;->n(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p4}, LZ/y;->c(Z)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, LZ/m;->O0()V

    iput p4, p0, LZ/m;->q1:I

    return-void
.end method

.method public final r0()V
    .locals 2

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LZ/K;->u()V

    return-void

    :cond_0
    iget-object v0, p0, LS/r;->C0:LS/q;

    iget-wide v0, v0, LS/q;->h:J

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, LZ/m;->O0:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, LZ/K;->a()V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v2, p0, LS/r;->k0:Z

    invoke-virtual {p0}, LS/r;->s0()V

    invoke-virtual {p0}, LS/r;->q0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, LS/r;->L:LQ/h;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4, v3}, LQ/h;->e(LQ/k;)V

    :goto_0
    iput-object v3, p0, LS/r;->L:LQ/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, p0, LZ/m;->f1:Z

    iput-wide v0, p0, LZ/m;->F1:J

    iput-boolean v2, p0, LZ/m;->d1:Z

    iget-object v0, p0, LZ/m;->j1:LZ/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LZ/o;->release()V

    iput-object v3, p0, LZ/m;->j1:LZ/o;

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_2
    iget-object v5, p0, LS/r;->L:LQ/h;

    if-eqz v5, :cond_2

    invoke-interface {v5, v3}, LQ/h;->e(LQ/k;)V

    :cond_2
    iput-object v3, p0, LS/r;->L:LQ/h;

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iput-boolean v2, p0, LZ/m;->f1:Z

    iput-wide v0, p0, LZ/m;->F1:J

    iput-boolean v2, p0, LZ/m;->d1:Z

    iget-object v0, p0, LZ/m;->j1:LZ/o;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LZ/o;->release()V

    iput-object v3, p0, LZ/m;->j1:LZ/o;

    :cond_3
    throw v4
.end method

.method public final t0()V
    .locals 2

    invoke-super {p0}, LS/r;->t0()V

    iget-object v0, p0, LZ/m;->Y0:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    const/4 v0, 0x0

    iput v0, p0, LZ/m;->r1:I

    iput v0, p0, LZ/m;->H1:I

    iput-boolean v0, p0, LZ/m;->u1:Z

    iget-object v0, p0, LZ/m;->V0:LW0/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, LW0/c;->g:Ljava/lang/Object;

    iget-object v0, v0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LZ/m;->p1:I

    iget-object v1, p0, LN/a;->k:LJ/M;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, LZ/m;->o1:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LZ/m;->v1:J

    iput v0, p0, LZ/m;->w1:I

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LZ/K;->p()V

    return-void

    :cond_0
    iget-object v0, p0, LZ/m;->S0:LZ/y;

    invoke-virtual {v0}, LZ/y;->d()V

    return-void
.end method

.method public final v()V
    .locals 7

    invoke-virtual {p0}, LZ/m;->N0()V

    iget v0, p0, LZ/m;->w1:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, p0, LZ/m;->v1:J

    iget-object v4, p0, LZ/m;->P0:LP/t;

    iget-object v5, v4, LP/t;->a:Landroid/os/Handler;

    if-eqz v5, :cond_0

    new-instance v6, LZ/F;

    invoke-direct {v6, v4, v2, v3, v0}, LZ/F;-><init>(LP/t;JI)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, LZ/m;->v1:J

    iput v1, p0, LZ/m;->w1:I

    :cond_1
    iget-object v0, p0, LZ/m;->e1:LZ/K;

    if-eqz v0, :cond_2

    invoke-interface {v0}, LZ/K;->i()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, LZ/m;->S0:LZ/y;

    iput-boolean v1, v0, LZ/y;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, LZ/y;->h:J

    iget-object v0, v0, LZ/y;->b:LZ/D;

    iput-boolean v1, v0, LZ/D;->d:Z

    iget-object v1, v0, LZ/D;->c:LZ/A;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LZ/A;->b()V

    :cond_3
    invoke-virtual {v0}, LZ/D;->a()V

    :goto_0
    iget-object v0, p0, LZ/m;->X0:LZ/z;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LZ/z;->b()V

    :cond_4
    return-void
.end method

.method public final w([LG/x;JJLU/A;)V
    .locals 0

    invoke-super/range {p0 .. p6}, LS/r;->w([LG/x;JJLU/A;)V

    move-object p1, p0

    iget-object p2, p1, LZ/m;->X0:LZ/z;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LZ/z;->b()V

    :cond_0
    return-void
.end method

.method public final x0(LM/f;)Z
    .locals 14

    invoke-virtual {p0, p1}, LZ/m;->M0(LM/f;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-wide v2, p1, LM/f;->k:J

    iget-wide v4, p0, LN/a;->p:J

    cmp-long v0, v2, v4

    const/4 v4, 0x1

    if-gez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v5, p0, LZ/m;->X0:LZ/z;

    if-eqz v5, :cond_3

    iget-wide v6, v5, LZ/z;->a:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    move-wide v2, v8

    goto :goto_1

    :cond_2
    iget-wide v10, v5, LZ/z;->b:J

    long-to-double v10, v10

    sub-long/2addr v2, v6

    long-to-double v2, v2

    iget-wide v5, v5, LZ/z;->c:D

    mul-double/2addr v2, v5

    add-double/2addr v2, v10

    double-to-long v2, v2

    :goto_1
    cmp-long v5, v2, v8

    if-eqz v5, :cond_3

    iget-wide v5, p0, LZ/m;->W0:J

    cmp-long v2, v2, v5

    if-gez v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, LK/f;->f(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_3
    return v1

    :cond_5
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, LK/f;->f(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, LM/f;->h()V

    :goto_4
    move v1, v4

    goto/16 :goto_d

    :cond_6
    iget-object v2, p0, LZ/m;->V0:LW0/c;

    if-eqz v2, :cond_15

    iget-object v3, v2, LW0/c;->f:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    iget-object v5, p0, LS/r;->Y:LS/o;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, LS/o;->b:Ljava/lang/String;

    const-string v6, "video/av01"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p1, LM/f;->i:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_15

    if-nez v0, :cond_8

    iget v6, p0, LZ/m;->H1:I

    if-gtz v6, :cond_7

    goto :goto_5

    :cond_7
    move v6, v1

    goto :goto_6

    :cond_8
    :goto_5
    move v6, v4

    :goto_6
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v3}, LK/t;->r(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v2, v7}, LW0/c;->A(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_9
    invoke-static {v5}, LK/t;->r(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, LW0/c;->A(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    move v8, v1

    :goto_7
    if-ltz v7, :cond_10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LK/w;

    iget v10, v9, LK/w;->a:I

    const/4 v11, 0x2

    const/4 v12, 0x6

    const/4 v13, 0x3

    if-eq v10, v11, :cond_d

    const/16 v11, 0xf

    if-ne v10, v11, :cond_a

    goto :goto_9

    :cond_a
    if-ne v10, v13, :cond_b

    if-nez v6, :cond_b

    goto :goto_a

    :cond_b
    if-eq v10, v12, :cond_c

    if-ne v10, v13, :cond_10

    :cond_c
    iget-object v10, v2, LW0/c;->g:Ljava/lang/Object;

    check-cast v10, LK/x;

    if-eqz v10, :cond_10

    :try_start_0
    new-instance v11, LK/u;

    invoke-direct {v11, v10, v9}, LK/u;-><init>(LK/x;LK/w;)V
    :try_end_0
    .catch LK/v; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_10

    iget-boolean v9, v11, LK/u;->a:Z

    if-nez v9, :cond_10

    :cond_d
    :goto_9
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LK/w;

    iget v9, v9, LK/w;->a:I

    if-eq v9, v12, :cond_e

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LK/w;

    iget v9, v9, LK/w;->a:I

    if-ne v9, v13, :cond_f

    :cond_e
    add-int/lit8 v8, v8, 0x1

    :cond_f
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    :cond_10
    :goto_a
    if-gt v8, v4, :cond_13

    add-int/lit8 v2, v7, 0x1

    const/16 v6, 0x8

    if-lt v2, v6, :cond_11

    goto :goto_b

    :cond_11
    if-ltz v7, :cond_12

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK/w;

    iget-object v2, v2, LK/w;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    goto :goto_c

    :cond_12
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v2

    goto :goto_c

    :cond_13
    :goto_b
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v2

    :goto_c
    if-nez v2, :cond_14

    invoke-virtual {p1}, LM/f;->h()V

    goto/16 :goto_4

    :cond_14
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v3

    if-eq v2, v3, :cond_15

    iget-object v3, p0, LZ/m;->Z0:LK/k;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, LK/k;->c:I

    add-int/2addr v3, v2

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    if-ge v3, v5, :cond_15

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1, v3}, LK/f;->f(I)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v1, p1, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_4

    :cond_15
    :goto_d
    if-eqz v1, :cond_17

    if-nez v0, :cond_16

    iget v0, p0, LZ/m;->H1:I

    add-int/2addr v0, v4

    iput v0, p0, LZ/m;->H1:I

    :cond_16
    iget-wide v2, p1, LM/f;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, LZ/m;->Y0:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_17
    return v1
.end method

.method public final y0()Z
    .locals 12

    iget-boolean v0, p0, LS/r;->r0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, LS/r;->S:LG/x;

    iget-wide v2, p0, LN/a;->v:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    iget-object v6, p0, LS/r;->C0:LS/q;

    iget-wide v10, v6, LS/q;->c:J

    add-long/2addr v10, v2

    iget-wide v2, p0, LS/r;->H0:J

    add-long/2addr v2, v8

    const-wide v8, 0x7fffffffffffffffL

    sub-long/2addr v8, v10

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v7

    :goto_1
    iget-object v3, p0, LZ/m;->s1:LN/g0;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, LZ/m;->u1:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, LZ/m;->B1:Z

    if-nez v3, :cond_5

    if-eqz v0, :cond_3

    iget v0, v0, LG/x;->r:I

    if-gtz v0, :cond_5

    :cond_3
    if-nez v2, :cond_5

    iget-object v0, p0, LS/r;->C0:LS/q;

    iget-wide v2, v0, LS/q;->h:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    return v1

    :cond_5
    :goto_3
    return v7
.end method

.method public final z(JJ)V
    .locals 1

    iget-object v0, p0, LZ/m;->e1:LZ/K;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, LZ/K;->l(JJ)V
    :try_end_0
    .catch LZ/J; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/16 p2, 0x1b59

    const/4 p3, 0x0

    iget-object p4, p1, LZ/J;->e:LG/x;

    invoke-virtual {p0, p1, p4, p3, p2}, LN/a;->f(Ljava/lang/Exception;LG/x;ZI)LN/k;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, LS/r;->z(JJ)V

    return-void
.end method

.method public final z0(LS/o;)Z
    .locals 0

    invoke-virtual {p0, p1}, LZ/m;->L0(LS/o;)Z

    move-result p1

    return p1
.end method
