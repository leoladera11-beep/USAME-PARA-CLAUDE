.class public final LJ/z;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LJ/z;->a:I

    iput-object p1, p0, LJ/z;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget v0, p0, LJ/z;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, LJ/z;->b:Ljava/lang/Object;

    check-cast p1, Lcom/brisa/local/VideoPlaybackService;

    sget-object p2, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {p1}, Lcom/brisa/local/VideoPlaybackService;->r()V

    return-void

    :pswitch_0
    iget-object v0, p0, LJ/z;->b:Ljava/lang/Object;

    check-cast v0, LP/f;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, LP/f;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, LP/f;->j:LG/e;

    iget-object v3, v0, LP/f;->i:Landroid/media/AudioDeviceInfo;

    invoke-static {p1, p2, v2, v3, v1}, LP/c;->b(Landroid/content/Context;Landroid/content/Intent;LG/e;Landroid/media/AudioDeviceInfo;Ljava/util/List;)LP/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LP/f;->b(LP/c;)V

    :cond_0
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, La1/g;->y(Landroid/content/Intent;)Landroid/view/KeyEvent;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, LJ/z;->b:Ljava/lang/Object;

    check-cast p2, LM0/t1;

    iget-object p2, p2, LM0/t1;->o:LN0/O;

    iget-object p2, p2, LN0/O;->g:Ljava/lang/Object;

    check-cast p2, LN0/O;

    iget-object p2, p2, LN0/O;->f:Ljava/lang/Object;

    check-cast p2, LN0/y;

    iget-object p2, p2, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {p2, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    :goto_0
    return-void

    :pswitch_2
    iget-object p1, p0, LJ/z;->b:Ljava/lang/Object;

    check-cast p1, LM0/b;

    iget-object p2, p1, LM0/b;->c:Ljava/util/concurrent/Executor;

    new-instance v0, LM0/a;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, LM0/a;-><init>(LM0/b;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    iget-object p2, p0, LJ/z;->b:Ljava/lang/Object;

    check-cast p2, LJ/A;

    iget-object p2, p2, LJ/A;->a:Ljava/util/concurrent/Executor;

    new-instance v0, LH/i;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, LH/i;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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
