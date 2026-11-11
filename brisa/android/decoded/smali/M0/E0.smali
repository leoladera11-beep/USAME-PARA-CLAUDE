.class public final synthetic LM0/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LM0/I0;LM0/P0;LZ0/i;ZLi/j;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LM0/E0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/E0;->g:Ljava/lang/Object;

    iput-object p2, p0, LM0/E0;->h:Ljava/lang/Object;

    iput-object p3, p0, LM0/E0;->i:Ljava/lang/Object;

    iput-boolean p4, p0, LM0/E0;->f:Z

    iput-object p5, p0, LM0/E0;->j:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LM0/x1;LM0/o;LN0/P;LM0/h;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LM0/E0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/E0;->g:Ljava/lang/Object;

    iput-object p2, p0, LM0/E0;->h:Ljava/lang/Object;

    iput-object p3, p0, LM0/E0;->i:Ljava/lang/Object;

    iput-object p4, p0, LM0/E0;->j:Ljava/lang/Object;

    iput-boolean p5, p0, LM0/E0;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, LM0/E0;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/E0;->g:Ljava/lang/Object;

    check-cast v0, LM0/x1;

    iget-object v1, p0, LM0/E0;->h:Ljava/lang/Object;

    check-cast v1, LM0/o;

    iget-object v2, p0, LM0/E0;->i:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, LN0/P;

    iget-object v2, p0, LM0/E0;->j:Ljava/lang/Object;

    check-cast v2, LM0/h;

    iget-boolean v7, p0, LM0/E0;->f:Z

    iget-object v3, v0, LM0/x1;->c:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v0, v0, LM0/x1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brisa/local/VideoPlaybackService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    invoke-static {v1}, LM0/Y1;->i(LM0/o;)V

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v3, LM0/N0;

    iget v5, v2, LM0/h;->a:I

    iget v6, v2, LM0/h;->b:I

    new-instance v8, LM0/P1;

    invoke-direct {v8, v1, v6}, LM0/P1;-><init>(LM0/o;I)V

    iget-object v9, v2, LM0/h;->e:Landroid/os/Bundle;

    invoke-direct/range {v3 .. v9}, LM0/N0;-><init>(LN0/P;IIZLM0/M0;Landroid/os/Bundle;)V

    iget-object v2, v0, Lcom/brisa/local/VideoPlaybackService;->j:LM0/P0;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/brisa/local/VideoPlaybackService;->b(LM0/P0;)V

    iget-object v0, v2, LM0/P0;->a:LM0/X0;

    iget-object v0, v0, LM0/X0;->g:LM0/W1;

    invoke-virtual {v0, v1, v3}, LM0/W1;->w(LM0/o;LM0/N0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "MSessionService"

    const-string v3, "Failed to add a session to session service"

    invoke-static {v2, v3, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v1}, LM0/Y1;->i(LM0/o;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, LM0/E0;->g:Ljava/lang/Object;

    check-cast v0, LM0/I0;

    iget-object v1, p0, LM0/E0;->h:Ljava/lang/Object;

    check-cast v1, LM0/P0;

    iget-object v2, p0, LM0/E0;->i:Ljava/lang/Object;

    check-cast v2, LZ0/i;

    iget-boolean v3, p0, LM0/E0;->f:Z

    iget-object v4, p0, LM0/E0;->j:Ljava/lang/Object;

    check-cast v4, Li/j;

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v0, v1, v2, v3}, LM0/I0;->f(LM0/P0;LZ0/i;Z)V

    iput-boolean v5, v4, Li/j;->d:Z

    iget-object v0, v4, Li/j;->b:Li/l;

    if-eqz v0, :cond_2

    iget-object v0, v0, Li/l;->f:Li/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Li/i;->k:Ljava/lang/Object;

    sget-object v2, Li/i;->j:Lcom/brisa/local/v;

    invoke-virtual {v2, v0, v6, v1}, Lcom/brisa/local/v;->b(Li/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Li/i;->c(Li/i;)V

    iput-object v6, v4, Li/j;->a:Ljava/io/Serializable;

    iput-object v6, v4, Li/j;->b:Li/l;

    iput-object v6, v4, Li/j;->c:Li/n;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iput-boolean v5, v4, Li/j;->d:Z

    iget-object v1, v4, Li/j;->b:Li/l;

    if-eqz v1, :cond_2

    iget-object v1, v1, Li/l;->f:Li/k;

    invoke-virtual {v1, v0}, Li/i;->i(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v6, v4, Li/j;->a:Ljava/io/Serializable;

    iput-object v6, v4, Li/j;->b:Li/l;

    iput-object v6, v4, Li/j;->c:Li/n;

    :cond_2
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
