.class public final Lc1/y;
.super Lc1/s;
.source "SourceFile"


# instance fields
.field public final b:LM0/k;

.field public final c:Ls1/d;

.field public final d:Lcom/brisa/local/j;


# direct methods
.method public constructor <init>(ILM0/k;Ls1/d;Lcom/brisa/local/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lc1/A;-><init>(I)V

    iput-object p3, p0, Lc1/y;->c:Ls1/d;

    iput-object p2, p0, Lc1/y;->b:LM0/k;

    iput-object p4, p0, Lc1/y;->d:Lcom/brisa/local/j;

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iget-boolean p1, p2, LM0/k;->a:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lc1/y;->d:Lcom/brisa/local/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->g:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    new-instance v0, Lb1/l;

    invoke-direct {v0, p1}, Lb1/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lb1/d;

    invoke-direct {v0, p1}, Lb1/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    iget-object p1, p0, Lc1/y;->c:Ls1/d;

    invoke-virtual {p1, v0}, Ls1/d;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lc1/y;->c:Ls1/d;

    invoke-virtual {v0, p1}, Ls1/d;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public final c(Lc1/o;)V
    .locals 2

    iget-object v0, p0, Lc1/y;->c:Ls1/d;

    :try_start_0
    iget-object v1, p0, Lc1/y;->b:LM0/k;

    iget-object p1, p1, Lc1/o;->b:Lb1/b;

    iget-object v1, v1, LM0/k;->d:Ljava/lang/Object;

    check-cast v1, LM0/k;

    iget-object v1, v1, LM0/k;->c:Ljava/lang/Object;

    check-cast v1, Lc1/h;

    invoke-interface {v1, p1, v0}, Lc1/h;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-virtual {v0, p1}, Ls1/d;->c(Ljava/lang/Exception;)V

    return-void

    :goto_1
    invoke-static {p1}, Lc1/A;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc1/y;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :goto_2
    throw p1
.end method

.method public final d(LW0/c;Z)V
    .locals 4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p1, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lc1/y;->c:Ls1/d;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v1, Ls1/d;->a:La2/d;

    new-instance v0, LW0/c;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, LW0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ls1/e;->a:Lc1/l;

    new-instance v1, Ls1/g;

    invoke-direct {v1, p1, v0}, Ls1/g;-><init>(Ljava/util/concurrent/Executor;Ls1/a;)V

    iget-object p1, p2, La2/d;->c:Ljava/lang/Object;

    check-cast p1, LM0/l;

    invoke-virtual {p1, v1}, LM0/l;->f(Ls1/h;)V

    invoke-virtual {p2}, La2/d;->j()V

    return-void
.end method

.method public final f(Lc1/o;)Z
    .locals 0

    iget-object p1, p0, Lc1/y;->b:LM0/k;

    iget-boolean p1, p1, LM0/k;->a:Z

    return p1
.end method

.method public final g(Lc1/o;)[La1/c;
    .locals 0

    iget-object p1, p0, Lc1/y;->b:LM0/k;

    iget-object p1, p1, LM0/k;->c:Ljava/lang/Object;

    check-cast p1, [La1/c;

    return-object p1
.end method
