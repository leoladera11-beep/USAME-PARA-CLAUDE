.class public final synthetic Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brisa/local/OfflineCopy$Progress;


# instance fields
.field public final synthetic f$0:Lcom/brisa/local/VideoImportService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/app/NotificationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/VideoImportService;Ljava/lang/String;Landroid/app/NotificationManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda0;->f$0:Lcom/brisa/local/VideoImportService;

    iput-object p2, p0, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda0;->f$2:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public final bytes(J)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda0;->f$0:Lcom/brisa/local/VideoImportService;

    iget-object v1, p0, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda0;->f$2:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brisa/local/VideoImportService;->lambda$onStartCommand$0$com-brisa-local-VideoImportService(Ljava/lang/String;Landroid/app/NotificationManager;J)V

    return-void
.end method
