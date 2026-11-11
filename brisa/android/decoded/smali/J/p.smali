.class public final synthetic LJ/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, LJ/p;->e:I

    iput-object p1, p0, LJ/p;->g:Ljava/lang/Object;

    iput p2, p0, LJ/p;->f:I

    iput-object p3, p0, LJ/p;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, LJ/p;->e:I

    iput-object p1, p0, LJ/p;->g:Ljava/lang/Object;

    iput-object p2, p0, LJ/p;->h:Ljava/lang/Object;

    iput p3, p0, LJ/p;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LJ/p;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ/p;->g:Ljava/lang/Object;

    check-cast v0, LQ/k;

    iget v1, v0, LQ/k;->a:I

    iget-object v0, v0, LQ/k;->b:LU/A;

    iget-object v2, p0, LJ/p;->h:Ljava/lang/Object;

    iget v3, p0, LJ/p;->f:I

    invoke-interface {v2, v1, v0, v3}, LQ/l;->J(ILU/A;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LJ/p;->g:Ljava/lang/Object;

    check-cast v0, LP0/a;

    iget-object v1, p0, LJ/p;->h:Ljava/lang/Object;

    iget-object v0, v0, LP0/a;->b:LP0/d;

    iget v2, p0, LJ/p;->f:I

    invoke-interface {v0, v2, v1}, LP0/d;->w(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LJ/p;->g:Ljava/lang/Object;

    check-cast v0, LN/T;

    iget-object v1, p0, LJ/p;->h:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v0, v0, LN/T;->f:LN/W;

    iget-object v0, v0, LN/W;->i:LO/d;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, LU/A;

    iget v3, p0, LJ/p;->f:I

    invoke-virtual {v0, v2, v1, v3}, LO/d;->J(ILU/A;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, LJ/p;->g:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v1, p0, LJ/p;->h:Ljava/lang/Object;

    check-cast v1, Lz1/B;

    iget v2, p0, LJ/p;->f:I

    const-string v3, "MCImplBase"

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/m2;

    const-string v4, "SessionResult must not be null"

    invoke-static {v1, v4}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1

    :goto_0
    const-string v4, "Session operation failed"

    invoke-static {v3, v4, v1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, LM0/m2;

    const/4 v4, -0x1

    invoke-direct {v1, v4}, LM0/m2;-><init>(I)V

    goto :goto_2

    :goto_1
    const-string v4, "Session operation cancelled"

    invoke-static {v3, v4, v1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, LM0/m2;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, LM0/m2;-><init>(I)V

    :goto_2
    iget-object v4, v0, LM0/l0;->E:LM0/q;

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-virtual {v1}, LM0/m2;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v4, v0, v2, v1}, LM0/q;->W(LM0/o;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    :catch_3
    const-string v0, "Error in sending"

    invoke-static {v3, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :pswitch_3
    iget-object v0, p0, LJ/p;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, LJ/p;->h:Ljava/lang/Object;

    check-cast v1, LJ/q;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ/s;

    iget-boolean v3, v2, LJ/s;->d:Z

    if-nez v3, :cond_1

    const/4 v3, -0x1

    iget v4, p0, LJ/p;->f:I

    if-eq v4, v3, :cond_2

    iget-object v3, v2, LJ/s;->b:LE/b;

    invoke-virtual {v3, v4}, LE/b;->a(I)V

    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v2, LJ/s;->c:Z

    iget-object v2, v2, LJ/s;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, LJ/q;->k(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
