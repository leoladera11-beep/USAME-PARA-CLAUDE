.class public final synthetic LM0/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/brisa/local/VideoPlaybackService;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/VideoPlaybackService;I)V
    .locals 0

    iput p2, p0, LM0/v1;->e:I

    iput-object p1, p0, LM0/v1;->f:Lcom/brisa/local/VideoPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, LM0/v1;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/v1;->f:Lcom/brisa/local/VideoPlaybackService;

    sget-object v1, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v0}, Lcom/brisa/local/VideoPlaybackService;->c()V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/v1;->f:Lcom/brisa/local/VideoPlaybackService;

    iget-object v0, v0, Lcom/brisa/local/VideoPlaybackService;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
