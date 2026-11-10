.class public final synthetic LM0/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/t0;


# direct methods
.method public synthetic constructor <init>(LM0/t0;I)V
    .locals 0

    .line 1
    iput p2, p0, LM0/o0;->e:I

    iput-object p1, p0, LM0/o0;->f:LM0/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LM0/t0;LM0/r0;)V
    .locals 0

    .line 2
    const/4 p2, 0x2

    iput p2, p0, LM0/o0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/o0;->f:LM0/t0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, LM0/o0;->e:I

    iget-object v1, p0, LM0/o0;->f:LM0/t0;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, LM0/t0;->b:LM0/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v0, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LF1/i;->o(Z)V

    iget-object v0, v0, LM0/z;->d:LM0/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LM0/m2;

    const/4 v2, -0x6

    invoke-direct {v1, v2}, LM0/m2;-><init>(I)V

    invoke-static {v1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-interface {v0}, LM0/x;->s()V

    return-void

    :pswitch_0
    new-instance v0, LN0/i;

    iget-object v2, v1, LM0/t0;->a:Landroid/content/ContextWrapper;

    iget-object v3, v1, LM0/t0;->c:LM0/o2;

    iget-object v3, v3, LM0/o2;->a:LM0/n2;

    invoke-interface {v3}, LM0/n2;->e()Landroid/content/ComponentName;

    move-result-object v3

    new-instance v4, LB/A;

    invoke-direct {v4, v1}, LB/A;-><init>(LM0/t0;)V

    iget-object v5, v1, LM0/t0;->b:LM0/z;

    iget-object v5, v5, LM0/z;->c:LM0/y;

    invoke-interface {v5}, LM0/y;->R0()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v6, LN0/f;

    invoke-direct {v6, v2, v3, v4, v5}, LN0/f;-><init>(Landroid/content/Context;Landroid/content/ComponentName;LB/A;Landroid/os/Bundle;)V

    iput-object v6, v0, LN0/i;->a:Ljava/lang/Object;

    iput-object v0, v1, LM0/t0;->j:LN0/i;

    const-string v1, "MediaBrowserCompat"

    const-string v2, "Connecting to a MediaBrowserService."

    invoke-static {v1, v2}, LJ/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, LN0/f;

    iget-object v0, v0, LN0/f;->b:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->connect()V

    return-void

    :pswitch_1
    iget-boolean v0, v1, LM0/t0;->k:Z

    if-nez v0, :cond_2

    iget-object v0, v1, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->e:LN0/N;

    invoke-virtual {v0}, LN0/N;->a()LN0/d;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, LM0/t0;->c1()V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
