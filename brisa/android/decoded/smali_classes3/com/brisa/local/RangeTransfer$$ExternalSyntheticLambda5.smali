.class public final synthetic Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/brisa/local/RangeTransfer;

.field public final synthetic f$1:Lcom/brisa/local/RangeTransfer$Track;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/RangeTransfer;Lcom/brisa/local/RangeTransfer$Track;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda5;->f$0:Lcom/brisa/local/RangeTransfer;

    iput-object p2, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda5;->f$1:Lcom/brisa/local/RangeTransfer$Track;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda5;->f$0:Lcom/brisa/local/RangeTransfer;

    iget-object v1, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda5;->f$1:Lcom/brisa/local/RangeTransfer$Track;

    invoke-virtual {v0, v1}, Lcom/brisa/local/RangeTransfer;->lambda$download$0$com-brisa-local-RangeTransfer(Lcom/brisa/local/RangeTransfer$Track;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
