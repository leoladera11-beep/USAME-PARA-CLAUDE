.class public final Li/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/B;


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Li/k;


# direct methods
.method public constructor <init>(Li/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li/k;

    invoke-direct {v0, p0}, Li/k;-><init>(Li/l;)V

    iput-object v0, p0, Li/l;->f:Li/k;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Li/l;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Li/l;->f:Li/k;

    invoke-virtual {v0, p1, p2}, Li/i;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 2

    iget-object v0, p0, Li/l;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/j;

    iget-object v1, p0, Li/l;->f:Li/k;

    invoke-virtual {v1, p1}, Li/i;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Li/j;->a:Ljava/io/Serializable;

    iput-object v1, v0, Li/j;->b:Li/l;

    iget-object v0, v0, Li/j;->c:Li/n;

    invoke-virtual {v0, v1}, Li/n;->j(Ljava/lang/Object;)Z

    :cond_0
    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Li/l;->f:Li/k;

    invoke-virtual {v0}, Li/i;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Li/l;->f:Li/k;

    invoke-virtual {v0, p1, p2, p3}, Li/i;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Li/l;->f:Li/k;

    iget-object v0, v0, Li/i;->e:Ljava/lang/Object;

    instance-of v0, v0, Li/a;

    return v0
.end method

.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Li/l;->f:Li/k;

    invoke-virtual {v0}, Li/i;->isDone()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li/l;->f:Li/k;

    invoke-virtual {v0}, Li/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
