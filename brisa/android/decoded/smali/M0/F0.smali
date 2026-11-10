.class public final synthetic LM0/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LM0/I0;ILM0/P0;LZ0/i;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LM0/F0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/F0;->g:Ljava/lang/Object;

    iput p2, p0, LM0/F0;->f:I

    iput-object p3, p0, LM0/F0;->h:Ljava/lang/Object;

    iput-object p4, p0, LM0/F0;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LM0/W1;Landroid/os/IBinder;ILM0/m2;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LM0/F0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/F0;->g:Ljava/lang/Object;

    iput-object p2, p0, LM0/F0;->h:Ljava/lang/Object;

    iput p3, p0, LM0/F0;->f:I

    iput-object p4, p0, LM0/F0;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LM0/W1;Landroid/os/IBinder;LM0/S1;I)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, LM0/F0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/F0;->g:Ljava/lang/Object;

    iput-object p2, p0, LM0/F0;->h:Ljava/lang/Object;

    iput-object p3, p0, LM0/F0;->i:Ljava/lang/Object;

    iput p4, p0, LM0/F0;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LM0/F0;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/F0;->g:Ljava/lang/Object;

    check-cast v0, LM0/W1;

    iget-object v1, p0, LM0/F0;->h:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, LM0/F0;->i:Ljava/lang/Object;

    check-cast v2, LM0/S1;

    iget-object v0, v0, LM0/W1;->b:LB/A;

    invoke-virtual {v0, v1}, LB/A;->A(Ljava/lang/Object;)LM0/N0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, LM0/F0;->f:I

    invoke-interface {v2, v0, v1}, LM0/S1;->b(LM0/N0;I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LM0/F0;->g:Ljava/lang/Object;

    check-cast v0, LM0/W1;

    iget-object v1, p0, LM0/F0;->h:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, LM0/F0;->i:Ljava/lang/Object;

    check-cast v2, LM0/m2;

    iget-object v0, v0, LM0/W1;->b:LB/A;

    invoke-virtual {v0}, LB/A;->V()V

    invoke-virtual {v0, v1}, LB/A;->A(Ljava/lang/Object;)LM0/N0;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v0, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Lh/e;

    invoke-virtual {v0, v1, v3}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/g;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, v0, LM0/g;->b:LM0/h2;

    :cond_2
    if-eqz v3, :cond_3

    iget v0, p0, LM0/F0;->f:I

    invoke-virtual {v3, v0, v2}, LM0/h2;->m(ILjava/lang/Object;)V

    :cond_3
    return-void

    :pswitch_1
    iget-object v0, p0, LM0/F0;->g:Ljava/lang/Object;

    check-cast v0, LM0/I0;

    iget-object v1, p0, LM0/F0;->h:Ljava/lang/Object;

    check-cast v1, LM0/P0;

    iget-object v2, p0, LM0/F0;->i:Ljava/lang/Object;

    check-cast v2, LZ0/i;

    iget v3, v0, LM0/I0;->n:I

    iget v4, p0, LM0/F0;->f:I

    if-ne v4, v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LM0/I0;->d(Z)Z

    move-result v3

    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, LM0/I0;->f(LM0/P0;LZ0/i;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_4

    invoke-static {v1}, LJ/w;->u(Ljava/lang/IllegalStateException;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, LM0/I0;->e:Lcom/brisa/local/VideoPlaybackService;

    iget-object v1, v0, Lcom/brisa/local/VideoPlaybackService;->c:Landroid/os/Handler;

    new-instance v2, LM0/v1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, LM0/v1;-><init>(Lcom/brisa/local/VideoPlaybackService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    throw v1

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
