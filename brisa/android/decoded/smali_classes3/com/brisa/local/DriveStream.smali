.class public final Lcom/brisa/local/DriveStream;
.super Ljava/lang/Object;
.source "DriveStream.java"


# static fields
.field private static final CHARS:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

.field private static final PREFS:Ljava/lang/String; = "brisa-tuning"

.field private static app:Landroid/content/Context;

.field private static volatile lastMessage:Ljava/lang/String;

.field private static lastNotice:J

.field private static relay:Lcom/brisa/local/StreamRelay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/brisa/local/DriveStream;->lastMessage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static account(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 67
    const-string v0, "brisa-drive"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "email"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static audio(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    .line 128
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "v"

    const-string v2, "u"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/brisa/local/MobileVideoFiles;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 129
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    const-string v2, "asset:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p0, p1}, Lcom/brisa/local/MobileVideoFiles;->asset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 131
    invoke-static {p1}, Lcom/brisa/local/DriveStream;->streamable(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/brisa/local/DriveStream;->remote(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .line 129
    :cond_2
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception p0

    .line 133
    return-object v0
.end method

.method public static check(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 72
    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->expired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "La sesi\u00f3n de Drive por token caduc\u00f3. Abre Google Drive y pega un token nuevo."

    return-object p0

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/brisa/local/DriveStream;->network(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {p0}, Lcom/brisa/local/DriveStream;->account(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0}, Lcom/brisa/local/DriveStream;->mobileAllowed(Landroid/content/Context;)Z

    move-result p0

    invoke-static {v1, v2, v0, p0}, Lcom/brisa/local/DriveStream;->refusal(ZZZZ)Ljava/lang/String;

    move-result-object p0

    .line 75
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method static synthetic lambda$remote$0(Lcom/brisa/local/StreamRelay;)V
    .locals 0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/brisa/local/StreamRelay;->start()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static lastMessage()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/brisa/local/DriveStream;->lastMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static mobileAllowed(Landroid/content/Context;)Z
    .locals 2

    .line 45
    const-string v0, "brisa-tuning"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "streamMobile"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static network(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 55
    const-string v0, "none"

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 56
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 57
    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 58
    :goto_0
    if-eqz v1, :cond_5

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    .line 59
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 60
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    const-string p0, "wifi"

    goto :goto_2

    :cond_4
    const-string p0, "mobile"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object p0

    .line 58
    :cond_5
    :goto_3
    return-object v0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    return-object v0
.end method

.method private static notice(Ljava/lang/String;)V
    .locals 6

    .line 83
    sput-object p0, Lcom/brisa/local/DriveStream;->lastMessage:Ljava/lang/String;

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 85
    sget-wide v2, Lcom/brisa/local/DriveStream;->lastNotice:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 86
    :cond_0
    sput-wide v0, Lcom/brisa/local/DriveStream;->lastNotice:J

    .line 88
    :try_start_0
    const-string v0, "brisa-stream"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "message"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/brisa/local/MobileVideoFiles;->emit(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception p0

    :goto_0
    nop

    .line 90
    return-void
.end method

.method static open(Ljava/lang/String;Ljava/lang/String;)Lcom/brisa/local/StreamRelay$Reply;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    sget-object v1, Lcom/brisa/local/DriveStream;->app:Landroid/content/Context;

    .line 193
    if-eqz v1, :cond_12

    .line 196
    :try_start_0
    invoke-static {v1, p0}, Lcom/brisa/local/MobileVideoFiles;->asset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const/4 p0, 0x0

    .line 200
    :goto_0
    invoke-static {p0}, Lcom/brisa/local/DriveStream;->streamable(Lorg/json/JSONObject;)Z

    move-result v0

    const/16 v2, 0x194

    if-eqz v0, :cond_11

    .line 201
    const-string v0, "driveId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v3, "[a-zA-Z0-9_-]{1,200}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 203
    invoke-static {v1}, Lcom/brisa/local/DriveStream;->check(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "account"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/brisa/local/DriveStream;->account(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    const-string v3, "Este archivo pertenece a otra cuenta de Drive. Conecta esa cuenta para reproducirlo."

    .line 206
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v4, 0x193

    if-eqz v1, :cond_f

    .line 212
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/brisa/local/DriveStream;->token(Z)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lcom/brisa/local/StreamRelay$Refused; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    nop

    .line 217
    invoke-static {v0, p1, v1}, Lcom/brisa/local/DriveStream;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 219
    const/16 v5, 0x191

    if-ne v3, v5, :cond_1

    .line 220
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 221
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/brisa/local/DriveStream;->token(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/brisa/local/DriveStream;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    move v7, v3

    goto :goto_1

    .line 219
    :cond_1
    move v7, v3

    .line 224
    :goto_1
    const/16 p1, 0xc8

    if-eq v7, p1, :cond_b

    const/16 p1, 0xce

    if-eq v7, p1, :cond_b

    .line 225
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 226
    const/16 p0, 0x1a0

    if-ne v7, v2, :cond_2

    const-string p1, "El archivo ya no existe en tu Drive."

    goto :goto_3

    .line 227
    :cond_2
    if-eq v7, v5, :cond_5

    if-ne v7, v4, :cond_3

    goto :goto_2

    .line 228
    :cond_3
    if-ne v7, p0, :cond_4

    const-string p1, "Posici\u00f3n fuera del archivo."

    goto :goto_3

    .line 229
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Drive no respondi\u00f3 (HTTP "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "). Comprueba tu conexi\u00f3n."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 227
    :cond_5
    :goto_2
    const-string p1, "Drive no permiti\u00f3 leer el archivo. Renueva la conexi\u00f3n desde Google Drive."

    .line 230
    :goto_3
    if-eq v7, p0, :cond_6

    invoke-static {p1}, Lcom/brisa/local/DriveStream;->notice(Ljava/lang/String;)V

    .line 231
    :cond_6
    new-instance v0, Lcom/brisa/local/StreamRelay$Refused;

    if-eq v7, p0, :cond_9

    if-eq v7, v2, :cond_a

    if-eq v7, v5, :cond_8

    if-ne v7, v4, :cond_7

    goto :goto_4

    :cond_7
    const/16 v2, 0x1f6

    goto :goto_5

    :cond_8
    :goto_4
    move v2, v4

    goto :goto_5

    :cond_9
    move v2, p0

    :cond_a
    :goto_5
    invoke-direct {v0, v2, p1}, Lcom/brisa/local/StreamRelay$Refused;-><init>(ILjava/lang/String;)V

    throw v0

    .line 233
    :cond_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 234
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "application/octet-stream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    move-object v8, p1

    goto :goto_8

    .line 235
    :cond_d
    :goto_6
    const-string p1, "kind"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "name"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/brisa/local/AudioExport;->mime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_e
    const-string p0, "video/mp4"

    :goto_7
    move-object p1, p0

    move-object v8, p1

    .line 236
    :goto_8
    new-instance v6, Lcom/brisa/local/StreamRelay$Reply;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v9

    const-string p0, "Content-Range"

    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/brisa/local/StreamRelay$Reply;-><init>(ILjava/lang/String;JLjava/lang/String;Ljava/io/InputStream;)V

    return-object v6

    .line 213
    :catch_1
    move-exception v0

    move-object p0, v0

    .line 214
    invoke-virtual {p0}, Lcom/brisa/local/StreamRelay$Refused;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/brisa/local/DriveStream;->notice(Ljava/lang/String;)V

    .line 215
    throw p0

    .line 207
    :cond_f
    invoke-static {v3}, Lcom/brisa/local/DriveStream;->notice(Ljava/lang/String;)V

    .line 208
    new-instance p0, Lcom/brisa/local/StreamRelay$Refused;

    invoke-direct {p0, v4, v3}, Lcom/brisa/local/StreamRelay$Refused;-><init>(ILjava/lang/String;)V

    throw p0

    .line 202
    :cond_10
    new-instance p0, Lcom/brisa/local/StreamRelay$Refused;

    const-string p1, "Archivo de Drive no v\u00e1lido."

    invoke-direct {p0, v2, p1}, Lcom/brisa/local/StreamRelay$Refused;-><init>(ILjava/lang/String;)V

    throw p0

    .line 200
    :cond_11
    new-instance p0, Lcom/brisa/local/StreamRelay$Refused;

    const-string p1, "Este archivo ya no est\u00e1 en tu biblioteca."

    invoke-direct {p0, v2, p1}, Lcom/brisa/local/StreamRelay$Refused;-><init>(ILjava/lang/String;)V

    throw p0

    .line 193
    :cond_12
    new-instance p0, Lcom/brisa/local/StreamRelay$Refused;

    const/16 p1, 0x1f7

    const-string v0, "Brisa se est\u00e1 iniciando."

    invoke-direct {p0, p1, v0}, Lcom/brisa/local/StreamRelay$Refused;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static queued(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    .line 140
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "v"

    const-string v2, "u"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/brisa/local/MobileVideoFiles;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 141
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    const-string v2, "asset:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p0, p1}, Lcom/brisa/local/MobileVideoFiles;->asset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/brisa/local/DriveStream;->streamable(Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "brisa-stream:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .line 141
    :cond_2
    :goto_0
    return-object v1

    .line 143
    :catch_0
    move-exception p0

    .line 144
    return-object v0
.end method

.method public static refusal(ZZZZ)Ljava/lang/String;
    .locals 0

    .line 38
    if-nez p0, :cond_0

    const-string p0, "Conecta tu cuenta en Google Drive para reproducir este archivo desde la nube."

    return-object p0

    .line 39
    :cond_0
    if-nez p1, :cond_1

    const-string p0, "Sin conexi\u00f3n. Este archivo est\u00e1 solo en Drive: con\u00e9ctate o gu\u00e1rdalo sin conexi\u00f3n."

    return-object p0

    .line 40
    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    const-string p0, "Este archivo est\u00e1 en Drive y la reproducci\u00f3n en la nube est\u00e1 limitada a Wi-Fi. Puedes permitir datos m\u00f3viles en Ajustes."

    return-object p0

    .line 41
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized remote(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/net/Uri;
    .locals 6

    const-class v0, Lcom/brisa/local/DriveStream;

    monitor-enter v0

    .line 97
    :try_start_0
    invoke-static {p0}, Lcom/brisa/local/DriveStream;->check(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 99
    invoke-static {v1}, Lcom/brisa/local/DriveStream;->notice(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v0

    return-object v3

    .line 103
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/brisa/local/DriveStream;->app:Landroid/content/Context;

    .line 104
    sget-object p0, Lcom/brisa/local/DriveStream;->relay:Lcom/brisa/local/StreamRelay;

    if-nez p0, :cond_2

    .line 105
    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v2, v4, :cond_1

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    new-instance p0, Lcom/brisa/local/StreamRelay;

    new-instance v2, Lcom/brisa/local/DriveStream$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/brisa/local/DriveStream$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/brisa/local/StreamRelay;-><init>(Lcom/brisa/local/StreamRelay$Source;Ljava/lang/String;)V

    sput-object p0, Lcom/brisa/local/DriveStream;->relay:Lcom/brisa/local/StreamRelay;

    .line 110
    :cond_2
    sget-object p0, Lcom/brisa/local/DriveStream;->relay:Lcom/brisa/local/StreamRelay;

    invoke-virtual {p0}, Lcom/brisa/local/StreamRelay;->port()I

    move-result p0

    if-nez p0, :cond_4

    .line 112
    sget-object p0, Lcom/brisa/local/DriveStream;->relay:Lcom/brisa/local/StreamRelay;

    .line 113
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/brisa/local/DriveStream$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/brisa/local/DriveStream$$ExternalSyntheticLambda1;-><init>(Lcom/brisa/local/StreamRelay;)V

    const-string p0, "brisa-stream-open"

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 115
    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 116
    sget-object p0, Lcom/brisa/local/DriveStream;->relay:Lcom/brisa/local/StreamRelay;

    invoke-virtual {p0}, Lcom/brisa/local/StreamRelay;->port()I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No se pudo abrir el puente local."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_4
    :goto_1
    sget-object p0, Lcom/brisa/local/DriveStream;->relay:Lcom/brisa/local/StreamRelay;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brisa/local/StreamRelay;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 119
    :catch_0
    move-exception p0

    .line 120
    :try_start_2
    const-string p0, "No se pudo preparar la reproducci\u00f3n desde Drive. Int\u00e9ntalo otra vez."

    invoke-static {p0}, Lcom/brisa/local/DriveStream;->notice(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    monitor-exit v0

    return-object v3

    .line 96
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.googleapis.com/drive/v3/files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "?alt=media&supportsAllDrives=true"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 181
    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 182
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string p2, "Accept-Encoding"

    const-string v0, "identity"

    invoke-virtual {p0, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-eqz p1, :cond_0

    const-string p2, "Range"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    return-object p0
.end method

.method public static setMobileAllowed(Landroid/content/Context;Z)V
    .locals 2

    .line 49
    const-string v0, "brisa-tuning"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "streamMobile"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    return-void
.end method

.method static streamable(Lorg/json/JSONObject;)Z
    .locals 1

    .line 93
    if-eqz p0, :cond_0

    const-string v0, "driveId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[a-zA-Z0-9_-]{1,100}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static token(Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const-string v0, "Abre Google Drive en Brisa y renueva la conexi\u00f3n."

    const/16 v1, 0x191

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.brisa.local.u"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 164
    if-eqz p0, :cond_0

    sget-object p0, Lcom/brisa/local/DriveStream;->app:Landroid/content/Context;

    invoke-static {p0}, Lcom/brisa/local/ManualAuth;->invalidate(Landroid/content/Context;)V

    const-string p0, "b"

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 165
    :cond_0
    const-string p0, "c"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v3, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sget-object v4, Lcom/brisa/local/DriveStream;->app:Landroid/content/Context;

    const-string v5, "https://www.googleapis.com/drive/v3/files"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string p0, "a"

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 167
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 168
    return-object p0

    .line 167
    :cond_1
    new-instance p0, Lcom/brisa/local/StreamRelay$Refused;

    invoke-direct {p0, v1, v0}, Lcom/brisa/local/StreamRelay$Refused;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :catch_0
    move-exception p0

    .line 175
    new-instance p0, Lcom/brisa/local/StreamRelay$Refused;

    invoke-direct {p0, v1, v0}, Lcom/brisa/local/StreamRelay$Refused;-><init>(ILjava/lang/String;)V

    throw p0

    .line 172
    :catch_1
    move-exception p0

    .line 173
    throw p0

    .line 169
    :catch_2
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 171
    :goto_0
    new-instance p0, Lcom/brisa/local/StreamRelay$Refused;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/brisa/local/StreamRelay$Refused;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static video(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    .line 151
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "d0"

    const-string v2, "s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/brisa/local/MobileVideoFiles;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 152
    if-eqz v1, :cond_0

    return-object v1

    .line 153
    :cond_0
    invoke-static {p0, p1}, Lcom/brisa/local/MobileVideoFiles;->asset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 154
    invoke-static {p1}, Lcom/brisa/local/DriveStream;->streamable(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/brisa/local/DriveStream;->remote(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .line 155
    :catch_0
    move-exception p0

    .line 156
    return-object v0
.end method
