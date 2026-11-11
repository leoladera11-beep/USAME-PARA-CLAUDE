.class public final Lcom/brisa/local/VideoPlaybackService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements LB/g;


# static fields
.field public static volatile o:Lcom/brisa/local/VideoPlaybackService;


# instance fields
.field public final a:LB/A;

.field public final b:Ljava/lang/Object;

.field public final c:Landroid/os/Handler;

.field public d:LM0/x1;

.field public e:LM0/I0;

.field public f:La1/g;

.field public final g:Lh/e;

.field public h:Z

.field public i:LN/x;

.field public j:LM0/P0;

.field public k:Landroid/media/audiofx/Equalizer;

.field public l:Z

.field public m:Ljava/lang/String;

.field public final n:LJ/z;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, LB/A;

    invoke-direct {v0, p0}, LB/A;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    iput-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->a:LB/A;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->b:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->c:Landroid/os/Handler;

    new-instance v0, Lh/e;

    invoke-direct {v0}, Lh/j;-><init>()V

    iput-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->g:Lh/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brisa/local/VideoPlaybackService;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->m:Ljava/lang/String;

    new-instance v0, LJ/z;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LJ/z;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->n:LJ/z;

    return-void
.end method

.method public static d(Landroid/content/Intent;)LM0/N0;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "androidx.media3.session.MediaSessionService"

    :goto_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v1, "androidx.media3.session.hint.controller_info_type"

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "androidx.media3.session.hint.intent_extras"

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v1, LM0/X0;->D:LM0/m2;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidx"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v2, "media3.session"

    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, ""

    :goto_2
    const-string v1, "androidx.media3.session.hint.session_id"

    invoke-virtual {v7, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v1, LM0/N0;

    new-instance v2, LN0/P;

    const/4 p0, -0x1

    invoke-direct {v2, v0, p0, p0}, LN0/P;-><init>(Ljava/lang/String;II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v3, 0x3c42a7d4

    const/16 v4, 0xa

    invoke-direct/range {v1 .. v7}, LM0/N0;-><init>(LN0/P;IIZLM0/M0;Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public final b(LM0/P0;)V
    .locals 5

    const-string v0, "session must not be null"

    invoke-static {p1, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LM0/P0;->a:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->l()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "session is already released"

    invoke-static {v2, v0}, LF1/i;->f(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/brisa/local/VideoPlaybackService;->g:Lh/e;

    iget-object v3, p1, LM0/P0;->a:LM0/X0;

    iget-object v3, v3, LM0/X0;->i:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/P0;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v3, "Session ID should be unique"

    invoke-static {v3, v1}, LF1/i;->f(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/brisa/local/VideoPlaybackService;->g:Lh/e;

    iget-object v3, p1, LM0/P0;->a:LM0/X0;

    iget-object v3, v3, LM0/X0;->i:Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->c:Landroid/os/Handler;

    new-instance v1, LM0/u1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LM0/u1;-><init>(Lcom/brisa/local/VideoPlaybackService;LM0/P0;I)V

    invoke-static {v0, v1}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 0
    invoke-static {p0}, Lcom/brisa/local/SoundSessions;->video(Landroid/app/Service;)V
    return-void
.end method

.method public final e()LM0/I0;
    .locals 3

    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->e:LM0/I0;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Accessing service context before onCreate()"

    invoke-static {v0, v1}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LM0/k;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, LM0/k;->c:Ljava/lang/Object;

    new-instance v1, LG/v;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LG/v;-><init>(I)V

    iput-object v1, v0, LM0/k;->d:Ljava/lang/Object;

    sget-object v1, LM0/m;->h:Lt1/t;

    const v1, 0x7f0d0013

    iput v1, v0, LM0/k;->b:I

    iget-boolean v1, v0, LM0/k;->a:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LM0/m;

    invoke-direct {v1, v0}, LM0/m;-><init>(LM0/k;)V

    iput-boolean v2, v0, LM0/k;->a:Z

    new-instance v0, LM0/I0;

    iget-object v2, p0, Lcom/brisa/local/VideoPlaybackService;->f:La1/g;

    if-nez v2, :cond_0

    new-instance v2, La1/g;

    invoke-direct {v2, p0}, La1/g;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/brisa/local/VideoPlaybackService;->f:La1/g;

    :cond_0
    iget-object v2, p0, Lcom/brisa/local/VideoPlaybackService;->f:La1/g;

    invoke-direct {v0, p0, v1, v2}, LM0/I0;-><init>(Lcom/brisa/local/VideoPlaybackService;LM0/A0;La1/g;)V

    iput-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->e:LM0/I0;

    :cond_1
    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->e:LM0/I0;

    return-object v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/brisa/local/VideoPlaybackService;->g:Lh/e;

    invoke-virtual {v2}, Lh/e;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()LB/i;
    .locals 1

    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->a:LB/A;

    iget-object v0, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, LB/i;

    return-object v0
.end method

.method public final h(LM0/P0;)Z
    .locals 2

    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/brisa/local/VideoPlaybackService;->g:Lh/e;

    iget-object p1, p1, LM0/P0;->a:LM0/X0;

    iget-object p1, p1, LM0/X0;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lh/j;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final i(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/brisa/local/VideoPlaybackService;->a:LB/A;

    sget-object v0, LB/d;->ON_START:LB/d;

    invoke-virtual {p1, v0}, LB/A;->N(LB/d;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->a:LB/A;

    sget-object v1, LB/d;->ON_CREATE:LB/d;

    invoke-virtual {v0, v1}, LB/A;->N(LB/d;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public final k()V
    .locals 1

    invoke-virtual {p0}, Lcom/brisa/local/VideoPlaybackService;->j()V

    new-instance v0, LM0/x1;

    invoke-direct {v0, p0}, LM0/x1;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    iput-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->d:LM0/x1;

    return-void
.end method

.method public final l()V
    .locals 2

    sget-object v0, LB/d;->ON_STOP:LB/d;

    iget-object v1, p0, Lcom/brisa/local/VideoPlaybackService;->a:LB/A;

    invoke-virtual {v1, v0}, LB/A;->N(LB/d;)V

    sget-object v0, LB/d;->ON_DESTROY:LB/d;

    invoke-virtual {v1, v0}, LB/A;->N(LB/d;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final m()V
    .locals 4

    invoke-virtual {p0}, Lcom/brisa/local/VideoPlaybackService;->l()V

    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->e:LM0/I0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LM0/I0;->b()V

    :cond_0
    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->d:LM0/x1;

    if-eqz v0, :cond_2

    iget-object v1, v0, LM0/x1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    iget-object v1, v0, LM0/x1;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v0, LM0/x1;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM0/o;

    invoke-static {v3}, LM0/Y1;->i(LM0/o;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iput-object v2, p0, Lcom/brisa/local/VideoPlaybackService;->d:LM0/x1;

    :cond_2
    return-void
.end method

.method public final n(Landroid/content/Intent;II)I
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object p3, p0, Lcom/brisa/local/VideoPlaybackService;->f:La1/g;

    if-nez p3, :cond_1

    new-instance p3, La1/g;

    invoke-direct {p3, p0}, La1/g;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/brisa/local/VideoPlaybackService;->f:La1/g;

    :cond_1
    iget-object p3, p0, Lcom/brisa/local/VideoPlaybackService;->f:La1/g;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "androidx.media3.session.CUSTOM_NOTIFICATION_ACTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    :cond_2
    const/4 p3, 0x0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/brisa/local/VideoPlaybackService;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/brisa/local/VideoPlaybackService;->g:Lh/e;

    invoke-virtual {v2}, Lh/e;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Lh/d;

    invoke-virtual {v2}, Lh/d;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    move-object v3, v2

    check-cast v3, Lh/a;

    invoke-virtual {v3}, Lh/a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lh/a;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM0/P0;

    iget-object v4, v3, LM0/P0;->a:LM0/X0;

    iget-object v4, v4, LM0/X0;->b:Landroid/net/Uri;

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_4
    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_1
    move-object v3, p3

    :goto_2
    if-nez v3, :cond_7

    invoke-static {p1}, Lcom/brisa/local/VideoPlaybackService;->d(Landroid/content/Intent;)LM0/N0;

    iget-object v3, p0, Lcom/brisa/local/VideoPlaybackService;->j:LM0/P0;

    if-nez v3, :cond_6

    iget-boolean p1, p0, Lcom/brisa/local/VideoPlaybackService;->h:Z

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/brisa/local/VideoPlaybackService;->q()V

    return p2

    :cond_6
    invoke-virtual {p0, v3}, Lcom/brisa/local/VideoPlaybackService;->b(LM0/P0;)V

    :cond_7
    move-object v2, v3

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p3, v2, LM0/P0;->a:LM0/X0;

    iget-object v0, p3, LM0/X0;->l:Landroid/os/Handler;

    new-instance v1, LH/i;

    const/16 v2, 0xf

    invoke-direct {v1, p3, p1, v2}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_9
    move-object v0, p3

    :goto_3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_4

    :cond_a
    move-object v3, p3

    :goto_4
    if-nez v3, :cond_b

    iget-boolean p1, p0, Lcom/brisa/local/VideoPlaybackService;->h:Z

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/brisa/local/VideoPlaybackService;->q()V

    return p2

    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string p3, "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION_EXTRAS"

    invoke-virtual {v0, p3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    :cond_c
    instance-of v0, p3, Landroid/os/Bundle;

    if-eqz v0, :cond_d

    check-cast p3, Landroid/os/Bundle;

    :goto_5
    move-object v4, p3

    goto :goto_6

    :cond_d
    sget-object p3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_5

    :goto_6
    invoke-virtual {p0}, Lcom/brisa/local/VideoPlaybackService;->e()LM0/I0;

    move-result-object v1

    invoke-virtual {v1, v2}, LM0/I0;->c(LM0/P0;)LM0/z;

    move-result-object v5

    if-nez v5, :cond_e

    goto :goto_7

    :cond_e
    iget-object p3, v2, LM0/P0;->a:LM0/X0;

    iget-object p3, p3, LM0/X0;->l:Landroid/os/Handler;

    new-instance v0, LM0/B0;

    invoke-direct/range {v0 .. v5}, LM0/B0;-><init>(LM0/I0;LM0/P0;Ljava/lang/String;Landroid/os/Bundle;LM0/z;)V

    invoke-static {p3, v0}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_f
    :goto_7
    iget-boolean p3, p0, Lcom/brisa/local/VideoPlaybackService;->h:Z

    if-nez p3, :cond_10

    const-string p3, "androidx.media3.session.intent.uid"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10

    const-string p3, "androidx.media3.session.intent.uid"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/brisa/local/VideoPlaybackService;->e()LM0/I0;

    move-result-object p3

    iget-object p3, p3, LM0/I0;->k:Ljava/lang/String;

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brisa/local/VideoPlaybackService;->h:Z

    if-nez p1, :cond_10

    const-string p1, "MSessionService"

    const-string p3, "Terminating service that was started by a stale start intent"

    invoke-static {p1, p3}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/brisa/local/VideoPlaybackService;->q()V

    :cond_10
    :goto_8
    return p2
.end method

.method public final o(LM0/P0;Z)Lz1/a;
    .locals 5

    invoke-virtual {p0}, Lcom/brisa/local/VideoPlaybackService;->e()LM0/I0;

    move-result-object v0

    invoke-virtual {v0, p2}, LM0/I0;->d(Z)Z

    move-result p2

    invoke-virtual {p0}, Lcom/brisa/local/VideoPlaybackService;->e()LM0/I0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LM0/C0;

    invoke-direct {v1, v0, p1, p2}, LM0/C0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    new-instance p1, Li/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance p2, Li/n;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Li/j;->c:Li/n;

    new-instance p2, Li/l;

    invoke-direct {p2, p1}, Li/l;-><init>(Li/j;)V

    iput-object p2, p1, Li/j;->b:Li/l;

    const-class v0, LM0/C0;

    iput-object v0, p1, Li/j;->a:Ljava/io/Serializable;

    :try_start_0
    invoke-virtual {v1, p1}, LM0/C0;->b(Li/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Li/j;->a:Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p2, Li/l;->f:Li/k;

    invoke-virtual {v0, p1}, Li/i;->i(Ljava/lang/Throwable;)Z

    :goto_0
    new-instance p1, LG/v;

    const/16 v0, 0x1a

    invoke-direct {p1, v0}, LG/v;-><init>(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Ll/c;->a(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lc1/l;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lc1/l;-><init>(Landroid/os/Handler;I)V

    move-object v2, v3

    :goto_1
    invoke-static {p2, p1, v2}, Lcom/brisa/local/v;->x(Lz1/B;Lt1/j;Ljava/util/concurrent/Executor;)Lz1/q;

    move-result-object p1

    new-instance p2, LI0/E;

    const/4 v2, 0x7

    invoke-direct {p2, p0, v2}, LI0/E;-><init>(Ljava/lang/Object;I)V

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Ll/c;->a(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_2

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lc1/l;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lc1/l;-><init>(Landroid/os/Handler;I)V

    move-object v0, v1

    :goto_2
    new-instance v1, Lz1/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lz1/a;->l:Lz1/q;

    const-class v2, Ljava/lang/Throwable;

    iput-object v2, v1, Lz1/a;->m:Ljava/lang/Class;

    iput-object p2, v1, Lz1/a;->n:LI0/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lz1/s;->e:Lz1/s;

    if-ne v0, p2, :cond_2

    goto :goto_3

    :cond_2
    new-instance p2, LY/a;

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2}, LY/a;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;I)V

    move-object v0, p2

    :goto_3
    invoke-virtual {p1, v1, v0}, Lz1/p;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/brisa/local/VideoPlaybackService;->i(Landroid/content/Intent;)Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "androidx.media3.session.MediaSessionService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "android.media.session.MediaController"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p1, p0, Lcom/brisa/local/VideoPlaybackService;->j:LM0/P0;

    if-nez p1, :cond_2

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/brisa/local/VideoPlaybackService;->b(LM0/P0;)V

    iget-object p1, p1, LM0/P0;->a:LM0/X0;

    iget-object v0, p1, LM0/X0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, LM0/X0;->w:LM0/y1;

    if-nez v1, :cond_3

    iget-object v1, p1, LM0/X0;->h:LM0/t1;

    iget-object v1, v1, LM0/t1;->o:LN0/O;

    iget-object v1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    iget-object v1, v1, LN0/I;->c:LN0/N;

    new-instance v2, LM0/y1;

    invoke-direct {v2, p1}, LM0/y1;-><init>(LM0/X0;)V

    invoke-virtual {v2, v1}, LM0/y1;->a(LN0/N;)V

    iput-object v2, p1, LM0/X0;->w:LM0/y1;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p1, LM0/X0;->w:LM0/y1;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.browse.MediaBrowserService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, LM0/y1;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "packageName should be nonempty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p1, p0, Lcom/brisa/local/VideoPlaybackService;->d:LM0/x1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final onCreate()V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/brisa/local/VideoPlaybackService;->k()V

    sput-object v0, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    new-instance v1, LN/m;

    invoke-direct {v1, v0}, LN/m;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    iget-boolean v2, v1, LN/m;->y:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, LF1/i;->o(Z)V

    iput-boolean v3, v1, LN/m;->y:Z

    new-instance v2, LN/x;

    invoke-direct {v2, v1}, LN/x;-><init>(LN/m;)V

    iput-object v2, v0, Lcom/brisa/local/VideoPlaybackService;->i:LN/x;

    new-instance v4, LG/e;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move v9, v6

    move v10, v6

    move v11, v8

    invoke-direct/range {v4 .. v11}, LG/e;-><init>(IIIIIZZ)V

    invoke-virtual {v2, v4, v3}, LN/x;->D0(LG/e;Z)V

    iget-object v1, v0, Lcom/brisa/local/VideoPlaybackService;->i:LN/x;

    iget-object v2, v1, LN/x;->A:LJ/Z;

    iget-object v4, v1, LN/x;->z:LJ/Z;

    invoke-virtual {v1}, LN/x;->D1()V

    iget-boolean v1, v4, LJ/Z;->d:Z

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, v4, LJ/Z;->d:Z

    iget-boolean v1, v4, LJ/Z;->e:Z

    invoke-virtual {v4, v3, v1}, LJ/Z;->a(ZZ)V

    :goto_0
    iget-boolean v1, v2, LJ/Z;->d:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v2, LJ/Z;->d:Z

    iget-boolean v4, v2, LJ/Z;->e:Z

    invoke-virtual {v2, v1, v4}, LJ/Z;->b(ZZ)V

    :goto_1
    new-instance v1, LM0/J0;

    iget-object v2, v0, Lcom/brisa/local/VideoPlaybackService;->i:LN/x;

    invoke-direct {v1, v2, v0}, LM0/J0;-><init>(LN/x;Lcom/brisa/local/VideoPlaybackService;)V

    iget-boolean v2, v1, LM0/J0;->m:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, LF1/i;->o(Z)V

    iput-boolean v3, v1, LM0/J0;->m:Z

    iget-object v2, v1, LM0/J0;->a:Landroid/content/Context;

    sget-object v4, LM0/P0;->c:Ljava/lang/Object;

    sget-object v4, LM0/X0;->E:Lt1/t;

    invoke-interface {v4}, Lt1/t;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    if-ge v5, v6, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v7, 0x43a00000    # 320.0f

    invoke-static {v3, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_2
    iget-object v6, v1, LM0/J0;->g:LJ/d;

    if-nez v6, :cond_3

    new-instance v6, LJ/u;

    invoke-direct {v6, v2}, LJ/u;-><init>(Landroid/content/Context;)V

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v7, v3

    iput v7, v6, LJ/u;->f:I

    new-instance v3, LL/k;

    invoke-direct {v3, v6}, LL/k;-><init>(LJ/u;)V

    iput-object v3, v1, LM0/J0;->g:LJ/d;

    :cond_3
    new-instance v3, LJ/u;

    iget-object v6, v1, LM0/J0;->g:LJ/d;

    invoke-direct {v3, v6, v4}, LJ/u;-><init>(LJ/d;I)V

    iput-object v3, v1, LM0/J0;->g:LJ/d;

    const/16 v4, 0x1d

    if-ne v5, v4, :cond_5

    new-instance v4, LN0/O;

    sget-object v6, LM0/J0;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly1/a;

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const-class v7, Landroid/view/WindowManager;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v2, Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->y:I

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->x:I

    sub-int v10, v8, v10

    sub-int v10, v9, v10

    iget v11, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v11

    sub-int/2addr v8, v9

    invoke-direct {v2, v10, v8}, Landroid/graphics/Point;-><init>(II)V

    iget v8, v7, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v8, 0x6

    iget v7, v7, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v7, 0x6

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v8, 0x6

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x6

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v8, Ly1/a;

    filled-new-array {v7, v2}, [I

    move-result-object v2

    const/4 v7, 0x2

    invoke-direct {v8, v7, v2}, Ly1/a;-><init>(I[I)V

    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v7, v8

    :goto_2
    const/16 v2, 0xe

    invoke-direct {v4, v3, v7, v2}, LN0/O;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v4, v1, LM0/J0;->g:LJ/d;

    :cond_5
    new-instance v2, LN0/O;

    iget-object v3, v1, LM0/J0;->g:LJ/d;

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4}, LN0/O;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v1, LM0/J0;->g:LJ/d;

    new-instance v6, LM0/P0;

    iget-object v7, v1, LM0/J0;->a:Landroid/content/Context;

    iget-object v8, v1, LM0/J0;->c:Ljava/lang/String;

    iget-object v9, v1, LM0/J0;->b:LG/g0;

    iget-object v10, v1, LM0/J0;->i:Lu1/C0;

    iget-object v11, v1, LM0/J0;->j:Lu1/C0;

    iget-object v12, v1, LM0/J0;->k:Lu1/C0;

    iget-object v13, v1, LM0/J0;->d:Lcom/brisa/local/j;

    iget-object v14, v1, LM0/J0;->e:Landroid/os/Bundle;

    iget-object v15, v1, LM0/J0;->f:Landroid/os/Bundle;

    iget-object v2, v1, LM0/J0;->g:LJ/d;

    iget-boolean v3, v1, LM0/J0;->h:Z

    iget-boolean v1, v1, LM0/J0;->l:Z

    move/from16 v18, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v6 .. v18}, LM0/P0;-><init>(Landroid/content/Context;Ljava/lang/String;LG/g0;Lu1/P;Lu1/P;Lu1/P;Lcom/brisa/local/j;Landroid/os/Bundle;Landroid/os/Bundle;LJ/d;ZZ)V

    iput-object v6, v0, Lcom/brisa/local/VideoPlaybackService;->j:LM0/P0;

    invoke-static {v0}, Lcom/brisa/local/VideoSystemControls;->install(Landroid/app/Service;)V

    iget-object v1, v0, Lcom/brisa/local/VideoPlaybackService;->i:LN/x;

    new-instance v2, Lcom/brisa/local/e0;

    invoke-direct {v2, v0}, Lcom/brisa/local/e0;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    iget-object v1, v1, LN/x;->m:LJ/t;

    invoke-virtual {v1, v2}, LJ/t;->a(Ljava/lang/Object;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x21

    if-lt v5, v2, :cond_6

    iget-object v2, v0, Lcom/brisa/local/VideoPlaybackService;->n:LJ/z;

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :cond_6
    iget-object v2, v0, Lcom/brisa/local/VideoPlaybackService;->n:LJ/z;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDestroy()V
    .locals 8

    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->release(Landroid/app/Service;)V

    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->n:LJ/z;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->k:Landroid/media/audiofx/Equalizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-object v1, p0, Lcom/brisa/local/VideoPlaybackService;->k:Landroid/media/audiofx/Equalizer;

    :cond_0
    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->j:LM0/P0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    sget-object v2, LM0/P0;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    sget-object v3, LM0/P0;->d:Ljava/util/HashMap;

    iget-object v4, v0, LM0/P0;->a:LM0/X0;

    iget-object v4, v4, LM0/X0;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, v0, LM0/P0;->a:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->t()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :goto_0
    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->i:LN/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "ExoPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Release "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " [AndroidXMedia3/1.11.1] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, LG/Q;

    monitor-enter v4

    :try_start_7
    sget-object v5, LG/Q;->b:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, LN/x;->D1()V

    iget-object v2, v0, LN/x;->y:LH/c;

    invoke-virtual {v2}, LH/c;->f()V

    iget-object v2, v0, LN/x;->z:LJ/Z;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LJ/Z;->c(Z)V

    iget-object v2, v0, LN/x;->A:LJ/Z;

    invoke-virtual {v2, v3}, LJ/Z;->c(Z)V

    iget-object v2, v0, LN/x;->E:LB/A;

    if-eqz v2, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-lt v4, v5, :cond_2

    iget-object v4, v2, LB/A;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v2, LB/A;->g:Ljava/lang/Object;

    check-cast v2, LN/w;

    invoke-static {v4, v2}, LN/v;->e(Landroid/content/Context;LN/w;)V

    :cond_2
    :goto_1
    iget-object v2, v0, LN/x;->D:LJ/K;

    iget-object v4, v2, LJ/K;->f:LJ/O;

    iget-object v4, v4, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v4, v2, LJ/K;->a:LN/x;

    iget-object v2, v2, LJ/K;->b:LJ/F;

    invoke-virtual {v4, v2}, LN/x;->o0(LG/e0;)V

    iget-object v2, v0, LN/x;->l:LN/F;

    iget-boolean v4, v2, LN/F;->N:Z

    const/4 v5, 0x1

    if-nez v4, :cond_4

    iget-object v4, v2, LN/F;->m:Landroid/os/Looper;

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v5, v2, LN/F;->N:Z

    new-instance v4, LJ/j;

    iget-object v6, v2, LN/F;->s:LJ/M;

    invoke-direct {v4, v6}, LJ/j;-><init>(LJ/M;)V

    iget-object v6, v2, LN/F;->k:LJ/O;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v4}, LJ/O;->c(ILjava/lang/Object;)LJ/N;

    move-result-object v6

    invoke-virtual {v6}, LJ/N;->b()V

    iget-wide v6, v2, LN/F;->x:J

    invoke-virtual {v4, v6, v7}, LJ/j;->c(J)Z

    move-result v2

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v5

    :goto_3
    if-nez v2, :cond_5

    iget-object v2, v0, LN/x;->m:LJ/t;

    new-instance v4, LM0/E1;

    const/16 v6, 0x1a

    invoke-direct {v4, v6}, LM0/E1;-><init>(I)V

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v4}, LJ/t;->f(ILJ/q;)V

    :cond_5
    iget-object v2, v0, LN/x;->m:LJ/t;

    invoke-virtual {v2}, LJ/t;->d()V

    iget-object v2, v0, LN/x;->j:LJ/O;

    iget-object v2, v2, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, v0, LN/x;->u:LX/d;

    iget-object v4, v0, LN/x;->s:LO/d;

    invoke-interface {v2, v4}, LX/d;->c(LO/d;)V

    iget-object v2, v0, LN/x;->q0:LN/X;

    iget-boolean v4, v2, LN/X;->p:Z

    if-eqz v4, :cond_6

    invoke-virtual {v2}, LN/X;->a()LN/X;

    move-result-object v2

    iput-object v2, v0, LN/x;->q0:LN/X;

    :cond_6
    iget-object v2, v0, LN/x;->q0:LN/X;

    invoke-static {v2, v5}, LN/x;->o1(LN/X;I)LN/X;

    move-result-object v2

    iput-object v2, v0, LN/x;->q0:LN/X;

    iget-object v4, v2, LN/X;->b:LU/A;

    invoke-virtual {v2, v4}, LN/X;->c(LU/A;)LN/X;

    move-result-object v2

    iput-object v2, v0, LN/x;->q0:LN/X;

    iget-wide v6, v2, LN/X;->s:J

    iput-wide v6, v2, LN/X;->q:J

    iget-object v2, v0, LN/x;->q0:LN/X;

    const-wide/16 v6, 0x0

    iput-wide v6, v2, LN/X;->r:J

    iget-object v2, v0, LN/x;->s:LO/d;

    iget-object v4, v2, LO/d;->l:LJ/O;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LH/a;

    const/16 v7, 0x8

    invoke-direct {v6, v2, v7}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v6}, LJ/O;->e(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, LN/x;->t1()V

    iget-object v2, v0, LN/x;->U:Landroid/view/Surface;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v1, v0, LN/x;->U:Landroid/view/Surface;

    :cond_7
    sget-object v2, LI/c;->d:LI/c;

    iput-object v2, v0, LN/x;->f0:LI/c;

    iput-boolean v5, v0, LN/x;->j0:Z

    iget-object v2, v0, LN/x;->q0:LN/X;

    iget-object v2, v2, LN/X;->a:LG/q0;

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, LN/x;->q0:LN/X;

    iget-object v4, v2, LN/X;->a:LG/q0;

    iget-object v2, v2, LN/X;->b:LU/A;

    iget-object v2, v2, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v4, v2}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v5

    :cond_8
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "periodUid %s not found in timeline %s with size %d"

    iget-object v5, v0, LN/x;->q0:LN/X;

    iget-object v6, v5, LN/X;->b:LU/A;

    iget-object v6, v6, LU/A;->a:Ljava/lang/Object;

    iget-object v5, v5, LN/X;->a:LG/q0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, LN/x;->q0:LN/X;

    iget-object v0, v0, LN/X;->a:LG/q0;

    invoke-virtual {v0}, LG/q0;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v6, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LF1/i;->n(Ljava/lang/String;Z)V

    :cond_9
    sget-object v0, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    if-ne v0, p0, :cond_a

    sput-object v1, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    :cond_a
    invoke-virtual {p0}, Lcom/brisa/local/VideoPlaybackService;->m()V

    invoke-static {p0}, Lcom/brisa/local/SoundSessions;->videoDestroyed(Landroid/app/Service;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 2

    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->a:LB/A;

    sget-object v1, LB/d;->ON_START:LB/d;

    invoke-virtual {v0, v1}, LB/A;->N(LB/d;)V

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/brisa/local/VideoSystemControls;->serviceAction(Landroid/app/Service;Landroid/content/Intent;)Z
    move-result v2
    if-eqz v2, :normal_start_intent
    const/4 v2, 0x1
    return v2
    :normal_start_intent

    if-eqz v1, :cond_0

    const-string v2, "stop"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/brisa/local/VideoPlaybackService;->i:LN/x;

    invoke-virtual {v1}, LN/x;->u()V

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    const/4 v1, 0x2

    return v1

    :cond_0
    if-eqz v1, :cond_7

    const-string v3, "videoId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/brisa/local/DriveStream;->video(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v4, v0, Lcom/brisa/local/VideoPlaybackService;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {v4}, Lcom/brisa/local/PlaybackService;->k()V

    :cond_1
    iput-object v3, v0, Lcom/brisa/local/VideoPlaybackService;->m:Ljava/lang/String;

    new-instance v3, LG/S;

    invoke-direct {v3}, LG/S;-><init>()V

    iget-object v4, v0, Lcom/brisa/local/VideoPlaybackService;->m:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/brisa/local/a;->m(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "name"

    const-string v8, "Video"

    if-eqz v6, :cond_2

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    invoke-static {v0, v4}, Lcom/brisa/local/d0;->p(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    iput-object v8, v3, LG/S;->a:Ljava/lang/CharSequence;

    new-instance v14, LG/T;

    invoke-direct {v14, v3}, LG/T;-><init>(LG/S;)V

    iget-object v3, v0, Lcom/brisa/local/VideoPlaybackService;->i:LN/x;

    new-instance v15, LG/D;

    invoke-direct {v15}, LG/D;-><init>()V

    new-instance v4, LG/G;

    invoke-direct {v4}, LG/G;-><init>()V

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v11, Lu1/C0;->i:Lu1/C0;

    new-instance v6, LG/I;

    invoke-direct {v6}, LG/I;-><init>()V

    sget-object v16, LG/L;->d:LG/L;

    iget-object v7, v0, Lcom/brisa/local/VideoPlaybackService;->m:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v4, LG/G;->b:Landroid/net/Uri;

    if-eqz v8, :cond_5

    iget-object v8, v4, LG/G;->a:Ljava/util/UUID;

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v8, 0x1

    :goto_2
    invoke-static {v8}, LF1/i;->o(Z)V

    new-instance v12, LG/K;

    iget-object v8, v4, LG/G;->a:Ljava/util/UUID;

    if-eqz v8, :cond_6

    new-instance v8, LG/H;

    invoke-direct {v8, v4}, LG/H;-><init>(LG/G;)V

    :goto_3
    move-object v4, v6

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :goto_4
    const/4 v6, 0x0

    move-object v10, v7

    move-object v7, v8

    const/4 v8, 0x0

    move-object v13, v10

    const/4 v10, 0x0

    move-object/from16 v18, v4

    move-object v4, v12

    move-object/from16 v17, v13

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v2, v18

    const/16 v19, 0x1

    invoke-direct/range {v4 .. v13}, LG/K;-><init>(Landroid/net/Uri;Ljava/lang/String;LG/H;LG/C;Ljava/util/List;Ljava/lang/String;Lu1/P;J)V

    new-instance v9, LG/P;

    new-instance v11, LG/F;

    invoke-direct {v11, v15}, LG/E;-><init>(LG/D;)V

    new-instance v13, LG/J;

    invoke-direct {v13, v2}, LG/J;-><init>(LG/I;)V

    move-object v12, v4

    move-object/from16 v15, v16

    move-object/from16 v10, v17

    invoke-direct/range {v9 .. v15}, LG/P;-><init>(Ljava/lang/String;LG/F;LG/K;LG/J;LG/T;LG/L;)V

    invoke-virtual {v3, v9}, LC/b;->G0(LG/P;)V

    iget-object v2, v0, Lcom/brisa/local/VideoPlaybackService;->i:LN/x;

    invoke-virtual {v2}, LN/x;->e()V

    iget-object v2, v0, Lcom/brisa/local/VideoPlaybackService;->i:LN/x;

    invoke-virtual {v2}, LC/b;->Q()V

    goto :goto_5

    :cond_7
    const/16 v19, 0x1

    :goto_5
    invoke-virtual/range {p0 .. p3}, Lcom/brisa/local/VideoPlaybackService;->n(Landroid/content/Intent;II)I

    return v19
.end method

.method public final onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/brisa/local/VideoPlaybackService;->i:LN/x;

    invoke-virtual {p1}, LN/x;->z()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return-void
.end method

.method public final p(LM0/P0;)V
    .locals 3

    const-string v0, "session must not be null"

    invoke-static {p1, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/brisa/local/VideoPlaybackService;->g:Lh/e;

    iget-object v2, p1, LM0/P0;->a:LM0/X0;

    iget-object v2, v2, LM0/X0;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lh/j;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "session not found"

    invoke-static {v2, v1}, LF1/i;->f(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/brisa/local/VideoPlaybackService;->g:Lh/e;

    iget-object v2, p1, LM0/P0;->a:LM0/X0;

    iget-object v2, v2, LM0/X0;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lh/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->c:Landroid/os/Handler;

    new-instance v1, LM0/u1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, LM0/u1;-><init>(Lcom/brisa/local/VideoPlaybackService;LM0/P0;I)V

    invoke-static {v0, v1}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final q()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/brisa/local/VideoPlaybackService;->e()LM0/I0;

    move-result-object v0

    invoke-virtual {v0, p0}, LM0/I0;->a(Lcom/brisa/local/VideoPlaybackService;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    invoke-static {p0, v1, v0}, LJ/W;->P(Landroid/app/Service;ILandroid/app/Notification;)V

    invoke-virtual {p0}, Lcom/brisa/local/VideoPlaybackService;->e()LM0/I0;

    move-result-object v0

    invoke-virtual {v0}, LM0/I0;->b()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    invoke-static {v0}, LJ/w;->u(Ljava/lang/IllegalStateException;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/brisa/local/VideoPlaybackService;->c:Landroid/os/Handler;

    new-instance v1, LM0/v1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LM0/v1;-><init>(Lcom/brisa/local/VideoPlaybackService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    throw v0
.end method

.method public final r()V
    .locals 0
    return-void
.end method
