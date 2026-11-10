.class public final Lcom/brisa/local/VideoImportService;
.super Landroid/app/Service;
.source "VideoImportService.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "brisa-video-import"

.field private static final ID:I = 0x83a

.field public static final busy:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private last:J

.field private final signal:Landroid/os/CancellationSignal;

.field private worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/brisa/local/VideoImportService;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/brisa/local/VideoImportService;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/brisa/local/VideoImportService;->signal:Landroid/os/CancellationSignal;

    return-void
.end method

.method private notification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 8

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :try_start_0
    const-string v1, "com.brisa.local.MainActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    :goto_0
    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 11
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/brisa/local/VideoImportService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "cancel"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v4, v3, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcom/brisa/local/VideoImportService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "drawable"

    invoke-virtual {p0}, Lcom/brisa/local/VideoImportService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ic_brisa_notification"

    invoke-virtual {v3, v7, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 13
    new-instance v5, Landroid/app/Notification$Builder;

    const-string v6, "brisa-video-import"

    invoke-direct {v5, p0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "Brisa \u00b7 Importando v\u00eddeo"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1, v1, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$Action$Builder;

    const-string v1, "Cancelar"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method synthetic lambda$onStartCommand$0$com-brisa-local-VideoImportService(Ljava/lang/String;Landroid/app/NotificationManager;J)V
    .locals 6

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/brisa/local/VideoImportService;->last:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/brisa/local/VideoImportService;->last:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u00b7 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    long-to-double v1, p3

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1f MB"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "preparing"

    const-wide/16 v4, 0x0

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Lcom/brisa/local/MobileVideoFiles;->status(Ljava/lang/String;Ljava/lang/String;JJ)V

    const/16 p1, 0x83a

    invoke-direct {p0, v1}, Lcom/brisa/local/VideoImportService;->notification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onStartCommand$1$com-brisa-local-VideoImportService(Ljava/util/ArrayList;Landroid/app/NotificationManager;)V
    .locals 25

    .line 23
    move-object/from16 v1, p0

    const-string v2, "error"

    const-string v3, "completed"

    const-string v4, " sin copiar: "

    const-string v5, "cancelled"

    const-string v6, " ya estaban guardados"

    const-string v7, "Importaci\u00f3n cancelada. Las copias completas ya importadas se conservan."

    const-string v8, " v\u00eddeos listos"

    const-string v9, " \u00b7 "

    .line 24
    const-string v11, ""

    move-object v15, v11

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_3

    iget-object v10, v1, Lcom/brisa/local/VideoImportService;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_3

    .line 25
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "Importando v\u00eddeo "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v17, v3

    :try_start_2
    const-string v3, " de "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v18, "preparing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v24, v5

    :try_start_3
    const-string v5, "\u2026"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    invoke-static/range {v18 .. v23}, Lcom/brisa/local/MobileVideoFiles;->status(Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    move-object/from16 v3, p1

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v5, v1, Lcom/brisa/local/VideoImportService;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, v1, Lcom/brisa/local/VideoImportService;->signal:Landroid/os/CancellationSignal;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v18, v7

    :try_start_5
    new-instance v7, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda0;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v19, v10

    move-object/from16 v10, p2

    :try_start_6
    invoke-direct {v7, v1, v2, v10}, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda0;-><init>(Lcom/brisa/local/VideoImportService;Ljava/lang/String;Landroid/app/NotificationManager;)V

    invoke-static {v1, v0, v5, v3, v7}, Lcom/brisa/local/MobileVideoFiles;->copy(Landroid/content/Context;Landroid/net/Uri;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/CancellationSignal;Lcom/brisa/local/OfflineCopy$Progress;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 27
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v18, v7

    :goto_1
    move/from16 v19, v10

    move-object/from16 v10, p2

    :goto_2
    :try_start_7
    iget-object v2, v1, Lcom/brisa/local/VideoImportService;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "Comprueba la conexi\u00f3n, el permiso y el espacio libre."

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    move-object v15, v0

    :cond_2
    :goto_4
    nop

    .line 24
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v7, v18

    move/from16 v0, v19

    move-object/from16 v5, v24

    goto/16 :goto_0

    .line 29
    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    goto/16 :goto_8

    .line 24
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v24, v5

    move-object/from16 v18, v7

    .line 29
    iget-object v0, v1, Lcom/brisa/local/VideoImportService;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v7, v18

    goto :goto_6

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-lez v14, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v11

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-lez v13, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_6
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 30
    :goto_6
    iget-object v0, v1, Lcom/brisa/local/VideoImportService;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v2, v24

    goto :goto_7

    :cond_7
    if-lez v13, :cond_8

    move-object/from16 v2, v16

    goto :goto_7

    :cond_8
    move-object/from16 v2, v17

    :goto_7
    invoke-static {v2, v7}, Lcom/brisa/local/MobileVideoFiles;->finish(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/brisa/local/VideoImportService;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/brisa/local/VideoImportService;->stopForeground(I)V

    invoke-virtual {v1}, Lcom/brisa/local/VideoImportService;->stopSelf()V

    iget-object v0, v1, Lcom/brisa/local/VideoImportService;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 31
    nop

    .line 32
    return-void

    .line 29
    :catchall_4
    move-exception v0

    move-object/from16 v16, v2

    :goto_8
    move-object/from16 v17, v3

    :goto_9
    move-object/from16 v24, v5

    :goto_a
    move-object/from16 v18, v7

    :goto_b
    iget-object v2, v1, Lcom/brisa/local/VideoImportService;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v7, v18

    goto :goto_d

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez v14, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_a
    move-object v3, v11

    :goto_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez v13, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_b
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 30
    :goto_d
    iget-object v2, v1, Lcom/brisa/local/VideoImportService;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_d

    if-lez v13, :cond_c

    move-object/from16 v2, v16

    goto :goto_e

    :cond_c
    move-object/from16 v2, v17

    goto :goto_e

    :cond_d
    move-object/from16 v2, v24

    :goto_e
    invoke-static {v2, v7}, Lcom/brisa/local/MobileVideoFiles;->finish(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/brisa/local/VideoImportService;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/brisa/local/VideoImportService;->stopForeground(I)V

    invoke-virtual {v1}, Lcom/brisa/local/VideoImportService;->stopSelf()V

    iget-object v2, v1, Lcom/brisa/local/VideoImportService;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 31
    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 7
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/brisa/local/VideoImportService;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/brisa/local/VideoImportService;->signal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iget-object v0, p0, Lcom/brisa/local/VideoImportService;->worker:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brisa/local/VideoImportService;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .line 16
    const/4 p2, 0x1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    const-string v1, "cancel"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/brisa/local/VideoImportService;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/brisa/local/VideoImportService;->signal:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    sget-object p1, Lcom/brisa/local/VideoImportService;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/brisa/local/VideoImportService;->stopSelf(I)V

    :cond_0
    return v0

    .line 17
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0, p3}, Lcom/brisa/local/VideoImportService;->stopSelf(I)V

    return v0

    .line 18
    :cond_2
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    sget-object v1, Lcom/brisa/local/VideoImportService;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 20
    :cond_4
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/brisa/local/VideoImportService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "brisa-video-import"

    const-string v5, "Importaciones de v\u00eddeo"

    invoke-direct {v3, v4, v5, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 21
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x1d

    const-string v5, "Preparando copia sin conexi\u00f3n\u2026"

    const/16 v6, 0x83a

    if-lt v3, v4, :cond_5

    :try_start_1
    invoke-direct {p0, v5}, Lcom/brisa/local/VideoImportService;->notification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {p0, v6, v3, p2}, Lcom/brisa/local/VideoImportService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v5}, Lcom/brisa/local/VideoImportService;->notification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, v6, p2}, Lcom/brisa/local/VideoImportService;->startForeground(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    :goto_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/brisa/local/VideoImportService;->worker:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/brisa/local/VideoImportService;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, v1}, Lcom/brisa/local/VideoImportService$$ExternalSyntheticLambda1;-><init>(Lcom/brisa/local/VideoImportService;Ljava/util/ArrayList;Landroid/app/NotificationManager;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 32
    return v0

    .line 21
    :catch_0
    move-exception p1

    sget-object p1, Lcom/brisa/local/VideoImportService;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "error"

    const-string p2, "No se pudo mantener la importaci\u00f3n activa. Abre Brisa y vuelve a elegir el v\u00eddeo."

    invoke-static {p1, p2}, Lcom/brisa/local/MobileVideoFiles;->finish(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/brisa/local/VideoImportService;->stopSelf(I)V

    return v0

    .line 18
    :cond_6
    :goto_1
    invoke-virtual {p0, p3}, Lcom/brisa/local/VideoImportService;->stopSelf(I)V

    return v0
.end method

.method public onTimeout(II)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/brisa/local/VideoImportService;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/brisa/local/VideoImportService;->signal:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    invoke-virtual {p0, p2}, Lcom/brisa/local/VideoImportService;->stopForeground(I)V

    invoke-virtual {p0}, Lcom/brisa/local/VideoImportService;->stopSelf()V

    return-void
.end method
