.class public final synthetic Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brisa/local/RangeTransfer$Reader;


# instance fields
.field public final synthetic f$0:Lcom/brisa/local/RangeTransfer;

.field public final synthetic f$1:Lcom/brisa/local/RangeTransfer$Track;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/RangeTransfer;Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda6;->f$0:Lcom/brisa/local/RangeTransfer;

    iput-object p2, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda6;->f$1:Lcom/brisa/local/RangeTransfer$Track;

    iput-object p3, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda6;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final read(Lcom/brisa/local/RangeTransfer$Response;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda6;->f$0:Lcom/brisa/local/RangeTransfer;

    iget-object v1, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda6;->f$1:Lcom/brisa/local/RangeTransfer$Track;

    iget-object v2, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda6;->f$2:Ljava/io/File;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brisa/local/RangeTransfer;->lambda$full$3$com-brisa-local-RangeTransfer(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Response;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
