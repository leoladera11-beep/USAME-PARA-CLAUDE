.class public final synthetic LM0/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/brisa/local/VideoPlaybackService;

.field public final synthetic g:LM0/P0;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/VideoPlaybackService;LM0/P0;I)V
    .locals 0

    iput p3, p0, LM0/u1;->e:I

    iput-object p1, p0, LM0/u1;->f:Lcom/brisa/local/VideoPlaybackService;

    iput-object p2, p0, LM0/u1;->g:LM0/P0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, LM0/u1;->e:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/u1;->f:Lcom/brisa/local/VideoPlaybackService;

    iget-object v2, p0, LM0/u1;->g:LM0/P0;

    sget-object v3, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v0}, Lcom/brisa/local/VideoPlaybackService;->e()LM0/I0;

    move-result-object v0

    iget-object v0, v0, LM0/I0;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/G0;

    if-eqz v0, :cond_0

    iget-object v0, v0, LM0/G0;->a:LM0/B;

    invoke-static {v0}, LM0/z;->W0(LM0/B;)V

    :cond_0
    iget-object v0, v2, LM0/P0;->a:LM0/X0;

    iput-object v1, v0, LM0/X0;->v:LM0/w1;

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/u1;->f:Lcom/brisa/local/VideoPlaybackService;

    iget-object v6, p0, LM0/u1;->g:LM0/P0;

    sget-object v2, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v0}, Lcom/brisa/local/VideoPlaybackService;->e()LM0/I0;

    move-result-object v3

    iget-object v8, v3, LM0/I0;->e:Lcom/brisa/local/VideoPlaybackService;

    iget-object v2, v3, LM0/I0;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, LM0/H0;

    invoke-direct {v5, v3, v8, v6}, LM0/H0;-><init>(LM0/I0;Lcom/brisa/local/VideoPlaybackService;LM0/P0;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v7, "androidx.media3.session.MediaNotificationManager"

    const/4 v9, 0x1

    invoke-virtual {v4, v7, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v7, v6, LM0/P0;->a:LM0/X0;

    iget-object v9, v7, LM0/X0;->j:LM0/o2;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {}, LJ/W;->q()Landroid/os/Looper;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, LM0/B;

    invoke-direct {v4, v12}, LM0/B;-><init>(Landroid/os/Looper;)V

    iget-object v7, v9, LM0/o2;->a:LM0/n2;

    invoke-interface {v7}, LM0/n2;->d()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v1, LN0/O;

    new-instance v7, LJ/u;

    invoke-direct {v7, v8}, LJ/u;-><init>(Landroid/content/Context;)V

    new-instance v11, LL/k;

    invoke-direct {v11, v7}, LL/k;-><init>(LJ/u;)V

    const/16 v7, 0xb

    invoke-direct {v1, v11, v7}, LN0/O;-><init>(Ljava/lang/Object;I)V

    :cond_2
    move-object v14, v1

    new-instance v7, LM0/z;

    move-object v13, v4

    move-object v11, v5

    invoke-direct/range {v7 .. v14}, LM0/z;-><init>(Landroid/content/ContextWrapper;LM0/o2;Landroid/os/Bundle;LM0/x;Landroid/os/Looper;LM0/B;LN0/O;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, LM0/w;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v7, v9}, LM0/w;-><init>(LM0/B;LM0/z;I)V

    invoke-static {v1, v8}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    new-instance v1, LM0/G0;

    invoke-direct {v1, v4}, LM0/G0;-><init>(LM0/B;)V

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LM0/B0;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, LM0/B0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, v3, LM0/I0;->i:LM0/A;

    invoke-virtual {v4, v2, v1}, Lz1/p;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_0
    new-instance v1, LM0/w1;

    invoke-direct {v1, v0}, LM0/w1;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    iget-object v0, v6, LM0/P0;->a:LM0/X0;

    iput-object v1, v0, LM0/X0;->v:LM0/w1;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
