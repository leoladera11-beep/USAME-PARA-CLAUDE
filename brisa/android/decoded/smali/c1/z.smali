.class public final Lc1/z;
.super Lc1/s;
.source "SourceFile"


# instance fields
.field public final b:Ls1/d;


# direct methods
.method public constructor <init>(Ls1/d;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lc1/A;-><init>(I)V

    iput-object p1, p0, Lc1/z;->b:Ls1/d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance v0, Lb1/d;

    invoke-direct {v0, p1}, Lb1/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p0, Lc1/z;->b:Ls1/d;

    invoke-virtual {p1, v0}, Ls1/d;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lc1/z;->b:Ls1/d;

    invoke-virtual {v0, p1}, Ls1/d;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public final c(Lc1/o;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lc1/z;->h(Lc1/o;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lc1/z;->b:Ls1/d;

    invoke-virtual {v0, p1}, Ls1/d;->c(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lc1/A;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc1/z;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lc1/A;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc1/z;->a(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public final bridge synthetic d(LW0/c;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lc1/o;)Z
    .locals 1

    iget-object p1, p1, Lc1/o;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final g(Lc1/o;)[La1/c;
    .locals 1

    iget-object p1, p1, Lc1/o;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final h(Lc1/o;)V
    .locals 3

    iget-object p1, p1, Lc1/o;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lc1/z;->b:Ls1/d;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p1, p1, Ls1/d;->a:La2/d;

    iget-object v1, p1, La2/d;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p1, La2/d;->a:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p1, La2/d;->a:Z

    iput-object v0, p1, La2/d;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, La2/d;->c:Ljava/lang/Object;

    check-cast v0, LM0/l;

    invoke-virtual {v0, p1}, LM0/l;->g(La2/d;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method
