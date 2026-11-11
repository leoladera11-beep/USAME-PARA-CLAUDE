.class public Lorg/mozilla/javascript/dtoa/DecimalFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_FIXED:D = 1.0E21


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillZeroes(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toExponential(DI)Ljava/lang/String;
    .locals 6

    if-gez p2, :cond_0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimal(D)Lorg/mozilla/javascript/dtoa/Decimal;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->TO_EXPONENTIAL:Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->toString(Lorg/mozilla/javascript/dtoa/Decimal$Mode;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    :cond_2
    new-instance v2, Ljava/math/BigDecimal;

    new-instance v3, Ljava/math/MathContext;

    add-int/lit8 v4, p2, 0x1

    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {v3, v4, v5}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    invoke-direct {v2, p0, p1, v3}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    if-ltz p0, :cond_3

    invoke-virtual {v2}, Ljava/math/BigDecimal;->precision()I

    move-result p0

    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    sub-int/2addr p0, p1

    :goto_1
    sub-int/2addr p0, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/math/BigDecimal;->precision()I

    move-result p0

    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    neg-int p1, p1

    add-int/2addr p0, p1

    goto :goto_1

    :goto_2
    invoke-static {v2, p0, p2, v0}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toExponentialString(Ljava/math/BigDecimal;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toExponentialString(Ljava/math/BigDecimal;IIZ)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int v2, v0, p2

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p3, :cond_0

    const/16 p3, 0x2d

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    if-gt v0, p3, :cond_1

    if-lt p2, p3, :cond_2

    :cond_1
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p3

    sub-int/2addr p2, v0

    invoke-static {v1, p2}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->fillZeroes(Ljava/lang/StringBuilder;I)V

    :cond_2
    const/16 p0, 0x65

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ltz p1, :cond_3

    const/16 p0, 0x2b

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toFixed(DI)Ljava/lang/String;
    .locals 5

    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    goto :goto_1

    :cond_1
    move-wide v1, p0

    :goto_1
    const-wide v3, 0x444b1ae4d6e2ef50L    # 1.0E21

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/math/BigDecimal;

    sget-object p1, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {p0, v1, v2, p1}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    if-le p1, p2, :cond_3

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, p2, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    :cond_3
    invoke-static {p0, p2, v0}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toFixedString(Ljava/math/BigDecimal;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toFixedString(Ljava/math/BigDecimal;IZ)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_2

    const/16 p2, 0x2d

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-lt v0, v1, :cond_3

    const-string p2, "0."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int p2, v0, v1

    invoke-static {v2, p2}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->fillZeroes(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    sub-int/2addr v1, v0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sub-int/2addr p1, v0

    invoke-static {v2, p1}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->fillZeroes(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toPrecision(DI)Ljava/lang/String;
    .locals 6

    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    neg-double p0, p0

    :cond_1
    new-instance v3, Ljava/math/BigDecimal;

    new-instance v4, Ljava/math/MathContext;

    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {v4, p2, v5}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    invoke-direct {v3, p0, p1, v4}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    invoke-virtual {v3}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    invoke-virtual {v3}, Ljava/math/BigDecimal;->precision()I

    move-result p1

    if-ltz p0, :cond_3

    if-lt p0, p1, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    sub-int v1, p1, p0

    sub-int v1, p2, v1

    :goto_1
    sub-int/2addr p1, p0

    :goto_2
    sub-int/2addr p1, v2

    goto :goto_3

    :cond_3
    neg-int p0, p0

    add-int/2addr p1, p0

    goto :goto_2

    :goto_3
    const/4 p0, -0x6

    if-lt p1, p0, :cond_5

    if-lt p1, p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toFixedString(Ljava/math/BigDecimal;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_4
    sub-int/2addr p2, v2

    invoke-static {v3, p1, p2, v0}, Lorg/mozilla/javascript/dtoa/DecimalFormatter;->toExponentialString(Ljava/math/BigDecimal;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
