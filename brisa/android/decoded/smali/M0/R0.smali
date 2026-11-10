.class public final synthetic LM0/R0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/X0;


# direct methods
.method public synthetic constructor <init>(LM0/X0;I)V
    .locals 0

    iput p2, p0, LM0/R0;->e:I

    iput-object p1, p0, LM0/R0;->f:LM0/X0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LM0/R0;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/R0;->f:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->v()V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/R0;->f:LM0/X0;

    invoke-static {v0}, LM0/X0;->a(LM0/X0;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LM0/R0;->f:LM0/X0;

    iget-object v1, v0, LM0/X0;->v:LM0/w1;

    if-eqz v1, :cond_0

    iget-object v0, v0, LM0/X0;->k:LM0/P0;

    iget-object v1, v1, LM0/w1;->e:Lcom/brisa/local/VideoPlaybackService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/brisa/local/VideoPlaybackService;->o(LM0/P0;Z)Lz1/a;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
