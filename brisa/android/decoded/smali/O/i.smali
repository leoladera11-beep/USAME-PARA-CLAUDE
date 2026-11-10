.class public final LO/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Z

.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:LO/f;

.field public final d:Landroid/media/metrics/PlaybackSession;

.field public final e:J

.field public final f:LG/p0;

.field public final g:LG/n0;

.field public final h:Ljava/util/HashMap;

.field public final i:Ljava/util/HashMap;

.field public j:Ljava/lang/String;

.field public k:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public l:I

.field public m:I

.field public n:I

.field public o:LG/Z;

.field public p:LN0/O;

.field public q:LN0/O;

.field public r:LN0/O;

.field public s:LG/x;

.field public t:LG/x;

.field public u:LG/x;

.field public v:Z

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LO/i;->a:Landroid/content/Context;

    iput-object p2, p0, LO/i;->d:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, LJ/a;->f()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, LO/i;->b:Ljava/util/concurrent/Executor;

    new-instance p1, LG/p0;

    invoke-direct {p1}, LG/p0;-><init>()V

    iput-object p1, p0, LO/i;->f:LG/p0;

    new-instance p1, LG/n0;

    invoke-direct {p1}, LG/n0;-><init>()V

    iput-object p1, p0, LO/i;->g:LG/n0;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LO/i;->i:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LO/i;->h:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, LO/i;->e:J

    const/4 p1, 0x0

    iput p1, p0, LO/i;->m:I

    iput p1, p0, LO/i;->n:I

    new-instance p1, LO/f;

    invoke-direct {p1}, LO/f;-><init>()V

    iput-object p1, p0, LO/i;->c:LO/f;

    iput-object p0, p1, LO/f;->d:LO/i;

    return-void
.end method


# virtual methods
.method public final a(LN0/O;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p1, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, LO/i;->c:LO/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LO/f;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, LO/i;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, LO/i;->B:Z

    if-eqz v2, :cond_3

    iget v2, p0, LO/i;->A:I

    invoke-static {v0, v2}, LO/g;->l(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, LO/i;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, LO/i;->y:I

    invoke-static {v0, v2}, LO/g;->w(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, LO/i;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, LO/i;->z:I

    invoke-static {v0, v2}, LO/g;->z(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, LO/i;->h:Ljava/util/HashMap;

    iget-object v2, p0, LO/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, LO/i;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-static {v2, v5, v6}, LO/g;->m(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    iget-object v0, p0, LO/i;->i:Ljava/util/HashMap;

    iget-object v2, p0, LO/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, LO/i;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-static {v2, v5, v6}, LO/g;->x(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    iget-object v2, p0, LO/i;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v2, v0}, LO/g;->B(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, LO/i;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v0}, LO/g;->e(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    move-result-object v0

    new-instance v2, LH/i;

    const/16 v3, 0x14

    invoke-direct {v2, p0, v0, v3}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, p0, LO/i;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, LO/i;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, LO/i;->j:Ljava/lang/String;

    iput v1, p0, LO/i;->A:I

    iput v1, p0, LO/i;->y:I

    iput v1, p0, LO/i;->z:I

    iput-object v0, p0, LO/i;->s:LG/x;

    iput-object v0, p0, LO/i;->t:LG/x;

    iput-object v0, p0, LO/i;->u:LG/x;

    iput-boolean v1, p0, LO/i;->B:Z

    return-void
.end method

.method public final c(LG/q0;LU/A;)V
    .locals 8

    iget-object v0, p0, LO/i;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, LG/q0;->b(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, LO/i;->g:LG/n0;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, LG/q0;->f(ILG/n0;Z)LG/n0;

    iget p2, v1, LG/n0;->c:I

    iget-object v1, p0, LO/i;->f:LG/p0;

    invoke-virtual {p1, p2, v1}, LG/q0;->n(ILG/p0;)V

    iget-object p1, v1, LG/p0;->c:LG/P;

    iget-object p1, p1, LG/P;->b:LG/K;

    const/4 p2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p1, LG/K;->a:Landroid/net/Uri;

    iget-object p1, p1, LG/K;->b:Ljava/lang/String;

    invoke-static {v2, p1}, LJ/W;->A(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, p2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    :goto_1
    invoke-static {v0, v2}, LO/g;->C(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-wide v4, v1, LG/p0;->l:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v4, v6

    if-eqz p1, :cond_6

    iget-boolean p1, v1, LG/p0;->j:Z

    if-nez p1, :cond_6

    iget-boolean p1, v1, LG/p0;->h:Z

    if-nez p1, :cond_6

    invoke-virtual {v1}, LG/p0;->a()Z

    move-result p1

    if-nez p1, :cond_6

    iget-wide v4, v1, LG/p0;->l:J

    invoke-static {v4, v5}, LJ/W;->S(J)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, LO/g;->A(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    :cond_6
    invoke-virtual {v1}, LG/p0;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move p2, v3

    :goto_2
    invoke-static {v0, p2}, LO/g;->D(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iput-boolean v3, p0, LO/i;->B:Z

    return-void
.end method

.method public final d(LO/a;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, LO/a;->d:LU/A;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LU/A;->c()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, LO/i;->j:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LO/i;->b()V

    :cond_2
    :goto_0
    iget-object p1, p0, LO/i;->h:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LO/i;->i:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(IJLG/x;)V
    .locals 3

    invoke-static {p1}, LO/g;->j(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    iget-wide v0, p0, LO/i;->e:J

    sub-long/2addr p2, v0

    invoke-static {p1, p2, p3}, LO/g;->k(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_a

    invoke-static {p1}, LO/h;->u(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    const/4 p3, 0x2

    invoke-static {p1, p3}, LJ/w;->o(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    iget-object v0, p4, LG/x;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, LJ/w;->p(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p4, LG/x;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, LJ/w;->z(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p4, LG/x;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, LJ/w;->B(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_2
    iget v0, p4, LG/x;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-static {p1, v0}, LJ/w;->y(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_3
    iget v0, p4, LG/x;->w:I

    if-eq v0, v1, :cond_4

    invoke-static {p1, v0}, LJ/w;->A(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_4
    iget v0, p4, LG/x;->x:I

    if-eq v0, v1, :cond_5

    invoke-static {p1, v0}, LJ/w;->C(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_5
    iget v0, p4, LG/x;->J:I

    if-eq v0, v1, :cond_6

    invoke-static {p1, v0}, LJ/w;->D(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_6
    iget v0, p4, LG/x;->L:I

    if-eq v0, v1, :cond_7

    invoke-static {p1, v0}, LO/g;->u(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_7
    iget-object v0, p4, LG/x;->d:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    array-length v2, v0

    if-lt v2, p3, :cond_8

    aget-object p3, v0, p2

    goto :goto_0

    :cond_8
    const/4 p3, 0x0

    :goto_0
    invoke-static {v1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, LO/g;->v(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p3, :cond_9

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p3}, LO/g;->y(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_9
    iget p3, p4, LG/x;->B:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p3, p4

    if-eqz p4, :cond_b

    invoke-static {p1, p3}, LO/g;->t(Landroid/media/metrics/TrackChangeEvent$Builder;F)V

    goto :goto_1

    :cond_a
    invoke-static {p1}, LO/g;->s(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    :cond_b
    :goto_1
    iput-boolean p2, p0, LO/i;->B:Z

    invoke-static {p1}, LO/h;->j(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    new-instance p2, LH/i;

    const/16 p3, 0x11

    invoke-direct {p2, p0, p1, p3}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, LO/i;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
