.class public final Lc1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/brisa/local/u;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LW0/c;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc1/j;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/j;->c:Ljava/lang/Object;

    iput-object p2, p0, Lc1/j;->b:Lcom/brisa/local/u;

    return-void
.end method

.method public constructor <init>(Lcom/brisa/local/u;Ls1/d;Ld1/m;)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lc1/j;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/j;->b:Lcom/brisa/local/u;

    iput-object p2, p0, Lc1/j;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 5

    iget v0, p0, Lc1/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Lcom/google/android/gms/common/api/Status;->e:I

    if-gtz v0, :cond_2

    iget-object p1, p0, Lc1/j;->b:Lcom/brisa/local/u;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iget-boolean v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Result has already been consumed."

    invoke-static {v3, v1}, Ld1/s;->f(Ljava/lang/String;Z)V

    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->l:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->E(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->j:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->E(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->F()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v1, v0}, Ld1/s;->f(Ljava/lang/String;Z)V

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j:Z

    xor-int/2addr v1, v2

    const-string v3, "Result has already been consumed."

    invoke-static {v3, v1}, Ld1/s;->f(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->F()Z

    move-result v1

    const-string v3, "Result is not ready."

    invoke-static {v3, v1}, Ld1/s;->f(Ljava/lang/String;Z)V

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h:Lb1/m;

    const/4 v3, 0x0

    iput-object v3, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h:Lb1/m;

    iput-boolean v2, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Ld1/s;->d(Ljava/lang/Object;)V

    iget-object p1, p0, Lc1/j;->c:Ljava/lang/Object;

    check-cast p1, Ls1/d;

    invoke-virtual {p1, v3}, Ls1/d;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    iget-object v0, p0, Lc1/j;->c:Ljava/lang/Object;

    check-cast v0, Ls1/d;

    iget-object v1, p1, Lcom/google/android/gms/common/api/Status;->g:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    new-instance v1, Lb1/l;

    invoke-direct {v1, p1}, Lb1/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lb1/d;

    invoke-direct {v1, p1}, Lb1/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    invoke-virtual {v0, v1}, Ls1/d;->a(Lb1/d;)V

    :goto_2
    return-void

    :pswitch_0
    iget-object p1, p0, Lc1/j;->c:Ljava/lang/Object;

    check-cast p1, LW0/c;

    iget-object p1, p1, LW0/c;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lc1/j;->b:Lcom/brisa/local/u;

    check-cast v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
