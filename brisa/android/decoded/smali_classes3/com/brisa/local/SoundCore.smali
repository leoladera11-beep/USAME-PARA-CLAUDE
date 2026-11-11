.class public final Lcom/brisa/local/SoundCore;
.super Ljava/lang/Object;
.source "SoundCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brisa/local/SoundCore$Settings;,
        Lcom/brisa/local/SoundCore$Engine;,
        Lcom/brisa/local/SoundCore$Result;,
        Lcom/brisa/local/SoundCore$Factory;,
        Lcom/brisa/local/SoundCore$Effect;,
        Lcom/brisa/local/SoundCore$Port;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static band(Lcom/brisa/local/SoundCore$Settings;D)D
    .locals 9

    .line 16
    const-wide v0, 0x405f400000000000L    # 125.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    iget p0, p0, Lcom/brisa/local/SoundCore$Settings;->bass:I

    :goto_0
    int-to-double p0, p0

    return-wide p0

    :cond_0
    const-wide v2, 0x40bf400000000000L    # 8000.0

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1

    iget p0, p0, Lcom/brisa/local/SoundCore$Settings;->treble:I

    goto :goto_0

    .line 17
    :cond_1
    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpg-double v4, p1, v2

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    if-gtz v4, :cond_2

    iget v2, p0, Lcom/brisa/local/SoundCore$Settings;->bass:I

    int-to-double v2, v2

    iget v4, p0, Lcom/brisa/local/SoundCore$Settings;->mid:I

    iget p0, p0, Lcom/brisa/local/SoundCore$Settings;->bass:I

    sub-int/2addr v4, p0

    int-to-double v7, v4

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    mul-double/2addr v7, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr v7, p0

    add-double/2addr v2, v7

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/brisa/local/SoundCore$Settings;->mid:I

    int-to-double v0, v0

    iget v4, p0, Lcom/brisa/local/SoundCore$Settings;->treble:I

    iget p0, p0, Lcom/brisa/local/SoundCore$Settings;->mid:I

    sub-int/2addr v4, p0

    int-to-double v7, v4

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    mul-double/2addr v7, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr v7, p0

    add-double v2, v0, v7

    :goto_1
    return-wide v2
.end method

.method public static clamp(I)I
    .locals 1

    .line 12
    const/4 v0, 0x6

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, -0x6

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static gain(Lcom/brisa/local/SoundCore$Settings;)F
    .locals 4

    .line 14
    invoke-static {p0}, Lcom/brisa/local/SoundCore;->headroom(Lcom/brisa/local/SoundCore$Settings;)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static headroom(Lcom/brisa/local/SoundCore$Settings;)D
    .locals 2

    .line 13
    iget-boolean v0, p0, Lcom/brisa/local/SoundCore$Settings;->original:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/brisa/local/SoundCore$Settings;->bass:I

    iget v1, p0, Lcom/brisa/local/SoundCore$Settings;->mid:I

    iget p0, p0, Lcom/brisa/local/SoundCore$Settings;->treble:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-double v0, p0

    :goto_0
    return-wide v0
.end method
