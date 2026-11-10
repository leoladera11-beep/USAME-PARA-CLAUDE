.class public final Lc1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final t:Lcom/google/android/gms/common/api/Status;

.field public static final u:Lcom/google/android/gms/common/api/Status;

.field public static final v:Ljava/lang/Object;

.field public static w:Lc1/d;


# instance fields
.field public e:J

.field public f:Z

.field public g:Ld1/i;

.field public h:Lf1/b;

.field public final i:Landroid/content/Context;

.field public final j:La1/d;

.field public final k:LW0/c;

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final n:Ljava/util/concurrent/ConcurrentHashMap;

.field public o:Lc1/k;

.field public final p:Lh/f;

.field public final q:Lh/f;

.field public final r:Ln1/d;

.field public volatile s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;La1/a;)V

    sput-object v0, Lc1/d;->t:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;La1/a;)V

    sput-object v0, Lc1/d;->u:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc1/d;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    sget-object v0, La1/d;->c:La1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lc1/d;->e:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc1/d;->f:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lc1/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lc1/d;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x5

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v2, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x0

    iput-object v2, p0, Lc1/d;->o:Lc1/k;

    new-instance v2, Lh/f;

    invoke-direct {v2, v1}, Lh/f;-><init>(I)V

    iput-object v2, p0, Lc1/d;->p:Lh/f;

    new-instance v2, Lh/f;

    invoke-direct {v2, v1}, Lh/f;-><init>(I)V

    iput-object v2, p0, Lc1/d;->q:Lh/f;

    iput-boolean v3, p0, Lc1/d;->s:Z

    iput-object p1, p0, Lc1/d;->i:Landroid/content/Context;

    new-instance v2, Ln1/d;

    invoke-direct {v2, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    iput-object v2, p0, Lc1/d;->r:Ln1/d;

    iput-object v0, p0, Lc1/d;->j:La1/d;

    new-instance p2, LW0/c;

    const/16 v0, 0xc

    invoke-direct {p2, v0}, LW0/c;-><init>(I)V

    iput-object p2, p0, Lc1/d;->k:LW0/c;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Le2/d;->d:Ljava/lang/Boolean;

    if-nez p2, :cond_0

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Le2/d;->d:Ljava/lang/Boolean;

    :cond_0
    sget-object p1, Le2/d;->d:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lc1/d;->s:Z

    :cond_1
    const/4 p1, 0x6

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static d(Lc1/a;La1/a;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lc1/a;->b:LW0/c;

    iget-object p0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x11

    iget-object v2, p1, La1/a;->g:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;La1/a;)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lc1/d;
    .locals 5

    sget-object v0, Lc1/d;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc1/d;->w:Lc1/d;

    if-nez v1, :cond_1

    sget-object v1, Ld1/E;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Ld1/E;->i:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GoogleApiHandler"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ld1/E;->i:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    sget-object v2, Ld1/E;->i:Landroid/os/HandlerThread;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc1/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, La1/d;->b:Ljava/lang/Object;

    invoke-direct {v2, p0, v1}, Lc1/d;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lc1/d;->w:Lc1/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lc1/d;->w:Lc1/d;

    monitor-exit v0

    return-object p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method


# virtual methods
.method public final a(Lc1/k;)V
    .locals 2

    sget-object v0, Lc1/d;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc1/d;->o:Lc1/k;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lc1/d;->o:Lc1/k;

    iget-object v1, p0, Lc1/d;->p:Lh/f;

    invoke-virtual {v1}, Lh/f;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lc1/d;->p:Lh/f;

    iget-object p1, p1, Lc1/k;->f:Lh/f;

    invoke-virtual {v1, p1}, Lh/f;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Z
    .locals 3

    iget-boolean v0, p0, Lc1/d;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ld1/g;->b()Ld1/g;

    move-result-object v0

    iget-object v0, v0, Ld1/g;->a:Ljava/lang/Object;

    check-cast v0, Ld1/h;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Ld1/h;->f:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lc1/d;->k:LW0/c;

    iget-object v0, v0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    const v1, 0xc1fa340

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final c(La1/a;I)Z
    .locals 7

    iget-object v0, p0, Lc1/d;->j:La1/d;

    iget-object v1, p0, Lc1/d;->i:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lj1/a;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lj1/a;->a:Landroid/content/Context;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    sget-object v6, Lj1/a;->b:Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    if-eq v4, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_0
    :try_start_1
    sput-object v5, Lj1/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lj1/a;->b:Ljava/lang/Boolean;

    sput-object v3, Lj1/a;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    move v3, v4

    :goto_1
    const/4 v2, 0x0

    if-eqz v3, :cond_2

    goto :goto_4

    :cond_2
    iget v3, p1, La1/a;->f:I

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v6, p1, La1/a;->g:Landroid/app/PendingIntent;

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    if-eqz v6, :cond_4

    iget-object v3, p1, La1/a;->g:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v3, v1, v5}, La1/e;->b(ILandroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_5

    iget p1, p1, La1/a;->f:I

    sget v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    const-class v5, Lcom/google/android/gms/common/api/GoogleApiActivity;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "pending_intent"

    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "failing_client_id"

    invoke-virtual {v6, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "notify_manager"

    invoke-virtual {v6, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget p2, Ln1/c;->a:I

    const/high16 v3, 0x8000000

    or-int/2addr p2, v3

    invoke-static {v1, v2, v6, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, La1/d;->g(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return v4

    :cond_5
    :goto_4
    return v2

    :goto_5
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final e(Lb1/h;)Lc1/o;
    .locals 3

    iget-object v0, p1, Lb1/h;->e:Lc1/a;

    iget-object v1, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/o;

    if-nez v2, :cond_0

    new-instance v2, Lc1/o;

    invoke-direct {v2, p0, p1}, Lc1/o;-><init>(Lc1/d;Lb1/h;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, v2, Lc1/o;->b:Lb1/b;

    invoke-interface {p1}, Lb1/b;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc1/d;->q:Lh/f;

    invoke-virtual {p1, v0}, Lh/f;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lc1/o;->j()V

    return-object v2
.end method

.method public final g(La1/a;I)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lc1/d;->c(La1/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    iget-object v2, p0, Lc1/d;->r:Ln1/d;

    invoke-virtual {v2, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const-wide/32 v2, 0x493e0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown message id: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :pswitch_0
    iput-boolean v5, p0, Lc1/d;->f:Z

    return v7

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc1/u;

    iget-wide v2, p1, Lc1/u;->c:J

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-nez v0, :cond_1

    new-instance v0, Ld1/i;

    iget v2, p1, Lc1/u;->b:I

    iget-object p1, p1, Lc1/u;->a:Ld1/f;

    filled-new-array {p1}, [Ld1/f;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ld1/i;-><init>(ILjava/util/List;)V

    iget-object p1, p0, Lc1/d;->h:Lf1/b;

    if-nez p1, :cond_0

    iget-object v9, p0, Lc1/d;->i:Landroid/content/Context;

    sget-object v12, Ld1/j;->e:Ld1/j;

    new-instance v8, Lf1/b;

    sget-object v11, Lf1/b;->k:LW0/c;

    sget-object v13, Lb1/g;->c:Lb1/g;

    const/4 v10, 0x0

    invoke-direct/range {v8 .. v13}, Lb1/h;-><init>(Landroid/content/Context;Landroid/app/Activity;LW0/c;Lb1/a;Lb1/g;)V

    iput-object v8, p0, Lc1/d;->h:Lf1/b;

    :cond_0
    iget-object p1, p0, Lc1/d;->h:Lf1/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LM0/k;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput v5, v2, LM0/k;->b:I

    sget-object v3, Ln1/b;->a:La1/c;

    filled-new-array {v3}, [La1/c;

    move-result-object v3

    iput-object v3, v2, LM0/k;->d:Ljava/lang/Object;

    iput-boolean v5, v2, LM0/k;->a:Z

    new-instance v4, La1/g;

    invoke-direct {v4, v0}, La1/g;-><init>(Ljava/lang/Object;)V

    iput-object v4, v2, LM0/k;->c:Ljava/lang/Object;

    new-instance v0, LM0/k;

    invoke-direct {v0, v2, v3, v5, v5}, LM0/k;-><init>(LM0/k;[La1/c;ZI)V

    invoke-virtual {p1, v1, v0}, Lb1/h;->b(ILM0/k;)La2/d;

    return v7

    :cond_1
    iget-object v0, p0, Lc1/d;->g:Ld1/i;

    if-eqz v0, :cond_8

    iget-object v2, v0, Ld1/i;->f:Ljava/util/List;

    iget v0, v0, Ld1/i;->e:I

    iget v3, p1, Lc1/u;->b:I

    if-ne v0, v3, :cond_4

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p1, Lc1/u;->d:I

    if-lt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc1/d;->g:Ld1/i;

    iget-object v1, p1, Lc1/u;->a:Ld1/f;

    iget-object v2, v0, Ld1/i;->f:Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Ld1/i;->f:Ljava/util/List;

    :cond_3
    iget-object v0, v0, Ld1/i;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lc1/d;->r:Ln1/d;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lc1/d;->g:Ld1/i;

    if-eqz v0, :cond_8

    iget v2, v0, Ld1/i;->e:I

    if-gtz v2, :cond_5

    invoke-virtual {p0}, Lc1/d;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lc1/d;->h:Lf1/b;

    if-nez v2, :cond_6

    iget-object v9, p0, Lc1/d;->i:Landroid/content/Context;

    sget-object v12, Ld1/j;->e:Ld1/j;

    new-instance v8, Lf1/b;

    sget-object v11, Lf1/b;->k:LW0/c;

    sget-object v13, Lb1/g;->c:Lb1/g;

    const/4 v10, 0x0

    invoke-direct/range {v8 .. v13}, Lb1/h;-><init>(Landroid/content/Context;Landroid/app/Activity;LW0/c;Lb1/a;Lb1/g;)V

    iput-object v8, p0, Lc1/d;->h:Lf1/b;

    :cond_6
    iget-object v2, p0, Lc1/d;->h:Lf1/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LM0/k;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v5, v3, LM0/k;->b:I

    sget-object v8, Ln1/b;->a:La1/c;

    filled-new-array {v8}, [La1/c;

    move-result-object v8

    iput-object v8, v3, LM0/k;->d:Ljava/lang/Object;

    iput-boolean v5, v3, LM0/k;->a:Z

    new-instance v9, La1/g;

    invoke-direct {v9, v0}, La1/g;-><init>(Ljava/lang/Object;)V

    iput-object v9, v3, LM0/k;->c:Ljava/lang/Object;

    new-instance v0, LM0/k;

    invoke-direct {v0, v3, v8, v5, v5}, LM0/k;-><init>(LM0/k;[La1/c;ZI)V

    invoke-virtual {v2, v1, v0}, Lb1/h;->b(ILM0/k;)La2/d;

    :cond_7
    iput-object v6, p0, Lc1/d;->g:Ld1/i;

    :cond_8
    :goto_1
    iget-object v0, p0, Lc1/d;->g:Ld1/i;

    if-nez v0, :cond_25

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lc1/u;->a:Ld1/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ld1/i;

    iget v2, p1, Lc1/u;->b:I

    invoke-direct {v1, v2, v0}, Ld1/i;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Lc1/d;->g:Ld1/i;

    iget-object v0, p0, Lc1/d;->r:Ln1/d;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p1, Lc1/u;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v7

    :pswitch_2
    iget-object p1, p0, Lc1/d;->g:Ld1/i;

    if-eqz p1, :cond_25

    iget v0, p1, Ld1/i;->e:I

    if-gtz v0, :cond_9

    invoke-virtual {p0}, Lc1/d;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    iget-object v0, p0, Lc1/d;->h:Lf1/b;

    if-nez v0, :cond_a

    iget-object v9, p0, Lc1/d;->i:Landroid/content/Context;

    sget-object v12, Ld1/j;->e:Ld1/j;

    new-instance v8, Lf1/b;

    sget-object v11, Lf1/b;->k:LW0/c;

    sget-object v13, Lb1/g;->c:Lb1/g;

    const/4 v10, 0x0

    invoke-direct/range {v8 .. v13}, Lb1/h;-><init>(Landroid/content/Context;Landroid/app/Activity;LW0/c;Lb1/a;Lb1/g;)V

    iput-object v8, p0, Lc1/d;->h:Lf1/b;

    :cond_a
    iget-object v0, p0, Lc1/d;->h:Lf1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LM0/k;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput v5, v2, LM0/k;->b:I

    sget-object v3, Ln1/b;->a:La1/c;

    filled-new-array {v3}, [La1/c;

    move-result-object v3

    iput-object v3, v2, LM0/k;->d:Ljava/lang/Object;

    iput-boolean v5, v2, LM0/k;->a:Z

    new-instance v4, La1/g;

    invoke-direct {v4, p1}, La1/g;-><init>(Ljava/lang/Object;)V

    iput-object v4, v2, LM0/k;->c:Ljava/lang/Object;

    new-instance p1, LM0/k;

    invoke-direct {p1, v2, v3, v5, v5}, LM0/k;-><init>(LM0/k;[La1/c;ZI)V

    invoke-virtual {v0, v1, p1}, Lb1/h;->b(ILM0/k;)La2/d;

    :cond_b
    iput-object v6, p0, Lc1/d;->g:Ld1/i;

    return v7

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc1/p;

    iget-object v0, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lc1/p;->a:Lc1/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lc1/p;->a:Lc1/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc1/o;

    iget-object v1, v0, Lc1/o;->j:Ljava/util/ArrayList;

    iget-object v2, v0, Lc1/o;->m:Lc1/d;

    iget-object v3, v0, Lc1/o;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v2, Lc1/d;->r:Ln1/d;

    const/16 v4, 0xf

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v2, Lc1/d;->r:Ln1/d;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p1, Lc1/p;->b:La1/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc1/A;

    instance-of v6, v4, Lc1/s;

    if-eqz v6, :cond_c

    move-object v6, v4

    check-cast v6, Lc1/s;

    invoke-virtual {v6, v0}, Lc1/s;->g(Lc1/o;)[La1/c;

    move-result-object v6

    if-eqz v6, :cond_c

    array-length v8, v6

    move v9, v5

    :goto_3
    if-ge v9, v8, :cond_c

    aget-object v10, v6, v9

    invoke-static {v10, p1}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    if-ltz v9, :cond_c

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v5, v0, :cond_25

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/A;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    new-instance v4, Lb1/n;

    invoke-direct {v4, p1}, Lb1/n;-><init>(La1/c;)V

    invoke-virtual {v2, v4}, Lc1/A;->b(Ljava/lang/Exception;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc1/p;

    iget-object v0, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lc1/p;->a:Lc1/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lc1/p;->a:Lc1/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc1/o;

    iget-object v1, v0, Lc1/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_11

    :cond_f
    iget-boolean p1, v0, Lc1/o;->i:Z

    if-nez p1, :cond_25

    iget-object p1, v0, Lc1/o;->b:Lb1/b;

    invoke-interface {p1}, Lb1/b;->p()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {v0}, Lc1/o;->j()V

    return v7

    :cond_10
    invoke-virtual {v0}, Lc1/o;->d()V

    return v7

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_6
    iget-object v0, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc1/o;

    iget-object v0, p1, Lc1/o;->m:Lc1/d;

    iget-object v0, v0, Lc1/d;->r:Ln1/d;

    invoke-static {v0}, Ld1/s;->b(Landroid/os/Handler;)V

    iget-object v0, p1, Lc1/o;->b:Lb1/b;

    invoke-interface {v0}, Lb1/b;->p()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p1, Lc1/o;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p1, Lc1/o;->d:LW0/c;

    iget-object v2, v1, LW0/c;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v1, v1, LW0/c;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_5

    :cond_11
    const-string p1, "Timing out service connection."

    invoke-interface {v0, p1}, Lb1/b;->b(Ljava/lang/String;)V

    return v7

    :cond_12
    :goto_5
    invoke-virtual {p1}, Lc1/o;->g()V

    :cond_13
    return v7

    :pswitch_7
    iget-object v0, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc1/o;

    iget-object v0, p1, Lc1/o;->m:Lc1/d;

    iget-object v1, v0, Lc1/d;->r:Ln1/d;

    invoke-static {v1}, Ld1/s;->b(Landroid/os/Handler;)V

    iget-boolean v1, p1, Lc1/o;->i:Z

    if-eqz v1, :cond_25

    iget-object v2, p1, Lc1/o;->c:Lc1/a;

    iget-object v3, p1, Lc1/o;->m:Lc1/d;

    iget-object v3, v3, Lc1/d;->r:Ln1/d;

    if-eqz v1, :cond_14

    const/16 v1, 0xb

    invoke-virtual {v3, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v1, 0x9

    invoke-virtual {v3, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v5, p1, Lc1/o;->i:Z

    :cond_14
    iget-object v1, v0, Lc1/d;->j:La1/d;

    iget-object v0, v0, Lc1/d;->i:Landroid/content/Context;

    sget v2, La1/e;->a:I

    invoke-virtual {v1, v2, v0}, La1/e;->c(ILandroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_15

    const-string v0, "Connection timed out waiting for Google Play services update to complete."

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v0, v6, v6}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;La1/a;)V

    goto :goto_6

    :cond_15
    const-string v0, "API failed to connect while resuming due to an unknown error."

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x16

    invoke-direct {v1, v2, v0, v6, v6}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;La1/a;)V

    :goto_6
    invoke-virtual {p1, v1}, Lc1/o;->b(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p1, Lc1/o;->b:Lb1/b;

    const-string v0, "Timing out connection while resuming."

    invoke-interface {p1, v0}, Lb1/b;->b(Ljava/lang/String;)V

    return v7

    :pswitch_8
    iget-object p1, p0, Lc1/d;->q:Lh/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lh/a;

    invoke-direct {v0, p1}, Lh/a;-><init>(Lh/f;)V

    :cond_16
    :goto_7
    invoke-virtual {v0}, Lh/a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {v0}, Lh/a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc1/a;

    iget-object v1, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc1/o;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lc1/o;->n()V

    goto :goto_7

    :cond_17
    iget-object p1, p0, Lc1/d;->q:Lh/f;

    invoke-virtual {p1}, Lh/f;->clear()V

    return v7

    :pswitch_9
    iget-object v0, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc1/o;

    iget-object v0, p1, Lc1/o;->m:Lc1/d;

    iget-object v0, v0, Lc1/d;->r:Ln1/d;

    invoke-static {v0}, Ld1/s;->b(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lc1/o;->i:Z

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lc1/o;->j()V

    return v7

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb1/h;

    invoke-virtual {p0, p1}, Lc1/d;->e(Lb1/h;)Lc1/o;

    return v7

    :pswitch_b
    iget-object p1, p0, Lc1/d;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_25

    iget-object p1, p0, Lc1/d;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    sget-object v1, Lc1/b;->e:Lc1/b;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, v1, Lc1/b;->d:Z

    if-nez v0, :cond_18

    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p1, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iput-boolean v7, v1, Lc1/b;->d:Z

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_c

    :cond_18
    :goto_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lc1/m;

    invoke-direct {p1, p0}, Lc1/m;-><init>(Lc1/d;)V

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Lc1/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, v1, Lc1/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, v1, Lc1/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, LF1/i;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_1b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_19

    invoke-static {}, LN0/n;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_9

    :cond_19
    :try_start_2
    const-class v1, Landroid/os/Process;

    const-string v4, "isIsolated"

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_9

    :cond_1a
    new-instance v1, LC1/i;

    invoke-static {v4}, LF1/i;->w([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    sput-object v1, LF1/i;->b:Ljava/lang/Boolean;

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1d

    iget v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1d

    invoke-virtual {p1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_a

    :cond_1c
    move p1, v7

    goto :goto_b

    :cond_1d
    :goto_a
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    :goto_b
    if-nez p1, :cond_25

    iput-wide v2, p0, Lc1/d;->e:J

    goto/16 :goto_11

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :goto_c
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, La1/a;

    iget-object v1, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/o;

    iget v3, v2, Lc1/o;->g:I

    if-ne v3, v0, :cond_1e

    goto :goto_d

    :cond_1f
    move-object v2, v6

    :goto_d
    if-eqz v2, :cond_21

    iget v0, p1, La1/a;->f:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_20

    iget-object v1, p0, Lc1/d;->j:La1/d;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, La1/f;->e:I

    invoke-static {v0}, La1/a;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, La1/a;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Error resolution was canceled by the user, original error message: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1, v6, v6}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;La1/a;)V

    invoke-virtual {v2, v3}, Lc1/o;->b(Lcom/google/android/gms/common/api/Status;)V

    return v7

    :cond_20
    iget-object v0, v2, Lc1/o;->c:Lc1/a;

    invoke-static {v0, p1}, Lc1/d;->d(Lc1/a;La1/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {v2, p1}, Lc1/o;->b(Lcom/google/android/gms/common/api/Status;)V

    return v7

    :cond_21
    const-string p1, "Could not find API instance "

    const-string v1, " while trying to fail enqueued calls."

    invoke-static {p1, v1, v0}, LB1/e;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GoogleApiManager"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc1/v;

    iget-object v0, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lc1/v;->c:Lb1/h;

    iget-object v1, v1, Lb1/h;->e:Lc1/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc1/o;

    if-nez v0, :cond_22

    iget-object v0, p1, Lc1/v;->c:Lb1/h;

    invoke-virtual {p0, v0}, Lc1/d;->e(Lb1/h;)Lc1/o;

    move-result-object v0

    :cond_22
    iget-object v1, v0, Lc1/o;->b:Lb1/b;

    invoke-interface {v1}, Lb1/b;->l()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lc1/d;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lc1/v;->b:I

    if-eq v1, v2, :cond_23

    iget-object p1, p1, Lc1/v;->a:Lc1/A;

    sget-object v1, Lc1/d;->t:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lc1/A;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lc1/o;->n()V

    return v7

    :cond_23
    iget-object p1, p1, Lc1/v;->a:Lc1/A;

    invoke-virtual {v0, p1}, Lc1/o;->k(Lc1/A;)V

    return v7

    :pswitch_e
    iget-object p1, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc1/o;

    iget-object v1, v0, Lc1/o;->m:Lc1/d;

    iget-object v1, v1, Lc1/d;->r:Ln1/d;

    invoke-static {v1}, Ld1/s;->b(Landroid/os/Handler;)V

    iput-object v6, v0, Lc1/o;->k:La1/a;

    invoke-virtual {v0}, Lc1/o;->j()V

    goto :goto_e

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v7, p1, :cond_24

    goto :goto_f

    :cond_24
    const-wide/16 v2, 0x2710

    :goto_f
    iput-wide v2, p0, Lc1/d;->e:J

    iget-object p1, p0, Lc1/d;->r:Ln1/d;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc1/a;

    iget-object v2, p0, Lc1/d;->r:Ln1/d;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Lc1/d;->e:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_10

    :cond_25
    :goto_11
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
