.class public final Lcom/brisa/local/ManualAuth;
.super Ljava/lang/Object;
.source "ManualAuth.java"


# static fields
.field static final NETWORK:Lcom/brisa/local/TokenSession$Transport;

.field private static final PREFS:Ljava/lang/String; = "brisa-drive-manual"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/brisa/local/ManualAuth$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/brisa/local/ManualAuth$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/brisa/local/ManualAuth;->NETWORK:Lcom/brisa/local/TokenSession$Transport;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static active(Landroid/content/Context;)Z
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->load(Landroid/content/Context;)Lcom/brisa/local/TokenSession;

    move-result-object p0

    iget-object p0, p0, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static declared-synchronized clear(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/brisa/local/ManualAuth;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v0

    return-void

    .line 111
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized connect(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/brisa/local/ManualAuth;

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 103
    sget-object v3, Lcom/brisa/local/ManualAuth;->NETWORK:Lcom/brisa/local/TokenSession$Transport;

    invoke-static {p1, v3, v1, v2}, Lcom/brisa/local/TokenSession;->connect(Lorg/json/JSONObject;Lcom/brisa/local/TokenSession$Transport;J)Lcom/brisa/local/TokenSession;

    move-result-object p1

    .line 104
    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "session"

    invoke-virtual {p1}, Lcom/brisa/local/TokenSession;->save()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "brisa-drive"

    .line 105
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v3, "email"

    iget-object v4, p1, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 107
    invoke-static {p1}, Lcom/brisa/local/ManualAuth;->publish(Lcom/brisa/local/TokenSession;)V

    .line 108
    invoke-virtual {p1, v1, v2}, Lcom/brisa/local/TokenSession;->summary(J)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 106
    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No se pudo guardar la sesi\u00f3n."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized ensure(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/brisa/local/ManualAuth;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->load(Landroid/content/Context;)Lcom/brisa/local/TokenSession;

    move-result-object v1

    .line 79
    iget-object v2, v1, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    .line 80
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    const-string v3, "brisa-drive"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "email"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    monitor-exit v0

    return-void

    .line 85
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 86
    invoke-virtual {v1, v2, v3}, Lcom/brisa/local/TokenSession;->usable(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 87
    sget-object v4, Lcom/brisa/local/ManualAuth;->NETWORK:Lcom/brisa/local/TokenSession$Transport;

    invoke-virtual {v1, v4, v2, v3}, Lcom/brisa/local/TokenSession;->renew(Lcom/brisa/local/TokenSession$Transport;J)V

    .line 88
    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "session"

    invoke-virtual {v1}, Lcom/brisa/local/TokenSession;->save()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    :cond_2
    invoke-static {v1}, Lcom/brisa/local/ManualAuth;->publish(Lcom/brisa/local/TokenSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    monitor-exit v0

    return-void

    .line 77
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static expired(Landroid/content/Context;)Z
    .locals 2

    .line 68
    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->load(Landroid/content/Context;)Lcom/brisa/local/TokenSession;

    move-result-object p0

    .line 69
    iget-object v0, p0, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/brisa/local/TokenSession;->permanent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/brisa/local/TokenSession;->usable(J)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized invalidate(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/brisa/local/ManualAuth;

    monitor-enter v0

    .line 95
    :try_start_0
    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->load(Landroid/content/Context;)Lcom/brisa/local/TokenSession;

    move-result-object v1

    .line 96
    iget-object v2, v1, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/brisa/local/TokenSession;->permanent()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/brisa/local/TokenSession;->expiry:J

    .line 98
    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "session"

    invoke-virtual {v1}, Lcom/brisa/local/TokenSession;->save()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit v0

    return-void

    .line 96
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 94
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 26
    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 27
    const/16 v0, 0x4e20

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 29
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Authorization"

    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_2

    .line 31
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 32
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0

    .line 35
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 36
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    const/16 v2, 0x190

    if-lt p2, v2, :cond_3

    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 38
    :goto_2
    const/16 v3, 0x1000

    :try_start_3
    new-array v3, v3, [B

    .line 39
    if-eqz v2, :cond_4

    :goto_3
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_4

    invoke-virtual {v1, v3, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 40
    :cond_4
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 41
    :cond_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 42
    nop

    .line 43
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v0

    const-string p2, "UTF-8"

    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    return-object p0

    .line 37
    :catchall_2
    move-exception p1

    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 41
    :catchall_4
    move-exception p1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 42
    throw p1
.end method

.method private static load(Landroid/content/Context;)Lcom/brisa/local/TokenSession;
    .locals 2

    .line 51
    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "session"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/brisa/local/TokenSession;->load(Ljava/lang/String;)Lcom/brisa/local/TokenSession;

    move-result-object p0

    return-object p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 47
    const-string v0, "brisa-drive-manual"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static publish(Lcom/brisa/local/TokenSession;)V
    .locals 8

    .line 56
    :try_start_0
    const-string v0, "com.brisa.local.u"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/brisa/local/TokenSession;->access:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/brisa/local/TokenSession;->expiry:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    :goto_0
    nop

    .line 60
    return-void
.end method

.method public static summary(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2

    .line 116
    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->load(Landroid/content/Context;)Lcom/brisa/local/TokenSession;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/brisa/local/TokenSession;->summary(J)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
