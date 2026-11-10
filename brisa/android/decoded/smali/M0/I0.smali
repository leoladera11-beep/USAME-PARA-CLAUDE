.class public final LM0/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final e:Lcom/brisa/local/VideoPlaybackService;

.field public final f:La1/g;

.field public final g:Landroid/app/NotificationManager;

.field public final h:Landroid/os/Handler;

.field public final i:LM0/A;

.field public final j:Landroid/content/Intent;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/util/HashMap;

.field public final m:LM0/A0;

.field public n:I

.field public o:LZ0/i;

.field public p:Z

.field public q:Z

.field public r:Z

.field public final s:J

.field public final t:I


# direct methods
.method public constructor <init>(Lcom/brisa/local/VideoPlaybackService;LM0/A0;La1/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/I0;->e:Lcom/brisa/local/VideoPlaybackService;

    iput-object p2, p0, LM0/I0;->m:LM0/A0;

    iput-object p3, p0, LM0/I0;->f:La1/g;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, LM0/I0;->g:Landroid/app/NotificationManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    sget-object p3, LJ/W;->a:Ljava/lang/String;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, LM0/I0;->h:Landroid/os/Handler;

    new-instance p2, LM0/A;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, LM0/A;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, LM0/I0;->i:LM0/A;

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/brisa/local/VideoPlaybackService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, LM0/I0;->j:Landroid/content/Intent;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LM0/I0;->k:Ljava/lang/String;

    const-string v0, "androidx.media3.session.intent.uid"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LM0/I0;->l:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-boolean p1, p0, LM0/I0;->p:Z

    iput-boolean p3, p0, LM0/I0;->r:Z

    const-wide/32 p1, 0x927c0

    iput-wide p1, p0, LM0/I0;->s:J

    const/4 p1, 0x3

    iput p1, p0, LM0/I0;->t:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/brisa/local/VideoPlaybackService;)Landroid/util/Pair;
    .locals 7

    iget-object v0, p0, LM0/I0;->m:LM0/A0;

    check-cast v0, LM0/m;

    iget-object v1, v0, LM0/m;->a:Landroid/content/Context;

    iget v0, v0, LM0/m;->b:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, LM0/I0;->g:Landroid/app/NotificationManager;

    const-string v3, "default_channel_id"

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/app/NotificationChannel;

    invoke-direct {v4, v3, v0, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/16 v0, 0x1b

    if-gt v1, v0, :cond_1

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    :cond_1
    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :goto_0
    new-instance v0, Lk/i;

    invoke-direct {v0, p1, v3}, Lk/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x1f

    if-lt v1, p1, :cond_2

    iput v6, v0, Lk/i;->r:I

    :cond_2
    const/4 p1, 0x1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lk/i;->c(IZ)V

    const p1, 0x7f0700b6

    iget-object v1, v0, Lk/i;->t:Landroid/app/Notification;

    iput p1, v1, Landroid/app/Notification;->icon:I

    const/4 p1, -0x1

    iput p1, v0, Lk/i;->p:I

    invoke-virtual {v0, v6, v5}, Lk/i;->c(IZ)V

    invoke-virtual {v0}, Lk/i;->a()Landroid/app/Notification;

    move-result-object p1

    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x51ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, LM0/I0;->r:Z

    iget-object v1, p0, LM0/I0;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, LM0/I0;->e:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v1}, Lcom/brisa/local/VideoPlaybackService;->f()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM0/P0;

    invoke-virtual {v1, v4, v0}, Lcom/brisa/local/VideoPlaybackService;->o(LM0/P0;Z)Lz1/a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(LM0/P0;)LM0/z;
    .locals 1

    iget-object v0, p0, LM0/I0;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/G0;

    if-eqz p1, :cond_1

    iget-object p1, p1, LM0/G0;->a:LM0/B;

    invoke-virtual {p1}, Lz1/p;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/brisa/local/v;->i(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/z;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Z)Z
    .locals 7

    iget-object v0, p0, LM0/I0;->e:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v0}, Lcom/brisa/local/VideoPlaybackService;->f()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM0/P0;

    invoke-virtual {p0, v3}, LM0/I0;->c(LM0/P0;)LM0/z;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, LM0/z;->z()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    invoke-virtual {v3}, LM0/z;->c()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    invoke-virtual {v3}, LM0/z;->c()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    :cond_1
    move p1, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_1
    iget-boolean v0, p0, LM0/I0;->r:Z

    iget-wide v2, p0, LM0/I0;->s:J

    if-eqz v0, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-lez v0, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    iget-boolean v5, p0, LM0/I0;->q:Z

    iget-object v6, p0, LM0/I0;->h:Landroid/os/Handler;

    if-eqz v5, :cond_5

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v6, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    :goto_3
    iput-boolean p1, p0, LM0/I0;->q:Z

    invoke-virtual {v6, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez p1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    return v1

    :cond_8
    :goto_4
    return v4
.end method

.method public final e(LM0/P0;)Z
    .locals 4

    invoke-virtual {p0, p1}, LM0/I0;->c(LM0/P0;)LM0/z;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LM0/z;->p0()LG/q0;

    move-result-object v2

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, LM0/I0;->l:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/G0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LM0/z;->c()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iput-boolean v1, p1, LM0/G0;->b:Z

    iput-boolean v2, p1, LM0/G0;->c:Z

    return v2

    :cond_1
    iget v0, p0, LM0/I0;->t:I

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-boolean v0, p1, LM0/G0;->b:Z

    if-nez v0, :cond_4

    iget-boolean p1, p1, LM0/G0;->c:Z

    if-eqz p1, :cond_4

    return v2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    iget-boolean p1, p1, LM0/G0;->b:Z

    xor-int/2addr p1, v2

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public final f(LM0/P0;LZ0/i;Z)V
    .locals 3

    iget-object p1, p1, LM0/P0;->a:LM0/X0;

    iget-object p1, p1, LM0/X0;->h:LM0/t1;

    iget-object p1, p1, LM0/t1;->o:LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/I;

    iget-object p1, p1, LN0/I;->c:LN0/N;

    iget-object p1, p1, LN0/N;->f:Landroid/media/session/MediaSession$Token;

    iget-object v0, p2, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.mediaSession"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object p2, p0, LM0/I0;->o:LZ0/i;

    iget-object p1, p0, LM0/I0;->e:Lcom/brisa/local/VideoPlaybackService;

    const/16 p2, 0x3e9

    if-eqz p3, :cond_0

    iget-object p3, p0, LM0/I0;->j:Landroid/content/Intent;

    invoke-static {p1, p3}, Ll/b;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p1, p2, v0}, LJ/W;->P(Landroid/app/Service;ILandroid/app/Notification;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LM0/I0;->p:Z

    return-void

    :cond_0
    iget-object p3, p0, LM0/I0;->g:Landroid/app/NotificationManager;

    invoke-virtual {p3, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object p2, LJ/W;->a:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/Service;->stopForeground(I)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, LM0/I0;->e:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {p1}, Lcom/brisa/local/VideoPlaybackService;->f()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM0/P0;

    invoke-virtual {p1, v4, v0}, Lcom/brisa/local/VideoPlaybackService;->o(LM0/P0;Z)Lz1/a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    return v0
.end method
