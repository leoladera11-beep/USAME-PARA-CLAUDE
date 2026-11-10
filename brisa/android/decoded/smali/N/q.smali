.class public final synthetic LN/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Z

.field public final synthetic g:LN/x;

.field public final synthetic h:LO/j;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLN/x;LO/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/q;->e:Landroid/content/Context;

    iput-boolean p2, p0, LN/q;->f:Z

    iput-object p3, p0, LN/q;->g:LN/x;

    iput-object p4, p0, LN/q;->h:LO/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, LN/q;->e:Landroid/content/Context;

    iget-boolean v1, p0, LN/q;->f:Z

    iget-object v2, p0, LN/q;->g:LN/x;

    iget-object v3, p0, LN/q;->h:LO/j;

    const-string v4, "media_metrics"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, LJ/w;->c(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v5, LO/i;

    invoke-static {v4}, LJ/w;->m(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    move-result-object v4

    invoke-direct {v5, v0, v4}, LO/i;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    move-object v0, v5

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v1, "MediaMetricsService unavailable."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    iget-object v1, v2, LN/x;->s:LO/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, LO/d;->j:LJ/t;

    invoke-virtual {v1, v0}, LJ/t;->a(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, v0, LO/i;->d:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0}, LO/g;->a(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    move-result-object v0

    monitor-enter v3

    :try_start_0
    iget-object v1, v3, LO/j;->b:La1/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, La1/g;->e:Ljava/lang/Object;

    check-cast v2, Landroid/media/metrics/LogSessionId;

    invoke-static {}, LO/h;->i()Landroid/media/metrics/LogSessionId;

    invoke-static {v2}, LO/h;->x(Landroid/media/metrics/LogSessionId;)Z

    move-result v2

    invoke-static {v2}, LF1/i;->o(Z)V

    iput-object v0, v1, La1/g;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
