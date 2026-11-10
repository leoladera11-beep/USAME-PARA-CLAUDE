.class public final synthetic Lcom/brisa/local/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/brisa/local/DownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/DownloadService;I)V
    .locals 0

    iput p2, p0, Lcom/brisa/local/p;->a:I

    iput-object p1, p0, Lcom/brisa/local/p;->b:Lcom/brisa/local/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    iget v0, p0, Lcom/brisa/local/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/brisa/local/p;->b:Lcom/brisa/local/DownloadService;

    iget-boolean v0, v0, Lcom/brisa/local/DownloadService;->b:Z

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/brisa/local/p;->b:Lcom/brisa/local/DownloadService;

    iget-boolean v0, v0, Lcom/brisa/local/DownloadService;->b:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/brisa/local/p;->b:Lcom/brisa/local/DownloadService;

    iget-boolean v0, v0, Lcom/brisa/local/DownloadService;->b:Z

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/brisa/local/p;->b:Lcom/brisa/local/DownloadService;

    iget-boolean v0, v0, Lcom/brisa/local/DownloadService;->b:Z

    return v0

    :pswitch_3
    iget-object v0, p0, Lcom/brisa/local/p;->b:Lcom/brisa/local/DownloadService;

    iget-boolean v0, v0, Lcom/brisa/local/DownloadService;->b:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
