.class public abstract Lb1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:LW0/c;

.field public final d:Lb1/a;

.field public final e:Lc1/a;

.field public final f:Landroid/os/Looper;

.field public final g:I

.field public final h:Lc1/q;

.field public final i:Lcom/brisa/local/j;

.field public final j:Lc1/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;LW0/c;Lb1/a;Lb1/g;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Api must not be null."

    invoke-static {p3, v0}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p5, v0}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "The provided context did not have an application context."

    invoke-static {v0, v1}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lb1/h;->a:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    invoke-static {p1}, LG/l;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lb1/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lb1/h;->c:LW0/c;

    iput-object p4, p0, Lb1/h;->d:Lb1/a;

    iget-object v1, p5, Lb1/g;->b:Landroid/os/Looper;

    iput-object v1, p0, Lb1/h;->f:Landroid/os/Looper;

    new-instance v1, Lc1/a;

    invoke-direct {v1, p3, p4, p1}, Lc1/a;-><init>(LW0/c;Lb1/a;Ljava/lang/String;)V

    iput-object v1, p0, Lb1/h;->e:Lc1/a;

    new-instance p1, Lc1/q;

    invoke-direct {p1, p0}, Lc1/q;-><init>(Lb1/h;)V

    iput-object p1, p0, Lb1/h;->h:Lc1/q;

    invoke-static {v0}, Lc1/d;->f(Landroid/content/Context;)Lc1/d;

    move-result-object p1

    iput-object p1, p0, Lb1/h;->j:Lc1/d;

    iget-object p3, p1, Lc1/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p3

    iput p3, p0, Lb1/h;->g:I

    iget-object p3, p5, Lb1/g;->a:Lcom/brisa/local/j;

    iput-object p3, p0, Lb1/h;->i:Lcom/brisa/local/j;

    if-eqz p2, :cond_a

    instance-of p3, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p3, :cond_a

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    if-ne p3, p4, :cond_a

    instance-of p3, p2, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    if-eqz p3, :cond_4

    check-cast p2, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object p3, p2, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    const-string p4, "SLifecycleFragmentImpl"

    sget-object p5, Lc1/D;->S:Ljava/util/WeakHashMap;

    invoke-virtual {p5, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc1/D;

    if-nez v0, :cond_8

    :cond_1
    :try_start_0
    iget-object v0, p3, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lz/o;

    iget-object v0, v0, Lz/o;->f:Lz/A;

    invoke-virtual {v0, p4}, Lz/A;->B(Ljava/lang/String;)Lz/m;

    move-result-object v0

    check-cast v0, Lc1/D;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lz/m;->l:Z

    if-eqz v2, :cond_3

    :cond_2
    new-instance v0, Lc1/D;

    invoke-direct {v0}, Lc1/D;-><init>()V

    iget-object p3, p3, La1/g;->e:Ljava/lang/Object;

    check-cast p3, Lz/o;

    iget-object p3, p3, Lz/o;->f:Lz/A;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lz/a;

    invoke-direct {v2, p3}, Lz/a;-><init>(Lz/A;)V

    const/4 p3, 0x0

    invoke-virtual {v2, p3, v0, p4}, Lz/a;->e(ILz/m;Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-virtual {v2, p3}, Lz/a;->d(Z)I

    :cond_3
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, p2, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Fragment with tag SLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    const-string p3, "LifecycleFragmentImpl"

    sget-object p4, Lc1/C;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p4, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/ref/WeakReference;

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Lc1/C;

    if-nez v0, :cond_8

    :cond_5
    :try_start_1
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p5

    invoke-virtual {p5, p3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p5

    check-cast p5, Lc1/C;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p5, :cond_7

    invoke-virtual {p5}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    move-object v0, p5

    goto :goto_3

    :cond_7
    :goto_2
    new-instance p5, Lc1/C;

    invoke-direct {p5}, Lc1/C;-><init>()V

    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p5, p3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    :goto_3
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, p2, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    invoke-interface {v0}, Lc1/e;->d()Lc1/k;

    move-result-object p2

    if-nez p2, :cond_9

    new-instance p2, Lc1/k;

    sget-object p3, La1/d;->b:Ljava/lang/Object;

    invoke-direct {p2, v0, p1}, Lc1/k;-><init>(Lc1/e;Lc1/d;)V

    :cond_9
    iget-object p3, p2, Lc1/k;->f:Lh/f;

    invoke-virtual {p3, v1}, Lh/f;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2}, Lc1/d;->a(Lc1/k;)V

    goto :goto_5

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_a
    :goto_5
    iget-object p1, p1, Lc1/d;->r:Ln1/d;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final a()LB/A;
    .locals 4

    new-instance v0, LB/A;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB/A;-><init>(IZ)V

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iget-object v2, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v2, Lh/f;

    if-nez v2, :cond_0

    new-instance v2, Lh/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lh/f;-><init>(I)V

    iput-object v2, v0, LB/A;->f:Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v2, Lh/f;

    invoke-virtual {v2, v1}, Lh/f;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lb1/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LB/A;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LB/A;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(ILM0/k;)La2/d;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ls1/d;

    invoke-direct {v2}, Ls1/d;-><init>()V

    iget-object v3, v2, Ls1/d;->a:La2/d;

    iget-object v4, v0, Lb1/h;->i:Lcom/brisa/local/j;

    iget-object v6, v0, Lb1/h;->j:Lc1/d;

    iget-object v13, v6, Lc1/d;->r:Ln1/d;

    iget v7, v1, LM0/k;->b:I

    if-eqz v7, :cond_6

    iget-object v8, v0, Lb1/h;->e:Lc1/a;

    invoke-virtual {v6}, Lc1/d;->b()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ld1/g;->b()Ld1/g;

    move-result-object v5

    iget-object v5, v5, Ld1/g;->a:Ljava/lang/Object;

    check-cast v5, Ld1/h;

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    iget-boolean v10, v5, Ld1/h;->f:Z

    if-eqz v10, :cond_2

    iget-boolean v5, v5, Ld1/h;->g:Z

    iget-object v10, v6, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc1/o;

    if-eqz v10, :cond_1

    iget-object v11, v10, Lc1/o;->b:Lb1/b;

    instance-of v12, v11, Lcom/google/android/gms/common/internal/a;

    if-eqz v12, :cond_2

    check-cast v11, Lcom/google/android/gms/common/internal/a;

    iget-object v12, v11, Lcom/google/android/gms/common/internal/a;->u:Ld1/z;

    if-eqz v12, :cond_1

    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/a;->d()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v10, v11, v7}, Lc1/t;->b(Lc1/o;Lcom/google/android/gms/common/internal/a;I)Ld1/c;

    move-result-object v5

    if-eqz v5, :cond_2

    iget v11, v10, Lc1/o;->l:I

    add-int/2addr v11, v9

    iput v11, v10, Lc1/o;->l:I

    iget-boolean v9, v5, Ld1/c;->g:Z

    goto :goto_1

    :cond_1
    move v9, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_1
    new-instance v5, Lc1/t;

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    goto :goto_2

    :cond_4
    move-wide v14, v10

    :goto_2
    if-eqz v9, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    :cond_5
    move-wide v11, v10

    move-wide v9, v14

    invoke-direct/range {v5 .. v12}, Lc1/t;-><init>(Lc1/d;ILc1/a;JJ)V

    :goto_3
    if-eqz v5, :cond_6

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lc1/l;

    const/4 v8, 0x0

    invoke-direct {v7, v13, v8}, Lc1/l;-><init>(Landroid/os/Handler;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ls1/g;

    invoke-direct {v8, v7, v5}, Ls1/g;-><init>(Ljava/util/concurrent/Executor;Ls1/a;)V

    iget-object v5, v3, La2/d;->c:Ljava/lang/Object;

    check-cast v5, LM0/l;

    invoke-virtual {v5, v8}, LM0/l;->f(Ls1/h;)V

    invoke-virtual {v3}, La2/d;->j()V

    :cond_6
    new-instance v5, Lc1/y;

    move/from16 v7, p1

    invoke-direct {v5, v7, v1, v2, v4}, Lc1/y;-><init>(ILM0/k;Ls1/d;Lcom/brisa/local/j;)V

    iget-object v1, v6, Lc1/d;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Lc1/v;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v2, v5, v1, v0}, Lc1/v;-><init>(Lc1/A;ILb1/h;)V

    const/4 v1, 0x4

    invoke-virtual {v13, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v3
.end method
