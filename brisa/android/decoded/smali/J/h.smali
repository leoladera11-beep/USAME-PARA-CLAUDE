.class public abstract LJ/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, LJ/h;->a:[B

    const-string v0, "B"

    const-string v1, "C"

    const-string v2, ""

    const-string v3, "A"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LJ/h;->b:[Ljava/lang/String;

    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LJ/h;->c:Ljava/util/regex/Pattern;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, LJ/h;->d:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x4bt
        0x0t
        -0x70t
        0x0t
        0x1t
    .end array-data
.end method

.method public static a(IZII[II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LJ/h;->b:[Ljava/lang/String;

    aget-object p0, v1, p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p1, :cond_0

    const/16 p1, 0x48

    goto :goto_0

    :cond_0
    const/16 p1, 0x4c

    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p0, p2, p3, p1, p5}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, LJ/W;->a:Ljava/lang/String;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "hvc1.%s%d.%X.%c%d"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p4

    :goto_1
    if-lez p0, :cond_1

    add-int/lit8 p1, p0, -0x1

    aget p1, p4, p1

    if-nez p1, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-ge p1, p0, :cond_2

    aget p2, p4, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, ".%02X"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/nio/ByteBuffer;)[B
    .locals 13

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v3, LJ/B;

    invoke-direct {v3, v1, v0}, LJ/B;-><init>([BI)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-lt p0, v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    invoke-static {p0}, LF1/i;->o(Z)V

    const/4 p0, 0x2

    invoke-virtual {v3, p0}, LJ/B;->g(I)I

    move-result v4

    const/4 v5, 0x0

    if-eq v4, p0, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v3, v0}, LJ/B;->g(I)I

    move-result v4

    invoke-virtual {v3, v0}, LJ/B;->g(I)I

    move-result v6

    shl-int/2addr v6, v0

    or-int/2addr v4, v6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    invoke-virtual {v3}, LJ/B;->b()I

    move-result v7

    if-lt v7, v0, :cond_13

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-virtual {v3, v0}, LJ/B;->g(I)I

    move-result v7

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v8

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v9

    if-nez v7, :cond_4

    move v7, v0

    goto :goto_1

    :cond_4
    move v7, v2

    :goto_1
    if-nez v7, :cond_8

    if-nez v8, :cond_5

    invoke-virtual {v3, v0}, LJ/B;->g(I)I

    move-result v8

    goto :goto_2

    :cond_5
    move v8, v2

    :goto_2
    if-nez v9, :cond_6

    invoke-virtual {v3, p0}, LJ/B;->o(I)V

    :cond_6
    if-eqz v8, :cond_8

    if-lez v4, :cond_7

    move v7, v0

    goto :goto_3

    :cond_7
    move v7, v2

    :goto_3
    move v8, v7

    move v7, v0

    goto :goto_4

    :cond_8
    move v8, v7

    :goto_4
    if-nez v7, :cond_9

    goto/16 :goto_9

    :cond_9
    const/16 v7, 0x18

    invoke-virtual {v3, v7}, LJ/B;->g(I)I

    move-result v7

    const v9, 0x498342

    if-eq v7, v9, :cond_a

    goto :goto_9

    :cond_a
    const/4 v7, 0x7

    const/16 v9, 0xa

    const/16 v10, 0xc

    const/16 v11, 0x8

    if-eqz v8, :cond_15

    if-lt v4, p0, :cond_c

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v8

    if-eqz v8, :cond_b

    move v8, v10

    goto :goto_5

    :cond_b
    move v8, v9

    goto :goto_5

    :cond_c
    move v8, v11

    :goto_5
    invoke-virtual {v3, v6}, LJ/B;->g(I)I

    move-result v12

    if-eq v12, v7, :cond_12

    invoke-virtual {v3, v0}, LJ/B;->o(I)V

    if-eq v4, v0, :cond_e

    if-ne v4, v6, :cond_d

    goto :goto_6

    :cond_d
    move v3, v2

    goto :goto_7

    :cond_e
    :goto_6
    invoke-virtual {v3, v0}, LJ/B;->g(I)I

    move-result v12

    invoke-virtual {v3, v0}, LJ/B;->g(I)I

    move-result v3

    if-ne v12, v0, :cond_10

    if-ne v3, v0, :cond_10

    :cond_f
    move-object v3, v5

    goto :goto_8

    :cond_10
    if-ne v12, v0, :cond_11

    if-nez v3, :cond_11

    move v3, p0

    goto :goto_7

    :cond_11
    if-nez v12, :cond_f

    if-nez v3, :cond_f

    :cond_12
    move v3, v6

    :goto_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_8
    if-nez v3, :cond_14

    :cond_13
    :goto_9
    return-object v5

    :cond_14
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_a

    :cond_15
    move v3, v2

    move v5, v11

    :goto_a
    int-to-byte v4, v4

    int-to-byte v5, v5

    int-to-byte v3, v3

    new-array v8, v10, [B

    aput-byte v0, v8, v2

    aput-byte v0, v8, v0

    aput-byte v4, v8, p0

    aput-byte p0, v8, v6

    const/4 p0, 0x4

    aput-byte v0, v8, p0

    aput-byte v2, v8, v1

    const/4 v1, 0x6

    aput-byte v6, v8, v1

    aput-byte v0, v8, v7

    aput-byte v5, v8, v11

    const/16 v1, 0x9

    aput-byte p0, v8, v1

    aput-byte v0, v8, v9

    const/16 p0, 0xb

    aput-byte v3, v8, p0

    invoke-static {v8}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p0

    invoke-virtual {p0, v2}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static c(LG/x;)Landroid/util/Pair;
    .locals 3

    invoke-static {p0}, LJ/h;->e(LG/x;)LJ/g;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean v0, p0, LJ/g;->c:Z

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, LF1/i;->o(Z)V

    iget v2, p0, LJ/g;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, LF1/i;->o(Z)V

    iget p0, p0, LJ/g;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;[Ljava/lang/String;LG/n;)LJ/g;
    .locals 12

    array-length v0, p1

    const-string v1, "Ignoring malformed HEVC codec string: "

    const/4 v2, 0x0

    const-string v3, "CodecSpecificDataUtil"

    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    invoke-static {v1, p0, v3}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    sget-object v0, LJ/h;->c:Ljava/util/regex/Pattern;

    const/4 v5, 0x1

    aget-object v6, p1, v5

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1, p0, v3}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    sget-object v6, LJ/g;->d:LJ/g;

    const/4 v7, 0x2

    const/16 v8, 0x1000

    if-eqz v0, :cond_2

    move p0, v5

    goto :goto_0

    :cond_2
    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p2, :cond_3

    iget p0, p2, LG/n;->c:I

    if-ne p0, v1, :cond_3

    move p0, v8

    goto :goto_0

    :cond_3
    move p0, v7

    :goto_0
    const/4 p2, 0x3

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v9, 0x10

    const/16 v10, 0x8

    const/4 v11, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_1
    move v1, v11

    goto/16 :goto_2

    :sswitch_0
    const-string p2, "L186"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x19

    goto/16 :goto_2

    :sswitch_1
    const-string p2, "L183"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x18

    goto/16 :goto_2

    :sswitch_2
    const-string p2, "L180"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    const/16 v1, 0x17

    goto/16 :goto_2

    :sswitch_3
    const-string p2, "L156"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    const/16 v1, 0x16

    goto/16 :goto_2

    :sswitch_4
    const-string p2, "L153"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_1

    :cond_8
    const/16 v1, 0x15

    goto/16 :goto_2

    :sswitch_5
    const-string p2, "L150"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_1

    :cond_9
    const/16 v1, 0x14

    goto/16 :goto_2

    :sswitch_6
    const-string p2, "L123"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_1

    :cond_a
    const/16 v1, 0x13

    goto/16 :goto_2

    :sswitch_7
    const-string p2, "L120"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_1

    :cond_b
    const/16 v1, 0x12

    goto/16 :goto_2

    :sswitch_8
    const-string p2, "H186"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_1

    :cond_c
    const/16 v1, 0x11

    goto/16 :goto_2

    :sswitch_9
    const-string p2, "H183"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_1

    :cond_d
    move v1, v9

    goto/16 :goto_2

    :sswitch_a
    const-string p2, "H180"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v1, 0xf

    goto/16 :goto_2

    :sswitch_b
    const-string p2, "H156"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v1, 0xe

    goto/16 :goto_2

    :sswitch_c
    const-string p2, "H153"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v1, 0xd

    goto/16 :goto_2

    :sswitch_d
    const-string p2, "H150"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v1, 0xc

    goto/16 :goto_2

    :sswitch_e
    const-string p2, "H123"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_f
    const-string p2, "H120"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_10
    const-string p2, "L93"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_11
    const-string p2, "L90"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_1

    :cond_15
    move v1, v10

    goto/16 :goto_2

    :sswitch_12
    const-string p2, "L63"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_1

    :cond_16
    const/4 v1, 0x7

    goto :goto_2

    :sswitch_13
    const-string p2, "L60"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto/16 :goto_1

    :sswitch_14
    const-string p2, "L30"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_1

    :cond_17
    const/4 v1, 0x5

    goto :goto_2

    :sswitch_15
    const-string p2, "H93"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto/16 :goto_1

    :cond_18
    move v1, v4

    goto :goto_2

    :sswitch_16
    const-string v0, "H90"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_1

    :cond_19
    move v1, p2

    goto :goto_2

    :sswitch_17
    const-string p2, "H63"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto/16 :goto_1

    :cond_1a
    move v1, v7

    goto :goto_2

    :sswitch_18
    const-string p2, "H60"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto/16 :goto_1

    :cond_1b
    move v1, v5

    goto :goto_2

    :sswitch_19
    const-string p2, "H30"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const/high16 p2, 0x1000000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_1
    const/high16 p2, 0x400000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_2
    const/high16 p2, 0x100000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_3
    const/high16 p2, 0x40000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_4
    const/high16 p2, 0x10000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_5
    const/16 p2, 0x4000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_7
    const/16 p2, 0x400

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_8
    const/high16 p2, 0x2000000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_9
    const/high16 p2, 0x800000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_a
    const/high16 p2, 0x200000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_b
    const/high16 p2, 0x80000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_c
    const/high16 p2, 0x20000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_d
    const p2, 0x8000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_e
    const/16 p2, 0x2000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_f
    const/16 p2, 0x800

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_10
    const/16 p2, 0x100

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_11
    const/16 p2, 0x40

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_12
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_15
    const/16 p2, 0x200

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_16
    const/16 p2, 0x80

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_17
    const/16 p2, 0x20

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_18
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_19
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_1e

    const-string p0, "Unknown HEVC level string: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_1e
    new-instance p1, LJ/g;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p0, p2, v5}, LJ/g;-><init>(IIZ)V

    return-object p1

    :cond_1f
    const-string p1, "Unknown HEVC profile string: "

    invoke-static {p1, p0, v3}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x114a5 -> :sswitch_19
        0x11502 -> :sswitch_18
        0x11505 -> :sswitch_17
        0x1155f -> :sswitch_16
        0x11562 -> :sswitch_15
        0x123a9 -> :sswitch_14
        0x12406 -> :sswitch_13
        0x12409 -> :sswitch_12
        0x12463 -> :sswitch_11
        0x12466 -> :sswitch_10
        0x2178e7 -> :sswitch_f
        0x2178ea -> :sswitch_e
        0x217944 -> :sswitch_d
        0x217947 -> :sswitch_c
        0x21794a -> :sswitch_b
        0x2179a1 -> :sswitch_a
        0x2179a4 -> :sswitch_9
        0x2179a7 -> :sswitch_8
        0x234a63 -> :sswitch_7
        0x234a66 -> :sswitch_6
        0x234ac0 -> :sswitch_5
        0x234ac3 -> :sswitch_4
        0x234ac6 -> :sswitch_3
        0x234b1d -> :sswitch_2
        0x234b20 -> :sswitch_1
        0x234b23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static e(LG/x;)LJ/g;
    .locals 33

    move-object/from16 v0, p0

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x200

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x80

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x40

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-object v11, v0, LG/x;->l:Ljava/lang/String;

    iget-object v13, v0, LG/x;->l:Ljava/lang/String;

    const/16 v22, 0x0

    if-nez v11, :cond_0

    return-object v22

    :cond_0
    const-string v15, "\\."

    invoke-virtual {v11, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const-string v15, "video/dolby-vision"

    iget-object v9, v0, LG/x;->p:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v23, 0x9

    const/16 v24, 0x5

    const/16 v25, 0x0

    sget-object v26, LJ/g;->d:LJ/g;

    const/4 v3, 0x3

    move/from16 v28, v7

    const-string v7, "CodecSpecificDataUtil"

    if-eqz v9, :cond_1d

    array-length v0, v11

    const-string v9, "Ignoring malformed Dolby Vision codec string: "

    if-ge v0, v3, :cond_1

    invoke-static {v9, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_1
    sget-object v0, LJ/h;->c:Ljava/util/regex/Pattern;

    aget-object v1, v11, v5

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v9, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v9, "03"

    const-string v13, "02"

    const-string v15, "01"

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v1, v23

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move/from16 v1, v24

    goto :goto_1

    :sswitch_6
    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_7
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    move v1, v3

    goto :goto_1

    :sswitch_8
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    move/from16 v1, v28

    goto :goto_1

    :sswitch_9
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    move v1, v5

    goto :goto_1

    :sswitch_a
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    move/from16 v1, v25

    :goto_1
    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, v22

    goto :goto_2

    :pswitch_0
    move-object v1, v2

    goto :goto_2

    :pswitch_1
    move-object v1, v8

    goto :goto_2

    :pswitch_2
    move-object v1, v10

    goto :goto_2

    :pswitch_3
    move-object v1, v12

    goto :goto_2

    :pswitch_4
    move-object v1, v14

    goto :goto_2

    :pswitch_5
    move-object/from16 v1, v16

    goto :goto_2

    :pswitch_6
    move-object/from16 v1, v18

    goto :goto_2

    :pswitch_7
    move-object/from16 v1, v17

    goto :goto_2

    :pswitch_8
    move-object/from16 v1, v21

    goto :goto_2

    :pswitch_9
    move-object/from16 v1, v20

    goto :goto_2

    :pswitch_a
    move-object/from16 v1, v19

    :goto_2
    if-nez v1, :cond_e

    const-string v1, "Unknown Dolby Vision profile string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v26

    :cond_e
    aget-object v0, v11, v28

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    :goto_3
    const/16 v27, -0x1

    goto/16 :goto_4

    :sswitch_b
    const-string v3, "13"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_3

    :cond_f
    const/16 v27, 0xc

    goto/16 :goto_4

    :sswitch_c
    const-string v3, "12"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_3

    :cond_10
    const/16 v27, 0xb

    goto/16 :goto_4

    :sswitch_d
    const-string v3, "11"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_3

    :cond_11
    const/16 v27, 0xa

    goto/16 :goto_4

    :sswitch_e
    const-string v3, "10"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_3

    :cond_12
    move/from16 v27, v23

    goto/16 :goto_4

    :sswitch_f
    const-string v3, "09"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_3

    :cond_13
    const/16 v27, 0x8

    goto/16 :goto_4

    :sswitch_10
    const-string v3, "08"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_3

    :cond_14
    const/16 v27, 0x7

    goto :goto_4

    :sswitch_11
    const-string v3, "07"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_3

    :cond_15
    const/16 v27, 0x6

    goto :goto_4

    :sswitch_12
    const-string v3, "06"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_3

    :cond_16
    move/from16 v27, v24

    goto :goto_4

    :sswitch_13
    const-string v3, "05"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_3

    :cond_17
    const/16 v27, 0x4

    goto :goto_4

    :sswitch_14
    const-string v9, "04"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    goto :goto_3

    :cond_18
    move/from16 v27, v3

    goto :goto_4

    :sswitch_15
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_3

    :cond_19
    move/from16 v27, v28

    goto :goto_4

    :sswitch_16
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_3

    :cond_1a
    move/from16 v27, v5

    goto :goto_4

    :sswitch_17
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_3

    :cond_1b
    move/from16 v27, v25

    :goto_4
    packed-switch v27, :pswitch_data_1

    move-object/from16 v2, v22

    goto :goto_5

    :pswitch_b
    move-object v2, v6

    goto :goto_5

    :pswitch_c
    move-object v2, v4

    goto :goto_5

    :pswitch_d
    move-object v2, v8

    goto :goto_5

    :pswitch_e
    move-object v2, v10

    goto :goto_5

    :pswitch_f
    move-object v2, v12

    goto :goto_5

    :pswitch_10
    move-object v2, v14

    goto :goto_5

    :pswitch_11
    move-object/from16 v2, v16

    goto :goto_5

    :pswitch_12
    move-object/from16 v2, v18

    goto :goto_5

    :pswitch_13
    move-object/from16 v2, v17

    goto :goto_5

    :pswitch_14
    move-object/from16 v2, v21

    goto :goto_5

    :pswitch_15
    move-object/from16 v2, v20

    goto :goto_5

    :pswitch_16
    move-object/from16 v2, v19

    :goto_5
    :pswitch_17
    if-nez v2, :cond_1c

    const-string v1, "Unknown Dolby Vision level string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_1c
    new-instance v0, LJ/g;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2, v5}, LJ/g;-><init>(IIZ)V

    return-object v0

    :cond_1d
    aget-object v1, v11, v25

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_2

    :goto_6
    const/4 v1, -0x1

    goto/16 :goto_7

    :sswitch_18
    const-string v9, "vvi1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_6

    :cond_1e
    const/16 v1, 0xc

    goto/16 :goto_7

    :sswitch_19
    const-string v9, "vvc1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_6

    :cond_1f
    const/16 v1, 0xb

    goto/16 :goto_7

    :sswitch_1a
    const-string v9, "vp09"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_6

    :cond_20
    const/16 v1, 0xa

    goto/16 :goto_7

    :sswitch_1b
    const-string v9, "s263"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_6

    :cond_21
    move/from16 v1, v23

    goto/16 :goto_7

    :sswitch_1c
    const-string v9, "mp4a"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_6

    :cond_22
    const/16 v1, 0x8

    goto/16 :goto_7

    :sswitch_1d
    const-string v9, "iamf"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_6

    :cond_23
    const/4 v1, 0x7

    goto :goto_7

    :sswitch_1e
    const-string v9, "hvc1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_6

    :cond_24
    const/4 v1, 0x6

    goto :goto_7

    :sswitch_1f
    const-string v9, "hev1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_6

    :cond_25
    move/from16 v1, v24

    goto :goto_7

    :sswitch_20
    const-string v9, "avc2"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_6

    :cond_26
    const/4 v1, 0x4

    goto :goto_7

    :sswitch_21
    const-string v9, "avc1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_6

    :cond_27
    move v1, v3

    goto :goto_7

    :sswitch_22
    const-string v9, "av01"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto/16 :goto_6

    :cond_28
    move/from16 v1, v28

    goto :goto_7

    :sswitch_23
    const-string v9, "apv1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_6

    :cond_29
    move v1, v5

    goto :goto_7

    :sswitch_24
    const-string v9, "ac-4"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto/16 :goto_6

    :cond_2a
    move/from16 v1, v25

    :goto_7
    const v29, 0x8000

    const/16 v30, 0x4000

    const/16 v9, 0x14

    const/16 v31, 0x2000

    packed-switch v1, :pswitch_data_2

    return-object v22

    :pswitch_18
    iget-object v0, v0, LG/x;->H:LG/n;

    array-length v1, v11

    const/high16 v32, 0x10000

    const-string v15, "Ignoring malformed VVC codec string: "

    if-ge v1, v3, :cond_2b

    invoke-static {v15, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_2b
    :try_start_0
    aget-object v1, v11, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v5, :cond_2e

    if-eqz v0, :cond_2c

    iget v1, v0, LG/n;->c:I

    const/4 v13, 0x6

    if-ne v1, v13, :cond_2c

    const/16 v0, 0x1000

    goto :goto_8

    :cond_2c
    if-eqz v0, :cond_2d

    iget v0, v0, LG/n;->e:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2d

    move v0, v5

    goto :goto_8

    :cond_2d
    move/from16 v0, v28

    goto :goto_8

    :cond_2e
    const/16 v0, 0x41

    if-ne v1, v0, :cond_47

    const/4 v0, 0x4

    :goto_8
    aget-object v1, v11, v28

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_3

    :goto_9
    const/16 v27, -0x1

    goto/16 :goto_b

    :sswitch_25
    const-string v3, "L144"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_9

    :cond_2f
    const/16 v3, 0x16

    goto/16 :goto_a

    :sswitch_26
    const-string v3, "L128"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_9

    :cond_30
    const/16 v3, 0x15

    goto/16 :goto_a

    :sswitch_27
    const-string v3, "L112"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_9

    :cond_31
    move/from16 v27, v9

    goto/16 :goto_b

    :sswitch_28
    const-string v3, "H144"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_9

    :cond_32
    const/16 v3, 0x13

    goto/16 :goto_a

    :sswitch_29
    const-string v3, "H128"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_9

    :cond_33
    const/16 v3, 0x12

    goto/16 :goto_a

    :sswitch_2a
    const-string v3, "H112"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_9

    :cond_34
    const/16 v3, 0x11

    goto/16 :goto_a

    :sswitch_2b
    const-string v3, "L96"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_9

    :cond_35
    const/16 v27, 0x10

    goto/16 :goto_b

    :sswitch_2c
    const-string v3, "L86"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_9

    :cond_36
    const/16 v3, 0xf

    goto/16 :goto_a

    :sswitch_2d
    const-string v3, "L83"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_9

    :cond_37
    const/16 v3, 0xe

    goto/16 :goto_a

    :sswitch_2e
    const-string v3, "L80"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_9

    :cond_38
    const/16 v3, 0xd

    goto/16 :goto_a

    :sswitch_2f
    const-string v3, "L67"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_9

    :cond_39
    const/16 v27, 0xc

    goto/16 :goto_b

    :sswitch_30
    const-string v3, "L64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_9

    :cond_3a
    const/16 v27, 0xb

    goto/16 :goto_b

    :sswitch_31
    const-string v3, "L51"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_9

    :cond_3b
    const/16 v27, 0xa

    goto/16 :goto_b

    :sswitch_32
    const-string v3, "L48"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_9

    :cond_3c
    move/from16 v27, v23

    goto/16 :goto_b

    :sswitch_33
    const-string v3, "L35"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_9

    :cond_3d
    const/16 v27, 0x8

    goto/16 :goto_b

    :sswitch_34
    const-string v3, "L32"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto/16 :goto_9

    :cond_3e
    const/16 v27, 0x7

    goto :goto_b

    :sswitch_35
    const-string v3, "L16"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto/16 :goto_9

    :cond_3f
    const/16 v27, 0x6

    goto :goto_b

    :sswitch_36
    const-string v3, "H96"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto/16 :goto_9

    :cond_40
    move/from16 v27, v24

    goto :goto_b

    :sswitch_37
    const-string v3, "H86"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_9

    :cond_41
    const/16 v27, 0x4

    goto :goto_b

    :sswitch_38
    const-string v9, "H83"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_42

    goto/16 :goto_9

    :cond_42
    :goto_a
    move/from16 v27, v3

    goto :goto_b

    :sswitch_39
    const-string v3, "H80"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto/16 :goto_9

    :cond_43
    move/from16 v27, v28

    goto :goto_b

    :sswitch_3a
    const-string v3, "H67"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto/16 :goto_9

    :cond_44
    move/from16 v27, v5

    goto :goto_b

    :sswitch_3b
    const-string v3, "H64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    goto/16 :goto_9

    :cond_45
    move/from16 v27, v25

    :goto_b
    packed-switch v27, :pswitch_data_3

    move-object/from16 v2, v22

    goto/16 :goto_c

    :pswitch_19
    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_c

    :pswitch_1a
    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_c

    :pswitch_1b
    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c

    :pswitch_1c
    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c

    :pswitch_1d
    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c

    :pswitch_1e
    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c

    :pswitch_1f
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c

    :pswitch_20
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c

    :pswitch_21
    move-object v2, v4

    goto :goto_c

    :pswitch_22
    move-object v2, v8

    goto :goto_c

    :pswitch_23
    move-object v2, v12

    goto :goto_c

    :pswitch_24
    move-object/from16 v2, v16

    goto :goto_c

    :pswitch_25
    move-object/from16 v2, v18

    goto :goto_c

    :pswitch_26
    move-object/from16 v2, v17

    goto :goto_c

    :pswitch_27
    move-object/from16 v2, v21

    goto :goto_c

    :pswitch_28
    move-object/from16 v2, v20

    goto :goto_c

    :pswitch_29
    move-object/from16 v2, v19

    goto :goto_c

    :pswitch_2a
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c

    :pswitch_2b
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c

    :pswitch_2c
    move-object v2, v6

    goto :goto_c

    :pswitch_2d
    move-object v2, v10

    goto :goto_c

    :pswitch_2e
    move-object v2, v14

    :goto_c
    :pswitch_2f
    if-nez v2, :cond_46

    const-string v0, "Unknown VVC level string: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v26

    :cond_46
    new-instance v1, LJ/g;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v0, v2, v5}, LJ/g;-><init>(IIZ)V

    return-object v1

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown VVC profile IDC: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v11, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v26

    :catch_0
    invoke-static {v15, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :pswitch_30
    array-length v0, v11

    const-string v1, "Ignoring malformed VP9 codec string: "

    if-ge v0, v3, :cond_48

    invoke-static {v1, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_48
    :try_start_1
    aget-object v0, v11, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v2, v11, v28

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_4c

    if-eq v0, v5, :cond_4b

    move/from16 v2, v28

    if-eq v0, v2, :cond_4a

    if-eq v0, v3, :cond_49

    const/4 v2, -0x1

    :goto_d
    const/4 v3, -0x1

    goto :goto_e

    :cond_49
    const/16 v2, 0x8

    goto :goto_d

    :cond_4a
    const/4 v2, 0x4

    goto :goto_d

    :cond_4b
    const/4 v2, 0x2

    goto :goto_d

    :cond_4c
    move v2, v5

    goto :goto_d

    :goto_e
    if-ne v2, v3, :cond_4d

    const-string v1, "Unknown VP9 profile: "

    invoke-static {v1, v7, v0}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v26

    :cond_4d
    const/16 v0, 0xa

    if-eq v1, v0, :cond_57

    const/16 v0, 0xb

    if-eq v1, v0, :cond_56

    if-eq v1, v9, :cond_55

    const/16 v0, 0x15

    if-eq v1, v0, :cond_54

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_53

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_52

    const/16 v0, 0x28

    if-eq v1, v0, :cond_51

    const/16 v0, 0x29

    if-eq v1, v0, :cond_50

    const/16 v0, 0x32

    if-eq v1, v0, :cond_4f

    const/16 v0, 0x33

    if-eq v1, v0, :cond_4e

    packed-switch v1, :pswitch_data_4

    const/4 v0, -0x1

    const/4 v3, -0x1

    goto :goto_10

    :pswitch_31
    move/from16 v3, v31

    :goto_f
    const/4 v0, -0x1

    goto :goto_10

    :pswitch_32
    const/4 v0, -0x1

    const/16 v3, 0x1000

    goto :goto_10

    :pswitch_33
    const/4 v0, -0x1

    const/16 v3, 0x800

    goto :goto_10

    :cond_4e
    const/4 v0, -0x1

    const/16 v3, 0x200

    goto :goto_10

    :cond_4f
    const/4 v0, -0x1

    const/16 v3, 0x100

    goto :goto_10

    :cond_50
    const/4 v0, -0x1

    const/16 v3, 0x80

    goto :goto_10

    :cond_51
    const/4 v0, -0x1

    const/16 v3, 0x40

    goto :goto_10

    :cond_52
    const/4 v0, -0x1

    const/16 v3, 0x20

    goto :goto_10

    :cond_53
    const/4 v0, -0x1

    const/16 v3, 0x10

    goto :goto_10

    :cond_54
    const/4 v0, -0x1

    const/16 v3, 0x8

    goto :goto_10

    :cond_55
    const/4 v0, -0x1

    const/4 v3, 0x4

    goto :goto_10

    :cond_56
    const/4 v0, -0x1

    const/4 v3, 0x2

    goto :goto_10

    :cond_57
    move v3, v5

    goto :goto_f

    :goto_10
    if-ne v3, v0, :cond_58

    const-string v0, "Unknown VP9 level: "

    invoke-static {v0, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v26

    :cond_58
    new-instance v0, LJ/g;

    invoke-direct {v0, v2, v3, v5}, LJ/g;-><init>(IIZ)V

    return-object v0

    :catch_1
    invoke-static {v1, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :pswitch_34
    array-length v0, v11

    const-string v1, "Ignoring malformed H263 codec string: "

    if-ge v0, v3, :cond_59

    invoke-static {v1, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_59
    :try_start_2
    aget-object v0, v11, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v28, 0x2

    aget-object v2, v11, v28

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    packed-switch v0, :pswitch_data_5

    const/4 v2, -0x1

    :goto_11
    const/4 v3, -0x1

    goto :goto_12

    :pswitch_35
    const/16 v2, 0x100

    goto :goto_11

    :pswitch_36
    const/16 v2, 0x80

    goto :goto_11

    :pswitch_37
    const/16 v2, 0x40

    goto :goto_11

    :pswitch_38
    const/16 v2, 0x20

    goto :goto_11

    :pswitch_39
    const/16 v2, 0x10

    goto :goto_11

    :pswitch_3a
    const/16 v2, 0x8

    goto :goto_11

    :pswitch_3b
    const/4 v2, 0x4

    goto :goto_11

    :pswitch_3c
    const/4 v2, 0x2

    goto :goto_11

    :pswitch_3d
    move v2, v5

    goto :goto_11

    :goto_12
    if-ne v2, v3, :cond_5a

    const-string v1, "Unknown H263 profile: "

    invoke-static {v1, v7, v0}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v26

    :cond_5a
    const/16 v0, 0xa

    if-eq v1, v0, :cond_62

    if-eq v1, v9, :cond_61

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_60

    const/16 v0, 0x28

    if-eq v1, v0, :cond_5f

    const/16 v0, 0x2d

    if-eq v1, v0, :cond_5e

    const/16 v0, 0x32

    if-eq v1, v0, :cond_5d

    const/16 v0, 0x3c

    if-eq v1, v0, :cond_5c

    const/16 v0, 0x46

    if-eq v1, v0, :cond_5b

    const/4 v3, -0x1

    const/4 v11, -0x1

    goto :goto_13

    :cond_5b
    const/4 v3, -0x1

    const/16 v11, 0x80

    goto :goto_13

    :cond_5c
    const/4 v3, -0x1

    const/16 v11, 0x40

    goto :goto_13

    :cond_5d
    const/4 v3, -0x1

    const/16 v11, 0x20

    goto :goto_13

    :cond_5e
    const/4 v3, -0x1

    const/16 v11, 0x10

    goto :goto_13

    :cond_5f
    const/4 v3, -0x1

    const/16 v11, 0x8

    goto :goto_13

    :cond_60
    const/4 v3, -0x1

    const/4 v11, 0x4

    goto :goto_13

    :cond_61
    const/4 v3, -0x1

    const/4 v11, 0x2

    goto :goto_13

    :cond_62
    move v11, v5

    const/4 v3, -0x1

    :goto_13
    if-ne v11, v3, :cond_63

    const-string v0, "Unknown H263 level: "

    invoke-static {v0, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v26

    :cond_63
    new-instance v0, LJ/g;

    invoke-direct {v0, v2, v11, v5}, LJ/g;-><init>(IIZ)V

    return-object v0

    :catch_2
    invoke-static {v1, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :pswitch_3e
    const-string v0, "Unrecognized MP4A profile: "

    array-length v1, v11

    const-string v2, "Ignoring malformed MP4A codec string: "

    if-eq v1, v3, :cond_64

    invoke-static {v2, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_64
    :try_start_3
    aget-object v1, v11, v5

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, LG/W;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    const/16 v28, 0x2

    aget-object v1, v11, v28

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x11

    if-eq v1, v4, :cond_65

    if-eq v1, v9, :cond_66

    const/16 v4, 0x17

    if-eq v1, v4, :cond_65

    const/16 v4, 0x1d

    if-eq v1, v4, :cond_65

    const/16 v4, 0x27

    if-eq v1, v4, :cond_65

    const/16 v4, 0x2a

    if-eq v1, v4, :cond_65

    packed-switch v1, :pswitch_data_6

    const/4 v3, -0x1

    const/4 v4, -0x1

    goto :goto_15

    :pswitch_3f
    const/4 v3, -0x1

    const/4 v4, 0x6

    goto :goto_15

    :pswitch_40
    move/from16 v4, v24

    :cond_65
    :goto_14
    const/4 v3, -0x1

    goto :goto_15

    :pswitch_41
    const/4 v3, -0x1

    const/4 v4, 0x4

    goto :goto_15

    :pswitch_42
    move v4, v3

    goto :goto_14

    :pswitch_43
    const/4 v3, -0x1

    const/4 v4, 0x2

    goto :goto_15

    :pswitch_44
    move v4, v5

    goto :goto_14

    :cond_66
    move v4, v9

    goto :goto_14

    :goto_15
    if-ne v4, v3, :cond_67

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v26

    :cond_67
    new-instance v0, LJ/g;

    move/from16 v1, v25

    invoke-direct {v0, v4, v1, v5}, LJ/g;-><init>(IIZ)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    invoke-static {v2, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    return-object v22

    :pswitch_45
    array-length v0, v11

    const/4 v1, 0x4

    if-ge v0, v1, :cond_69

    const-string v0, "Ignoring malformed IAMF codec string: "

    invoke-static {v0, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_69
    :try_start_4
    aget-object v0, v11, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    aget-object v1, v11, v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4

    :goto_16
    const/4 v3, -0x1

    goto :goto_17

    :sswitch_3c
    const-string v2, "mp4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_16

    :sswitch_3d
    const-string v2, "ipcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    goto :goto_16

    :cond_6a
    const/4 v3, 0x2

    goto :goto_17

    :sswitch_3e
    const-string v2, "fLaC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    goto :goto_16

    :cond_6b
    move v3, v5

    goto :goto_17

    :sswitch_3f
    const-string v2, "Opus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    goto :goto_16

    :cond_6c
    const/4 v3, 0x0

    :cond_6d
    :goto_17
    packed-switch v3, :pswitch_data_7

    const-string v0, "Unrecognized codec identifier for IAMF auxiliary profile: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    const/4 v0, -0x1

    :goto_19
    const/4 v3, -0x1

    goto/16 :goto_1a

    :pswitch_46
    if-eqz v0, :cond_70

    if-eq v0, v5, :cond_6f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6e

    const-string v1, "Unrecognized IAMF AAC profile: "

    invoke-static {v1, v7, v0}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_18

    :cond_6e
    const v0, 0x1040002

    goto :goto_19

    :cond_6f
    const v0, 0x1020002

    goto :goto_19

    :cond_70
    const v0, 0x1010002

    goto :goto_19

    :pswitch_47
    if-eqz v0, :cond_73

    if-eq v0, v5, :cond_72

    const/4 v2, 0x2

    if-eq v0, v2, :cond_71

    const-string v1, "Unrecognized IAMF PCM profile: "

    invoke-static {v1, v7, v0}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_18

    :cond_71
    const v0, 0x1040008

    goto :goto_19

    :cond_72
    const v0, 0x1020008

    goto :goto_19

    :cond_73
    const v0, 0x1010008

    goto :goto_19

    :pswitch_48
    if-eqz v0, :cond_76

    if-eq v0, v5, :cond_75

    const/4 v2, 0x2

    if-eq v0, v2, :cond_74

    const-string v1, "Unrecognized IAMF FLAC profile: "

    invoke-static {v1, v7, v0}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_18

    :cond_74
    const v0, 0x1040004

    goto :goto_19

    :cond_75
    const v0, 0x1020004

    goto :goto_19

    :cond_76
    const v0, 0x1010004

    goto :goto_19

    :pswitch_49
    if-eqz v0, :cond_79

    if-eq v0, v5, :cond_78

    const/4 v2, 0x2

    if-eq v0, v2, :cond_77

    const-string v1, "Unrecognized IAMF Opus profile: "

    invoke-static {v1, v7, v0}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_18

    :cond_77
    const v0, 0x1040001

    goto :goto_19

    :cond_78
    const v0, 0x1020001

    goto :goto_19

    :cond_79
    const v0, 0x1010001

    goto :goto_19

    :goto_1a
    if-ne v0, v3, :cond_7a

    return-object v26

    :cond_7a
    new-instance v1, LJ/g;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v5}, LJ/g;-><init>(IIZ)V

    return-object v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring malformed primary profile in IAMF codec string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v22

    :pswitch_4a
    iget-object v0, v0, LG/x;->H:LG/n;

    invoke-static {v13, v11, v0}, LJ/h;->d(Ljava/lang/String;[Ljava/lang/String;LG/n;)LJ/g;

    move-result-object v0

    return-object v0

    :pswitch_4b
    const/high16 v32, 0x10000

    array-length v0, v11

    const-string v1, "Ignoring malformed AVC codec string: "

    const/4 v2, 0x2

    if-ge v0, v2, :cond_7b

    invoke-static {v1, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_7b
    :try_start_5
    aget-object v0, v11, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_7c

    aget-object v0, v11, v5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    aget-object v2, v11, v5

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1b

    :cond_7c
    const/16 v4, 0x10

    array-length v0, v11

    if-lt v0, v3, :cond_86

    aget-object v0, v11, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v28, 0x2

    aget-object v2, v11, v28

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_1b
    const/16 v2, 0x42

    if-eq v0, v2, :cond_83

    const/16 v2, 0x4d

    if-eq v0, v2, :cond_82

    const/16 v2, 0x58

    if-eq v0, v2, :cond_81

    const/16 v2, 0x64

    if-eq v0, v2, :cond_80

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_7f

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_7e

    const/16 v2, 0xf4

    if-eq v0, v2, :cond_7d

    const/4 v2, -0x1

    :goto_1c
    const/4 v3, -0x1

    goto :goto_1d

    :cond_7d
    const/16 v2, 0x40

    goto :goto_1c

    :cond_7e
    const/16 v2, 0x20

    goto :goto_1c

    :cond_7f
    move v2, v4

    goto :goto_1c

    :cond_80
    const/16 v2, 0x8

    goto :goto_1c

    :cond_81
    const/4 v2, 0x4

    goto :goto_1c

    :cond_82
    const/4 v2, 0x2

    goto :goto_1c

    :cond_83
    move v2, v5

    goto :goto_1c

    :goto_1d
    if-ne v2, v3, :cond_84

    const-string v1, "Unknown AVC profile: "

    invoke-static {v1, v7, v0}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v26

    :cond_84
    packed-switch v1, :pswitch_data_8

    packed-switch v1, :pswitch_data_9

    packed-switch v1, :pswitch_data_a

    packed-switch v1, :pswitch_data_b

    packed-switch v1, :pswitch_data_c

    const/4 v3, -0x1

    const/4 v4, -0x1

    goto :goto_1f

    :pswitch_4c
    move/from16 v4, v32

    :goto_1e
    :pswitch_4d
    const/4 v3, -0x1

    goto :goto_1f

    :pswitch_4e
    move/from16 v4, v29

    goto :goto_1e

    :pswitch_4f
    move/from16 v4, v30

    goto :goto_1e

    :pswitch_50
    move/from16 v4, v31

    goto :goto_1e

    :pswitch_51
    const/4 v3, -0x1

    const/16 v4, 0x1000

    goto :goto_1f

    :pswitch_52
    const/4 v3, -0x1

    const/16 v4, 0x800

    goto :goto_1f

    :pswitch_53
    const/4 v3, -0x1

    const/16 v4, 0x400

    goto :goto_1f

    :pswitch_54
    const/4 v3, -0x1

    const/16 v4, 0x200

    goto :goto_1f

    :pswitch_55
    const/4 v3, -0x1

    const/16 v4, 0x100

    goto :goto_1f

    :pswitch_56
    const/4 v3, -0x1

    const/16 v4, 0x80

    goto :goto_1f

    :pswitch_57
    const/4 v3, -0x1

    const/16 v4, 0x40

    goto :goto_1f

    :pswitch_58
    const/4 v3, -0x1

    const/16 v4, 0x20

    goto :goto_1f

    :pswitch_59
    const/4 v3, -0x1

    const/16 v4, 0x8

    goto :goto_1f

    :pswitch_5a
    const/4 v3, -0x1

    const/4 v4, 0x4

    goto :goto_1f

    :pswitch_5b
    move v4, v5

    goto :goto_1e

    :goto_1f
    if-ne v4, v3, :cond_85

    const-string v0, "Unknown AVC level: "

    invoke-static {v0, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v26

    :cond_85
    new-instance v0, LJ/g;

    invoke-direct {v0, v2, v4, v5}, LJ/g;-><init>(IIZ)V

    return-object v0

    :cond_86
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    return-object v22

    :catch_5
    invoke-static {v1, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :pswitch_5c
    const/16 v4, 0x10

    const/high16 v32, 0x10000

    iget-object v0, v0, LG/x;->H:LG/n;

    array-length v1, v11

    const-string v2, "Ignoring malformed AV1 codec string: "

    const/4 v6, 0x4

    if-ge v1, v6, :cond_87

    invoke-static {v2, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_87
    :try_start_7
    aget-object v1, v11, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v6, 0x2

    aget-object v8, v11, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    if-eqz v1, :cond_88

    const-string v0, "Unknown AV1 profile: "

    invoke-static {v0, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v26

    :cond_88
    const/16 v1, 0x8

    if-eq v2, v1, :cond_89

    const/16 v3, 0xa

    if-eq v2, v3, :cond_89

    const-string v0, "Unknown AV1 bit depth: "

    invoke-static {v0, v7, v2}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v26

    :cond_89
    if-ne v2, v1, :cond_8a

    move v0, v5

    goto :goto_20

    :cond_8a
    if-eqz v0, :cond_8c

    iget-object v2, v0, LG/n;->d:[B

    if-nez v2, :cond_8b

    iget v0, v0, LG/n;->c:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_8b

    const/4 v13, 0x6

    if-ne v0, v13, :cond_8c

    :cond_8b
    const/16 v0, 0x1000

    goto :goto_20

    :cond_8c
    const/4 v0, 0x2

    :goto_20
    packed-switch v6, :pswitch_data_d

    const/4 v1, -0x1

    :goto_21
    :pswitch_5d
    const/4 v3, -0x1

    goto :goto_22

    :pswitch_5e
    const/high16 v1, 0x800000

    goto :goto_21

    :pswitch_5f
    const/high16 v1, 0x400000

    goto :goto_21

    :pswitch_60
    const/high16 v1, 0x200000

    goto :goto_21

    :pswitch_61
    const/high16 v1, 0x100000

    goto :goto_21

    :pswitch_62
    const/high16 v1, 0x80000

    goto :goto_21

    :pswitch_63
    const/high16 v1, 0x40000

    goto :goto_21

    :pswitch_64
    const/high16 v1, 0x20000

    goto :goto_21

    :pswitch_65
    move/from16 v1, v32

    goto :goto_21

    :pswitch_66
    move/from16 v1, v29

    goto :goto_21

    :pswitch_67
    move/from16 v1, v30

    goto :goto_21

    :pswitch_68
    move/from16 v1, v31

    goto :goto_21

    :pswitch_69
    const/16 v1, 0x1000

    goto :goto_21

    :pswitch_6a
    const/16 v1, 0x800

    goto :goto_21

    :pswitch_6b
    const/16 v1, 0x400

    goto :goto_21

    :pswitch_6c
    const/16 v1, 0x200

    goto :goto_21

    :pswitch_6d
    const/16 v1, 0x100

    goto :goto_21

    :pswitch_6e
    const/16 v1, 0x80

    goto :goto_21

    :pswitch_6f
    const/16 v1, 0x40

    goto :goto_21

    :pswitch_70
    const/16 v1, 0x20

    goto :goto_21

    :pswitch_71
    move v1, v4

    goto :goto_21

    :pswitch_72
    const/4 v1, 0x4

    goto :goto_21

    :pswitch_73
    const/4 v1, 0x2

    goto :goto_21

    :pswitch_74
    move v1, v5

    goto :goto_21

    :goto_22
    if-ne v1, v3, :cond_8d

    const-string v0, "Unknown AV1 level: "

    invoke-static {v0, v7, v6}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v26

    :cond_8d
    new-instance v2, LJ/g;

    invoke-direct {v2, v0, v1, v5}, LJ/g;-><init>(IIZ)V

    return-object v2

    :catch_6
    invoke-static {v2, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :pswitch_75
    array-length v0, v11

    const-string v1, "Ignoring malformed APV codec string: "

    const/4 v6, 0x4

    if-ge v0, v6, :cond_8e

    invoke-static {v1, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_8e
    :try_start_8
    aget-object v0, v11, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v28, 0x2

    aget-object v2, v11, v28

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v4, v11, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7

    const/16 v4, 0x21

    if-ne v0, v4, :cond_8f

    move v0, v5

    goto :goto_23

    :cond_8f
    const/16 v4, 0x2c

    if-ne v0, v4, :cond_c9

    move/from16 v0, v31

    :goto_23
    const-string v4, "Unrecognized APV band: "

    sparse-switch v2, :sswitch_data_5

    const-string v1, "Unrecognized APV level index: "

    invoke-static {v1, v7, v2}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_24
    const/4 v1, -0x1

    :goto_25
    const/4 v3, -0x1

    goto/16 :goto_26

    :sswitch_40
    if-eqz v1, :cond_93

    if-eq v1, v5, :cond_92

    const/4 v2, 0x2

    if-eq v1, v2, :cond_91

    if-eq v1, v3, :cond_90

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_24

    :cond_90
    const v1, 0x200008

    goto :goto_25

    :cond_91
    const v1, 0x200004

    goto :goto_25

    :cond_92
    const v1, 0x200002

    goto :goto_25

    :cond_93
    const v1, 0x200001

    goto :goto_25

    :sswitch_41
    if-eqz v1, :cond_97

    if-eq v1, v5, :cond_96

    const/4 v2, 0x2

    if-eq v1, v2, :cond_95

    if-eq v1, v3, :cond_94

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_24

    :cond_94
    const v1, 0x100008

    goto :goto_25

    :cond_95
    const v1, 0x100004

    goto :goto_25

    :cond_96
    const v1, 0x100002

    goto :goto_25

    :cond_97
    const v1, 0x100001

    goto :goto_25

    :sswitch_42
    if-eqz v1, :cond_9b

    if-eq v1, v5, :cond_9a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_99

    if-eq v1, v3, :cond_98

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_24

    :cond_98
    const v1, 0x80008

    goto :goto_25

    :cond_99
    const v1, 0x80004

    goto :goto_25

    :cond_9a
    const v1, 0x80002

    goto :goto_25

    :cond_9b
    const v1, 0x80001

    goto :goto_25

    :sswitch_43
    if-eqz v1, :cond_9f

    if-eq v1, v5, :cond_9e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9d

    if-eq v1, v3, :cond_9c

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_24

    :cond_9c
    const v1, 0x40008

    goto :goto_25

    :cond_9d
    const v1, 0x40004

    goto :goto_25

    :cond_9e
    const v1, 0x40002

    goto :goto_25

    :cond_9f
    const v1, 0x40001

    goto :goto_25

    :sswitch_44
    if-eqz v1, :cond_a3

    if-eq v1, v5, :cond_a2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a1

    if-eq v1, v3, :cond_a0

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_24

    :cond_a0
    const v1, 0x20008

    goto/16 :goto_25

    :cond_a1
    const v1, 0x20004

    goto/16 :goto_25

    :cond_a2
    const v1, 0x20002

    goto/16 :goto_25

    :cond_a3
    const v1, 0x20001

    goto/16 :goto_25

    :sswitch_45
    if-eqz v1, :cond_a7

    if-eq v1, v5, :cond_a6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a5

    if-eq v1, v3, :cond_a4

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_24

    :cond_a4
    const v1, 0x10008

    goto/16 :goto_25

    :cond_a5
    const v1, 0x10004

    goto/16 :goto_25

    :cond_a6
    const v1, 0x10002

    goto/16 :goto_25

    :cond_a7
    const v1, 0x10001

    goto/16 :goto_25

    :sswitch_46
    if-eqz v1, :cond_ab

    if-eq v1, v5, :cond_aa

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a9

    if-eq v1, v3, :cond_a8

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_24

    :cond_a8
    const v1, 0x8008

    goto/16 :goto_25

    :cond_a9
    const v1, 0x8004

    goto/16 :goto_25

    :cond_aa
    const v1, 0x8002

    goto/16 :goto_25

    :cond_ab
    const v1, 0x8001

    goto/16 :goto_25

    :sswitch_47
    if-eqz v1, :cond_af

    if-eq v1, v5, :cond_ae

    const/4 v2, 0x2

    if-eq v1, v2, :cond_ad

    if-eq v1, v3, :cond_ac

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_24

    :cond_ac
    const/16 v1, 0x4008

    goto/16 :goto_25

    :cond_ad
    const/16 v1, 0x4004

    goto/16 :goto_25

    :cond_ae
    const/16 v1, 0x4002

    goto/16 :goto_25

    :cond_af
    const/16 v1, 0x4001

    goto/16 :goto_25

    :sswitch_48
    if-eqz v1, :cond_b3

    if-eq v1, v5, :cond_b2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b1

    if-eq v1, v3, :cond_b0

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_24

    :cond_b0
    const/16 v1, 0x2008

    goto/16 :goto_25

    :cond_b1
    const/16 v1, 0x2004

    goto/16 :goto_25

    :cond_b2
    const/16 v1, 0x2002

    goto/16 :goto_25

    :cond_b3
    const/16 v1, 0x2001

    goto/16 :goto_25

    :sswitch_49
    if-eqz v1, :cond_b7

    if-eq v1, v5, :cond_b6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b5

    if-eq v1, v3, :cond_b4

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_24

    :cond_b4
    const/16 v1, 0x1008

    goto/16 :goto_25

    :cond_b5
    const/16 v1, 0x1004

    goto/16 :goto_25

    :cond_b6
    const/16 v1, 0x1002

    goto/16 :goto_25

    :cond_b7
    const/16 v1, 0x1001

    goto/16 :goto_25

    :sswitch_4a
    if-eqz v1, :cond_bb

    if-eq v1, v5, :cond_ba

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b9

    if-eq v1, v3, :cond_b8

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_24

    :cond_b8
    const/16 v1, 0x808

    goto/16 :goto_25

    :cond_b9
    const/16 v1, 0x804

    goto/16 :goto_25

    :cond_ba
    const/16 v1, 0x802

    goto/16 :goto_25

    :cond_bb
    const/16 v1, 0x801

    goto/16 :goto_25

    :sswitch_4b
    if-eqz v1, :cond_bf

    if-eq v1, v5, :cond_be

    const/4 v2, 0x2

    if-eq v1, v2, :cond_bd

    if-eq v1, v3, :cond_bc

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_24

    :cond_bc
    const/16 v1, 0x408

    goto/16 :goto_25

    :cond_bd
    const/16 v1, 0x404

    goto/16 :goto_25

    :cond_be
    const/16 v1, 0x402

    goto/16 :goto_25

    :cond_bf
    const/16 v1, 0x401

    goto/16 :goto_25

    :sswitch_4c
    if-eqz v1, :cond_c3

    if-eq v1, v5, :cond_c2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c1

    if-eq v1, v3, :cond_c0

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_24

    :cond_c0
    const/16 v1, 0x208

    goto/16 :goto_25

    :cond_c1
    const/16 v1, 0x204

    goto/16 :goto_25

    :cond_c2
    const/16 v1, 0x202

    goto/16 :goto_25

    :cond_c3
    const/16 v1, 0x201

    goto/16 :goto_25

    :sswitch_4d
    if-eqz v1, :cond_c7

    if-eq v1, v5, :cond_c6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c5

    if-eq v1, v3, :cond_c4

    invoke-static {v4, v7, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_24

    :cond_c4
    const/16 v1, 0x108

    goto/16 :goto_25

    :cond_c5
    const/16 v1, 0x104

    goto/16 :goto_25

    :cond_c6
    const/16 v1, 0x102

    goto/16 :goto_25

    :cond_c7
    const/16 v1, 0x101

    goto/16 :goto_25

    :goto_26
    if-ne v1, v3, :cond_c8

    return-object v26

    :cond_c8
    new-instance v2, LJ/g;

    invoke-direct {v2, v0, v1, v5}, LJ/g;-><init>(IIZ)V

    return-object v2

    :cond_c9
    const-string v1, "Unrecognized APV profile: "

    invoke-static {v1, v7, v0}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v26

    :catch_7
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v22

    :pswitch_76
    const/16 v1, 0x8

    const/16 v4, 0x10

    array-length v0, v11

    const-string v2, "Ignoring malformed AC-4 codec string: "

    const/4 v6, 0x4

    if-eq v0, v6, :cond_ca

    invoke-static {v2, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_ca
    :try_start_9
    aget-object v0, v11, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x2

    aget-object v8, v11, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v11, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_8

    if-eqz v0, :cond_cf

    if-eq v0, v5, :cond_cd

    if-eq v0, v6, :cond_cb

    goto :goto_28

    :cond_cb
    if-ne v8, v5, :cond_cc

    const/16 v9, 0x402

    move v6, v9

    :goto_27
    const/4 v9, -0x1

    goto :goto_29

    :cond_cc
    if-ne v8, v6, :cond_d0

    const/16 v6, 0x404

    goto :goto_27

    :cond_cd
    if-nez v8, :cond_ce

    const/16 v6, 0x201

    goto :goto_27

    :cond_ce
    if-ne v8, v5, :cond_d0

    const/16 v6, 0x202

    goto :goto_27

    :cond_cf
    if-nez v8, :cond_d0

    const/16 v6, 0x101

    goto :goto_27

    :cond_d0
    :goto_28
    const/4 v6, -0x1

    goto :goto_27

    :goto_29
    if-ne v6, v9, :cond_d1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown AC-4 profile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v26

    :cond_d1
    if-eqz v2, :cond_d6

    if-eq v2, v5, :cond_d5

    const/4 v0, 0x2

    if-eq v2, v0, :cond_d4

    if-eq v2, v3, :cond_d2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_d3

    const/4 v1, -0x1

    :cond_d2
    :goto_2a
    const/4 v3, -0x1

    goto :goto_2b

    :cond_d3
    move v1, v4

    goto :goto_2a

    :cond_d4
    const/4 v3, 0x4

    move v1, v3

    goto :goto_2a

    :cond_d5
    const/4 v0, 0x2

    move v1, v0

    goto :goto_2a

    :cond_d6
    move v1, v5

    goto :goto_2a

    :goto_2b
    if-ne v1, v3, :cond_d7

    const-string v0, "Unknown AC-4 level: "

    invoke-static {v0, v7, v2}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v26

    :cond_d7
    new-instance v0, LJ/g;

    invoke-direct {v0, v6, v1, v5}, LJ/g;-><init>(IIZ)V

    return-object v0

    :catch_8
    invoke-static {v2, v13, v7}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_a
        0x601 -> :sswitch_9
        0x602 -> :sswitch_8
        0x603 -> :sswitch_7
        0x604 -> :sswitch_6
        0x605 -> :sswitch_5
        0x606 -> :sswitch_4
        0x607 -> :sswitch_3
        0x608 -> :sswitch_2
        0x609 -> :sswitch_1
        0x61f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    :sswitch_data_1
    .sparse-switch
        0x601 -> :sswitch_17
        0x602 -> :sswitch_16
        0x603 -> :sswitch_15
        0x604 -> :sswitch_14
        0x605 -> :sswitch_13
        0x606 -> :sswitch_12
        0x607 -> :sswitch_11
        0x608 -> :sswitch_10
        0x609 -> :sswitch_f
        0x61f -> :sswitch_e
        0x620 -> :sswitch_d
        0x621 -> :sswitch_c
        0x622 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
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
        :pswitch_17
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x2d9149 -> :sswitch_24
        0x2dcaea -> :sswitch_23
        0x2dd8f6 -> :sswitch_22
        0x2ddf23 -> :sswitch_21
        0x2ddf24 -> :sswitch_20
        0x30d038 -> :sswitch_1f
        0x310dbc -> :sswitch_1e
        0x3134b1 -> :sswitch_1d
        0x333790 -> :sswitch_1c
        0x35091c -> :sswitch_1b
        0x374e43 -> :sswitch_1a
        0x376aee -> :sswitch_19
        0x376ba8 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_76
        :pswitch_75
        :pswitch_5c
        :pswitch_4b
        :pswitch_4b
        :pswitch_4a
        :pswitch_4a
        :pswitch_45
        :pswitch_3e
        :pswitch_34
        :pswitch_30
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x11506 -> :sswitch_3b
        0x11509 -> :sswitch_3a
        0x11540 -> :sswitch_39
        0x11543 -> :sswitch_38
        0x11546 -> :sswitch_37
        0x11565 -> :sswitch_36
        0x12371 -> :sswitch_35
        0x123ab -> :sswitch_34
        0x123ae -> :sswitch_33
        0x123d0 -> :sswitch_32
        0x123e8 -> :sswitch_31
        0x1240a -> :sswitch_30
        0x1240d -> :sswitch_2f
        0x12444 -> :sswitch_2e
        0x12447 -> :sswitch_2d
        0x1244a -> :sswitch_2c
        0x12469 -> :sswitch_2b
        0x2178ca -> :sswitch_2a
        0x2178ef -> :sswitch_29
        0x217929 -> :sswitch_28
        0x234a46 -> :sswitch_27
        0x234a6b -> :sswitch_26
        0x234aa5 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2f
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
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
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0x259c5f -> :sswitch_3f
        0x2f8728 -> :sswitch_3e
        0x316bd1 -> :sswitch_3d
        0x333790 -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xa
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_4d
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x14
        :pswitch_58
        :pswitch_57
        :pswitch_56
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1e
        :pswitch_55
        :pswitch_54
        :pswitch_53
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x28
        :pswitch_52
        :pswitch_51
        :pswitch_50
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x32
        :pswitch_4f
        :pswitch_4e
        :pswitch_4c
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_5d
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        0x1e -> :sswitch_4d
        0x21 -> :sswitch_4c
        0x3c -> :sswitch_4b
        0x3f -> :sswitch_4a
        0x5a -> :sswitch_49
        0x5d -> :sswitch_48
        0x78 -> :sswitch_47
        0x7b -> :sswitch_46
        0x96 -> :sswitch_45
        0x99 -> :sswitch_44
        0xb4 -> :sswitch_43
        0xb7 -> :sswitch_42
        0xd2 -> :sswitch_41
        0xd5 -> :sswitch_40
    .end sparse-switch
.end method

.method public static f(LG/x;)Z
    .locals 6

    iget-object v0, p0, LG/x;->p:Ljava/lang/String;

    const-string v1, "application/x-itut-t35"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, LG/x;->s:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v2, v0

    sget-object v3, LJ/h;->d:[B

    array-length v4, v3

    if-ge v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_3

    aget-byte v4, v0, v2

    aget-byte v5, v3, v2

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    return v1
.end method
