.class public final synthetic Lcom/brisa/local/StreamRelay$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brisa/local/StreamRelay;

.field public final synthetic f$1:Ljava/net/ServerSocket;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/StreamRelay;Ljava/net/ServerSocket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/StreamRelay$$ExternalSyntheticLambda2;->f$0:Lcom/brisa/local/StreamRelay;

    iput-object p2, p0, Lcom/brisa/local/StreamRelay$$ExternalSyntheticLambda2;->f$1:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/brisa/local/StreamRelay$$ExternalSyntheticLambda2;->f$0:Lcom/brisa/local/StreamRelay;

    iget-object v1, p0, Lcom/brisa/local/StreamRelay$$ExternalSyntheticLambda2;->f$1:Ljava/net/ServerSocket;

    invoke-virtual {v0, v1}, Lcom/brisa/local/StreamRelay;->lambda$start$2$com-brisa-local-StreamRelay(Ljava/net/ServerSocket;)V

    return-void
.end method
