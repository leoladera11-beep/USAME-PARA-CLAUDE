.class public final Lcom/brisa/local/VideoGestureEngine;
.super Ljava/lang/Object;
.source "VideoGestureEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brisa/local/VideoGestureEngine$Host;,
        Lcom/brisa/local/VideoGestureEngine$Scheduler;
    }
.end annotation


# instance fields
.field private active:Z

.field private boosted:Z

.field private final doubleDelay:J

.field private final doubleSlop:F

.field private downX:F

.field private downY:F

.field private held:Z

.field private final hold:Ljava/lang/Runnable;

.field private final holdDelay:J

.field private final host:Lcom/brisa/local/VideoGestureEngine$Host;

.field private final moveSlop:F

.field private moved:Z

.field private pendingTap:Z

.field private previousSpeed:F

.field private final scheduler:Lcom/brisa/local/VideoGestureEngine$Scheduler;

.field private secondTap:Z

.field private side:I

.field private final single:Ljava/lang/Runnable;

.field private tapSide:I

.field private tapTime:J

.field private tapX:F

.field private tapY:F


# direct methods
.method public constructor <init>(Lcom/brisa/local/VideoGestureEngine$Host;Lcom/brisa/local/VideoGestureEngine$Scheduler;JJFF)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/brisa/local/VideoGestureEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brisa/local/VideoGestureEngine$$ExternalSyntheticLambda0;-><init>(Lcom/brisa/local/VideoGestureEngine;)V

    iput-object v0, p0, Lcom/brisa/local/VideoGestureEngine;->single:Ljava/lang/Runnable;

    .line 31
    new-instance v0, Lcom/brisa/local/VideoGestureEngine$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/brisa/local/VideoGestureEngine$$ExternalSyntheticLambda1;-><init>(Lcom/brisa/local/VideoGestureEngine;)V

    iput-object v0, p0, Lcom/brisa/local/VideoGestureEngine;->hold:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    iput-object p2, p0, Lcom/brisa/local/VideoGestureEngine;->scheduler:Lcom/brisa/local/VideoGestureEngine$Scheduler;

    iput-wide p3, p0, Lcom/brisa/local/VideoGestureEngine;->doubleDelay:J

    .line 36
    iput-wide p5, p0, Lcom/brisa/local/VideoGestureEngine;->holdDelay:J

    iput p7, p0, Lcom/brisa/local/VideoGestureEngine;->moveSlop:F

    iput p8, p0, Lcom/brisa/local/VideoGestureEngine;->doubleSlop:F

    .line 37
    return-void
.end method

.method private beginHold()V
    .locals 3

    .line 75
    iget-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->active:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->moved:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->held:Z

    .line 77
    iget-object v1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    invoke-interface {v1}, Lcom/brisa/local/VideoGestureEngine$Host;->ready()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    invoke-interface {v1}, Lcom/brisa/local/VideoGestureEngine$Host;->speed()F

    move-result v1

    iput v1, p0, Lcom/brisa/local/VideoGestureEngine;->previousSpeed:F

    iget-object v1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-interface {v1, v2}, Lcom/brisa/local/VideoGestureEngine$Host;->speed(F)V

    iput-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->boosted:Z

    iget-object v1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    invoke-interface {v1, v0}, Lcom/brisa/local/VideoGestureEngine$Host;->holding(Z)V

    .line 80
    :cond_1
    return-void

    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method private confirmSingle()V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->pendingTap:Z

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->pendingTap:Z

    iget-object v0, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    invoke-interface {v0}, Lcom/brisa/local/VideoGestureEngine$Host;->toggleControls()V

    .line 73
    return-void
.end method

.method private static distance(FFFF)F
    .locals 2

    .line 88
    sub-float/2addr p0, p2

    float-to-double v0, p0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private endHold()V
    .locals 3

    .line 82
    iget-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->boosted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->boosted:Z

    iget-object v1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    iget v2, p0, Lcom/brisa/local/VideoGestureEngine;->previousSpeed:F

    invoke-interface {v1, v2}, Lcom/brisa/local/VideoGestureEngine$Host;->speed(F)V

    iget-object v1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    invoke-interface {v1, v0}, Lcom/brisa/local/VideoGestureEngine$Host;->holding(Z)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/brisa/local/VideoGestureEngine;->scheduler:Lcom/brisa/local/VideoGestureEngine$Scheduler;

    iget-object v1, p0, Lcom/brisa/local/VideoGestureEngine;->hold:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/brisa/local/VideoGestureEngine$Scheduler;->cancel(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/brisa/local/VideoGestureEngine;->scheduler:Lcom/brisa/local/VideoGestureEngine$Scheduler;

    iget-object v1, p0, Lcom/brisa/local/VideoGestureEngine;->single:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/brisa/local/VideoGestureEngine$Scheduler;->cancel(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->pendingTap:Z

    .line 86
    iput-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->active:Z

    invoke-direct {p0}, Lcom/brisa/local/VideoGestureEngine;->endHold()V

    iput-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->held:Z

    iput-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->secondTap:Z

    .line 87
    return-void
.end method

.method public down(FFFJ)V
    .locals 4

    .line 39
    iget-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->active:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/brisa/local/VideoGestureEngine;->cancel()V

    .line 40
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    cmpg-float p3, p1, p3

    const/4 v0, 0x1

    if-gez p3, :cond_1

    const/4 p3, -0x1

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    iput p3, p0, Lcom/brisa/local/VideoGestureEngine;->side:I

    .line 41
    iget-boolean p3, p0, Lcom/brisa/local/VideoGestureEngine;->pendingTap:Z

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget-wide v2, p0, Lcom/brisa/local/VideoGestureEngine;->tapTime:J

    cmp-long p3, p4, v2

    if-ltz p3, :cond_2

    iget-wide v2, p0, Lcom/brisa/local/VideoGestureEngine;->tapTime:J

    sub-long/2addr p4, v2

    iget-wide v2, p0, Lcom/brisa/local/VideoGestureEngine;->doubleDelay:J

    cmp-long p3, p4, v2

    if-gtz p3, :cond_2

    iget p3, p0, Lcom/brisa/local/VideoGestureEngine;->side:I

    iget p4, p0, Lcom/brisa/local/VideoGestureEngine;->tapSide:I

    if-ne p3, p4, :cond_2

    iget p3, p0, Lcom/brisa/local/VideoGestureEngine;->tapX:F

    iget p4, p0, Lcom/brisa/local/VideoGestureEngine;->tapY:F

    .line 42
    invoke-static {p1, p2, p3, p4}, Lcom/brisa/local/VideoGestureEngine;->distance(FFFF)F

    move-result p3

    iget p4, p0, Lcom/brisa/local/VideoGestureEngine;->doubleSlop:F

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_2

    move p3, v0

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    iput-boolean p3, p0, Lcom/brisa/local/VideoGestureEngine;->secondTap:Z

    .line 43
    iget-boolean p3, p0, Lcom/brisa/local/VideoGestureEngine;->secondTap:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/brisa/local/VideoGestureEngine;->scheduler:Lcom/brisa/local/VideoGestureEngine$Scheduler;

    iget-object p4, p0, Lcom/brisa/local/VideoGestureEngine;->single:Ljava/lang/Runnable;

    invoke-interface {p3, p4}, Lcom/brisa/local/VideoGestureEngine$Scheduler;->cancel(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/brisa/local/VideoGestureEngine;->pendingTap:Z

    goto :goto_2

    .line 44
    :cond_3
    iget-boolean p3, p0, Lcom/brisa/local/VideoGestureEngine;->pendingTap:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/brisa/local/VideoGestureEngine;->scheduler:Lcom/brisa/local/VideoGestureEngine$Scheduler;

    iget-object p4, p0, Lcom/brisa/local/VideoGestureEngine;->single:Ljava/lang/Runnable;

    invoke-interface {p3, p4}, Lcom/brisa/local/VideoGestureEngine$Scheduler;->cancel(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/brisa/local/VideoGestureEngine;->confirmSingle()V

    .line 45
    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->active:Z

    iput-boolean v1, p0, Lcom/brisa/local/VideoGestureEngine;->moved:Z

    iput-boolean v1, p0, Lcom/brisa/local/VideoGestureEngine;->held:Z

    iput-boolean v1, p0, Lcom/brisa/local/VideoGestureEngine;->boosted:Z

    iput p1, p0, Lcom/brisa/local/VideoGestureEngine;->downX:F

    iput p2, p0, Lcom/brisa/local/VideoGestureEngine;->downY:F

    .line 46
    iget-object p1, p0, Lcom/brisa/local/VideoGestureEngine;->scheduler:Lcom/brisa/local/VideoGestureEngine$Scheduler;

    iget-object p2, p0, Lcom/brisa/local/VideoGestureEngine;->hold:Ljava/lang/Runnable;

    iget-wide p3, p0, Lcom/brisa/local/VideoGestureEngine;->holdDelay:J

    invoke-interface {p1, p2, p3, p4}, Lcom/brisa/local/VideoGestureEngine$Scheduler;->later(Ljava/lang/Runnable;J)V

    .line 47
    return-void
.end method

.method synthetic lambda$new$0$com-brisa-local-VideoGestureEngine()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/brisa/local/VideoGestureEngine;->confirmSingle()V

    return-void
.end method

.method synthetic lambda$new$1$com-brisa-local-VideoGestureEngine()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/brisa/local/VideoGestureEngine;->beginHold()V

    return-void
.end method

.method public move(FF)V
    .locals 2

    .line 49
    iget-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->active:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->held:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/brisa/local/VideoGestureEngine;->downX:F

    iget v1, p0, Lcom/brisa/local/VideoGestureEngine;->downY:F

    invoke-static {p1, p2, v0, v1}, Lcom/brisa/local/VideoGestureEngine;->distance(FFFF)F

    move-result p1

    iget p2, p0, Lcom/brisa/local/VideoGestureEngine;->moveSlop:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/brisa/local/VideoGestureEngine;->moved:Z

    iget-object p1, p0, Lcom/brisa/local/VideoGestureEngine;->scheduler:Lcom/brisa/local/VideoGestureEngine$Scheduler;

    iget-object p2, p0, Lcom/brisa/local/VideoGestureEngine;->hold:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Lcom/brisa/local/VideoGestureEngine$Scheduler;->cancel(Ljava/lang/Runnable;)V

    .line 50
    :cond_0
    return-void
.end method

.method public up(FFJ)V
    .locals 5

    .line 52
    iget-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->active:Z

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/brisa/local/VideoGestureEngine;->move(FF)V

    iget-object v0, p0, Lcom/brisa/local/VideoGestureEngine;->scheduler:Lcom/brisa/local/VideoGestureEngine$Scheduler;

    iget-object v1, p0, Lcom/brisa/local/VideoGestureEngine;->hold:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/brisa/local/VideoGestureEngine$Scheduler;->cancel(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->active:Z

    .line 54
    iget-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->held:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/brisa/local/VideoGestureEngine;->endHold()V

    iget-object p1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    invoke-interface {p1}, Lcom/brisa/local/VideoGestureEngine$Host;->interacted()V

    return-void

    .line 55
    :cond_1
    iget-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->moved:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    invoke-interface {p1}, Lcom/brisa/local/VideoGestureEngine$Host;->interacted()V

    return-void

    .line 56
    :cond_2
    iget-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->secondTap:Z

    if-eqz v0, :cond_6

    .line 57
    iget-object p1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    invoke-interface {p1}, Lcom/brisa/local/VideoGestureEngine$Host;->ready()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 58
    iget-object p1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    invoke-interface {p1}, Lcom/brisa/local/VideoGestureEngine$Host;->position()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 59
    iget v0, p0, Lcom/brisa/local/VideoGestureEngine;->side:I

    const-wide/16 v1, 0x2710

    if-gez v0, :cond_3

    sub-long/2addr p1, v1

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_3
    const-wide v3, 0x7fffffffffffd8efL

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    invoke-interface {v0}, Lcom/brisa/local/VideoGestureEngine$Host;->duration()J

    move-result-wide v0

    .line 61
    cmp-long p3, v0, p3

    if-ltz p3, :cond_4

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 62
    :cond_4
    iget-object p3, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    invoke-interface {p3, p1, p2}, Lcom/brisa/local/VideoGestureEngine$Host;->seek(J)V

    iget-object p1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    iget p2, p0, Lcom/brisa/local/VideoGestureEngine;->side:I

    invoke-interface {p1, p2}, Lcom/brisa/local/VideoGestureEngine$Host;->seekFeedback(I)V

    .line 64
    :cond_5
    iget-object p1, p0, Lcom/brisa/local/VideoGestureEngine;->host:Lcom/brisa/local/VideoGestureEngine$Host;

    invoke-interface {p1}, Lcom/brisa/local/VideoGestureEngine$Host;->interacted()V

    goto :goto_1

    .line 66
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brisa/local/VideoGestureEngine;->pendingTap:Z

    iput p1, p0, Lcom/brisa/local/VideoGestureEngine;->tapX:F

    iput p2, p0, Lcom/brisa/local/VideoGestureEngine;->tapY:F

    iget p1, p0, Lcom/brisa/local/VideoGestureEngine;->side:I

    iput p1, p0, Lcom/brisa/local/VideoGestureEngine;->tapSide:I

    iput-wide p3, p0, Lcom/brisa/local/VideoGestureEngine;->tapTime:J

    .line 67
    iget-object p1, p0, Lcom/brisa/local/VideoGestureEngine;->scheduler:Lcom/brisa/local/VideoGestureEngine$Scheduler;

    iget-object p2, p0, Lcom/brisa/local/VideoGestureEngine;->single:Ljava/lang/Runnable;

    iget-wide p3, p0, Lcom/brisa/local/VideoGestureEngine;->doubleDelay:J

    invoke-interface {p1, p2, p3, p4}, Lcom/brisa/local/VideoGestureEngine$Scheduler;->later(Ljava/lang/Runnable;J)V

    .line 69
    :goto_1
    return-void
.end method
