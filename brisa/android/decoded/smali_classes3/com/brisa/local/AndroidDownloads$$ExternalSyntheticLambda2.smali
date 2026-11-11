.class public final synthetic Lcom/brisa/local/AndroidDownloads$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public final synthetic f$0:Lcom/brisa/local/DownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/DownloadService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/AndroidDownloads$$ExternalSyntheticLambda2;->f$0:Lcom/brisa/local/DownloadService;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/brisa/local/AndroidDownloads$$ExternalSyntheticLambda2;->f$0:Lcom/brisa/local/DownloadService;

    invoke-static {v0, p1, p2}, Lcom/brisa/local/AndroidDownloads;->lambda$fetch$2(Lcom/brisa/local/DownloadService;J)V

    return-void
.end method
