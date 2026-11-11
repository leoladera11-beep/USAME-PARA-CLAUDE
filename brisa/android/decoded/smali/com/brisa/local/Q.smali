.class public final Lcom/brisa/local/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final f:Lcom/brisa/local/PlaybackService;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/PlaybackService;I)V
    .locals 0

    iput p2, p0, Lcom/brisa/local/Q;->e:I

    iput-object p1, p0, Lcom/brisa/local/Q;->f:Lcom/brisa/local/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/brisa/local/Q;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/brisa/local/Q;->f:Lcom/brisa/local/PlaybackService;

    iget-object v1, v0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/brisa/local/PlaybackService;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/brisa/local/PlaybackService;->f:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/brisa/local/MainActivity;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brisa/local/MainActivity;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/brisa/local/MainActivity;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->q()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/brisa/local/MainActivity;->i(Lorg/json/JSONObject;)V

    iget-object v0, v0, Lcom/brisa/local/PlaybackService;->u:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/brisa/local/Q;->f:Lcom/brisa/local/PlaybackService;

    iput-boolean v0, v1, Lcom/brisa/local/PlaybackService;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/brisa/local/PlaybackService;->j:Z

    invoke-virtual {v1}, Lcom/brisa/local/PlaybackService;->k()V

    invoke-virtual {v1}, Lcom/brisa/local/PlaybackService;->o()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
