.class public final LQ/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ/s;


# static fields
.field public static final h:LP/B;


# instance fields
.field public final e:Ljava/util/UUID;

.field public final f:Landroid/media/MediaDrm;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LP/B;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LP/B;-><init>(I)V

    sput-object v0, LQ/v;->h:LP/B;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LG/m;->c:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Use C.CLEARKEY_UUID instead"

    invoke-static {v3, v1}, LF1/i;->f(Ljava/lang/String;Z)V

    iput-object p1, p0, LQ/v;->e:Ljava/util/UUID;

    new-instance v1, Landroid/media/MediaDrm;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-ge v3, v4, :cond_0

    sget-object v3, LG/m;->d:Ljava/util/UUID;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {v1, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, LQ/v;->f:Landroid/media/MediaDrm;

    iput v2, p0, LQ/v;->g:I

    sget-object v0, LG/m;->e:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, LG/Q;->a:Ljava/util/HashSet;

    const-string p1, "ASUS_Z00AD"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "securityLevel"

    const-string v0, "L3"

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/String;[B)Z
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    iget-object v3, p0, LQ/v;->e:Ljava/util/UUID;

    if-lt v0, v1, :cond_3

    sget-object v1, LG/m;->e:Ljava/util/UUID;

    invoke-virtual {v3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v4, p0, LQ/v;->f:Landroid/media/MediaDrm;

    if-eqz v1, :cond_2

    const/16 v1, 0x25

    if-lt v0, v1, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    const-string v1, "version"

    invoke-virtual {v4, v1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "v5."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "14."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "15."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "16.0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    sget-object v1, LG/m;->d:Ljava/util/UUID;

    invoke-virtual {v3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {v4, p2}, LN0/n;->a(Landroid/media/MediaDrm;[B)I

    move-result p2

    invoke-static {v4, p1, p2}, LO/h;->w(Landroid/media/MediaDrm;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_3
    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Landroid/media/MediaCrypto;

    const/16 v5, 0x1b

    if-ge v0, v5, :cond_4

    sget-object v0, LG/m;->d:Ljava/util/UUID;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, LG/m;->c:Ljava/util/UUID;

    goto :goto_2

    :cond_4
    move-object v0, v3

    :goto_2
    invoke-direct {v4, v0, p2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Landroid/media/MediaCryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Landroid/media/MediaCrypto;->release()V

    return p1

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_4

    :catch_0
    move-object v1, v4

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    :goto_3
    :try_start_2
    sget-object p1, LG/m;->d:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    xor-int/2addr p1, v2

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V

    :cond_5
    return p1

    :goto_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V

    :cond_6
    throw p1
.end method

.method public final C()[B
    .locals 1

    iget-object v0, p0, LQ/v;->f:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LQ/v;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LQ/v;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, LQ/v;->f:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d(La1/g;)V
    .locals 1

    new-instance v0, LQ/u;

    invoke-direct {v0, p0, p1}, LQ/u;-><init>(LQ/v;La1/g;)V

    iget-object p1, p0, LQ/v;->f:Landroid/media/MediaDrm;

    invoke-virtual {p1, v0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public final f([B[B)V
    .locals 1

    iget-object v0, p0, LQ/v;->f:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public final g([B)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, LQ/v;->f:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public final h([B)V
    .locals 1

    iget-object v0, p0, LQ/v;->f:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public final i([B[B)[B
    .locals 9

    sget-object v0, LG/m;->d:Ljava/util/UUID;

    iget-object v1, p0, LQ/v;->e:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"keys\":["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "keys"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eqz v2, :cond_1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "{\"k\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "k"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x2f

    const/16 v8, 0x5f

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"kid\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "kid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"kty\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "kty"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "]}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-object v1, LJ/W;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v2, "Failed to adjust response data: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClearKeyUtil"

    invoke-static {v2, v1, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    iget-object v0, p0, LQ/v;->f:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final k()LQ/r;
    .locals 3

    iget-object v0, p0, LQ/v;->f:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    new-instance v1, LQ/r;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, LQ/r;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method public final m([B)V
    .locals 1

    iget-object v0, p0, LQ/v;->f:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public final p([BLjava/util/List;ILjava/util/HashMap;)LQ/q;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v3, "<LA_URL>https://x</LA_URL>"

    iget-object v4, v0, LQ/v;->e:Ljava/util/UUID;

    const/4 v5, 0x0

    if-eqz v1, :cond_11

    sget-object v6, LG/m;->e:Ljava/util/UUID;

    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v6, :cond_0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/r;

    goto/16 :goto_4

    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v6, v10, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_3

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/r;

    move v10, v8

    move v11, v10

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LG/r;

    iget-object v13, v12, LG/r;->i:[B

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v12, LG/r;->h:Ljava/lang/String;

    iget-object v15, v6, LG/r;->h:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v12, v12, LG/r;->g:Ljava/lang/String;

    iget-object v14, v6, LG/r;->g:Ljava/lang/String;

    invoke-static {v12, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v13}, Lv0/r;->h([B)LN/Y;

    move-result-object v12

    if-eqz v12, :cond_3

    array-length v12, v13

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    new-array v10, v11, [B

    move v11, v8

    move v12, v11

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_2

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LG/r;

    iget-object v13, v13, LG/r;->i:[B

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v14, v13

    invoke-static {v13, v8, v10, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, LG/r;

    iget-object v11, v6, LG/r;->f:Ljava/util/UUID;

    iget-object v12, v6, LG/r;->g:Ljava/lang/String;

    iget-object v6, v6, LG/r;->h:Ljava/lang/String;

    invoke-direct {v1, v11, v12, v6, v10}, LG/r;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_4

    :cond_3
    move v6, v8

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LG/r;

    iget-object v11, v10, LG/r;->i:[B

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lv0/r;->h([B)LN/Y;

    move-result-object v11

    if-nez v11, :cond_4

    move v11, v7

    goto :goto_3

    :cond_4
    iget v11, v11, LN/Y;->a:I

    :goto_3
    if-ne v11, v9, :cond_5

    move-object v1, v10

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/r;

    :goto_4
    iget-object v6, v1, LG/r;->i:[B

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, LG/m;->f:Ljava/util/UUID;

    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {v4, v6}, Lv0/r;->i(Ljava/util/UUID;[B)[B

    move-result-object v11

    if-nez v11, :cond_7

    goto :goto_5

    :cond_7
    move-object v6, v11

    :goto_5
    new-instance v11, LJ/D;

    invoke-direct {v11, v6}, LJ/D;-><init>([B)V

    invoke-virtual {v11}, LJ/D;->o()I

    move-result v12

    invoke-virtual {v11}, LJ/D;->q()S

    move-result v13

    invoke-virtual {v11}, LJ/D;->q()S

    move-result v14

    const-string v15, "FrameworkMediaDrm"

    if-ne v13, v9, :cond_b

    if-eq v14, v9, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v11}, LJ/D;->q()S

    move-result v9

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v9, v2}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "<LA_URL>"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_7

    :cond_9
    const-string v6, "</DATA>"

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_a

    const-string v7, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    invoke-static {v15, v7}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v12, v12, 0x34

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-short v9, v13

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v9, v14

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    goto :goto_7

    :cond_b
    :goto_6
    const-string v2, "Unexpected record count or type. Skipping LA_URL workaround."

    invoke-static {v15, v2}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-static {v10, v5, v6}, Lv0/r;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v6

    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1b

    if-ge v2, v5, :cond_d

    sget-object v2, LG/m;->d:Ljava/util/UUID;

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v8, 0x1

    :cond_d
    if-eqz v8, :cond_e

    invoke-static {v6}, Lv0/r;->h([B)LN/Y;

    move-result-object v2

    if-eqz v2, :cond_e

    sget-object v5, LG/m;->c:Ljava/util/UUID;

    iget-object v6, v2, LN/Y;->d:Ljava/lang/Object;

    check-cast v6, [Ljava/util/UUID;

    iget-object v2, v2, LN/Y;->c:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v5, v6, v2}, Lv0/r;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v6

    :cond_e
    sget-object v2, LG/Q;->a:Ljava/util/HashSet;

    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "Amazon"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "AFTB"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "AFTS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "AFTM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "AFTT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    invoke-static {v4, v6}, Lv0/r;->i(Ljava/util/UUID;[B)[B

    move-result-object v2

    if-eqz v2, :cond_10

    move-object v5, v2

    goto :goto_8

    :cond_10
    move-object v5, v6

    :goto_8
    iget-object v2, v1, LG/r;->h:Ljava/lang/String;

    move-object v9, v2

    move-object v8, v5

    move-object v5, v1

    goto :goto_9

    :cond_11
    move-object v8, v5

    move-object v9, v8

    :goto_9
    iget-object v6, v0, LQ/v;->f:Landroid/media/MediaDrm;

    move-object/from16 v7, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v2

    sget-object v6, LG/m;->d:Ljava/util/UUID;

    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    if-lt v4, v6, :cond_12

    goto :goto_a

    :cond_12
    sget-object v4, LJ/W;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x2b

    const/16 v7, 0x2d

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2f

    const/16 v7, 0x5f

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    :cond_13
    :goto_a
    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, ""

    if-eqz v3, :cond_15

    :cond_14
    :goto_b
    move-object v4, v6

    goto :goto_c

    :cond_15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    if-lt v3, v7, :cond_16

    const-string v3, "https://default.url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "version"

    iget-object v7, v0, LQ/v;->f:Landroid/media/MediaDrm;

    invoke-virtual {v7, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "1.2"

    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "aidl-1"

    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_b

    :cond_16
    :goto_c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v5, :cond_17

    iget-object v3, v5, LG/r;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    move-object v4, v3

    :cond_17
    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    new-instance v1, LQ/q;

    invoke-direct {v1, v4, v2}, LQ/q;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method public final q([BLO/j;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, LQ/v;->f:Landroid/media/MediaDrm;

    invoke-virtual {p2}, LO/j;->a()Landroid/media/metrics/LogSessionId;

    move-result-object p2

    invoke-static {}, LO/h;->i()Landroid/media/metrics/LogSessionId;

    invoke-static {p2}, LO/h;->x(Landroid/media/metrics/LogSessionId;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, LO/h;->g(Landroid/media/MediaDrm;[B)Landroid/media/MediaDrm$PlaybackComponent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LO/h;->h(Ljava/lang/Object;)Landroid/media/MediaDrm$PlaybackComponent;

    move-result-object p1

    invoke-static {p1, p2}, LO/h;->t(Landroid/media/MediaDrm$PlaybackComponent;Landroid/media/metrics/LogSessionId;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "FrameworkMediaDrm"

    const-string p2, "setLogSessionId failed."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final u()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final z([B)LM/a;
    .locals 4

    new-instance v0, LQ/t;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    iget-object v3, p0, LQ/v;->e:Ljava/util/UUID;

    if-ge v1, v2, :cond_0

    sget-object v1, LG/m;->d:Ljava/util/UUID;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v3, LG/m;->c:Ljava/util/UUID;

    :cond_0
    invoke-direct {v0, v3, p1}, LQ/t;-><init>(Ljava/util/UUID;[B)V

    return-object v0
.end method
