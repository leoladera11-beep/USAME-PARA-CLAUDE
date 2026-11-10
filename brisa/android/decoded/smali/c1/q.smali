.class public final Lc1/q;
.super Lb1/k;
.source "SourceFile"


# instance fields
.field public final b:Lb1/h;


# direct methods
.method public constructor <init>(Lb1/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/q;->b:Lb1/h;

    return-void
.end method


# virtual methods
.method public final a(LZ0/g;)LZ0/g;
    .locals 5

    iget-boolean v0, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->m:Lb2/c;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->l:Z

    iget-object v0, p0, Lc1/q;->b:Lb1/h;

    iget-object v1, v0, Lb1/h;->j:Lc1/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lc1/x;

    invoke-direct {v2, p1}, Lc1/x;-><init>(LZ0/g;)V

    iget-object v3, v1, Lc1/d;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v4, Lc1/v;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v4, v2, v3, v0}, Lc1/v;-><init>(Lc1/A;ILb1/h;)V

    iget-object v0, v1, Lc1/d;->r:Ln1/d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object p1
.end method
