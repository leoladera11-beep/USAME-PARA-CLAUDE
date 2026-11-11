.class public abstract LL/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL/h;


# instance fields
.field public final e:Z

.field public final f:Ljava/util/ArrayList;

.field public g:I

.field public h:LL/n;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LL/c;->e:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, LL/c;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 8

    iget-object v0, p0, LL/c;->h:LL/n;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, LL/c;->g:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, LL/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL/D;

    iget-boolean v4, p0, LL/c;->e:Z

    check-cast v3, LX/g;

    monitor-enter v3

    :try_start_0
    sget-object v5, LX/g;->p:Lu1/C0;

    if-eqz v4, :cond_0

    iget v4, v0, LL/n;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-nez v4, :cond_1

    monitor-exit v3

    goto :goto_2

    :cond_1
    :try_start_1
    iget-wide v4, v3, LX/g;->i:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    iput-wide v4, v3, LX/g;->i:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 13

    iget-object v0, p0, LL/c;->h:LL/n;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, LL/c;->g:I

    if-ge v2, v3, :cond_6

    iget-object v3, p0, LL/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL/D;

    iget-boolean v4, p0, LL/c;->e:Z

    move-object v5, v3

    check-cast v5, LX/g;

    monitor-enter v5

    :try_start_0
    sget-object v3, LX/g;->p:Lu1/C0;

    const/4 v3, 0x1

    if-eqz v4, :cond_0

    iget v4, v0, LL/n;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-nez v4, :cond_1

    monitor-exit v5

    goto :goto_4

    :cond_1
    :try_start_1
    iget v4, v5, LX/g;->g:I

    if-lez v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-static {v4}, LF1/i;->o(Z)V

    iget-object v4, v5, LX/g;->d:LJ/M;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v6, v5, LX/g;->h:J

    sub-long v6, v11, v6

    long-to-int v10, v6

    iget-wide v6, v5, LX/g;->j:J

    int-to-long v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v5, LX/g;->j:J

    iget-wide v6, v5, LX/g;->k:J

    iget-wide v8, v5, LX/g;->i:J

    add-long/2addr v6, v8

    iput-wide v6, v5, LX/g;->k:J

    if-lez v10, :cond_5

    long-to-float v4, v8

    const/high16 v6, 0x45fa0000    # 8000.0f

    mul-float/2addr v4, v6

    int-to-float v6, v10

    div-float/2addr v4, v6

    iget-object v6, v5, LX/g;->f:LX/o;

    long-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v6, v4, v7}, LX/o;->a(FI)V

    iget-wide v6, v5, LX/g;->j:J

    const-wide/16 v8, 0x7d0

    cmp-long v4, v6, v8

    if-gez v4, :cond_3

    iget-wide v6, v5, LX/g;->k:J

    const-wide/32 v8, 0x80000

    cmp-long v4, v6, v8

    if-ltz v4, :cond_4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_3
    iget-object v4, v5, LX/g;->f:LX/o;

    invoke-virtual {v4}, LX/o;->b()F

    move-result v4

    float-to-long v6, v4

    iput-wide v6, v5, LX/g;->l:J

    :cond_4
    iget-wide v6, v5, LX/g;->i:J

    iget-wide v8, v5, LX/g;->l:J

    invoke-virtual/range {v5 .. v10}, LX/g;->e(JJI)V

    iput-wide v11, v5, LX/g;->h:J

    const-wide/16 v6, 0x0

    iput-wide v6, v5, LX/g;->i:J

    :cond_5
    iget v4, v5, LX/g;->g:I

    sub-int/2addr v4, v3

    iput v4, v5, LX/g;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :goto_5
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, LL/c;->h:LL/n;

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LL/c;->g:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LL/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL/D;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(LL/n;)V
    .locals 7

    iput-object p1, p0, LL/c;->h:LL/n;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, LL/c;->g:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, LL/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL/D;

    iget-boolean v3, p0, LL/c;->e:Z

    check-cast v2, LX/g;

    monitor-enter v2

    :try_start_0
    sget-object v4, LX/g;->p:Lu1/C0;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v3, p1, LL/n;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    if-nez v3, :cond_1

    monitor-exit v2

    goto :goto_3

    :cond_1
    :try_start_1
    iget v3, v2, LX/g;->g:I

    if-nez v3, :cond_2

    iget-object v3, v2, LX/g;->d:LJ/M;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v2, LX/g;->h:J

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_2
    iget v3, v2, LX/g;->g:I

    add-int/2addr v3, v4

    iput v3, v2, LX/g;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final y(LL/D;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LL/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, LL/c;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LL/c;->g:I

    :cond_0
    return-void
.end method
