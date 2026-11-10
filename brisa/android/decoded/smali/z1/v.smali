.class public final Lz1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lz1/v;->e:I

    iput-object p1, p0, Lz1/v;->f:Ljava/lang/Object;

    iput-object p2, p0, Lz1/v;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 2
    iput p3, p0, Lz1/v;->e:I

    iput-object p1, p0, Lz1/v;->g:Ljava/lang/Object;

    iput-object p2, p0, Lz1/v;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 2
    iget-object v0, p0, Lz1/v;->f:Ljava/lang/Object;
    check-cast v0, Landroid/app/Activity;
    iget-object v1, p0, Lz1/v;->g:Ljava/lang/Object;
    check-cast v1, Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/brisa/local/MobileVideoFiles;->selection(Landroid/app/Activity;Ljava/util/ArrayList;)V
    return-void
.end method

.method private final b()V
    .locals 3

    iget-object v0, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v0, Ls1/g;

    iget-object v0, v0, Ls1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v1, Ls1/g;

    iget-object v1, v1, Ls1/g;->d:Ljava/lang/Object;

    check-cast v1, Ls1/a;

    iget-object v2, p0, Lz1/v;->f:Ljava/lang/Object;

    check-cast v2, La2/d;

    invoke-interface {v1, v2}, Ls1/a;->a(La2/d;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final c()V
    .locals 3

    iget-object v0, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v0, Ls1/g;

    iget-object v0, v0, Ls1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v1, Ls1/g;

    iget-object v1, v1, Ls1/g;->d:Ljava/lang/Object;

    check-cast v1, Ls1/b;

    iget-object v2, p0, Lz1/v;->f:Ljava/lang/Object;

    check-cast v2, La2/d;

    invoke-virtual {v2}, La2/d;->c()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Ld1/s;->d(Ljava/lang/Object;)V

    invoke-interface {v1}, Ls1/b;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lz1/v;->e:I

    const/16 v1, 0xa

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v0, Ls1/g;

    iget-object v0, v0, Ls1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v1, Ls1/g;

    iget-object v1, v1, Ls1/g;->d:Ljava/lang/Object;

    check-cast v1, Ls1/c;

    iget-object v2, p0, Lz1/v;->f:Ljava/lang/Object;

    check-cast v2, La2/d;

    invoke-virtual {v2}, La2/d;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ls1/c;->d(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_0
    invoke-direct {p0}, Lz1/v;->c()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lz1/v;->b()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lz1/v;->a()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lz1/v;->f:Ljava/lang/Object;

    check-cast v0, Lc1/k;

    iget-object v1, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v1, LC1/e;

    iget v5, v1, LC1/e;->f:I

    if-lez v5, :cond_1

    iget-object v5, v1, LC1/e;->h:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    if-eqz v5, :cond_0

    const-string v7, "ConnectionlessLifecycleHelper"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    :cond_0
    invoke-virtual {v0, v7}, Lc1/k;->b(Landroid/os/Bundle;)V

    :cond_1
    iget v5, v1, LC1/e;->f:I

    if-lt v5, v3, :cond_2

    iput-boolean v6, v0, Lc1/k;->b:Z

    invoke-virtual {v0}, Lc1/k;->d()V

    :cond_2
    iget v3, v1, LC1/e;->f:I

    if-lt v3, v4, :cond_3

    invoke-virtual {v0}, Lc1/k;->d()V

    :cond_3
    iget v1, v1, LC1/e;->f:I

    if-lt v1, v2, :cond_4

    invoke-virtual {v0}, Lc1/k;->c()V

    :cond_4
    return-void

    :pswitch_4
    iget-object v0, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v0, Lc1/k;

    iget-boolean v0, v0, Lc1/k;->b:Z

    if-nez v0, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lz1/v;->f:Ljava/lang/Object;

    check-cast v0, Lc1/B;

    iget-object v0, v0, Lc1/B;->b:La1/a;

    iget v2, v0, La1/a;->f:I

    if-eqz v2, :cond_6

    iget-object v2, v0, La1/a;->g:Landroid/app/PendingIntent;

    if-eqz v2, :cond_6

    iget-object v1, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v1, Lc1/k;

    iget-object v2, v1, Lc1/k;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Lc1/k;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, v0, La1/a;->g:Landroid/app/PendingIntent;

    invoke-static {v0}, Ld1/s;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lz1/v;->f:Ljava/lang/Object;

    check-cast v3, Lc1/B;

    iget v3, v3, Lc1/B;->a:I

    sget v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    const-class v4, Lcom/google/android/gms/common/api/GoogleApiActivity;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pending_intent"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "failing_client_id"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "notify_manager"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-interface {v2, v7, v6}, Lc1/e;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    :cond_6
    iget-object v2, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v2, Lc1/k;

    invoke-virtual {v2}, Lc1/k;->a()Landroid/app/Activity;

    move-result-object v8

    iget v9, v0, La1/a;->f:I

    iget-object v2, v2, Lc1/k;->e:La1/d;

    invoke-virtual {v2, v9, v8, v7}, La1/e;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v1, Lc1/k;

    invoke-virtual {v1}, Lc1/k;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Lc1/k;->a:Ljava/lang/Object;

    iget v0, v0, La1/a;->f:I

    iget-object v4, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v4, Lc1/k;

    iget-object v1, v1, Lc1/k;->e:La1/d;

    invoke-virtual {v1, v2, v3, v0, v4}, La1/d;->h(Landroid/app/Activity;Lc1/e;ILandroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_4

    :cond_7
    iget v2, v0, La1/a;->f:I

    const/16 v8, 0x12

    if-ne v2, v8, :cond_c

    iget-object v0, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v0, Lc1/k;

    iget-object v2, v0, Lc1/k;->e:La1/d;

    invoke-virtual {v0}, Lc1/k;->a()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/widget/ProgressBar;

    const v10, 0x101007a

    invoke-direct {v2, v9, v7, v10}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-static {v8, v9}, Ld1/k;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, ""

    invoke-virtual {v6, v2, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const-string v6, "GooglePlayServicesUpdatingDialog"

    invoke-static {v9, v2, v6, v0}, La1/d;->f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v0, Lc1/k;

    invoke-virtual {v0}, Lc1/k;->a()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v8, LW0/c;

    invoke-direct {v8, p0, v2, v1, v5}, LW0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v0, v0, Lc1/k;->e:La1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lc1/r;

    invoke-direct {v1, v8}, Lc1/r;-><init>(LW0/c;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x21

    if-lt v8, v9, :cond_9

    if-lt v8, v9, :cond_8

    goto :goto_0

    :cond_8
    move v3, v5

    :goto_0
    invoke-virtual {v6, v1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :cond_9
    invoke-virtual {v6, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    iput-object v6, v1, Lc1/r;->a:Landroid/content/Context;

    invoke-static {v6}, La1/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v0, Lc1/k;

    iget-object v3, v0, Lc1/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v0, Lc1/k;->g:Lc1/d;

    iget-object v0, v0, Lc1/d;->r:Ln1/d;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_a
    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Lc1/r;->a:Landroid/content/Context;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_b
    :goto_2
    iput-object v7, v1, Lc1/r;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    goto :goto_4

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_c
    iget-object v1, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v1, Lc1/k;

    iget-object v2, p0, Lz1/v;->f:Ljava/lang/Object;

    check-cast v2, Lc1/B;

    iget v2, v2, Lc1/B;->a:I

    iget-object v3, v1, Lc1/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v1, Lc1/k;->g:Lc1/d;

    invoke-virtual {v1, v0, v2}, Lc1/d;->g(La1/a;I)V

    :cond_d
    :goto_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v0, Lc1/w;

    iget-object v1, p0, Lz1/v;->f:Ljava/lang/Object;

    check-cast v1, Lr1/e;

    iget-object v3, v1, Lr1/e;->f:La1/a;

    iget v4, v3, La1/a;->f:I

    if-nez v4, :cond_13

    iget-object v1, v1, Lr1/e;->g:Ld1/o;

    invoke-static {v1}, Ld1/s;->d(Ljava/lang/Object;)V

    iget-object v3, v1, Ld1/o;->g:La1/a;

    iget v4, v3, La1/a;->f:I

    if-nez v4, :cond_12

    iget-object v3, v0, Lc1/w;->h:LP/L;

    iget-object v1, v1, Ld1/o;->f:Landroid/os/IBinder;

    if-nez v1, :cond_e

    goto :goto_5

    :cond_e
    sget v4, Ld1/a;->b:I

    const-string v4, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Ld1/e;

    if-eqz v5, :cond_f

    move-object v7, v4

    check-cast v7, Ld1/e;

    goto :goto_5

    :cond_f
    new-instance v7, Ld1/G;

    invoke-direct {v7, v1}, Ld1/G;-><init>(Landroid/os/IBinder;)V

    :goto_5
    iget-object v1, v0, Lc1/w;->e:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_11

    if-nez v1, :cond_10

    goto :goto_6

    :cond_10
    iput-object v7, v3, LP/L;->d:Ljava/lang/Object;

    iput-object v1, v3, LP/L;->e:Ljava/lang/Object;

    iget-boolean v2, v3, LP/L;->a:Z

    if-eqz v2, :cond_14

    iget-object v2, v3, LP/L;->b:Ljava/lang/Object;

    check-cast v2, Lb1/b;

    invoke-interface {v2, v7, v1}, Lb1/b;->i(Ld1/e;Ljava/util/Set;)V

    goto :goto_7

    :cond_11
    :goto_6
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v4, "GoogleApiManager"

    const-string v5, "Received null response from onSignInSuccess"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, La1/a;

    invoke-direct {v1, v2}, La1/a;-><init>(I)V

    invoke-virtual {v3, v1}, LP/L;->b(La1/a;)V

    goto :goto_7

    :cond_12
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v4, "Sign-in succeeded with resolve account failure: "

    const-string v5, "SignInCoordinator"

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, v0, Lc1/w;->h:LP/L;

    invoke-virtual {v1, v3}, LP/L;->b(La1/a;)V

    iget-object v0, v0, Lc1/w;->g:Lr1/a;

    invoke-interface {v0}, Lb1/b;->j()V

    goto :goto_8

    :cond_13
    iget-object v1, v0, Lc1/w;->h:LP/L;

    invoke-virtual {v1, v3}, LP/L;->b(La1/a;)V

    :cond_14
    :goto_7
    iget-object v0, v0, Lc1/w;->g:Lr1/a;

    invoke-interface {v0}, Lb1/b;->j()V

    :goto_8
    return-void

    :pswitch_6
    iget-object v0, p0, Lz1/v;->f:Ljava/lang/Object;

    check-cast v0, La1/a;

    iget-object v2, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v2, LP/L;

    iget-object v3, v2, LP/L;->b:Ljava/lang/Object;

    check-cast v3, Lb1/b;

    iget-object v4, v2, LP/L;->f:Ljava/lang/Object;

    check-cast v4, Lc1/d;

    iget-object v4, v4, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v2, LP/L;->c:Ljava/lang/Object;

    check-cast v5, Lc1/a;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc1/o;

    if-nez v4, :cond_15

    goto :goto_9

    :cond_15
    iget v5, v0, La1/a;->f:I

    if-nez v5, :cond_17

    iput-boolean v6, v2, LP/L;->a:Z

    invoke-interface {v3}, Lb1/b;->l()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, v2, LP/L;->a:Z

    if-eqz v0, :cond_18

    iget-object v0, v2, LP/L;->d:Ljava/lang/Object;

    check-cast v0, Ld1/e;

    if-eqz v0, :cond_18

    iget-object v1, v2, LP/L;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v3, v0, v1}, Lb1/b;->i(Ld1/e;Ljava/util/Set;)V

    goto :goto_9

    :cond_16
    :try_start_3
    invoke-interface {v3}, Lb1/b;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v7, v0}, Lb1/b;->i(Ld1/e;Ljava/util/Set;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    const-string v2, "GoogleApiManager"

    const-string v5, "Failed to get service from broker. "

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Failed to get service from broker."

    invoke-interface {v3, v0}, Lb1/b;->b(Ljava/lang/String;)V

    new-instance v0, La1/a;

    invoke-direct {v0, v1}, La1/a;-><init>(I)V

    invoke-virtual {v4, v0, v7}, Lc1/o;->l(La1/a;Ljava/lang/RuntimeException;)V

    goto :goto_9

    :cond_17
    invoke-virtual {v4, v0, v7}, Lc1/o;->l(La1/a;Ljava/lang/RuntimeException;)V

    :cond_18
    :goto_9
    return-void

    :pswitch_7
    iget-object v0, p0, Lz1/v;->f:Ljava/lang/Object;

    check-cast v0, LN0/i;

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v1, LN0/i;

    iget-object v1, v1, LN0/i;->a:Ljava/lang/Object;

    check-cast v1, LM0/y1;

    iget-object v1, v1, LM0/y1;->e:Lh/e;

    invoke-virtual {v1, v0}, Lh/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN0/m;

    if-eqz v1, :cond_19

    invoke-interface {v0, v1, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_19
    return-void

    :pswitch_8
    iget-object v0, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v0, LC2/b;

    iget-object v1, p0, Lz1/v;->f:Ljava/lang/Object;

    check-cast v1, LN0/N;

    iget-object v2, v0, LC2/b;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v1}, LN0/N;->a()LN0/d;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "extra_session_binder"

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_a

    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1b
    iget-object v0, v0, LC2/b;->g:Ljava/lang/Object;

    check-cast v0, LN0/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, LN0/N;->f:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0, v1}, Landroid/service/media/MediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v0, LF/a;

    iget-object v1, p0, Lz1/v;->f:Ljava/lang/Object;

    iget-object v2, v0, LF/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v1, v0, LF/a;->i:LZ0/d;

    iget-object v2, v1, LZ0/d;->h:LF/a;

    if-ne v2, v0, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iput-object v7, v1, LZ0/d;->h:LF/a;

    invoke-virtual {v1}, LZ0/d;->b()V

    goto/16 :goto_e

    :cond_1c
    iget-object v2, v0, LF/a;->i:LZ0/d;

    iget-object v3, v2, LZ0/d;->g:LF/a;

    if-eq v3, v0, :cond_1d

    iget-object v1, v2, LZ0/d;->h:LF/a;

    if-ne v1, v0, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iput-object v7, v2, LZ0/d;->h:LF/a;

    invoke-virtual {v2}, LZ0/d;->b()V

    goto :goto_e

    :cond_1d
    iget-boolean v3, v2, LZ0/d;->c:Z

    if-eqz v3, :cond_1e

    goto :goto_e

    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iput-object v7, v2, LZ0/d;->g:LF/a;

    iget-object v2, v2, LZ0/d;->a:LE/a;

    if-eqz v2, :cond_24

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v3, v7, :cond_1f

    invoke-virtual {v2, v1}, LB/o;->h(Ljava/lang/Object;)V

    goto :goto_e

    :cond_1f
    iget-object v3, v2, LB/o;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v7, v2, LB/o;->f:Ljava/lang/Object;

    sget-object v8, LB/o;->k:Ljava/lang/Object;

    if-ne v7, v8, :cond_20

    move v5, v6

    :cond_20
    iput-object v1, v2, LB/o;->f:Ljava/lang/Object;

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v5, :cond_21

    goto :goto_e

    :cond_21
    invoke-static {}, Lf/a;->C()Lf/a;

    move-result-object v1

    iget-object v2, v2, LB/o;->j:LB/k;

    iget-object v1, v1, Lf/a;->d:Lf/d;

    iget-object v3, v1, Lf/d;->e:Landroid/os/Handler;

    if-nez v3, :cond_23

    iget-object v3, v1, Lf/d;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v5, v1, Lf/d;->e:Landroid/os/Handler;

    if-nez v5, :cond_22

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {v5}, Lf/d;->C(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v5

    iput-object v5, v1, Lf/d;->e:Landroid/os/Handler;

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_c

    :cond_22
    :goto_b
    monitor-exit v3

    goto :goto_d

    :goto_c
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_23
    :goto_d
    iget-object v1, v1, Lf/d;->e:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_24
    :goto_e
    iput v4, v0, LF/a;->f:I

    return-void

    :pswitch_a
    iget-object v0, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v0, Lz1/u;

    iget-object v1, p0, Lz1/v;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Future;

    instance-of v2, v1, LA1/a;

    if-eqz v2, :cond_25

    move-object v2, v1

    check-cast v2, LA1/a;

    invoke-static {v2}, Le/a;->k(LA1/a;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-interface {v0, v2}, Lz1/u;->k(Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_25
    :try_start_7
    invoke-static {v1}, Lcom/brisa/local/v;->i(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-interface {v0, v1}, Lz1/u;->d(Ljava/lang/Object;)V

    goto :goto_f

    :catchall_4
    move-exception v1

    invoke-interface {v0, v1}, Lz1/u;->k(Ljava/lang/Throwable;)V

    goto :goto_f

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lz1/u;->k(Ljava/lang/Throwable;)V

    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lz1/v;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, LB/A;

    const-class v1, Lz1/v;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, LB/A;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lz1/v;->g:Ljava/lang/Object;

    check-cast v1, Lz1/u;

    new-instance v2, LW0/c;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LW0/c;-><init>(IZ)V

    iget-object v3, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v3, LW0/c;

    iput-object v2, v3, LW0/c;->g:Ljava/lang/Object;

    iput-object v2, v0, LB/A;->h:Ljava/lang/Object;

    iput-object v1, v2, LW0/c;->f:Ljava/lang/Object;

    invoke-virtual {v0}, LB/A;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
