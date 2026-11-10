.class public Lorg/mozilla/javascript/dtoa/Decimal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/dtoa/Decimal$Mode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MASK_28:I = 0xfffffff

.field public static final MAX_CHARS:I = 0x20


# instance fields
.field private final buf:[C

.field private final digits:J

.field private final exponent:I

.field private length:I

.field private final negative:Z


# direct methods
.method public constructor <init>(JIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->buf:[C

    iput-wide p1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->digits:J

    iput p3, p0, Lorg/mozilla/javascript/dtoa/Decimal;->exponent:I

    iput-boolean p4, p0, Lorg/mozilla/javascript/dtoa/Decimal;->negative:Z

    return-void
.end method

.method private append(C)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->buf:[C

    iget v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    aput-char p1, v0, v1

    return-void
.end method

.method private append8Digits(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->y(I)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    mul-int/lit8 p1, p1, 0xa

    ushr-int/lit8 v1, p1, 0x1c

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    const v1, 0xfffffff

    and-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendDigit(I)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->buf:[C

    iget v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void
.end method

.method private exponent(I)V
    .locals 3

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    if-gez p1, :cond_0

    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    neg-int p1, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    :goto_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    return-void

    :cond_1
    const/16 v1, 0x64

    if-lt p1, v1, :cond_2

    mul-int/lit16 v2, p1, 0x51f

    ushr-int/lit8 v2, v2, 0x11

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    mul-int/2addr v2, v1

    sub-int/2addr p1, v2

    :cond_2
    mul-int/lit8 v1, p1, 0x67

    ushr-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    return-void
.end method

.method private lowDigits(I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->append8Digits(I)V

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->trimZeroes()V

    return-void
.end method

.method private makeString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private toExponential(IIII)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    const/16 p1, 0x2e

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/dtoa/Decimal;->append8Digits(I)V

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/dtoa/Decimal;->lowDigits(I)V

    add-int/lit8 p4, p4, -0x1

    invoke-direct {p0, p4}, Lorg/mozilla/javascript/dtoa/Decimal;->exponent(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->makeString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toFixed(IIII)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/dtoa/Decimal;->y(I)I

    move-result p1

    const/4 p2, 0x1

    :goto_0
    const v0, 0xfffffff

    if-ge p2, p4, :cond_0

    mul-int/lit8 p1, p1, 0xa

    ushr-int/lit8 v1, p1, 0x1c

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    and-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/16 p4, 0x2e

    invoke-direct {p0, p4}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    :goto_1
    const/16 p4, 0x8

    if-gt p2, p4, :cond_1

    mul-int/lit8 p1, p1, 0xa

    ushr-int/lit8 p4, p1, 0x1c

    invoke-direct {p0, p4}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    and-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/dtoa/Decimal;->lowDigits(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->makeString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toFixedBigger(IIII)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/dtoa/Decimal;->append8Digits(I)V

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/dtoa/Decimal;->y(I)I

    move-result p1

    const/16 p2, 0x9

    :goto_0
    const p3, 0xfffffff

    if-ge p2, p4, :cond_0

    mul-int/lit8 p1, p1, 0xa

    ushr-int/lit8 v0, p1, 0x1c

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    and-int/2addr p1, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/16 p4, 0x2e

    invoke-direct {p0, p4}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    :goto_1
    const/16 p4, 0x10

    if-gt p2, p4, :cond_1

    mul-int/lit8 p1, p1, 0xa

    ushr-int/lit8 p4, p1, 0x1c

    invoke-direct {p0, p4}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    and-int/2addr p1, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->trimZeroes()V

    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->makeString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toFixedBiggest(IIII)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/dtoa/Decimal;->append8Digits(I)V

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/dtoa/Decimal;->append8Digits(I)V

    const/16 p1, 0x11

    :goto_0
    if-ge p1, p4, :cond_0

    const/16 p2, 0x30

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->makeString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toFixedSmall(IIII)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    :goto_0
    if-gez p4, :cond_0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/dtoa/Decimal;->appendDigit(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/dtoa/Decimal;->append8Digits(I)V

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/dtoa/Decimal;->lowDigits(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->makeString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private trimZeroes()V
    .locals 3

    :goto_0
    iget v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->buf:[C

    add-int/lit8 v2, v0, -0x1

    aget-char v1, v1, v2

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->buf:[C

    add-int/lit8 v2, v0, -0x1

    aget-char v1, v1, v2

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    :cond_1
    return-void
.end method

.method private y(I)I
    .locals 10

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    const/16 p1, 0x1c

    shl-long/2addr v0, p1

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    const/16 p1, 0x20

    shr-long/2addr v0, p1

    const-wide/32 v6, 0x4611873c

    mul-long v8, v4, v6

    ushr-long/2addr v8, p1

    mul-long/2addr v6, v0

    add-long/2addr v6, v8

    and-long/2addr v2, v6

    shr-long/2addr v6, p1

    const-wide/32 v8, 0x2af31dc

    mul-long/2addr v4, v8

    add-long/2addr v4, v2

    shr-long v2, v4, p1

    mul-long/2addr v0, v8

    add-long/2addr v0, v6

    add-long/2addr v0, v2

    const/16 p1, 0x14

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->DEFAULT:Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/dtoa/Decimal;->toString(Lorg/mozilla/javascript/dtoa/Decimal$Mode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/mozilla/javascript/dtoa/Decimal$Mode;)Ljava/lang/String;
    .locals 14

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->length:I

    .line 3
    iget-wide v0, p0, Lorg/mozilla/javascript/dtoa/Decimal;->digits:J

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    invoke-static {v0}, Lorg/mozilla/javascript/dtoa/MathUtils;->flog10pow2(I)I

    move-result v0

    .line 4
    iget-wide v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->digits:J

    invoke-static {v0}, Lorg/mozilla/javascript/dtoa/MathUtils;->pow10(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_0
    iget-wide v1, p0, Lorg/mozilla/javascript/dtoa/Decimal;->digits:J

    rsub-int/lit8 v3, v0, 0x11

    invoke-static {v3}, Lorg/mozilla/javascript/dtoa/MathUtils;->pow10(I)J

    move-result-wide v3

    mul-long/2addr v1, v3

    .line 6
    iget v3, p0, Lorg/mozilla/javascript/dtoa/Decimal;->exponent:I

    add-int/2addr v3, v0

    const-wide v4, 0xffffffffL

    and-long v6, v1, v4

    const/16 v0, 0x20

    shr-long v8, v1, v0

    const-wide/32 v10, 0x4611873c

    mul-long v12, v6, v10

    ushr-long/2addr v12, v0

    mul-long/2addr v10, v8

    add-long/2addr v10, v12

    and-long/2addr v4, v10

    shr-long/2addr v10, v0

    const-wide/32 v12, 0x2af31dc

    mul-long/2addr v6, v12

    add-long/2addr v6, v4

    shr-long v4, v6, v0

    mul-long/2addr v8, v12

    add-long/2addr v8, v10

    add-long/2addr v8, v4

    const/16 v0, 0x14

    ushr-long v4, v8, v0

    const-wide/32 v6, 0x5f5e100

    mul-long v8, v4, v6

    sub-long/2addr v1, v8

    long-to-int v0, v1

    const-wide/32 v1, 0x55e63b89

    mul-long/2addr v1, v4

    const/16 v8, 0x39

    ushr-long/2addr v1, v8

    long-to-int v1, v1

    int-to-long v8, v1

    mul-long/2addr v8, v6

    sub-long/2addr v4, v8

    long-to-int v2, v4

    .line 7
    iget-boolean v4, p0, Lorg/mozilla/javascript/dtoa/Decimal;->negative:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x2d

    .line 8
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/dtoa/Decimal;->append(C)V

    .line 9
    :cond_1
    sget-object v4, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->DEFAULT:Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    if-ne p1, v4, :cond_5

    const/16 p1, 0x8

    if-lez v3, :cond_2

    if-gt v3, p1, :cond_2

    .line 10
    invoke-direct {p0, v1, v2, v0, v3}, Lorg/mozilla/javascript/dtoa/Decimal;->toFixed(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v4, 0x10

    if-ge p1, v3, :cond_3

    if-gt v3, v4, :cond_3

    .line 11
    invoke-direct {p0, v1, v2, v0, v3}, Lorg/mozilla/javascript/dtoa/Decimal;->toFixedBigger(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-ge v4, v3, :cond_4

    const/16 p1, 0x15

    if-gt v3, p1, :cond_4

    .line 12
    invoke-direct {p0, v1, v2, v0, v3}, Lorg/mozilla/javascript/dtoa/Decimal;->toFixedBiggest(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, -0x6

    if-ge p1, v3, :cond_5

    if-gtz v3, :cond_5

    .line 13
    invoke-direct {p0, v1, v2, v0, v3}, Lorg/mozilla/javascript/dtoa/Decimal;->toFixedSmall(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    invoke-direct {p0, v1, v2, v0, v3}, Lorg/mozilla/javascript/dtoa/Decimal;->toExponential(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
