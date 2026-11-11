.class public final LN0/o;
.super Landroid/service/media/MediaBrowserService;
.source "SourceFile"


# instance fields
.field public final synthetic a:LC2/b;

.field public final synthetic b:LC2/b;


# direct methods
.method public constructor <init>(LC2/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, LN0/o;->b:LC2/b;

    iput-object p1, p0, LN0/o;->a:LC2/b;

    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 21

    invoke-static/range {p3 .. p3}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v2, v1, LN0/o;->a:LC2/b;

    iget-object v3, v2, LC2/b;->i:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, LM0/y1;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v4

    :goto_0
    iget-object v10, v5, LM0/y1;->j:LM0/X0;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v4, v6, :cond_1

    iget-object v4, v2, LC2/b;->g:Ljava/lang/Object;

    check-cast v4, LN0/o;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, LN0/n;->d(LN0/o;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v4

    invoke-static {v4}, LN0/n;->b(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I

    move-result v4

    :goto_1
    move v7, v4

    goto :goto_2

    :cond_1
    const/4 v4, -0x1

    goto :goto_1

    :goto_2
    const/4 v11, 0x0

    if-eqz v0, :cond_4

    const-string v4, "extra_client_version"

    invoke-virtual {v0, v4, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v4, Landroid/os/Messenger;

    iget-object v6, v5, LM0/y1;->g:LM0/p1;

    invoke-direct {v4, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, LC2/b;->h:Ljava/lang/Object;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "extra_service_version"

    const/4 v8, 0x2

    invoke-virtual {v4, v6, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v2, LC2/b;->h:Ljava/lang/Object;

    check-cast v6, Landroid/os/Messenger;

    invoke-virtual {v6}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    const-string v8, "extra_messenger"

    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v6, v5, LM0/y1;->h:LN0/N;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, LN0/N;->a()LN0/d;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v6, v3

    goto :goto_3

    :cond_2
    invoke-interface {v6}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3
    const-string v8, "extra_session_binder"

    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_4

    :cond_3
    iget-object v6, v2, LC2/b;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    const-string v6, "extra_calling_pid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move-object v12, v4

    goto :goto_5

    :cond_4
    move-object v12, v3

    :goto_5
    new-instance v4, LN0/m;

    const/4 v9, 0x0

    move-object/from16 v6, p1

    move/from16 v8, p2

    invoke-direct/range {v4 .. v9}, LN0/m;-><init>(LM0/y1;Ljava/lang/String;IILN0/i;)V

    move-object v13, v4

    iput-object v13, v5, LM0/y1;->f:LN0/m;

    iget-object v4, v5, LM0/y1;->a:LC2/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, LC2/b;->k()LN0/P;

    move-result-object v15

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_6
    new-instance v14, LM0/N0;

    iget-object v4, v5, LM0/y1;->i:LN0/i;

    invoke-virtual {v4, v15}, LN0/i;->b(LN0/P;)Z

    move-result v18

    sget-object v4, LM0/u;->a:Lu1/b0;

    const-string v4, "androidx.media.utils.MediaBrowserCompat.extras.CUSTOM_BROWSER_ACTION_LIMIT"

    invoke-virtual {v0, v4, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v14 .. v20}, LM0/N0;-><init>(LN0/P;IIZLM0/M0;Landroid/os/Bundle;)V

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v8, LJ/j;

    invoke-direct {v8}, LJ/j;-><init>()V

    new-instance v4, LM0/B0;

    const/4 v9, 0x4

    move-object v6, v14

    invoke-direct/range {v4 .. v9}, LM0/B0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v10, LM0/X0;->l:Landroid/os/Handler;

    invoke-static {v0, v4}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v8}, LJ/j;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, LM0/L0;

    if-eqz v8, :cond_7

    iget-boolean v0, v8, LM0/L0;->a:Z

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    new-instance v4, LM0/B0;

    const/4 v9, 0x5

    move-object v7, v14

    move-object v6, v15

    invoke-direct/range {v4 .. v9}, LM0/B0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v10, LM0/X0;->l:Landroid/os/Handler;

    invoke-static {v0, v4}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    sget-object v0, LM0/Y1;->a:LN0/k;

    goto :goto_8

    :cond_7
    :goto_7
    move-object v0, v3

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v4, "MSSLegacyStub"

    const-string v6, "Couldn\'t get a result from onConnect"

    invoke-static {v4, v6, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_8
    iput-object v3, v5, LM0/y1;->f:LN0/m;

    if-nez v0, :cond_8

    move-object v0, v3

    goto :goto_a

    :cond_8
    iget-object v2, v2, LC2/b;->h:Ljava/lang/Object;

    check-cast v2, Landroid/os/Messenger;

    if-eqz v2, :cond_9

    iget-object v2, v5, LM0/y1;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, v0, LN0/k;->a:Landroid/os/Bundle;

    if-nez v12, :cond_a

    move-object v12, v0

    goto :goto_9

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_b
    :goto_9
    new-instance v0, LN0/k;

    invoke-direct {v0, v12}, LN0/k;-><init>(Landroid/os/Bundle;)V

    :goto_a
    if-nez v0, :cond_c

    goto :goto_b

    :cond_c
    new-instance v3, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string v2, "androidx.media3.session.MediaLibraryService"

    iget-object v0, v0, LN0/k;->a:Landroid/os/Bundle;

    invoke-direct {v3, v2, v0}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_b
    return-object v3
.end method

.method public final onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 1

    .line 1
    new-instance p1, LN0/i;

    invoke-direct {p1, p2}, LN0/i;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, LN0/o;->a:LC2/b;

    iget-object p2, p2, LC2/b;->i:Ljava/lang/Object;

    check-cast p2, LM0/y1;

    iget-object v0, p2, LM0/y1;->c:LN0/m;

    iput-object v0, p2, LM0/y1;->f:LN0/m;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, LN0/i;->e(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p2, LM0/y1;->f:LN0/m;

    return-void
.end method

.method public final onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 1

    .line 5
    invoke-static {p3}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 6
    iget-object p1, p0, LN0/o;->b:LC2/b;

    iget-object p1, p1, LC2/b;->j:Ljava/lang/Object;

    check-cast p1, LM0/y1;

    iget-object p3, p1, LM0/y1;->c:LN0/m;

    .line 7
    new-instance v0, LN0/i;

    invoke-direct {v0, p2}, LN0/i;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-object p3, p1, LM0/y1;->f:LN0/m;

    const/4 p2, 0x0

    .line 9
    invoke-virtual {v0, p2}, LN0/i;->e(Ljava/lang/Object;)V

    .line 10
    iput-object p2, p1, LM0/y1;->f:LN0/m;

    .line 11
    iput-object p2, p1, LM0/y1;->f:LN0/m;

    return-void
.end method

.method public final onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 1

    new-instance p1, LN0/i;

    invoke-direct {p1, p2}, LN0/i;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, LN0/o;->a:LC2/b;

    iget-object p2, p2, LC2/b;->i:Ljava/lang/Object;

    check-cast p2, LM0/y1;

    iget-object v0, p2, LM0/y1;->c:LN0/m;

    iput-object v0, p2, LM0/y1;->f:LN0/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LN0/i;->e(Ljava/lang/Object;)V

    iput-object v0, p2, LM0/y1;->f:LN0/m;

    return-void
.end method
