.class public final Lcom/brisa/local/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/brisa/local/MainActivity;


# direct methods
.method public constructor <init>(Lcom/brisa/local/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    return-void
.end method


# virtual methods
.method public cancelImport()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/brisa/local/I;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/brisa/local/I;-><init>(Lcom/brisa/local/K;I)V

    iget-object v1, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public downloadVideo(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/brisa/local/H;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/brisa/local/H;-><init>(Lcom/brisa/local/K;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public forget(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asset:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v2, p1}, Lcom/brisa/local/a;->m(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "hidden"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {v2, p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    invoke-static {v2, p1}, Lcom/brisa/local/v;->u(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "brisa-file-grants"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v2, v0}, Lcom/brisa/local/d0;->g(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public forgetVideo(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
    iget-object v0, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;
    invoke-static {v0, p1}, Lcom/brisa/local/MobileVideoFiles;->forgetImported(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :brisa_original_forget
    return-void
    :brisa_original_forget


    iget-object v0, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    const-class v1, Lcom/brisa/local/d0;

    monitor-enter v1

    :try_start_0
    invoke-static {v0, p1}, Lcom/brisa/local/a;->m(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-static {v0, p1}, Lcom/brisa/local/a;->m(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "hidden"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    invoke-static {v0, p1}, Lcom/brisa/local/d0;->s(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_3
    const-string v4, "brisa-video-grants"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "brisa-file-grants"

    invoke-virtual {v0, p1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v0, v2}, Lcom/brisa/local/d0;->g(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_4
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public importAck(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    iget-object v0, v0, Lcom/brisa/local/MainActivity;->b:Lcom/brisa/local/e;

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/brisa/local/e;->c:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v2, "batchId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/brisa/local/e;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public importReady()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/brisa/local/I;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/brisa/local/I;-><init>(Lcom/brisa/local/K;I)V

    iget-object v1, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public listVideos()Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    const-string v2, "brisa-video-grants"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "uri"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v2, "video"

    invoke-static {v1, v2}, Lcom/brisa/local/a;->s(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/brisa/local/a;->y(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;
    invoke-static {v1, v0}, Lcom/brisa/local/MobileVideoFiles;->list(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    const-string v1, "load"

    invoke-virtual {v0, v1, p1}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public next()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "next"

    const-string v1, ""

    iget-object v2, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v2, v0, v1}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openUpdates()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/brisa/local/I;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/brisa/local/I;-><init>(Lcom/brisa/local/K;I)V

    iget-object v1, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openVideoLink(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/brisa/local/H;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/brisa/local/H;-><init>(Lcom/brisa/local/K;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "pause"

    const-string v1, ""

    iget-object v2, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v2, v0, v1}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pickAudio()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/brisa/local/I;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/brisa/local/I;-><init>(Lcom/brisa/local/K;I)V

    iget-object v1, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pickFolder()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/brisa/local/I;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/brisa/local/I;-><init>(Lcom/brisa/local/K;I)V

    iget-object v1, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pickVideos()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/brisa/local/I;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/brisa/local/I;-><init>(Lcom/brisa/local/K;I)V

    iget-object v1, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public play()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "play"

    const-string v1, ""

    iget-object v2, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v2, v0, v1}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
    iget-object v0, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;
    invoke-static {v0, p1}, Lcom/brisa/local/MobileVideoFiles;->play(Landroid/app/Activity;Ljava/lang/String;)V
    return-void
.end method

.method public previous()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "previous"

    const-string v1, ""

    iget-object v2, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v2, v0, v1}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queue(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0x1e8480

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    const-string v1, "queue"

    invoke-virtual {v0, v1, p1}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public rate(D)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rate"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {p2, v0, p1}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetQueueCycle()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "resetCycle"

    const-string v1, ""

    iget-object v2, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v2, v0, v1}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0x3d0900

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/brisa/local/c;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/brisa/local/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;I)V

    iget-object p1, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public seek(D)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "seek"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {p2, v0, p1}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sleep(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    const-string v1, "sleep"

    invoke-virtual {v0, v1, p1}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public snapshot()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    if-nez v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->q()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stop()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "stop"

    const-string v1, ""

    iget-object v2, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v2, v0, v1}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public volume(D)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "volume"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {p2, v0, p1}, Lcom/brisa/local/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
