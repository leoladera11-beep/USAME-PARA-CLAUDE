.class public final LZ/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field public c:LZ/A;

.field public d:Z

.field public e:Landroid/view/Surface;

.field public f:F

.field public g:F

.field public h:F

.field public i:I

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ/D;->a:Landroid/content/Context;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, LZ/D;->h:F

    const/4 p1, 0x0

    iput p1, p0, LZ/D;->i:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, LZ/D;->e:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v1, p0, LZ/D;->i:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget v1, p0, LZ/D;->g:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, LZ/D;->g:F

    iget-object v0, p0, LZ/D;->e:Landroid/view/Surface;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v2, v1}, LG/l;->m(Landroid/view/Surface;FI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "VideoFrameReleaseHelper"

    const-string v2, "Failed to call Surface.setFrameRate"

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LZ/D;->o:J

    iput-wide v0, p0, LZ/D;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LZ/D;->n:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LZ/D;->j:J

    iput-wide v0, p0, LZ/D;->k:J

    return-void
.end method

.method public final c(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    iget-object v0, p0, LZ/D;->e:Landroid/view/Surface;

    if-eqz v0, :cond_4

    iget v1, p0, LZ/D;->i:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, LZ/D;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, LZ/D;->f:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    iget v2, p0, LZ/D;->h:F

    mul-float/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez p1, :cond_2

    iget p1, p0, LZ/D;->g:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iput v0, p0, LZ/D;->g:F

    iget-object p1, p0, LZ/D;->e:Landroid/view/Surface;

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    :try_start_0
    invoke-static {p1, v0, v1}, LG/l;->m(Landroid/view/Surface;FI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "VideoFrameReleaseHelper"

    const-string v1, "Failed to call Surface.setFrameRate"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method
