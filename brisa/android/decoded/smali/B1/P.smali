.class public abstract LB1/P;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LB1/N;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, LB1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LB1/N;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LB1/N;-><init>(I)V

    goto :goto_0

    :cond_0
    sget-object v0, LB1/O;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    new-instance v0, LB1/O;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LB1/N;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, LB1/N;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LB1/N;-><init>(I)V

    :goto_0
    sput-object v0, LB1/P;->a:LB1/N;

    return-void
.end method

.method public static a(I[BI)Z
    .locals 7

    :goto_0
    if-ge p0, p2, :cond_0

    aget-byte v0, p1, p0

    if-ltz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-lt p0, p2, :cond_1

    return v0

    :cond_1
    :goto_1
    if-lt p0, p2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, p0, 0x1

    aget-byte v2, p1, p0

    if-gez v2, :cond_b

    const/16 v3, -0x20

    const/16 v4, -0x41

    if-ge v2, v3, :cond_4

    if-lt v1, p2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v3, -0x3e

    if-lt v2, v3, :cond_a

    add-int/lit8 p0, p0, 0x2

    aget-byte v1, p1, v1

    if-le v1, v4, :cond_1

    goto :goto_2

    :cond_4
    const/16 v5, -0x10

    if-ge v2, v5, :cond_8

    add-int/lit8 v5, p2, -0x1

    if-lt v1, v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v5, p0, 0x2

    aget-byte v1, p1, v1

    if-gt v1, v4, :cond_a

    const/16 v6, -0x60

    if-ne v2, v3, :cond_6

    if-lt v1, v6, :cond_a

    :cond_6
    const/16 v3, -0x13

    if-ne v2, v3, :cond_7

    if-ge v1, v6, :cond_a

    :cond_7
    add-int/lit8 p0, p0, 0x3

    aget-byte v1, p1, v5

    if-le v1, v4, :cond_1

    goto :goto_2

    :cond_8
    add-int/lit8 v3, p2, -0x2

    if-lt v1, v3, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v3, p0, 0x2

    aget-byte v1, p1, v1

    if-gt v1, v4, :cond_a

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_a

    add-int/lit8 v1, p0, 0x3

    aget-byte v2, p1, v3

    if-gt v2, v4, :cond_a

    add-int/lit8 p0, p0, 0x4

    aget-byte v1, p1, v1

    if-le v1, v4, :cond_1

    :cond_a
    :goto_2
    const/4 p0, 0x0

    return p0

    :cond_b
    move p0, v1

    goto :goto_1
.end method
