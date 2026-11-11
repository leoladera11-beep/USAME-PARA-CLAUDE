.class public final LM0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u;
.implements LS/j;


# instance fields
.field public e:Z

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LM0/l;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LS/c;LS/c;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, LM0/l;->f:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, LM0/l;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, LM0/l;->e:Z

    return-void
.end method

.method public constructor <init>(LS0/e;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/l;->f:Ljava/lang/Object;

    .line 3
    new-instance p1, LM0/m1;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LM0/m1;-><init>(I)V

    iput-object p1, p0, LM0/l;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LU/a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iput-object p1, p0, LM0/l;->f:Ljava/lang/Object;

    .line 7
    new-instance p1, LG/D;

    invoke-direct {p1}, LG/D;-><init>()V

    iput-object p1, p0, LM0/l;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk/i;LM0/E;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, LM0/l;->f:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, LM0/l;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(LM0/r0;)LM0/h2;
    .locals 7

    const-string v0, "createCodec:"

    iget-object v1, p1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LS/o;

    iget-object v1, v1, LS/o;->a:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-boolean v1, p0, LM0/l;->e:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x24

    if-lt v1, v3, :cond_0

    new-instance v1, LZ0/i;

    invoke-direct {v1, v0}, LZ0/i;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance v1, LS/e;

    iget-object v3, p0, LM0/l;->g:Ljava/lang/Object;

    check-cast v3, LS/c;

    invoke-virtual {v3}, LS/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/HandlerThread;

    invoke-direct {v1, v0, v3}, LS/e;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    const/4 v3, 0x0

    :goto_0
    new-instance v4, LM0/h2;

    iget-object v5, p0, LM0/l;->f:Ljava/lang/Object;

    check-cast v5, LS/c;

    invoke-virtual {v5}, LS/c;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/HandlerThread;

    iget-object v6, p1, LM0/r0;->g:Ljava/lang/Object;

    check-cast v6, LB/A;

    invoke-direct {v4, v0, v5, v1, v6}, LM0/h2;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;LS/l;LB/A;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v1, p1, LM0/r0;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    if-nez v1, :cond_1

    iget-object v2, p1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v2, LS/o;

    iget-boolean v2, v2, LS/o;->h:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x23

    if-lt v2, v5, :cond_1

    or-int/lit8 v3, v3, 0x8

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v4

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v2, p1, LM0/r0;->d:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaFormat;

    iget-object p1, p1, LM0/r0;->f:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCrypto;

    invoke-static {v4, v2, v1, p1, v3}, LM0/h2;->b(LM0/h2;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v4

    :catch_2
    move-exception p1

    move-object v0, v2

    :goto_2
    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, LM0/h2;->a()V

    :cond_3
    :goto_3
    throw p1
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, LM0/l;->f:Ljava/lang/Object;

    invoke-interface {v0}, LB/g;->g()LB/i;

    move-result-object v1

    iget-object v2, v1, LB/i;->c:LB/e;

    sget-object v3, LB/e;->f:LB/e;

    if-ne v2, v3, :cond_1

    new-instance v2, LS0/a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, LS0/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, LB/i;->a(LB/f;)V

    iget-object v0, p0, LM0/l;->g:Ljava/lang/Object;

    check-cast v0, LM0/m1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v0, LM0/m1;->e:Z

    if-nez v2, :cond_0

    new-instance v2, LS0/b;

    invoke-direct {v2, v0}, LS0/b;-><init>(LM0/m1;)V

    invoke-virtual {v1, v2}, LB/i;->a(LB/f;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, LM0/m1;->e:Z

    iput-boolean v1, p0, LM0/l;->e:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SavedStateRegistry was already attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, LM0/l;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LM0/l;->b()V

    :cond_0
    iget-object v0, p0, LM0/l;->f:Ljava/lang/Object;

    invoke-interface {v0}, LB/g;->g()LB/i;

    move-result-object v0

    iget-object v1, v0, LB/i;->c:LB/e;

    sget-object v2, LB/e;->h:LB/e;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_4

    iget-object v0, p0, LM0/l;->g:Ljava/lang/Object;

    check-cast v0, LM0/m1;

    iget-boolean v1, v0, LM0/m1;->e:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, LM0/m1;->f:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, LM0/m1;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, LM0/m1;->f:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already restored."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call performAttach() before calling performRestore(Bundle)."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "performRestore cannot be called when owner is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, LB/i;->c:LB/e;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, LM0/l;->f:Ljava/lang/Object;

    check-cast v0, Lk/i;

    iget-boolean v1, p0, LM0/l;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lk/i;->d(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, LM0/l;->g:Ljava/lang/Object;

    check-cast p1, LM0/E;

    new-instance v1, LZ0/i;

    invoke-virtual {v0}, Lk/i;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {v1, v0}, LZ0/i;-><init>(Landroid/app/Notification;)V

    iget-object v0, p1, LM0/E;->f:Ljava/lang/Object;

    check-cast v0, LM0/I0;

    iget v2, p1, LM0/E;->g:I

    iget-object p1, p1, LM0/E;->h:Ljava/lang/Object;

    check-cast p1, LM0/P0;

    iget-object v3, v0, LM0/I0;->i:LM0/A;

    new-instance v4, LM0/F0;

    invoke-direct {v4, v0, v2, p1, v1}, LM0/F0;-><init>(LM0/I0;ILM0/P0;LZ0/i;)V

    invoke-virtual {v3, v4}, LM0/A;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "outBundle"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LM0/l;->g:Ljava/lang/Object;

    check-cast v0, LM0/m1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, LM0/m1;->h:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, v0, LM0/m1;->g:Ljava/lang/Object;

    check-cast v0, Lg/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/d;

    invoke-direct {v2, v0}, Lg/d;-><init>(Lg/f;)V

    iget-object v0, v0, Lg/f;->g:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v2}, Lg/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lg/d;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS0/d;

    invoke-interface {v0}, LS0/d;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public f(Ls1/h;)V
    .locals 2

    iget-object v0, p0, LM0/l;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LM0/l;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, LM0/l;->g:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LM0/l;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(La2/d;)V
    .locals 2

    iget-object v0, p0, LM0/l;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LM0/l;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, LM0/l;->e:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LM0/l;->e:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v1, p0, LM0/l;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, LM0/l;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/h;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, LM0/l;->e:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0, p1}, Ls1/h;->a(La2/d;)V

    goto :goto_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, LM0/l;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load bitmap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationProvider"

    invoke-static {v0, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic l(LM0/r0;)LS/k;
    .locals 0

    invoke-virtual {p0, p1}, LM0/l;->a(LM0/r0;)LM0/h2;

    move-result-object p1

    return-object p1
.end method
