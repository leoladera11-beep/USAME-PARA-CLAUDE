.class public final synthetic Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brisa/local/RangeTransfer$Reader;


# instance fields
.field public final synthetic f$0:Lcom/brisa/local/RangeTransfer$Version;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/RangeTransfer$Version;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda2;->f$0:Lcom/brisa/local/RangeTransfer$Version;

    return-void
.end method


# virtual methods
.method public final read(Lcom/brisa/local/RangeTransfer$Response;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda2;->f$0:Lcom/brisa/local/RangeTransfer$Version;

    invoke-static {v0, p1}, Lcom/brisa/local/RangeTransfer;->lambda$segment$4(Lcom/brisa/local/RangeTransfer$Version;Lcom/brisa/local/RangeTransfer$Response;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
