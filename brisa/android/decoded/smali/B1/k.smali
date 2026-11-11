.class public final LB1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:I


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7fffffff

    iput p1, p0, LB1/k;->d:I

    add-int/2addr p3, p2

    iput p3, p0, LB1/k;->a:I

    iput p2, p0, LB1/k;->b:I

    iput p2, p0, LB1/k;->c:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static b(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method
