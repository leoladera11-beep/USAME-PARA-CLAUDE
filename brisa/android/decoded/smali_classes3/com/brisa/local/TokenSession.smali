.class public final Lcom/brisa/local/TokenSession;
.super Ljava/lang/Object;
.source "TokenSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brisa/local/TokenSession$Transport;
    }
.end annotation


# static fields
.field public static final ABOUT:Ljava/lang/String; = "https://www.googleapis.com/drive/v3/about?fields=user(emailAddress)"

.field static final DEFAULT_LIFE_MS:J = 0x2dc6c0L

.field public static final INFO:Ljava/lang/String; = "https://oauth2.googleapis.com/tokeninfo?access_token="

.field static final MARGIN_MS:J = 0xea60L

.field public static final RENEW:Ljava/lang/String; = "https://oauth2.googleapis.com/token"


# instance fields
.field public access:Ljava/lang/String;

.field public clientId:Ljava/lang/String;

.field public clientSecret:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public expiry:J

.field public refresh:Ljava/lang/String;

.field public scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/brisa/local/TokenSession;->access:Ljava/lang/String;

    iput-object v0, p0, Lcom/brisa/local/TokenSession;->refresh:Ljava/lang/String;

    iput-object v0, p0, Lcom/brisa/local/TokenSession;->clientId:Ljava/lang/String;

    iput-object v0, p0, Lcom/brisa/local/TokenSession;->clientSecret:Ljava/lang/String;

    iput-object v0, p0, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/brisa/local/TokenSession;->scope:Ljava/lang/String;

    return-void
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 51
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v0, p0

    .line 52
    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Bearer "

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_1
    return-object v0
.end method

.method public static connect(Lorg/json/JSONObject;Lcom/brisa/local/TokenSession$Transport;J)Lcom/brisa/local/TokenSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/brisa/local/TokenSession;

    invoke-direct {v0}, Lcom/brisa/local/TokenSession;-><init>()V

    .line 91
    const-string v1, "access"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brisa/local/TokenSession;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brisa/local/TokenSession;->access:Ljava/lang/String;

    .line 92
    const-string v1, "refresh"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brisa/local/TokenSession;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brisa/local/TokenSession;->refresh:Ljava/lang/String;

    .line 93
    const-string v1, "clientId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brisa/local/TokenSession;->clientId:Ljava/lang/String;

    .line 94
    const-string v1, "clientSecret"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/brisa/local/TokenSession;->clientSecret:Ljava/lang/String;

    .line 95
    iget-object p0, v0, Lcom/brisa/local/TokenSession;->refresh:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const/16 v1, 0x14

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/brisa/local/TokenSession;->refresh:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/brisa/local/TokenSession;->plausible(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/brisa/local/TokenSession;->clientId:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/brisa/local/TokenSession;->plausible(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/brisa/local/TokenSession;->clientSecret:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/brisa/local/TokenSession;->clientSecret:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/brisa/local/TokenSession;->plausible(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "El token de actualizaci\u00f3n necesita tambi\u00e9n el ID de cliente (y su secreto, si lo tiene) sin espacios ni saltos de l\u00ednea."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/brisa/local/TokenSession;->access:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/brisa/local/TokenSession;->permanent()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lcom/brisa/local/TokenSession;->renew(Lcom/brisa/local/TokenSession$Transport;J)V

    .line 98
    :cond_2
    iget-object p0, v0, Lcom/brisa/local/TokenSession;->access:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/brisa/local/TokenSession;->plausible(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 100
    iget-object p0, v0, Lcom/brisa/local/TokenSession;->access:Ljava/lang/String;

    const-string v1, "https://www.googleapis.com/drive/v3/about?fields=user(emailAddress)"

    const/4 v2, 0x0

    invoke-interface {p1, v1, p0, v2}, Lcom/brisa/local/TokenSession$Transport;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 101
    const/4 v3, 0x0

    aget-object v4, p0, v3

    const-string v5, "401"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/brisa/local/TokenSession;->permanent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    invoke-virtual {v0, p1, p2, p3}, Lcom/brisa/local/TokenSession;->renew(Lcom/brisa/local/TokenSession$Transport;J)V

    .line 103
    iget-object p0, v0, Lcom/brisa/local/TokenSession;->access:Ljava/lang/String;

    invoke-interface {p1, v1, p0, v2}, Lcom/brisa/local/TokenSession$Transport;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 105
    :cond_3
    aget-object v1, p0, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 106
    aget-object v1, p0, v3

    const-string v4, "403"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 107
    aget-object v1, p0, v3

    const-string v4, "200"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 108
    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/brisa/local/TokenSession;->json(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v5, "user"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 109
    if-nez p0, :cond_4

    const-string p0, ""

    goto :goto_1

    :cond_4
    const-string v5, "emailAddress"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    iput-object p0, v0, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    .line 110
    iget-object p0, v0, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    .line 112
    iget-wide v5, v0, Lcom/brisa/local/TokenSession;->expiry:J

    cmp-long p0, v5, p2

    if-gtz p0, :cond_7

    .line 114
    nop

    .line 116
    const-wide/16 v5, 0x0

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://oauth2.googleapis.com/tokeninfo?access_token="

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v7, v0, Lcom/brisa/local/TokenSession;->access:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v2, v2}, Lcom/brisa/local/TokenSession$Transport;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 117
    aget-object p1, p0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 118
    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/brisa/local/TokenSession;->json(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 119
    const-string p1, "expires_in"

    invoke-virtual {p0, p1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :try_start_1
    const-string p1, "scope"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/brisa/local/TokenSession;->scope:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 122
    :catch_0
    move-exception p0

    goto :goto_2

    .line 117
    :cond_5
    move-wide v1, v5

    goto :goto_2

    .line 122
    :catch_1
    move-exception p0

    move-wide v1, v5

    :goto_2
    nop

    .line 123
    cmp-long p0, v1, v5

    if-lez p0, :cond_6

    const-wide/16 p0, 0x3e8

    mul-long/2addr v1, p0

    goto :goto_3

    :cond_6
    const-wide/32 v1, 0x2dc6c0

    :goto_3
    add-long/2addr p2, v1

    iput-wide p2, v0, Lcom/brisa/local/TokenSession;->expiry:J

    .line 125
    :cond_7
    return-object v0

    .line 110
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Drive no indic\u00f3 a qu\u00e9 cuenta pertenece el token."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_9
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Drive no respondi\u00f3 (HTTP "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-object p0, p0, v3

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "). Comprueba tu conexi\u00f3n."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "El token no tiene permiso para Google Drive. Genera uno con el permiso drive.file o drive."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "El token no es v\u00e1lido o ya caduc\u00f3. Genera uno nuevo."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Pega un token de acceso OAuth v\u00e1lido, sin espacios ni saltos de l\u00ednea."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static varargs form([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static json(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static load(Ljava/lang/String;)Lcom/brisa/local/TokenSession;
    .locals 3

    .line 136
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-static {p0}, Lcom/brisa/local/TokenSession;->json(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 137
    new-instance v0, Lcom/brisa/local/TokenSession;

    invoke-direct {v0}, Lcom/brisa/local/TokenSession;-><init>()V

    .line 138
    const-string v1, "access"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brisa/local/TokenSession;->access:Ljava/lang/String;

    const-string v1, "refresh"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brisa/local/TokenSession;->refresh:Ljava/lang/String;

    .line 139
    const-string v1, "clientId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brisa/local/TokenSession;->clientId:Ljava/lang/String;

    const-string v1, "clientSecret"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brisa/local/TokenSession;->clientSecret:Ljava/lang/String;

    .line 140
    const-string v1, "email"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    const-string v1, "scope"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brisa/local/TokenSession;->scope:Ljava/lang/String;

    const-string v1, "expiry"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/brisa/local/TokenSession;->expiry:J

    .line 141
    return-object v0
.end method

.method public static plausible(Ljava/lang/String;I)Z
    .locals 1

    .line 47
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x1000

    if-gt p1, v0, :cond_0

    const-string p1, "[A-Za-z0-9._~+/=:-]+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public minutesLeft(J)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/brisa/local/TokenSession;->expiry:J

    sub-long/2addr v0, p1

    const-wide/32 p1, 0xea60

    div-long/2addr v0, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public permanent()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/brisa/local/TokenSession;->refresh:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brisa/local/TokenSession;->clientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public renew(Lcom/brisa/local/TokenSession$Transport;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/brisa/local/TokenSession;->permanent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 72
    iget-object v0, p0, Lcom/brisa/local/TokenSession;->clientSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const-string v3, "client_id"

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, "grant_type"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "refresh_token"

    if-eqz v0, :cond_0

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    aput-object v7, v0, v9

    aput-object v10, v0, v8

    aput-object v10, v0, v6

    iget-object v1, p0, Lcom/brisa/local/TokenSession;->refresh:Ljava/lang/String;

    aput-object v1, v0, v5

    aput-object v3, v0, v4

    iget-object v1, p0, Lcom/brisa/local/TokenSession;->clientId:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/brisa/local/TokenSession;->form([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    aput-object v7, v0, v9

    aput-object v10, v0, v8

    aput-object v10, v0, v6

    iget-object v6, p0, Lcom/brisa/local/TokenSession;->refresh:Ljava/lang/String;

    aput-object v6, v0, v5

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/brisa/local/TokenSession;->clientId:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "client_secret"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/brisa/local/TokenSession;->clientSecret:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/brisa/local/TokenSession;->form([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    const-string v1, "https://oauth2.googleapis.com/token"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/brisa/local/TokenSession$Transport;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 76
    aget-object v0, p1, v8

    invoke-static {v0}, Lcom/brisa/local/TokenSession;->json(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 77
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    aget-object p1, p1, v9

    const-string v2, "200"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x14

    invoke-static {v1, p1}, Lcom/brisa/local/TokenSession;->plausible(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 82
    :cond_1
    iput-object v1, p0, Lcom/brisa/local/TokenSession;->access:Ljava/lang/String;

    .line 83
    const-string p1, "expires_in"

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 84
    cmp-long p1, v3, v1

    if-lez p1, :cond_2

    const-wide/16 v1, 0x3e8

    mul-long/2addr v3, v1

    goto :goto_1

    :cond_2
    const-wide/32 v3, 0x2dc6c0

    :goto_1
    add-long/2addr p2, v3

    iput-wide p2, p0, Lcom/brisa/local/TokenSession;->expiry:J

    .line 85
    const-string p1, "scope"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brisa/local/TokenSession;->scope:Ljava/lang/String;

    .line 86
    :cond_3
    return-void

    .line 79
    :cond_4
    :goto_2
    const-string p1, "error"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "error_description"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[.\\s]+$"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Google no renov\u00f3 la sesi\u00f3n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "."

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " Revisa el token de actualizaci\u00f3n y los datos del cliente."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 71
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "El token de acceso caduc\u00f3. Pega uno nuevo en Google Drive."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public save()Lorg/json/JSONObject;
    .locals 4

    .line 130
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "access"

    iget-object v2, p0, Lcom/brisa/local/TokenSession;->access:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "refresh"

    iget-object v2, p0, Lcom/brisa/local/TokenSession;->refresh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/brisa/local/TokenSession;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "clientSecret"

    iget-object v2, p0, Lcom/brisa/local/TokenSession;->clientSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "email"

    iget-object v2, p0, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "scope"

    iget-object v2, p0, Lcom/brisa/local/TokenSession;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "expiry"

    iget-wide v2, p0, Lcom/brisa/local/TokenSession;->expiry:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public summary(J)Lorg/json/JSONObject;
    .locals 8

    .line 147
    const-string v0, " "

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "active"

    iget-object v3, p0, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "email"

    iget-object v3, p0, Lcom/brisa/local/TokenSession;->email:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "permanent"

    invoke-virtual {p0}, Lcom/brisa/local/TokenSession;->permanent()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "minutes"

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/brisa/local/TokenSession;->minutesLeft(J)J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "expired"

    invoke-virtual {p0}, Lcom/brisa/local/TokenSession;->permanent()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/brisa/local/TokenSession;->usable(J)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "fullDrive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brisa/local/TokenSession;->scope:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/auth/drive "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-object p1

    .line 150
    :catch_0
    move-exception p1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public usable(J)Z
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/brisa/local/TokenSession;->access:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/brisa/local/TokenSession;->expiry:J

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
