.class public final Lcom/brisa/local/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/brisa/local/MainActivity;

.field public final b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/brisa/local/MainActivity;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v6, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/brisa/local/r;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/brisa/local/r;->a:Lcom/brisa/local/MainActivity;

    return-void
.end method


# virtual methods
.method public assets(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "audio"

    iget-object v2, p0, Lcom/brisa/local/r;->a:Lcom/brisa/local/MainActivity;

    invoke-static {v2, v1}, Lcom/brisa/local/a;->s(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    :try_start_0
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/brisa/local/a;->c(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/brisa/local/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/brisa/local/q;-><init>(Lcom/brisa/local/r;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/brisa/local/r;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/brisa/local/DownloadService;->d()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/brisa/local/u;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/brisa/local/r;->a:Lcom/brisa/local/MainActivity;

    const-string v1, ""

    sput-object v1, Lcom/brisa/local/u;->a:Ljava/lang/String;

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/brisa/local/u;->b:J

    const-string v1, "brisa-drive"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, p1}, Lcom/brisa/local/r;->status(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Espera a que termine la descarga o la conexi\u00f3n de Google."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public prepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, LM0/B0;

    const/16 v5, 0x9

    const-string v3, "prepare"

    move-object v1, p0

    move-object v4, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LM0/B0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, v1, Lcom/brisa/local/r;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public records(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/brisa/local/r;->a:Lcom/brisa/local/MainActivity;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/brisa/local/a;->s(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/brisa/local/a;->y(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {p1, v3, v1}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-static {p1, v1, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/r;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/brisa/local/q;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/brisa/local/q;-><init>(Lcom/brisa/local/r;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Hay otra consulta de Drive en curso. Espera un momento."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public removeOffline(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "privateFile"

    iget-object v1, p0, Lcom/brisa/local/r;->a:Lcom/brisa/local/MainActivity;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/brisa/local/DownloadService;->d()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1, p2}, Lcom/brisa/local/a;->m(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "driveId"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "pendingUpload"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Lcom/brisa/local/a;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "No se pudo quitar la copia privada."

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "localUri"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1, p2}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v2}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Solo puedes quitar una copia privada ya guardada en Drive."

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Espera a que termine la descarga actual."

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p1, v2, p2}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public retry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, LM0/B0;

    const/16 v5, 0x9

    const-string v3, "retry"

    move-object v1, p0

    move-object v4, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LM0/B0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, v1, Lcom/brisa/local/r;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public status(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/brisa/local/r;->a:Lcom/brisa/local/MainActivity;

    invoke-static {v1}, Lcom/brisa/local/u;->x(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-static {p1, v0, v1}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
