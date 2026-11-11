.class public final synthetic LS/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/t;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LS/c;->e:I

    iput p1, p0, LS/c;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LS/c;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:MediaCodecQueueingThread:"

    iget v2, p0, LS/c;->f:I

    invoke-static {v2, v1}, LM0/h2;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:MediaCodecAsyncAdapter:"

    iget v2, p0, LS/c;->f:I

    invoke-static {v2, v1}, LM0/h2;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
