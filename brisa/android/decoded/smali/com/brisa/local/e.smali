.class public final Lcom/brisa/local/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/concurrent/CountDownLatch;

.field public final b:Landroid/content/Context;

.field public c:Lorg/json/JSONObject;

.field public final d:Lcom/brisa/local/A;

.field public e:Ljava/lang/Thread;

.field public final f:Ljava/lang/String;

.field public volatile g:Z

.field public volatile h:Z

.field public i:Lorg/json/JSONArray;

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Lcom/brisa/local/MainActivity;Lcom/brisa/local/A;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brisa/local/e;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/e;->g:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/brisa/local/e;->h:Z

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/brisa/local/e;->i:Lorg/json/JSONArray;

    iput v0, p0, Lcom/brisa/local/e;->j:I

    iput v0, p0, Lcom/brisa/local/e;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/brisa/local/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/brisa/local/e;->d:Lcom/brisa/local/A;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 2

    iget-boolean v0, p0, Lcom/brisa/local/e;->g:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/brisa/local/e;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/brisa/local/e;->j:I

    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/e;->i:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/brisa/local/e;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/brisa/local/v;->f(Landroid/content/Context;Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget p1, p0, Lcom/brisa/local/e;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/brisa/local/e;->k:I

    :goto_0
    iget-object p1, p0, Lcom/brisa/local/e;->i:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    const-string p1, ""

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/brisa/local/e;->c(Ljava/lang/String;ZZ)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/brisa/local/e;->g:Z

    iget-object v0, p0, Lcom/brisa/local/e;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/brisa/local/e;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;ZZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/brisa/local/e;->g:Z

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "importId"

    iget-object v4, p0, Lcom/brisa/local/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "batchId"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "items"

    iget-object v3, p0, Lcom/brisa/local/e;->i:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "found"

    iget v3, p0, Lcom/brisa/local/e;->j:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "failed"

    iget v3, p0, Lcom/brisa/local/e;->k:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "done"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "limited"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "error"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lcom/brisa/local/e;->c:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/brisa/local/e;->a:Ljava/util/concurrent/CountDownLatch;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/brisa/local/e;->d:Lcom/brisa/local/A;

    invoke-virtual {p1}, Lcom/brisa/local/A;->run()V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_1
    iput-object p1, p0, Lcom/brisa/local/e;->c:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/brisa/local/e;->a:Ljava/util/concurrent/CountDownLatch;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/e;->i:Lorg/json/JSONArray;

    iget-boolean p1, p0, Lcom/brisa/local/e;->g:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method
