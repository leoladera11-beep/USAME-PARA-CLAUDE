.class public final LB/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public b:Lg/a;

.field public c:LB/e;

.field public final d:Ljava/lang/ref/WeakReference;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/ArrayList;

.field public final i:LT1/a;


# direct methods
.method public constructor <init>(LB/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LB/i;->a:Z

    new-instance v0, Lg/a;

    invoke-direct {v0}, Lg/a;-><init>()V

    iput-object v0, p0, LB/i;->b:Lg/a;

    sget-object v0, LB/e;->f:LB/e;

    iput-object v0, p0, LB/i;->c:LB/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LB/i;->h:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, LB/i;->d:Ljava/lang/ref/WeakReference;

    new-instance p1, LT1/a;

    invoke-direct {p1, v0}, LT1/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LB/i;->i:LT1/a;

    return-void
.end method


# virtual methods
.method public final a(LB/f;)V
    .locals 8

    const-string v0, "addObserver"

    invoke-virtual {p0, v0}, LB/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, LB/i;->c:LB/e;

    sget-object v1, LB/e;->e:LB/e;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, LB/e;->f:LB/e;

    :goto_0
    new-instance v0, LB/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v2, LB/j;->a:I

    iput-object p1, v0, LB/h;->b:LB/f;

    iput-object v1, v0, LB/h;->a:LB/e;

    iget-object v1, p0, LB/i;->b:Lg/a;

    invoke-virtual {v1, p1}, Lg/a;->a(Ljava/lang/Object;)Lg/c;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v1, v2, Lg/c;->f:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v2, v1, Lg/a;->i:Ljava/util/HashMap;

    new-instance v5, Lg/c;

    invoke-direct {v5, p1, v0}, Lg/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v6, v1, Lg/f;->h:I

    add-int/2addr v6, v4

    iput v6, v1, Lg/f;->h:I

    iget-object v6, v1, Lg/f;->f:Lg/c;

    if-nez v6, :cond_2

    iput-object v5, v1, Lg/f;->e:Lg/c;

    iput-object v5, v1, Lg/f;->f:Lg/c;

    goto :goto_1

    :cond_2
    iput-object v5, v6, Lg/c;->g:Lg/c;

    iput-object v6, v5, Lg/c;->h:Lg/c;

    iput-object v5, v1, Lg/f;->f:Lg/c;

    :goto_1
    invoke-virtual {v2, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    :goto_2
    check-cast v1, LB/h;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, LB/i;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB/g;

    if-nez v1, :cond_4

    :goto_3
    return-void

    :cond_4
    iget v2, p0, LB/i;->e:I

    if-nez v2, :cond_6

    iget-boolean v2, p0, LB/i;->f:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v4

    :goto_5
    invoke-virtual {p0, p1}, LB/i;->b(LB/f;)LB/e;

    move-result-object v5

    iget v6, p0, LB/i;->e:I

    add-int/2addr v6, v4

    iput v6, p0, LB/i;->e:I

    :goto_6
    iget-object v6, v0, LB/h;->a:LB/e;

    invoke-virtual {v6, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-gez v5, :cond_b

    iget-object v5, p0, LB/i;->b:Lg/a;

    iget-object v5, v5, Lg/a;->i:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v0, LB/h;->a:LB/e;

    iget-object v6, p0, LB/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, LB/d;->Companion:LB/b;

    iget-object v7, v0, LB/h;->a:LB/e;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "state"

    invoke-static {v7, v5}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eq v5, v4, :cond_9

    const/4 v7, 0x2

    if-eq v5, v7, :cond_8

    const/4 v7, 0x3

    if-eq v5, v7, :cond_7

    move-object v5, v3

    goto :goto_7

    :cond_7
    sget-object v5, LB/d;->ON_RESUME:LB/d;

    goto :goto_7

    :cond_8
    sget-object v5, LB/d;->ON_START:LB/d;

    goto :goto_7

    :cond_9
    sget-object v5, LB/d;->ON_CREATE:LB/d;

    :goto_7
    if-eqz v5, :cond_a

    invoke-virtual {v0, v1, v5}, LB/h;->a(LB/g;LB/d;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LB/i;->b(LB/f;)LB/e;

    move-result-object v5

    goto :goto_6

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no event up from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, LB/h;->a:LB/e;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-nez v2, :cond_c

    invoke-virtual {p0}, LB/i;->h()V

    :cond_c
    iget p1, p0, LB/i;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LB/i;->e:I

    return-void
.end method

.method public final b(LB/f;)LB/e;
    .locals 3

    iget-object v0, p0, LB/i;->b:Lg/a;

    iget-object v0, v0, Lg/a;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/c;

    iget-object p1, p1, Lg/c;->h:Lg/c;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lg/c;->f:Ljava/lang/Object;

    check-cast p1, LB/h;

    iget-object p1, p1, LB/h;->a:LB/e;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, LB/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LB/e;

    :cond_2
    iget-object v0, p0, LB/i;->c:LB/e;

    const-string v1, "state1"

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_4

    return-object v2

    :cond_4
    return-object p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, LB/i;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lf/a;->C()Lf/a;

    move-result-object v0

    iget-object v0, v0, Lf/a;->d:Lf/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "Method "

    const-string v1, " must be called on the main thread"

    invoke-static {v0, p1, v1}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final d(LB/d;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, LB/i;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, LB/d;->a()LB/e;

    move-result-object p1

    invoke-virtual {p0, p1}, LB/i;->e(LB/e;)V

    return-void
.end method

.method public final e(LB/e;)V
    .locals 3

    iget-object v0, p0, LB/i;->c:LB/e;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, LB/e;->f:LB/e;

    sget-object v2, LB/e;->e:LB/e;

    if-ne v0, v1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State must be at least CREATED to move to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LB/i;->c:LB/e;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in component "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LB/i;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iput-object p1, p0, LB/i;->c:LB/e;

    iget-boolean p1, p0, LB/i;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget p1, p0, LB/i;->e:I

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v0, p0, LB/i;->f:Z

    invoke-virtual {p0}, LB/i;->h()V

    const/4 p1, 0x0

    iput-boolean p1, p0, LB/i;->f:Z

    iget-object p1, p0, LB/i;->c:LB/e;

    if-ne p1, v2, :cond_4

    new-instance p1, Lg/a;

    invoke-direct {p1}, Lg/a;-><init>()V

    iput-object p1, p0, LB/i;->b:Lg/a;

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    iput-boolean v0, p0, LB/i;->g:Z

    return-void
.end method

.method public final f(LB/f;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, LB/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, LB/i;->b:Lg/a;

    invoke-virtual {v0, p1}, Lg/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g()V
    .locals 1

    const-string v0, "setCurrentState"

    invoke-virtual {p0, v0}, LB/i;->c(Ljava/lang/String;)V

    sget-object v0, LB/e;->g:LB/e;

    invoke-virtual {p0, v0}, LB/i;->e(LB/e;)V

    return-void
.end method

.method public final h()V
    .locals 11

    iget-object v0, p0, LB/i;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/g;

    if-eqz v0, :cond_12

    :cond_0
    iget-object v1, p0, LB/i;->b:Lg/a;

    iget v2, v1, Lg/f;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lg/f;->e:Lg/c;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Lg/c;->f:Ljava/lang/Object;

    check-cast v1, LB/h;

    iget-object v1, v1, LB/h;->a:LB/e;

    iget-object v2, p0, LB/i;->b:Lg/a;

    iget-object v2, v2, Lg/f;->f:Lg/c;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v2, v2, Lg/c;->f:Ljava/lang/Object;

    check-cast v2, LB/h;

    iget-object v2, v2, LB/h;->a:LB/e;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, LB/i;->c:LB/e;

    if-ne v1, v2, :cond_6

    :goto_0
    iput-boolean v5, p0, LB/i;->g:Z

    iget-object v0, p0, LB/i;->i:LT1/a;

    iget-object v1, p0, LB/i;->c:LB/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_2

    sget-object v1, LU1/a;->a:Lcom/brisa/local/j;

    :cond_2
    monitor-enter v0

    :try_start_0
    sget-object v2, LT1/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, v0, LT1/a;->b:I

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_5

    add-int/2addr v1, v3

    iput v1, v0, LT1/a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    :goto_1
    monitor-enter v0

    :try_start_2
    iget v2, v0, LT1/a;->b:I

    if-ne v2, v1, :cond_4

    add-int/2addr v1, v3

    iput v1, v0, LT1/a;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_4
    monitor-exit v0

    move v1, v2

    goto :goto_1

    :goto_2
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_5
    add-int/2addr v1, v4

    :try_start_3
    iput v1, v0, LT1/a;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw v1

    :cond_6
    iput-boolean v5, p0, LB/i;->g:Z

    iget-object v1, p0, LB/i;->c:LB/e;

    iget-object v2, p0, LB/i;->b:Lg/a;

    iget-object v2, v2, Lg/f;->e:Lg/c;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v2, v2, Lg/c;->f:Ljava/lang/Object;

    check-cast v2, LB/h;

    iget-object v2, v2, LB/h;->a:LB/e;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v5, 0x3

    if-gez v1, :cond_c

    iget-object v1, p0, LB/i;->b:Lg/a;

    new-instance v6, Lg/b;

    iget-object v7, v1, Lg/f;->f:Lg/c;

    iget-object v8, v1, Lg/f;->e:Lg/c;

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v9}, Lg/b;-><init>(Lg/c;Lg/c;I)V

    iget-object v1, v1, Lg/f;->g:Ljava/util/WeakHashMap;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v6}, Lg/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, LB/i;->g:Z

    if-nez v1, :cond_c

    invoke-virtual {v6}, Lg/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v7, "next()"

    invoke-static {v1, v7}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LB/f;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB/h;

    :goto_4
    iget-object v8, v1, LB/h;->a:LB/e;

    iget-object v9, p0, LB/i;->c:LB/e;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-lez v8, :cond_7

    iget-boolean v8, p0, LB/i;->g:Z

    if-nez v8, :cond_7

    iget-object v8, p0, LB/i;->b:Lg/a;

    iget-object v8, v8, Lg/a;->i:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, LB/d;->Companion:LB/b;

    iget-object v9, v1, LB/h;->a:LB/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "state"

    invoke-static {v9, v8}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eq v8, v4, :cond_a

    if-eq v8, v5, :cond_9

    const/4 v9, 0x4

    if-eq v8, v9, :cond_8

    move-object v8, v2

    goto :goto_5

    :cond_8
    sget-object v8, LB/d;->ON_PAUSE:LB/d;

    goto :goto_5

    :cond_9
    sget-object v8, LB/d;->ON_STOP:LB/d;

    goto :goto_5

    :cond_a
    sget-object v8, LB/d;->ON_DESTROY:LB/d;

    :goto_5
    if-eqz v8, :cond_b

    invoke-virtual {v8}, LB/d;->a()LB/e;

    move-result-object v9

    iget-object v10, p0, LB/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0, v8}, LB/h;->a(LB/g;LB/d;)V

    iget-object v8, p0, LB/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no event down from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, LB/h;->a:LB/e;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v1, p0, LB/i;->b:Lg/a;

    iget-object v1, v1, Lg/f;->f:Lg/c;

    iget-boolean v6, p0, LB/i;->g:Z

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    iget-object v6, p0, LB/i;->c:LB/e;

    iget-object v1, v1, Lg/c;->f:Ljava/lang/Object;

    check-cast v1, LB/h;

    iget-object v1, v1, LB/h;->a:LB/e;

    invoke-virtual {v6, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, LB/i;->b:Lg/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lg/d;

    invoke-direct {v6, v1}, Lg/d;-><init>(Lg/f;)V

    iget-object v1, v1, Lg/f;->g:Ljava/util/WeakHashMap;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {v6}, Lg/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LB/i;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {v6}, Lg/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LB/f;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB/h;

    :goto_6
    iget-object v8, v1, LB/h;->a:LB/e;

    iget-object v9, p0, LB/i;->c:LB/e;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-gez v8, :cond_d

    iget-boolean v8, p0, LB/i;->g:Z

    if-nez v8, :cond_d

    iget-object v8, p0, LB/i;->b:Lg/a;

    iget-object v8, v8, Lg/a;->i:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v1, LB/h;->a:LB/e;

    iget-object v9, p0, LB/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, LB/d;->Companion:LB/b;

    iget-object v9, v1, LB/h;->a:LB/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "state"

    invoke-static {v9, v8}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eq v8, v3, :cond_10

    if-eq v8, v4, :cond_f

    if-eq v8, v5, :cond_e

    move-object v8, v2

    goto :goto_7

    :cond_e
    sget-object v8, LB/d;->ON_RESUME:LB/d;

    goto :goto_7

    :cond_f
    sget-object v8, LB/d;->ON_START:LB/d;

    goto :goto_7

    :cond_10
    sget-object v8, LB/d;->ON_CREATE:LB/d;

    :goto_7
    if-eqz v8, :cond_11

    invoke-virtual {v1, v0, v8}, LB/h;->a(LB/g;LB/d;)V

    iget-object v8, p0, LB/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no event up from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, LB/h;->a:LB/e;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
