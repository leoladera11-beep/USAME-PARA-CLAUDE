.class public final synthetic Lcom/brisa/local/AndroidDownloads$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/brisa/local/DownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/DownloadService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/AndroidDownloads$$ExternalSyntheticLambda1;->f$0:Lcom/brisa/local/DownloadService;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/brisa/local/AndroidDownloads$$ExternalSyntheticLambda1;->f$0:Lcom/brisa/local/DownloadService;

    invoke-static {v0}, Lcom/brisa/local/AndroidDownloads;->lambda$fetch$1(Lcom/brisa/local/DownloadService;)Z

    move-result v0

    return v0
.end method
