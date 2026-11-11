.class public final synthetic Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brisa/local/RangeTransfer$Reader;


# instance fields
.field public final synthetic f$0:Lcom/brisa/local/RangeTransfer;

.field public final synthetic f$1:Lcom/brisa/local/RangeTransfer$Version;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:Ljava/io/File;

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/RangeTransfer;Lcom/brisa/local/RangeTransfer$Version;JJJLjava/io/File;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$0:Lcom/brisa/local/RangeTransfer;

    iput-object p2, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$1:Lcom/brisa/local/RangeTransfer$Version;

    iput-wide p3, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$2:J

    iput-wide p5, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$3:J

    iput-wide p7, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$4:J

    iput-object p9, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$5:Ljava/io/File;

    iput-wide p10, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$6:J

    return-void
.end method


# virtual methods
.method public final read(Lcom/brisa/local/RangeTransfer$Response;)Ljava/lang/Object;
    .locals 12

    .line 0
    iget-object v0, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$0:Lcom/brisa/local/RangeTransfer;

    iget-object v1, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$1:Lcom/brisa/local/RangeTransfer$Version;

    iget-wide v2, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$2:J

    iget-wide v4, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$3:J

    iget-wide v6, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$4:J

    iget-object v8, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$5:Ljava/io/File;

    iget-wide v9, p0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;->f$6:J

    move-object v11, p1

    invoke-virtual/range {v0 .. v11}, Lcom/brisa/local/RangeTransfer;->lambda$segment$5$com-brisa-local-RangeTransfer(Lcom/brisa/local/RangeTransfer$Version;JJJLjava/io/File;JLcom/brisa/local/RangeTransfer$Response;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
