.class public abstract Lcom/google/android/gms/common/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/b;


# static fields
.field public static final x:[La1/c;


# instance fields
.field public volatile a:Ljava/lang/String;

.field public b:LE/b;

.field public final c:Landroid/content/Context;

.field public final d:Ld1/E;

.field public final e:Ld1/u;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public h:Ld1/r;

.field public i:Ld1/b;

.field public j:Landroid/os/IInterface;

.field public final k:Ljava/util/ArrayList;

.field public l:Ld1/w;

.field public m:I

.field public final n:Ld1/g;

.field public final o:Ld1/g;

.field public final p:I

.field public final q:Ljava/lang/String;

.field public volatile r:Ljava/lang/String;

.field public s:La1/a;

.field public t:Z

.field public volatile u:Ld1/z;

.field public final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final w:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [La1/c;

    sput-object v0, Lcom/google/android/gms/common/internal/a;->x:[La1/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILM0/r0;Lb1/i;Lb1/j;I)V
    .locals 3

    sget-object p7, Ld1/E;->g:Ljava/lang/Object;

    monitor-enter p7

    :try_start_0
    sget-object v0, Ld1/E;->h:Ld1/E;

    if-nez v0, :cond_0

    new-instance v0, Ld1/E;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ld1/E;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Ld1/E;->h:Ld1/E;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    monitor-exit p7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p7, Ld1/E;->h:Ld1/E;

    sget-object v0, La1/d;->b:Ljava/lang/Object;

    invoke-static {p5}, Ld1/s;->d(Ljava/lang/Object;)V

    invoke-static {p6}, Ld1/s;->d(Ljava/lang/Object;)V

    new-instance v0, Ld1/g;

    invoke-direct {v0, p5}, Ld1/g;-><init>(Ljava/lang/Object;)V

    new-instance p5, Ld1/g;

    invoke-direct {p5, p6}, Ld1/g;-><init>(Ljava/lang/Object;)V

    iget-object p6, p4, LM0/r0;->b:Ljava/lang/Object;

    check-cast p6, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/internal/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/internal/a;->f:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/internal/a;->g:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/internal/a;->k:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/gms/common/internal/a;->m:I

    iput-object v1, p0, Lcom/google/android/gms/common/internal/a;->s:La1/a;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/common/internal/a;->t:Z

    iput-object v1, p0, Lcom/google/android/gms/common/internal/a;->u:Ld1/z;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/a;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "Context must not be null"

    invoke-static {p1, v1}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Supervisor must not be null"

    invoke-static {p7, p1}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p7, p0, Lcom/google/android/gms/common/internal/a;->d:Ld1/E;

    new-instance p1, Ld1/u;

    invoke-direct {p1, p0, p2}, Ld1/u;-><init>(Lcom/google/android/gms/common/internal/a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->e:Ld1/u;

    iput p3, p0, Lcom/google/android/gms/common/internal/a;->p:I

    iput-object v0, p0, Lcom/google/android/gms/common/internal/a;->n:Ld1/g;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/a;->o:Ld1/g;

    iput-object p6, p0, Lcom/google/android/gms/common/internal/a;->q:Ljava/lang/String;

    iget-object p1, p4, LM0/r0;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->w:Ljava/util/Set;

    return-void

    :goto_2
    :try_start_1
    monitor-exit p7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static bridge synthetic v(Lcom/google/android/gms/common/internal/a;IILandroid/os/IInterface;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/a;->m:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/internal/a;->w(ILandroid/os/IInterface;)V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->w:Ljava/util/Set;

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->j()V

    return-void
.end method

.method public final d()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/a;->m:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()[La1/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->u:Ld1/z;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Ld1/z;->f:[La1/c;

    return-object v0
.end method

.method public final f()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h(La1/g;)V
    .locals 3

    iget-object v0, p1, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lc1/o;

    iget-object v0, v0, Lc1/o;->m:Lc1/d;

    iget-object v0, v0, Lc1/d;->r:Ln1/d;

    new-instance v1, LB/k;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2}, LB/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i(Ld1/e;Ljava/util/Set;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/a;->o()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ld1/d;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-ge v4, v5, :cond_0

    iget-object v4, v1, Lcom/google/android/gms/common/internal/a;->r:Ljava/lang/String;

    :goto_0
    move-object/from16 v17, v4

    goto :goto_1

    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/common/internal/a;->r:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget v5, v1, Lcom/google/android/gms/common/internal/a;->p:I

    sget v6, La1/e;->a:I

    sget-object v9, Ld1/d;->s:[Lcom/google/android/gms/common/api/Scope;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    sget-object v12, Ld1/d;->t:[La1/c;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object v13, v12

    invoke-direct/range {v3 .. v17}, Ld1/d;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[La1/c;[La1/c;ZIZLjava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ld1/d;->h:Ljava/lang/String;

    iput-object v2, v3, Ld1/d;->k:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, v3, Ld1/d;->j:[Lcom/google/android/gms/common/api/Scope;

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/a;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/accounts/Account;

    const-string v2, "<<default account>>"

    const-string v4, "com.google"

    invoke-direct {v0, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v3, Ld1/d;->l:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    check-cast v0, Ld1/G;

    iget-object v0, v0, Ld1/G;->a:Landroid/os/IBinder;

    iput-object v0, v3, Ld1/d;->i:Landroid/os/IBinder;

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/internal/a;->x:[La1/c;

    iput-object v0, v3, Ld1/d;->m:[La1/c;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/a;->n()[La1/c;

    move-result-object v0

    iput-object v0, v3, Ld1/d;->n:[La1/c;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/a;->u()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iput-boolean v2, v3, Ld1/d;->q:Z

    :cond_3
    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/common/internal/a;->g:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/common/internal/a;->h:Ld1/r;

    if-eqz v0, :cond_4

    new-instance v5, Ld1/v;

    iget-object v6, v1, Lcom/google/android/gms/common/internal/a;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-direct {v5, v1, v6}, Ld1/v;-><init>(Lcom/google/android/gms/common/internal/a;I)V

    invoke-virtual {v0, v5, v3}, Ld1/r;->w(Ld1/v;Ld1/d;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    const-string v0, "GmsClient"

    const-string v3, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v4

    return-void

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :goto_4
    const-string v3, "GmsClient"

    const-string v4, "IGmsServiceBroker.getService failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/google/android/gms/common/internal/a;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v3, Ld1/x;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5, v5}, Ld1/x;-><init>(Lcom/google/android/gms/common/internal/a;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object v4, v1, Lcom/google/android/gms/common/internal/a;->e:Ld1/u;

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v0, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_5
    throw v0

    :goto_6
    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/google/android/gms/common/internal/a;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v2, v1, Lcom/google/android/gms/common/internal/a;->e:Ld1/u;

    const/4 v3, 0x6

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->k:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/common/internal/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld1/p;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v3, v4, Ld1/p;->a:Ljava/lang/Boolean;

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object v3, p0, Lcom/google/android/gms/common/internal/a;->h:Ld1/r;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/common/internal/a;->w(ILandroid/os/IInterface;)V

    return-void

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public final k(Ld1/b;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->i:Ld1/b;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/internal/a;->w(ILandroid/os/IInterface;)V

    return-void
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract m(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public n()[La1/c;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/internal/a;->x:[La1/c;

    return-object v0
.end method

.method public o()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final p()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/a;->m:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final q()Landroid/os/IInterface;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/a;->m:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->j:Landroid/os/IInterface;

    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public abstract s()Ljava/lang/String;
.end method

.method public t()Z
    .locals 2

    invoke-interface {p0}, Lb1/b;->c()I

    move-result v0

    const v1, 0xc9e4920

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .locals 1

    instance-of v0, p0, Lm1/i;

    return v0
.end method

.method public final w(ILandroid/os/IInterface;)V
    .locals 10

    const-string v0, " on com.google.android.gms"

    const-string v1, " on com.google.android.gms"

    const-string v2, "unable to connect to service: "

    const-string v3, "Calling connect() while still connected, missing disconnect() for "

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq p1, v6, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    if-nez p2, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    if-ne v7, v8, :cond_f

    iget-object v7, p0, Lcom/google/android/gms/common/internal/a;->f:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/a;->m:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/a;->j:Landroid/os/IInterface;

    const/4 v8, 0x0

    if-eq p1, v5, :cond_c

    const/4 v9, 0x2

    if-eq p1, v9, :cond_3

    const/4 v9, 0x3

    if-eq p1, v9, :cond_3

    if-eq p1, v6, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-static {p2}, Ld1/s;->d(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/common/internal/a;->l:Ld1/w;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    if-eqz p2, :cond_5

    const-string v6, "GmsClient"

    iget-object p2, p2, LE/b;->g:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/google/android/gms/common/internal/a;->d:Ld1/E;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    iget-object v1, v1, LE/b;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ld1/s;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/a;->q:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    iget-boolean v3, v3, LE/b;->f:Z

    invoke-virtual {p2, v1, p1, v3}, Ld1/E;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Z)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/a;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_5
    new-instance p1, Ld1/w;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/a;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Ld1/w;-><init>(Lcom/google/android/gms/common/internal/a;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->l:Ld1/w;

    new-instance p2, LE/b;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->t()Z

    move-result v3

    invoke-direct {p2, v1, v3}, LE/b;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    if-eqz v3, :cond_7

    invoke-interface {p0}, Lb1/b;->c()I

    move-result p2

    const v1, 0x1110e58

    if-lt p2, v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    iget-object p2, p2, LE/b;->g:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    const-string v0, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/common/internal/a;->d:Ld1/E;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    iget-object v1, v1, LE/b;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ld1/s;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/a;->q:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_8
    iget-object v6, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    iget-boolean v6, v6, LE/b;->f:Z

    new-instance v9, Ld1/B;

    invoke-direct {v9, v1, v6}, Ld1/B;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p2, v9, p1, v3}, Ld1/E;->a(Ld1/B;Ld1/w;Ljava/lang/String;)La1/a;

    move-result-object p1

    iget p2, p1, La1/a;->f:I

    if-nez p2, :cond_9

    move v4, v5

    :cond_9
    if-nez v4, :cond_e

    const-string p2, "GmsClient"

    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    iget-object v1, v1, LE/b;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p1, La1/a;->f:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    const/16 p2, 0x10

    :cond_a
    iget-object v1, p1, La1/a;->g:Landroid/app/PendingIntent;

    if-eqz v1, :cond_b

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pendingIntent"

    iget-object p1, p1, La1/a;->g:Landroid/app/PendingIntent;

    invoke-virtual {v8, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/common/internal/a;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    new-instance v1, Ld1/y;

    invoke-direct {v1, p0, p2, v8}, Ld1/y;-><init>(Lcom/google/android/gms/common/internal/a;ILandroid/os/Bundle;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/a;->e:Ld1/u;

    const/4 v2, 0x7

    invoke-virtual {p2, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/common/internal/a;->l:Ld1/w;

    if-eqz p1, :cond_e

    iget-object p2, p0, Lcom/google/android/gms/common/internal/a;->d:Ld1/E;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    iget-object v0, v0, LE/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ld1/s;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->q:Ljava/lang/String;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->b:LE/b;

    iget-boolean v1, v1, LE/b;->f:Z

    invoke-virtual {p2, v0, p1, v1}, Ld1/E;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Z)V

    iput-object v8, p0, Lcom/google/android/gms/common/internal/a;->l:Ld1/w;

    :cond_e
    :goto_3
    monitor-exit v7

    return-void

    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
