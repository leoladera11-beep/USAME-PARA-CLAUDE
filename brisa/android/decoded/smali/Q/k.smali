.class public final LQ/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:LU/A;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILU/A;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ/k;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, LQ/k;->a:I

    iput-object p3, p0, LQ/k;->b:LU/A;

    return-void
.end method


# virtual methods
.method public final a(Lcom/brisa/local/j;)V
    .locals 5

    iget-object v0, p0, LQ/k;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/j;

    iget-object v2, v1, LQ/j;->b:Ljava/lang/Object;

    iget-object v1, v1, LQ/j;->a:Landroid/os/Handler;

    new-instance v3, LJ/U;

    const/16 v4, 0xe

    invoke-direct {v3, v4, p0, v2, p1}, LJ/U;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v3}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, LQ/k;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/j;

    iget-object v2, v1, LQ/j;->b:Ljava/lang/Object;

    iget-object v1, v1, LQ/j;->a:Landroid/os/Handler;

    new-instance v3, LQ/i;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v2, v4}, LQ/i;-><init>(LQ/k;LQ/l;I)V

    invoke-static {v1, v3}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 5

    iget-object v0, p0, LQ/k;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/j;

    iget-object v2, v1, LQ/j;->b:Ljava/lang/Object;

    iget-object v1, v1, LQ/j;->a:Landroid/os/Handler;

    new-instance v3, LJ/p;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v2, p1, v4}, LJ/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-static {v1, v3}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, LQ/k;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/j;

    iget-object v2, v1, LQ/j;->b:Ljava/lang/Object;

    iget-object v1, v1, LQ/j;->a:Landroid/os/Handler;

    new-instance v3, LJ/U;

    const/16 v4, 0xd

    invoke-direct {v3, v4, p0, v2, p1}, LJ/U;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v3}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, LQ/k;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/j;

    iget-object v2, v1, LQ/j;->b:Ljava/lang/Object;

    iget-object v1, v1, LQ/j;->a:Landroid/os/Handler;

    new-instance v3, LQ/i;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, LQ/i;-><init>(LQ/k;LQ/l;I)V

    invoke-static {v1, v3}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
