.class public final LZ/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:D

.field public d:Landroid/util/Range;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Range;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v4, 0x3f800000    # 1.0f

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, LZ/z;->d:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, LZ/z;->c:D

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LZ/z;->a:J

    iput-wide v0, p0, LZ/z;->b:J

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, LF1/i;->g(Z)V

    cmp-long v2, p3, v0

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, LF1/i;->g(Z)V

    iget-wide v2, p0, LZ/z;->a:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    iget-wide v4, p0, LZ/z;->b:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_2

    cmp-long v0, p1, v2

    if-eqz v0, :cond_2

    sub-long v0, p3, v4

    long-to-double v0, v0

    sub-long v2, p1, v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, LZ/z;->d:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_1
    iget-object v2, p0, LZ/z;->d:Landroid/util/Range;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, LZ/z;->c:D

    const-wide v4, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v2, v4

    const-wide v4, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, LZ/z;->c:D

    iput-wide p1, p0, LZ/z;->a:J

    iput-wide p3, p0, LZ/z;->b:J

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, LZ/z;->d:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, LZ/z;->c:D

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LZ/z;->a:J

    iput-wide v0, p0, LZ/z;->b:J

    return-void
.end method

.method public final c(F)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    new-instance v0, Landroid/util/Range;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    float-to-double v4, p1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, LZ/z;->d:Landroid/util/Range;

    invoke-virtual {p0}, LZ/z;->b()V

    return-void
.end method
