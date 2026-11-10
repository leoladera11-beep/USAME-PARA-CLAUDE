.class public final LN0/e;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:LB/A;


# direct methods
.method public constructor <init>(LB/A;)V
    .locals 0

    iput-object p1, p0, LN0/e;->a:LB/A;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 12

    iget-object v0, p0, LN0/e;->a:LB/A;

    iget-object v1, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v1, LN0/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const-string v4, "MediaBrowserCompat"

    iget-object v5, v1, LN0/f;->d:LM0/T0;

    iget-object v6, v1, LN0/f;->b:Landroid/media/browse/MediaBrowser;

    :try_start_0
    invoke-virtual {v6}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v7, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v8, "extra_service_version"

    invoke-virtual {v7, v8, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    const-string v8, "extra_messenger"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v9, LN0/O;

    iget-object v10, v1, LN0/f;->c:Landroid/os/Bundle;

    invoke-direct {v9, v8, v10}, LN0/O;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v9, v1, LN0/f;->f:LN0/O;

    new-instance v8, Landroid/os/Messenger;

    invoke-direct {v8, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v8, v1, LN0/f;->g:Landroid/os/Messenger;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v5, LM0/T0;->c:Ljava/lang/Object;

    :try_start_1
    iget-object v5, v1, LN0/f;->a:Landroid/content/Context;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v11, "data_package_name"

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v11, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "data_calling_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual {v10, v5, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "data_root_hints"

    iget-object v11, v9, LN0/O;->g:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v10, v5, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v5, 0x6

    invoke-virtual {v9, v5, v10, v8}, LN0/O;->h0(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "Remote error registering client messenger."

    invoke-static {v4, v5}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v4, "extra_session_binder"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    sget v5, LN0/H;->b:I

    if-nez v4, :cond_2

    move-object v5, v3

    goto :goto_1

    :cond_2
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-interface {v4, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v5

    if-eqz v5, :cond_3

    instance-of v7, v5, LN0/d;

    if-eqz v7, :cond_3

    check-cast v5, LN0/d;

    goto :goto_1

    :cond_3
    new-instance v5, LN0/c;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v5, LN0/c;->a:Landroid/os/IBinder;

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v6}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    new-instance v6, LN0/N;

    invoke-direct {v6, v4, v5}, LN0/N;-><init>(Landroid/media/session/MediaSession$Token;LN0/d;)V

    iput-object v6, v1, LN0/f;->h:LN0/N;

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v5, "Unexpected IllegalStateException"

    invoke-static {v4, v5, v1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    iget-object v0, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, LM0/t0;

    iget-object v1, v0, LM0/t0;->j:LN0/i;

    if-eqz v1, :cond_6

    iget-object v1, v1, LN0/i;->a:Ljava/lang/Object;

    check-cast v1, LN0/f;

    iget-object v4, v1, LN0/f;->h:LN0/N;

    if-nez v4, :cond_5

    iget-object v4, v1, LN0/f;->b:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v4}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    new-instance v5, LN0/N;

    invoke-direct {v5, v4, v3}, LN0/N;-><init>(Landroid/media/session/MediaSession$Token;LN0/d;)V

    iput-object v5, v1, LN0/f;->h:LN0/N;

    :cond_5
    iget-object v1, v1, LN0/f;->h:LN0/N;

    iget-object v3, v0, LM0/t0;->b:LM0/z;

    new-instance v4, LH/i;

    const/16 v5, 0xa

    invoke-direct {v4, v0, v1, v5}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, LM0/z;->X0(Ljava/lang/Runnable;)V

    iget-object v1, v3, LM0/z;->e:Landroid/os/Handler;

    new-instance v3, LM0/o0;

    invoke-direct {v3, v0, v2}, LM0/o0;-><init>(LM0/t0;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method public final onConnectionFailed()V
    .locals 2

    iget-object v0, p0, LN0/e;->a:LB/A;

    iget-object v1, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v1, LN0/f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, LM0/t0;

    iget-object v0, v0, LM0/t0;->b:LM0/z;

    invoke-virtual {v0}, LM0/z;->p()V

    return-void
.end method

.method public final onConnectionSuspended()V
    .locals 4

    iget-object v0, p0, LN0/e;->a:LB/A;

    iget-object v1, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v1, LN0/f;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, LN0/f;->f:LN0/O;

    iput-object v2, v1, LN0/f;->g:Landroid/os/Messenger;

    iput-object v2, v1, LN0/f;->h:LN0/N;

    iget-object v1, v1, LN0/f;->d:LM0/T0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, LM0/T0;->c:Ljava/lang/Object;

    :cond_0
    iget-object v0, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, LM0/t0;

    iget-object v0, v0, LM0/t0;->b:LM0/z;

    invoke-virtual {v0}, LM0/z;->p()V

    return-void
.end method
