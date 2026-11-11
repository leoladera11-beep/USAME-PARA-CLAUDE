.class public final LN/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN/K;


# instance fields
.field public final e:LJ/M;

.field public f:Z

.field public g:J

.field public h:J

.field public i:LG/a0;


# direct methods
.method public constructor <init>(LJ/M;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/i0;->e:LJ/M;

    sget-object p1, LG/a0;->d:LG/a0;

    iput-object p1, p0, LN/i0;->i:LG/a0;

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 0

    iput-wide p1, p0, LN/i0;->g:J

    iget-boolean p1, p0, LN/i0;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LN/i0;->e:LJ/M;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, LN/i0;->h:J

    :cond_0
    return-void
.end method

.method public final c()J
    .locals 7

    iget-wide v0, p0, LN/i0;->g:J

    iget-boolean v2, p0, LN/i0;->f:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, LN/i0;->e:LJ/M;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, LN/i0;->h:J

    sub-long/2addr v2, v4

    iget-object v4, p0, LN/i0;->i:LG/a0;

    iget v5, v4, LG/a0;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    invoke-static {v2, v3}, LJ/W;->G(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    iget v4, v4, LG/a0;->c:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final d(LG/a0;)V
    .locals 2

    iget-boolean v0, p0, LN/i0;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LN/i0;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LN/i0;->b(J)V

    :cond_0
    iput-object p1, p0, LN/i0;->i:LG/a0;

    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, LN/i0;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LN/i0;->e:LJ/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, LN/i0;->h:J

    const/4 v0, 0x1

    iput-boolean v0, p0, LN/i0;->f:Z

    :cond_0
    return-void
.end method

.method public final g()LG/a0;
    .locals 1

    iget-object v0, p0, LN/i0;->i:LG/a0;

    return-object v0
.end method
