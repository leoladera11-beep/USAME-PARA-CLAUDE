.class public final Lcom/brisa/local/VideoBackgroundPolicy;
.super Ljava/lang/Object;
.source "VideoBackgroundPolicy.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mayEnterPip(ZZZZZ)Z
    .locals 0

    .line 7
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static seek(JJZ)J
    .locals 6

    .line 10
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 11
    const-wide/16 v2, 0x2710

    if-eqz p4, :cond_0

    const-wide v4, 0x7fffffffffffd8efL

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    add-long/2addr p0, v2

    goto :goto_0

    :cond_0
    sub-long/2addr p0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 12
    :goto_0
    cmp-long p4, p2, v0

    if-ltz p4, :cond_1

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_1
    return-wide p0
.end method

.method public static transportActions(J)J
    .locals 2

    .line 16
    const-wide/16 v0, -0x31

    and-long/2addr p0, v0

    const-wide/16 v0, 0x8

    or-long/2addr p0, v0

    const-wide/16 v0, 0x40

    or-long/2addr p0, v0

    const-wide/16 v0, 0x100

    or-long/2addr p0, v0

    return-wide p0
.end method
