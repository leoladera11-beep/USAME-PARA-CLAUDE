.class public final synthetic Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/brisa/local/RangeTransfer;

.field public final synthetic f$1:Lcom/brisa/local/RangeTransfer$Version;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/brisa/local/RangeTransfer$Track;

.field public final synthetic f$4:Ljava/io/File;

.field public final synthetic f$5:Lcom/brisa/local/RangeTransfer$Version;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/RangeTransfer;Lcom/brisa/local/RangeTransfer$Version;ILcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;->f$0:Lcom/brisa/local/RangeTransfer;

    iput-object p2, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;->f$1:Lcom/brisa/local/RangeTransfer$Version;

    iput p3, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;->f$3:Lcom/brisa/local/RangeTransfer$Track;

    iput-object p5, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;->f$4:Ljava/io/File;

    iput-object p6, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;->f$5:Lcom/brisa/local/RangeTransfer$Version;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;->f$0:Lcom/brisa/local/RangeTransfer;

    iget-object v1, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;->f$1:Lcom/brisa/local/RangeTransfer$Version;

    iget v2, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;->f$3:Lcom/brisa/local/RangeTransfer$Track;

    iget-object v4, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;->f$4:Ljava/io/File;

    iget-object v5, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;->f$5:Lcom/brisa/local/RangeTransfer$Version;

    invoke-virtual/range {v0 .. v5}, Lcom/brisa/local/RangeTransfer;->lambda$downloadTrack$1$com-brisa-local-RangeTransfer(Lcom/brisa/local/RangeTransfer$Version;ILcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
