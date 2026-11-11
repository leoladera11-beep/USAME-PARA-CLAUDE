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

.method private static reply(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5

    .line 48
    :try_start_0
    const-string v0, "com.brisa.local.h"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Throwable;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    :goto_0
    nop

    .line 50
    return-void
.end method


# virtual methods
.method public clearManualToken()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/brisa/local/ManualAuth;->clear(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method synthetic lambda$manualToken$0$com-brisa-local-Tuning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 57
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/brisa/local/ManualAuth;->connect(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/brisa/local/Tuning;->reply(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception p2

    .line 59
    invoke-static {p1, v0, p2}, Lcom/brisa/local/Tuning;->reply(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 61
    :goto_0
    return-void
.end method

.method public manualToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/brisa/local/Tuning$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/brisa/local/Tuning$$ExternalSyntheticLambda0;-><init>(Lcom/brisa/local/Tuning;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "brisa-token"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    return-void
.end method

.method public setAudioFormat(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/brisa/local/AudioExport;->setFormat(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setStreamMobile(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/brisa/local/DriveStream;->setMobileAllowed(Landroid/content/Context;Z)V

    .line 39
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

    const-string v1, "token"

    iget-object v2, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    .line 23
    invoke-static {v2}, Lcom/brisa/local/ManualAuth;->summary(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string v0, "{}"

    return-object v0
.end method

.method public streamCheck()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/brisa/local/Tuning;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/brisa/local/DriveStream;->check(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
