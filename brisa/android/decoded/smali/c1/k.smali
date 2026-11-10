.class public final Lc1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final a:Ljava/lang/Object;

.field public volatile b:Z

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ln1/d;

.field public final e:La1/d;

.field public final f:Lh/f;

.field public final g:Lc1/d;


# direct methods
.method public constructor <init>(Lc1/e;Lc1/d;)V
    .locals 4

    sget-object v0, La1/d;->c:La1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/k;->a:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lc1/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ln1/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ln1/d;-><init>(Landroid/os/Looper;I)V

    iput-object v1, p0, Lc1/k;->d:Ln1/d;

    iput-object v0, p0, Lc1/k;->e:La1/d;

    new-instance v0, Lh/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh/f;-><init>(I)V

    iput-object v0, p0, Lc1/k;->f:Lh/f;

    iput-object p2, p0, Lc1/k;->g:Lc1/d;

    invoke-interface {p1, p0}, Lc1/e;->c(Lc1/k;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lc1/k;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lc1/e;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ld1/s;->d(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "resolving_error"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, La1/a;

    const-string v1, "failed_status"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "failed_resolution"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-direct {v0, v1, v2}, La1/a;-><init>(ILandroid/app/PendingIntent;)V

    const-string v1, "failed_client_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v1, Lc1/B;

    invoke-direct {v1, v0, p1}, Lc1/B;-><init>(La1/a;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lc1/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc1/k;->b:Z

    iget-object v0, p0, Lc1/k;->g:Lc1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lc1/d;->v:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lc1/d;->o:Lc1/k;

    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lc1/d;->o:Lc1/k;

    iget-object v0, v0, Lc1/d;->p:Lh/f;

    invoke-virtual {v0}, Lh/f;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lc1/k;->f:Lh/f;

    invoke-virtual {v0}, Lh/f;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc1/k;->g:Lc1/d;

    invoke-virtual {v0, p0}, Lc1/d;->a(Lc1/k;)V

    :cond_0
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    new-instance p1, La1/a;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, La1/a;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lc1/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/B;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget v2, v2, Lc1/B;->a:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lc1/k;->g:Lc1/d;

    invoke-virtual {v0, p1, v2}, Lc1/d;->g(La1/a;I)V

    return-void
.end method
