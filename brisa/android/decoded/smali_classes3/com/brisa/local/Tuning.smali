.class public final Lcom/brisa/local/Tuning;
.super Ljava/lang/Object;
.source "Tuning.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public setAudioFormat(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/brisa/local/AudioExport;->setFormat(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setStreamMobile(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/brisa/local/DriveStream;->setMobileAllowed(Landroid/content/Context;Z)V

    .line 38
    return-void
.end method

.method public state()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 18
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "streamMobile"

    iget-object v2, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    .line 19
    invoke-static {v2}, Lcom/brisa/local/DriveStream;->mobileAllowed(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    .line 20
    invoke-static {v2}, Lcom/brisa/local/DriveStream;->network(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "account"

    iget-object v2, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    .line 21
    invoke-static {v2}, Lcom/brisa/local/DriveStream;->account(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "audioFormat"

    .line 22
    iget-object v2, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/brisa/local/AudioExport;->original(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "original"

    goto :goto_1

    :cond_1
    const-string v2, "mp3"

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const-string v0, "{}"

    return-object v0
.end method

.method public streamCheck()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/brisa/local/DriveStream;->check(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
