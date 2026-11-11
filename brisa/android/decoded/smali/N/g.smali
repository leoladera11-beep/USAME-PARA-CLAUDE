.class public final LN/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN/H;


# static fields
.field public static final r:Lu1/C0;


# instance fields
.field public final a:LG/p0;

.field public final b:LG/n0;

.field public final c:LX/e;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:I

.field public final m:Z

.field public final n:J

.field public final o:Lu1/T;

.field public final p:Ljava/util/concurrent/ConcurrentHashMap;

.field public q:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Lu1/P;->f:Lu1/N;

    const-string v1, "file"

    const-string v2, "content"

    const-string v3, "data"

    const-string v4, "android.resource"

    const-string v5, "rawresource"

    const-string v6, "asset"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lu1/s;->c(I[Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lu1/P;->i(I[Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    sput-object v0, LN/g;->r:Lu1/C0;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    new-instance v0, LX/e;

    invoke-direct {v0}, LX/e;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const-string v3, "bufferForPlaybackMs"

    const-string v4, "0"

    invoke-static {v1, v2, v3, v4}, LN/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v5, "bufferForPlaybackForLocalPlaybackMs"

    invoke-static {v1, v2, v5, v4}, LN/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x7d0

    const-string v7, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v6, v2, v7, v4}, LN/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "bufferForPlaybackAfterRebufferForLocalPlaybackMs"

    invoke-static {v1, v2, v8, v4}, LN/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    const v9, 0xc350

    const-string v10, "minBufferMs"

    invoke-static {v9, v1, v10, v3}, LN/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "minBufferForLocalPlaybackMs"

    invoke-static {v1, v1, v3, v5}, LN/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v6, v10, v7}, LN/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v1, v3, v8}, LN/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v5, "maxBufferMs"

    invoke-static {v9, v9, v5, v10}, LN/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v5, "maxBufferForLocalPlaybackMs"

    invoke-static {v9, v1, v5, v3}, LN/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "backBufferDurationMs"

    invoke-static {v2, v2, v3, v4}, LN/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, LG/p0;

    invoke-direct {v3}, LG/p0;-><init>()V

    iput-object v3, p0, LN/g;->a:LG/p0;

    new-instance v3, LG/n0;

    invoke-direct {v3}, LG/n0;-><init>()V

    iput-object v3, p0, LN/g;->b:LG/n0;

    iput-object v0, p0, LN/g;->c:LX/e;

    int-to-long v3, v9

    invoke-static {v3, v4}, LJ/W;->G(J)J

    move-result-wide v7

    iput-wide v7, p0, LN/g;->d:J

    int-to-long v0, v1

    invoke-static {v0, v1}, LJ/W;->G(J)J

    move-result-wide v7

    iput-wide v7, p0, LN/g;->e:J

    invoke-static {v3, v4}, LJ/W;->G(J)J

    move-result-wide v7

    iput-wide v7, p0, LN/g;->f:J

    invoke-static {v3, v4}, LJ/W;->G(J)J

    move-result-wide v3

    iput-wide v3, p0, LN/g;->g:J

    invoke-static {v0, v1}, LJ/W;->G(J)J

    move-result-wide v3

    iput-wide v3, p0, LN/g;->h:J

    invoke-static {v0, v1}, LJ/W;->G(J)J

    move-result-wide v3

    iput-wide v3, p0, LN/g;->i:J

    int-to-long v3, v6

    invoke-static {v3, v4}, LJ/W;->G(J)J

    move-result-wide v3

    iput-wide v3, p0, LN/g;->j:J

    invoke-static {v0, v1}, LJ/W;->G(J)J

    move-result-wide v0

    iput-wide v0, p0, LN/g;->k:J

    const/4 v0, -0x1

    iput v0, p0, LN/g;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LN/g;->m:Z

    int-to-long v0, v2

    invoke-static {v0, v1}, LJ/W;->G(J)J

    move-result-wide v0

    iput-wide v0, p0, LN/g;->n:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lu1/H0;->k:Lu1/H0;

    invoke-static {v0}, Lu1/T;->a(Ljava/util/Map;)Lu1/T;

    move-result-object v0

    iput-object v0, p0, LN/g;->o:Lu1/T;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LN/g;->q:J

    return-void
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s cannot be less than %s"

    invoke-static {p2, p1}, Lj1/a;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(LN/G;)Z
    .locals 14

    iget-object v0, p1, LN/G;->a:LO/j;

    iget-object v1, p0, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v2

    :try_start_0
    iget v3, v2, LN/f;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    iget-object v2, p0, LN/g;->c:LX/e;

    iget v2, v2, LX/e;->b:I

    mul-int/2addr v3, v2

    iget-object v2, p0, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, LN/f;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v3, v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    sget-object v3, LO/j;->c:LO/j;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    xor-int/lit8 p1, v2, 0x1

    return p1

    :cond_1
    iget-object v0, p1, LN/G;->b:LG/q0;

    iget-object v3, p1, LN/G;->c:LU/A;

    iget-object v3, v3, LU/A;->a:Ljava/lang/Object;

    iget-object v6, p0, LN/g;->b:LG/n0;

    invoke-virtual {v0, v3, v6}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v3

    iget v3, v3, LG/n0;->c:I

    iget-object v6, p0, LN/g;->a:LG/p0;

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v3, v6, v7, v8}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-object v0, v0, LG/p0;->c:LG/P;

    iget-object v0, v0, LG/P;->b:LG/K;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, LG/K;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, LN/g;->r:Lu1/C0;

    invoke-virtual {v3, v0}, Lu1/P;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v5

    :goto_3
    if-eqz v0, :cond_5

    iget-wide v6, p0, LN/g;->e:J

    goto :goto_4

    :cond_5
    iget-wide v6, p0, LN/g;->d:J

    :goto_4
    if-eqz v0, :cond_6

    iget-wide v8, p0, LN/g;->g:J

    goto :goto_5

    :cond_6
    iget-wide v8, p0, LN/g;->f:J

    :goto_5
    iget v3, p1, LN/G;->e:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v3, v10

    if-lez v10, :cond_7

    invoke-static {v6, v7, v3}, LJ/W;->u(JF)J

    move-result-wide v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_7
    const-wide/32 v10, 0x7a120

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-wide v12, p1, LN/G;->d:J

    cmp-long v3, v12, v6

    if-gez v3, :cond_f

    if-eqz v0, :cond_8

    iget-boolean v0, p0, LN/g;->m:Z

    goto :goto_6

    :cond_8
    move v0, v4

    :goto_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-ltz v8, :cond_a

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    iget-object v3, p0, LN/g;->c:LX/e;

    monitor-enter v3

    :try_start_1
    iget v12, v3, LX/e;->e:I

    iget v13, v3, LX/e;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-int/2addr v12, v13

    monitor-exit v3

    int-to-long v12, v12

    add-long/2addr v8, v12

    const-wide/16 v12, 0x19

    div-long/2addr v6, v12

    cmp-long v3, v8, v6

    if-ltz v3, :cond_9

    goto :goto_7

    :cond_9
    move v3, v4

    goto :goto_8

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_a
    :goto_7
    move v3, v5

    :goto_8
    if-eqz v0, :cond_b

    if-nez v3, :cond_c

    :cond_b
    if-nez v2, :cond_d

    :cond_c
    move v4, v5

    :cond_d
    iput-boolean v4, v1, LN/f;->b:Z

    if-nez v4, :cond_e

    if-eqz v0, :cond_e

    if-nez v3, :cond_e

    const-string v0, "DefaultLoadControl"

    const-string v2, "Stopped loading before minBufferUs reached due to memory pressure, despite prioritizeTimeOverSizeThresholds=true."

    invoke-static {v0, v2}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-boolean v0, v1, LN/f;->b:Z

    if-nez v0, :cond_11

    iget-wide v2, p1, LN/G;->d:J

    cmp-long p1, v2, v10

    if-gez p1, :cond_11

    const-string p1, "DefaultLoadControl"

    const-string v0, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    cmp-long p1, v12, v8

    if-gez p1, :cond_10

    if-eqz v2, :cond_11

    :cond_10
    iput-boolean v4, v1, LN/f;->b:Z

    :cond_11
    :goto_9
    iget-boolean p1, v1, LN/f;->b:Z

    return p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, LN/g;->c:LX/e;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, v0, LX/e;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, LX/e;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    iget-object v0, p0, LN/g;->c:LX/e;

    iget-object v2, p0, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN/f;

    iget v3, v3, LN/f;->c:I

    add-int/2addr v1, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, LX/e;->c(I)V

    return-void
.end method
