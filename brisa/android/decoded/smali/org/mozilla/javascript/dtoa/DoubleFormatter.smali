.class public Lorg/mozilla/javascript/dtoa/DoubleFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BQ_MASK:I = 0x7ff

.field private static final C_MIN:J = 0x10000000000000L

.field static final C_TINY:J = 0x3L

.field static final E_MAX:I = 0x135

.field static final E_MIN:I = -0x143

.field static final H:I = 0x11

.field private static final MASK_63:J = 0x7fffffffffffffffL

.field static final P:I = 0x35

.field static final Q_MAX:I = 0x3cb

.field static final Q_MIN:I = -0x432

.field private static final T_MASK:J = 0xfffffffffffffL

.field private static final W:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rop(JJJ)J
    .locals 17

    const-wide v0, 0xffffffffL

    and-long v2, p2, v0

    const/16 v4, 0x20

    shr-long v5, p2, v4

    and-long v7, p4, v0

    shr-long v9, p4, v4

    mul-long v11, v2, v7

    ushr-long/2addr v11, v4

    mul-long v13, v5, v7

    add-long/2addr v13, v11

    and-long v11, v13, v0

    shr-long/2addr v13, v4

    mul-long/2addr v2, v9

    add-long/2addr v2, v11

    shr-long/2addr v2, v4

    mul-long/2addr v5, v9

    add-long/2addr v5, v13

    add-long/2addr v5, v2

    mul-long v2, p0, p4

    and-long v11, p0, v0

    shr-long v13, p0, v4

    mul-long v15, v11, v7

    ushr-long/2addr v15, v4

    mul-long/2addr v7, v13

    add-long/2addr v7, v15

    and-long/2addr v0, v7

    shr-long/2addr v7, v4

    mul-long/2addr v11, v9

    add-long/2addr v11, v0

    shr-long v0, v11, v4

    mul-long/2addr v13, v9

    add-long/2addr v13, v7

    add-long/2addr v13, v0

    const/4 v0, 0x1

    ushr-long v0, v2, v0

    add-long/2addr v0, v5

    const/16 v2, 0x3f

    ushr-long v3, v0, v2

    add-long/2addr v13, v3

    const-wide v3, 0x7fffffffffffffffL

    and-long/2addr v0, v3

    add-long/2addr v0, v3

    ushr-long/2addr v0, v2

    or-long/2addr v0, v13

    return-wide v0
.end method

.method public static toDecimal(D)Lorg/mozilla/javascript/dtoa/Decimal;
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v0, 0xfffffffffffffL

    and-long/2addr v0, p0

    const/16 v2, 0x34

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x7ff

    invoke-static {p0, p1, v0, v1, v2}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalImpl(JJI)Lorg/mozilla/javascript/dtoa/Decimal;

    move-result-object p0

    return-object p0
.end method

.method private static toDecimalFull(IJIZ)Lorg/mozilla/javascript/dtoa/Decimal;
    .locals 27

    move/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p4

    long-to-int v4, v1

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const/4 v6, 0x2

    shl-long v7, v1, v6

    const-wide/16 v9, 0x2

    add-long v11, v7, v9

    const-wide/high16 v13, 0x10000000000000L

    cmp-long v1, v1, v13

    const-wide/16 v13, 0x1

    if-nez v1, :cond_1

    const/16 v1, -0x432

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-long v1, v7, v13

    invoke-static {v0}, Lorg/mozilla/javascript/dtoa/MathUtils;->flog10threeQuartersPow2(I)I

    move-result v9

    goto :goto_1

    :cond_1
    :goto_0
    sub-long v1, v7, v9

    invoke-static {v0}, Lorg/mozilla/javascript/dtoa/MathUtils;->flog10pow2(I)I

    move-result v9

    :goto_1
    neg-int v10, v9

    invoke-static {v10}, Lorg/mozilla/javascript/dtoa/MathUtils;->flog2pow10(I)I

    move-result v10

    add-int/2addr v0, v10

    add-int/2addr v0, v6

    invoke-static {v9}, Lorg/mozilla/javascript/dtoa/MathUtils;->g1(I)J

    move-result-wide v15

    invoke-static {v9}, Lorg/mozilla/javascript/dtoa/MathUtils;->g0(I)J

    move-result-wide v17

    shl-long v19, v7, v0

    invoke-static/range {v15 .. v20}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->rop(JJJ)J

    move-result-wide v7

    shl-long v19, v1, v0

    invoke-static/range {v15 .. v20}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->rop(JJJ)J

    move-result-wide v1

    shl-long v19, v11, v0

    invoke-static/range {v15 .. v20}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->rop(JJJ)J

    move-result-wide v10

    shr-long v15, v7, v6

    const-wide/16 v17, 0x64

    cmp-long v0, v15, v17

    if-ltz v0, :cond_5

    const-wide v17, 0xffffffffL

    and-long v19, v15, v17

    const/16 v0, 0x22

    shr-long v21, v7, v0

    const-wide v23, 0x999999a0L

    mul-long v25, v19, v23

    const/16 v0, 0x20

    ushr-long v25, v25, v0

    mul-long v23, v23, v21

    add-long v23, v23, v25

    and-long v17, v23, v17

    shr-long v23, v23, v0

    const-wide/32 v25, 0x19999999

    mul-long v19, v19, v25

    add-long v19, v19, v17

    shr-long v17, v19, v0

    mul-long v21, v21, v25

    add-long v21, v21, v23

    add-long v21, v21, v17

    const-wide/16 v17, 0xa

    mul-long v21, v21, v17

    add-long v17, v21, v17

    move v0, v5

    move/from16 v19, v6

    int-to-long v5, v4

    add-long v23, v1, v5

    shl-long v25, v21, v19

    cmp-long v20, v23, v25

    move/from16 p0, v0

    if-gtz v20, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    shl-long v23, v17, v19

    add-long v23, v23, v5

    cmp-long v5, v23, v10

    if-gtz v5, :cond_3

    move/from16 v5, p0

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eq v0, v5, :cond_6

    new-instance v1, Lorg/mozilla/javascript/dtoa/Decimal;

    if-eqz v0, :cond_4

    move-wide/from16 v4, v21

    goto :goto_4

    :cond_4
    move-wide/from16 v4, v17

    :goto_4
    invoke-direct {v1, v4, v5, v9, v3}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    return-object v1

    :cond_5
    move/from16 p0, v5

    move/from16 v19, v6

    :cond_6
    add-long v5, v15, v13

    move-wide/from16 p1, v13

    int-to-long v12, v4

    add-long/2addr v1, v12

    shl-long v17, v15, v19

    cmp-long v1, v1, v17

    if-gtz v1, :cond_7

    move/from16 v1, p0

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    shl-long v17, v5, v19

    add-long v17, v17, v12

    cmp-long v2, v17, v10

    if-gtz v2, :cond_8

    move/from16 v12, p0

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    :goto_6
    if-eq v1, v12, :cond_a

    new-instance v0, Lorg/mozilla/javascript/dtoa/Decimal;

    if-eqz v1, :cond_9

    move-wide v5, v15

    :cond_9
    add-int v9, v9, p3

    invoke-direct {v0, v5, v6, v9, v3}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    return-object v0

    :cond_a
    add-long v0, v15, v5

    shl-long v0, v0, p0

    sub-long/2addr v7, v0

    new-instance v0, Lorg/mozilla/javascript/dtoa/Decimal;

    const-wide/16 v1, 0x0

    cmp-long v4, v7, v1

    if-ltz v4, :cond_b

    if-nez v4, :cond_c

    and-long v7, v15, p1

    cmp-long v1, v7, v1

    if-nez v1, :cond_c

    :cond_b
    move-wide v5, v15

    :cond_c
    add-int v9, v9, p3

    invoke-direct {v0, v5, v6, v9, v3}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    return-object v0
.end method

.method private static toDecimalImpl(JJI)Lorg/mozilla/javascript/dtoa/Decimal;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-gez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p4, :cond_2

    rsub-int p1, p4, 0x433

    const-wide/high16 v0, 0x10000000000000L

    or-long/2addr p2, v0

    if-lez p1, :cond_1

    const/16 p4, 0x35

    if-ge p1, p4, :cond_1

    shr-long v0, p2, p1

    shl-long v3, v0, p1

    cmp-long p4, v3, p2

    if-nez p4, :cond_1

    new-instance p1, Lorg/mozilla/javascript/dtoa/Decimal;

    invoke-direct {p1, v0, v1, v2, p0}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    return-object p1

    :cond_1
    neg-int p1, p1

    invoke-static {p1, p2, p3, v2, p0}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalFull(IJIZ)Lorg/mozilla/javascript/dtoa/Decimal;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p4, p2, v0

    if-eqz p4, :cond_4

    const-wide/16 v0, 0x3

    cmp-long p1, p2, v0

    const/16 p4, -0x432

    if-gez p1, :cond_3

    const-wide/16 v0, 0xa

    mul-long/2addr p2, v0

    const/4 p1, -0x1

    invoke-static {p4, p2, p3, p1, p0}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalFull(IJIZ)Lorg/mozilla/javascript/dtoa/Decimal;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p4, p2, p3, v2, p0}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalFull(IJIZ)Lorg/mozilla/javascript/dtoa/Decimal;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lorg/mozilla/javascript/dtoa/Decimal;

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    return-object p0
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 6

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v0, 0xfffffffffffffL

    and-long/2addr v0, p0

    const/16 v2, 0x34

    ushr-long v2, p0, v2

    long-to-int v2, v2

    const/16 v3, 0x7ff

    and-int/2addr v2, v3

    const-wide/16 v4, 0x0

    if-ge v2, v3, :cond_1

    if-nez v2, :cond_0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    invoke-static {p0, p1, v0, v1, v2}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalImpl(JJI)Lorg/mozilla/javascript/dtoa/Decimal;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const-string p0, "NaN"

    return-object p0

    :cond_2
    cmp-long p0, p0, v4

    if-lez p0, :cond_3

    const-string p0, "Infinity"

    return-object p0

    :cond_3
    const-string p0, "-Infinity"

    return-object p0
.end method
