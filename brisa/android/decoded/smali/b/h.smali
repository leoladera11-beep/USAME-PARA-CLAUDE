.class public abstract Lb/h;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements LB/E;
.implements LB/a;
.implements LS0/e;
.implements LB/g;


# instance fields
.field public final a:LB/i;

.field public final b:Lc/a;

.field public final c:LB/A;

.field public final d:LB/i;

.field public final e:LM0/l;

.field public f:LB/D;

.field public final g:LW0/c;

.field public final h:Lb/e;

.field public final i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final k:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, LB/i;

    invoke-direct {v0, p0}, LB/i;-><init>(LB/g;)V

    iput-object v0, p0, Lb/h;->a:LB/i;

    new-instance v0, Lc/a;

    invoke-direct {v0}, Lc/a;-><init>()V

    iput-object v0, p0, Lb/h;->b:Lc/a;

    new-instance v1, LB/A;

    new-instance v2, LH/a;

    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    const/16 v4, 0x17

    invoke-direct {v2, v3, v4}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, LB/A;-><init>(LH/a;)V

    iput-object v1, p0, Lb/h;->c:LB/A;

    new-instance v1, LB/i;

    invoke-direct {v1, p0}, LB/i;-><init>(LB/g;)V

    iput-object v1, p0, Lb/h;->d:LB/i;

    new-instance v2, LM0/l;

    invoke-direct {v2, p0}, LM0/l;-><init>(LS0/e;)V

    iput-object v2, p0, Lb/h;->e:LM0/l;

    new-instance v4, LW0/c;

    new-instance v5, LB/k;

    const/4 v6, 0x6

    invoke-direct {v5, v3, v6}, LB/k;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v4, v5}, LW0/c;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lb/h;->g:LW0/c;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v4, Lb/e;

    invoke-direct {v4, v3}, Lb/e;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V

    iput-object v4, p0, Lb/h;->h:Lb/e;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lb/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lb/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lb/h;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lb/h;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lb/h;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lb/f;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lb/f;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;I)V

    invoke-virtual {v1, v4}, LB/i;->a(LB/f;)V

    new-instance v4, Lb/f;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lb/f;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;I)V

    invoke-virtual {v1, v4}, LB/i;->a(LB/f;)V

    new-instance v4, Lb/f;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, Lb/f;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;I)V

    invoke-virtual {v1, v4}, LB/i;->a(LB/f;)V

    invoke-virtual {v2}, LM0/l;->b()V

    invoke-static {p0}, LB/v;->c(LS0/e;)V

    iget-object v1, v2, LM0/l;->g:Ljava/lang/Object;

    check-cast v1, LM0/m1;

    new-instance v2, Lb/b;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lb/b;-><init>(Ljava/lang/Object;I)V

    const-string v4, "android:support:activity-result"

    invoke-virtual {v1, v4, v2}, LM0/m1;->f(Ljava/lang/String;LS0/d;)V

    new-instance v1, Lb/c;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lb/c;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;I)V

    iget-object v2, v0, Lc/a;->b:Lb/h;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lb/c;->a()V

    :cond_0
    iget-object v0, v0, Lc/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic c(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final a()LM0/m1;
    .locals 1

    iget-object v0, p0, Lb/h;->e:LM0/l;

    iget-object v0, v0, LM0/l;->g:Ljava/lang/Object;

    check-cast v0, LM0/m1;

    return-object v0
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Lb/h;->f()V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()LC/c;
    .locals 4

    new-instance v0, LC/c;

    invoke-direct {v0}, LC/c;-><init>()V

    iget-object v1, v0, LC/b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, LB/v;->d:Lcom/brisa/local/j;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v2, LB/v;->a:Lcom/brisa/local/j;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LB/v;->b:Lcom/brisa/local/j;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, LB/v;->c:Lcom/brisa/local/j;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final d(Lr/a;)V
    .locals 1

    iget-object v0, p0, Lb/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/brisa/local/a;->k(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x52

    if-ne v5, v6, :cond_5

    if-eqz v3, :cond_5

    sget-boolean v5, Lcom/brisa/local/a;->a:Z

    if-nez v5, :cond_2

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "onMenuKeyEvent"

    const-class v7, Landroid/view/KeyEvent;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/brisa/local/a;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-boolean v1, Lcom/brisa/local/a;->a:Z

    :cond_2
    sget-object v5, Lcom/brisa/local/a;->b:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_3

    :try_start_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    :catch_1
    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v3, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_8

    :cond_6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v3, Ls/u;->a:Ljava/lang/reflect/Field;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    if-lt v3, v2, :cond_7

    goto/16 :goto_7

    :cond_7
    sget-object v2, Ls/t;->d:Ljava/util/ArrayList;

    const v2, 0x7f090095

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/t;

    if-nez v3, :cond_8

    new-instance v3, Ls/t;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v5, v3, Ls/t;->a:Ljava/util/WeakHashMap;

    iput-object v5, v3, Ls/t;->b:Landroid/util/SparseArray;

    iput-object v5, v3, Ls/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v3, Ls/t;->a:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    :cond_9
    sget-object v2, Ls/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_6

    :cond_a
    monitor-enter v2

    :try_start_2
    iget-object v6, v3, Ls/t;->a:Ljava/util/WeakHashMap;

    if-nez v6, :cond_b

    new-instance v6, Ljava/util/WeakHashMap;

    invoke-direct {v6}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v6, v3, Ls/t;->a:Ljava/util/WeakHashMap;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_b
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_2
    if-ltz v6, :cond_e

    sget-object v7, Ls/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-nez v8, :cond_c

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_c
    iget-object v7, v3, Ls/t;->a:Ljava/util/WeakHashMap;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    :goto_3
    instance-of v8, v7, Landroid/view/View;

    if-eqz v8, :cond_d

    iget-object v8, v3, Ls/t;->a:Ljava/util/WeakHashMap;

    move-object v9, v7

    check-cast v9, Landroid/view/View;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    goto :goto_3

    :cond_d
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_e
    monitor-exit v2

    goto :goto_6

    :goto_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_f
    :goto_6
    invoke-virtual {v3, v0}, Ls/t;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-eqz v2, :cond_11

    invoke-static {v6}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, v3, Ls/t;->b:Landroid/util/SparseArray;

    if-nez v7, :cond_10

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, v3, Ls/t;->b:Landroid/util/SparseArray;

    :cond_10
    iget-object v3, v3, Ls/t;->b:Landroid/util/SparseArray;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_11
    if-eqz v2, :cond_12

    move v4, v1

    :cond_12
    :goto_7
    if-eqz v4, :cond_13

    goto :goto_8

    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    :cond_14
    invoke-virtual {p1, p0, v5, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    :goto_8
    return v1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/brisa/local/a;->k(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()LB/D;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/h;->f:LB/D;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/g;->a:LB/D;

    iput-object v0, p0, Lb/h;->f:LB/D;

    :cond_0
    iget-object v0, p0, Lb/h;->f:LB/D;

    if-nez v0, :cond_1

    new-instance v0, LB/D;

    invoke-direct {v0}, LB/D;-><init>()V

    iput-object v0, p0, Lb/h;->f:LB/D;

    :cond_1
    iget-object v0, p0, Lb/h;->f:LB/D;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f09009e

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0900a1

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0900a0

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f09009f

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final g()LB/i;
    .locals 1

    iget-object v0, p0, Lb/h;->d:LB/i;

    return-object v0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, LB/t;->b(Lb/h;)V

    return-void
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lb/h;->a:LB/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "markState"

    invoke-virtual {v0, v1}, LB/i;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, LB/i;->g()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object v0, p0, Lb/h;->g:LW0/c;

    invoke-virtual {v0}, LW0/c;->v()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lb/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/a;

    invoke-interface {v1, p1}, Lr/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lb/h;->e:LM0/l;

    invoke-virtual {v0, p1}, LM0/l;->c(Landroid/os/Bundle;)V

    iget-object v0, p0, Lb/h;->b:Lc/a;

    iput-object p0, v0, Lc/a;->b:Lb/h;

    iget-object v0, v0, Lc/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/c;

    invoke-virtual {v1}, Lb/c;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lb/h;->h(Landroid/os/Bundle;)V

    invoke-static {p0}, LB/t;->b(Lb/h;)V

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    iget-object p1, p0, Lb/h;->c:LB/A;

    iget-object p1, p1, LB/A;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz/u;

    iget-object p2, p2, Lz/u;->a:Lz/A;

    invoke-virtual {p2}, Lz/A;->j()Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lb/h;->c:LB/A;

    iget-object p1, p1, LB/A;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz/u;

    iget-object p2, p2, Lz/u;->a:Lz/A;

    invoke-virtual {p2}, Lz/A;->o()Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/h;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/a;

    .line 2
    new-instance v2, Lk/f;

    invoke-direct {v2, p1}, Lk/f;-><init>(Z)V

    invoke-interface {v1, v2}, Lr/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    .line 3
    iget-object p2, p0, Lb/h;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    .line 4
    new-instance v1, Lk/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lk/f;-><init>(IZ)V

    invoke-interface {v0, v1}, Lr/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lb/h;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/a;

    invoke-interface {v1, p1}, Lr/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lb/h;->c:LB/A;

    iget-object v0, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/u;

    iget-object v1, v1, Lz/u;->a:Lz/A;

    invoke-virtual {v1}, Lz/A;->p()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/h;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/a;

    .line 2
    new-instance v2, Lk/k;

    invoke-direct {v2, p1}, Lk/k;-><init>(Z)V

    invoke-interface {v1, v2}, Lr/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    .line 3
    iget-object p2, p0, Lb/h;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    .line 4
    new-instance v1, Lk/k;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lk/k;-><init>(IZ)V

    invoke-interface {v0, v1}, Lr/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    iget-object p1, p0, Lb/h;->c:LB/A;

    iget-object p1, p1, LB/A;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz/u;

    iget-object p2, p2, Lz/u;->a:Lz/A;

    invoke-virtual {p2}, Lz/A;->s()Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lb/h;->h:Lb/e;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2, v0}, Lb/e;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lb/h;->f:LB/D;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lb/g;->a:LB/D;

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Lb/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lb/g;->a:LB/D;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lb/h;->d:LB/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LB/i;->g()V

    :cond_0
    invoke-virtual {p0, p1}, Lb/h;->i(Landroid/os/Bundle;)V

    iget-object v0, p0, Lb/h;->e:LM0/l;

    invoke-virtual {v0, p1}, LM0/l;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    iget-object v0, p0, Lb/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lr/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reportFullyDrawn()V
    .locals 1

    :try_start_0
    invoke-static {}, Le/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reportFullyDrawn() for ComponentActivity"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public final setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/h;->f()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0}, Lb/h;->f()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lb/h;->f()V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
