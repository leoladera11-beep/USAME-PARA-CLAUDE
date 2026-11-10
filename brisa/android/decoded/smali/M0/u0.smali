.class public final synthetic LM0/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/x0;
.implements LJ/k;
.implements LJ/q;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILM0/i2;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p3, 0x2

    iput p3, p0, LM0/u0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LM0/u0;->f:I

    iput-object p2, p0, LM0/u0;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILu1/C0;I)V
    .locals 0

    .line 2
    iput p3, p0, LM0/u0;->e:I

    iput p1, p0, LM0/u0;->f:I

    iput-object p2, p0, LM0/u0;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 3
    iput p3, p0, LM0/u0;->e:I

    iput-object p1, p0, LM0/u0;->g:Ljava/lang/Object;

    iput p2, p0, LM0/u0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 13

    const-string v1, "no error message provided"

    iget-object v0, p0, LM0/u0;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LM0/N0;

    iget v3, p0, LM0/u0;->f:I

    check-cast p1, Lz1/B;

    const-string v4, "MediaSessionStub"

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/v;

    const-string v0, "LibraryResult must not be null"

    invoke-static {p1, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :goto_1
    const-string v0, "Library operation failed"

    invoke-static {v4, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, LM0/v;->g:Ljava/lang/String;

    new-instance v10, LM0/k2;

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v0, -0x1

    invoke-direct {v10, v1, v0, p1}, LM0/k2;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    new-instance v5, LM0/v;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v11, 0x0

    const/4 v12, 0x4

    iget v6, v10, LM0/k2;->a:I

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v12}, LM0/v;-><init>(IJLM0/z0;LM0/k2;Ljava/lang/Object;I)V

    :goto_2
    move-object p1, v5

    goto :goto_4

    :goto_3
    const-string v0, "Library operation cancelled"

    invoke-static {v4, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, LM0/v;->g:Ljava/lang/String;

    new-instance v10, LM0/k2;

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v10, v1, v0, p1}, LM0/k2;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    new-instance v5, LM0/v;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v11, 0x0

    const/4 v12, 0x4

    iget v6, v10, LM0/k2;->a:I

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v12}, LM0/v;-><init>(IJLM0/z0;LM0/k2;Ljava/lang/Object;I)V

    goto :goto_2

    :goto_4
    :try_start_1
    iget-object v0, v2, LM0/N0;->e:LM0/M0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v3, p1}, LM0/M0;->f(ILM0/v;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send result to browser "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method public b(LM0/l0;)V
    .locals 13

    iget v0, p0, LM0/u0;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/u0;->g:Ljava/lang/Object;

    check-cast v0, LM0/i2;

    iget-object v1, p1, LM0/l0;->a:LM0/z;

    invoke-virtual {p1}, LM0/l0;->p()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v1, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, LF1/i;->o(Z)V

    iget-object v1, v1, LM0/z;->d:LM0/x;

    invoke-interface {v1, v0}, LM0/x;->H(LM0/i2;)Lz1/x;

    move-result-object v0

    new-instance v1, LJ/p;

    const/4 v2, 0x1

    iget v3, p0, LM0/u0;->f:I

    invoke-direct {v1, p1, v0, v3, v2}, LJ/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    sget-object p1, Lz1/s;->e:Lz1/s;

    invoke-virtual {v0, v1, p1}, Lz1/x;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, LM0/u0;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-virtual {p1}, LM0/l0;->p()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p1, LM0/l0;->u:Lu1/C0;

    iget-object v7, p1, LM0/l0;->v:Lu1/C0;

    invoke-static {v2}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v1

    iput-object v1, p1, LM0/l0;->s:Lu1/P;

    iget-object v1, p1, LM0/l0;->t:Lu1/P;

    iget-object v3, p1, LM0/l0;->w:LM0/j2;

    iget-object v4, p1, LM0/l0;->z:LG/c0;

    iget-object v5, p1, LM0/l0;->J:Landroid/os/Bundle;

    invoke-static {v1, v2, v3, v4, v5}, LM0/l0;->w1(Ljava/util/List;Ljava/util/List;LM0/j2;LG/c0;Landroid/os/Bundle;)Lu1/C0;

    move-result-object v1

    iput-object v1, p1, LM0/l0;->u:Lu1/C0;

    iget-object v3, p1, LM0/l0;->J:Landroid/os/Bundle;

    iget-object v4, p1, LM0/l0;->w:LM0/j2;

    iget-object v5, p1, LM0/l0;->z:LG/c0;

    invoke-virtual {p1}, LM0/l0;->i1()I

    move-result v6

    invoke-static/range {v1 .. v6}, LM0/l0;->v1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;LM0/j2;LG/c0;I)Lu1/C0;

    move-result-object v1

    iput-object v1, p1, LM0/l0;->v:Lu1/C0;

    iget-object v1, p1, LM0/l0;->u:Lu1/C0;

    invoke-virtual {v1, v0}, Lu1/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, LM0/l0;->v:Lu1/C0;

    invoke-virtual {v1, v7}, Lu1/P;->equals(Ljava/lang/Object;)Z

    iget-object v1, p1, LM0/l0;->a:LM0/z;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v1, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, LF1/i;->o(Z)V

    iget-object v1, v1, LM0/z;->d:LM0/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LM0/m2;

    const/4 v3, -0x6

    invoke-direct {v2, v3}, LM0/m2;-><init>(I)V

    invoke-static {v2}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object v2

    if-nez v0, :cond_4

    invoke-interface {v1}, LM0/x;->s()V

    :cond_4
    new-instance v0, LJ/p;

    const/4 v1, 0x1

    iget v3, p0, LM0/u0;->f:I

    invoke-direct {v0, p1, v2, v3, v1}, LJ/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    sget-object p1, Lz1/s;->e:Lz1/s;

    invoke-virtual {v2, v0, p1}, Lz1/x;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_3
    return-void

    :pswitch_1
    iget-object v0, p0, LM0/u0;->g:Ljava/lang/Object;

    check-cast v0, Lu1/P;

    invoke-virtual {p1}, LM0/l0;->p()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, p1, LM0/l0;->u:Lu1/C0;

    iget-object v2, p1, LM0/l0;->v:Lu1/C0;

    invoke-static {v0}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v3

    iput-object v3, p1, LM0/l0;->t:Lu1/P;

    iget-object v3, p1, LM0/l0;->s:Lu1/P;

    iget-object v4, p1, LM0/l0;->w:LM0/j2;

    iget-object v5, p1, LM0/l0;->z:LG/c0;

    iget-object v6, p1, LM0/l0;->J:Landroid/os/Bundle;

    invoke-static {v0, v3, v4, v5, v6}, LM0/l0;->w1(Ljava/util/List;Ljava/util/List;LM0/j2;LG/c0;Landroid/os/Bundle;)Lu1/C0;

    move-result-object v7

    iput-object v7, p1, LM0/l0;->u:Lu1/C0;

    iget-object v8, p1, LM0/l0;->s:Lu1/P;

    iget-object v9, p1, LM0/l0;->J:Landroid/os/Bundle;

    iget-object v10, p1, LM0/l0;->w:LM0/j2;

    iget-object v11, p1, LM0/l0;->z:LG/c0;

    invoke-virtual {p1}, LM0/l0;->i1()I

    move-result v12

    invoke-static/range {v7 .. v12}, LM0/l0;->v1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;LM0/j2;LG/c0;I)Lu1/C0;

    move-result-object v0

    iput-object v0, p1, LM0/l0;->v:Lu1/C0;

    iget-object v0, p1, LM0/l0;->u:Lu1/C0;

    invoke-virtual {v0, v1}, Lu1/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, LM0/l0;->v:Lu1/C0;

    invoke-virtual {v1, v2}, Lu1/P;->equals(Ljava/lang/Object;)Z

    iget-object v1, p1, LM0/l0;->a:LM0/z;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v1, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, LF1/i;->o(Z)V

    iget-object v1, v1, LM0/z;->d:LM0/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LM0/m2;

    const/4 v3, -0x6

    invoke-direct {v2, v3}, LM0/m2;-><init>(I)V

    invoke-static {v2}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object v2

    if-nez v0, :cond_7

    invoke-interface {v1}, LM0/x;->s()V

    :cond_7
    new-instance v0, LJ/p;

    const/4 v1, 0x1

    iget v3, p0, LM0/u0;->f:I

    invoke-direct {v0, p1, v2, v3, v1}, LJ/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    sget-object p1, Lz1/s;->e:Lz1/s;

    invoke-virtual {v2, v0, p1}, Lz1/x;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LM0/u0;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/u0;->g:Ljava/lang/Object;

    check-cast v0, LG/P;

    iget v1, p0, LM0/u0;->f:I

    check-cast p1, LG/e0;

    invoke-interface {p1, v1, v0}, LG/e0;->g(ILG/P;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/u0;->g:Ljava/lang/Object;

    check-cast v0, LN/X;

    check-cast p1, LG/e0;

    iget-object v0, v0, LN/X;->a:LG/q0;

    iget v1, p0, LM0/u0;->f:I

    invoke-interface {p1, v0, v1}, LG/e0;->j(LG/q0;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
