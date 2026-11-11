.class public final synthetic Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brisa/local/VideoImportService;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Landroid/app/NotificationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/VideoImportService;Ljava/util/ArrayList;Landroid/app/NotificationManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda1;->f$0:Lcom/brisa/local/VideoImportService;

    iput-object p2, p0, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda1;->f$2:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda1;->f$0:Lcom/brisa/local/VideoImportService;

    iget-object v1, p0, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda1;->f$2:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v2}, Lcom/brisa/local/VideoImportService;->lambda$onStartCommand$1$com-brisa-local-VideoImportService(Ljava/util/ArrayList;Landroid/app/NotificationManager;)V

    return-void
.end method
