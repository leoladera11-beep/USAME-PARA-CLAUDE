.class public final Lcom/brisa/local/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final a:Lcom/brisa/local/MainActivity;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x3

    invoke-direct {v6, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/brisa/local/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/brisa/local/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/h;->a:Lcom/brisa/local/MainActivity;

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    const-string p0, "No se pudo conectar. Comprueba Internet y vuelve a intentarlo."

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    const-string p0, "La conexi\u00f3n tard\u00f3 demasiado. Int\u00e9ntalo otra vez."

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xdc

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    const-string p0, "No se pudo consultar o descargar el v\u00eddeo. Puede no estar disponible o requerir una actualizaci\u00f3n de Brisa."

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "Operaci\u00f3n cancelada."

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "requestId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "ok"

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "result"

    if-nez p1, :cond_1

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "error"

    if-nez p2, :cond_2

    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/brisa/local/h;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    sget-object p1, Lcom/brisa/local/MainActivity;->j:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "window.BrisaDownloadResult&&window.BrisaDownloadResult("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ");"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/brisa/local/MainActivity;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brisa/local/MainActivity;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p2, LZ/d;

    const/4 v0, 0x7

    invoke-direct {p2, p1, p0, v0}, LZ/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/h;->a:Lcom/brisa/local/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x43

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/brisa/local/h;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/brisa/local/h;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/brisa/local/h;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/brisa/local/h;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/brisa/local/h;->a:Lcom/brisa/local/MainActivity;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/brisa/local/DownloadService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "plan"

    iget-object v4, p0, Lcom/brisa/local/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "format"

    iget-object v4, p0, Lcom/brisa/local/h;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "options"

    iget-object v4, p0, Lcom/brisa/local/h;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/brisa/local/h;->b:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2, v1}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/brisa/local/h;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/brisa/local/h;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/brisa/local/h;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/brisa/local/h;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/brisa/local/h;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/brisa/local/h;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/brisa/local/h;->d:Ljava/lang/String;

    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcom/brisa/local/DownloadService;->l:Lcom/brisa/local/DownloadService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/brisa/local/DownloadService;->b:Z

    invoke-static {v0}, Lcom/brisa/local/AndroidDownloads;->cancel(Lcom/brisa/local/DownloadService;)V

    iget-object v2, v0, Lcom/brisa/local/DownloadService;->c:La2/h;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/brisa/local/DownloadService;->c:La2/h;

    invoke-virtual {v2}, La2/h;->c()V

    :cond_0
    const-string v2, "cancelling"

    invoke-virtual {v0, v2, v1}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0, v1}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public folder(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, LZ/d;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1}, LZ/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/brisa/local/h;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public inspect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/brisa/local/h;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, LZ/d;

    const/4 v2, 0x5

    invoke-direct {v1, p1, p2, v2}, LZ/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Hay otra consulta en curso. Espera un momento."

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/brisa/local/g;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/brisa/local/g;-><init>(Lcom/brisa/local/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v1, Lcom/brisa/local/h;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public state(Ljava/lang/String;)V
    .locals 13
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/brisa/local/h;->a:Lcom/brisa/local/MainActivity;

    sget-object v1, Lcom/brisa/local/DownloadService;->l:Lcom/brisa/local/DownloadService;

    const-string v1, "error"

    const-string v2, "status"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "brisa-downloads"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "state"

    const-string v5, "{\"status\":\"idle\"}"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/brisa/local/DownloadService;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v4, "starting"

    const-string v5, "downloading"

    const-string v6, "merging"

    const-string v7, "exporting"

    const-string v8, "converting"

    const-string v9, "subtitles"

    const-string v10, "uploading"

    const-string v11, "preparing"

    const-string v12, "cancelling"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "La descarga se interrumpi\u00f3. Vuelve a consultar el enlace para intentarlo de nuevo."

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v3, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
