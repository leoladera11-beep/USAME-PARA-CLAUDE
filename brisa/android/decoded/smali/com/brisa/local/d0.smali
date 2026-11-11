.class public abstract Lcom/brisa/local/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-byte v5, v2, v4

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "%02x"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/brisa/local/a;->s(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v4, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "kind"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "localUri"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p0, p1}, Lcom/brisa/local/v;->j(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/brisa/local/v;->j(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string p1, "hidden"

    invoke-virtual {v5, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {p0, v5}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p0, v1}, Lcom/brisa/local/d0;->p(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    goto/16 :goto_6

    :cond_4
    const-string v2, "brisa-video-grants"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v4, "_display_name"

    const-string v5, "_size"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string v4, "Video"

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_3
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v8, "video/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    const-string p1, "(?i).*\\.(mp4|m4v|webm|mov|mkv|3gp)$"

    invoke-virtual {v4, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_9
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "id"

    invoke-virtual {p1, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const/16 v8, 0x100

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v4, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v8, "name"

    invoke-virtual {p1, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "size"

    invoke-virtual {p1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "uri"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_a

    return v3

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No se pudo registrar el v\u00eddeo en la biblioteca."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No es un v\u00eddeo."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "La biblioteca alcanz\u00f3 500 v\u00eddeos. Quita alguno antes de a\u00f1adir m\u00e1s."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_6
    return v0
.end method

.method public static b(III)V
    .locals 3

    const-string v0, "fromIndex: "

    if-ltz p0, :cond_1

    if-gt p1, p2, :cond_1

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " > toIndex: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", toIndex: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", size: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(JJ)J
    .locals 9

    add-long v0, p0, p2

    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-gez v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    xor-long v7, p0, v0

    cmp-long v4, v7, v4

    if-ltz v4, :cond_1

    move v3, v6

    :cond_1
    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    return-wide v0

    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "overflow: checkedAdd("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(LR0/O;LR0/v;Landroid/view/View;Landroid/view/View;LR0/F;Z)I
    .locals 0

    invoke-virtual {p4}, LR0/F;->u()I

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, LR0/O;->b()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-static {p2}, LR0/F;->C(Landroid/view/View;)I

    move-result p0

    invoke-static {p3}, LR0/F;->C(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1, p3}, LR0/v;->c(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p2}, LR0/v;->f(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1}, LR0/v;->n()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(LR0/O;LR0/v;Landroid/view/View;Landroid/view/View;LR0/F;ZZ)I
    .locals 3

    invoke-virtual {p4}, LR0/F;->u()I

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {p0}, LR0/O;->b()I

    move-result p4

    if-eqz p4, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, LR0/F;->C(Landroid/view/View;)I

    move-result p4

    invoke-static {p3}, LR0/F;->C(Landroid/view/View;)I

    move-result v1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {p2}, LR0/F;->C(Landroid/view/View;)I

    move-result v1

    invoke-static {p3}, LR0/F;->C(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz p6, :cond_1

    invoke-virtual {p0}, LR0/O;->b()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_2

    return p0

    :cond_2
    invoke-virtual {p1, p3}, LR0/v;->c(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p1, p2}, LR0/v;->f(Landroid/view/View;)I

    move-result p5

    sub-int/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {p2}, LR0/F;->C(Landroid/view/View;)I

    move-result p5

    invoke-static {p3}, LR0/F;->C(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p4

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float/2addr p0, p4

    invoke-virtual {p1}, LR0/v;->m()I

    move-result p3

    invoke-virtual {p1, p2}, LR0/v;->f(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static f(LR0/O;LR0/v;Landroid/view/View;Landroid/view/View;LR0/F;Z)I
    .locals 0

    invoke-virtual {p4}, LR0/F;->u()I

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, LR0/O;->b()I

    move-result p4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p0}, LR0/O;->b()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1, p3}, LR0/v;->c(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p1, p2}, LR0/v;->f(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p4, p1

    invoke-static {p2}, LR0/F;->C(Landroid/view/View;)I

    move-result p1

    invoke-static {p3}, LR0/F;->C(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p4

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p0}, LR0/O;->b()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    const-string v0, "brisa-video-grants"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static k(JJLjava/math/RoundingMode;)J
    .locals 9

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-long v0, p0, p2

    mul-long v2, p2, v0

    sub-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    xor-long/2addr p0, p2

    const/16 v7, 0x3f

    shr-long/2addr p0, v7

    long-to-int p0, p0

    const/4 p1, 0x1

    or-int/2addr p0, p1

    sget-object v7, Lw1/d;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    sub-long/2addr p1, v2

    sub-long/2addr v2, p1

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p4, p1, :cond_5

    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p4, p1, :cond_1

    const-wide/16 p1, 0x1

    and-long/2addr p1, v0

    cmp-long p1, p1, v4

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-wide v0

    :cond_2
    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    return-wide v0

    :pswitch_1
    if-lez p0, :cond_4

    goto :goto_0

    :cond_4
    return-wide v0

    :pswitch_2
    if-gez p0, :cond_6

    :cond_5
    :goto_0
    :pswitch_3
    int-to-long p0, p0

    add-long/2addr v0, p0

    :cond_6
    return-wide v0

    :pswitch_4
    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Le2/d;->c(Z)V

    :pswitch_5
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p0, p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    or-int/lit8 v3, v3, 0x20

    add-int/lit8 v3, v3, -0x61

    int-to-char v3, v3

    const/16 v5, 0x1a

    if-ge v3, v5, :cond_3

    or-int/lit8 v4, v4, 0x20

    add-int/lit8 v4, v4, -0x61

    int-to-char v4, v4

    if-ne v3, v4, :cond_3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v2

    :cond_4
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public static n(Ljava/nio/ByteBuffer;)Lu1/C0;
    .locals 11

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lu1/P;->f:Lu1/N;

    sget-object p0, Lu1/C0;->i:Lu1/C0;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {v0, p0}, Lcom/brisa/local/d0;->u(ILjava/nio/ByteBuffer;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const-string v1, "initialCapacity"

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lu1/s;->e(ILjava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v5, v1

    move v7, v3

    move v6, v4

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v8

    if-ge v0, v8, :cond_b

    if-eqz v6, :cond_a

    :goto_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v6

    sub-int/2addr v6, v2

    if-gt v0, v6, :cond_6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    and-int/lit16 v8, v6, -0x100

    if-eqz v8, :cond_8

    const/16 v9, 0x100

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const v8, 0xffffff

    and-int/2addr v8, v6

    if-eqz v8, :cond_5

    if-ne v8, v4, :cond_2

    goto :goto_2

    :cond_2
    const v8, 0xffff

    and-int/2addr v8, v6

    if-nez v8, :cond_3

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_4

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    if-ne v0, v6, :cond_7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    add-int/lit8 v8, v0, 0x2

    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-nez v6, :cond_7

    if-eqz v8, :cond_8

    if-ne v8, v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    :cond_8
    :goto_3
    sub-int v6, v0, v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v6, v1

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v8, v5

    add-int/lit8 v9, v7, 0x1

    invoke-static {v8, v9}, Lu1/J;->b(II)I

    move-result v8

    array-length v10, v5

    if-gt v8, v10, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    :goto_4
    aput-object v6, v5, v7

    move v6, v3

    move v7, v9

    goto :goto_0

    :cond_a
    invoke-static {v0, p0}, Lcom/brisa/local/d0;->u(ILjava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-eq v0, v1, :cond_b

    add-int/lit8 v1, v0, 0x3

    move v0, v1

    move v6, v4

    goto/16 :goto_0

    :cond_b
    invoke-static {v7, v5}, Lu1/P;->i(I[Ljava/lang/Object;)Lu1/C0;

    move-result-object p0

    return-object p0
.end method

.method public static o(JJ)J
    .locals 4

    const-string v0, "a"

    invoke-static {p0, p1, v0}, Le2/d;->b(JLjava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, p3, v0}, Le2/d;->b(JLjava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-wide p2

    :cond_0
    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    return-wide p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    shr-long/2addr p0, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    shr-long/2addr p2, v1

    :goto_0
    cmp-long v2, p0, p2

    if-eqz v2, :cond_2

    sub-long/2addr p0, p2

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    and-long/2addr v2, p0

    sub-long/2addr p0, v2

    sub-long/2addr p0, v2

    add-long/2addr p2, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    shr-long/2addr p0, v2

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "[a-f0-9]{64}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "brisa-video-grants"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, ""

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static q(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static r(Ljava/lang/String;)LC1/e;
    .locals 8

    const-string v0, "statusLine"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "HTTP/1."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LS1/l;->A(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x4

    sget-object v3, LW1/r;->f:LW1/r;

    const/16 v4, 0x20

    const-string v5, "Unexpected status line: "

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    sget-object v3, LW1/r;->g:LW1/r;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "ICY "

    invoke-static {p0, v0, v1}, LS1/l;->A(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v6, v1, 0x3

    if-lt v0, v6, :cond_6

    :try_start_0
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v7, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v7}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_5

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p0, ""

    :goto_1
    new-instance v1, LC1/e;

    invoke-direct {v1, v3, v0, p0}, LC1/e;-><init>(LW1/r;ILjava/lang/String;)V

    return-object v1

    :catch_0
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0, p1}, Lcom/brisa/local/a;->t(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/brisa/local/d0;->p(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p1, "uri"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static t(JJ)J
    .locals 9

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    not-long v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    add-int/2addr v0, v1

    not-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v0, 0x41

    if-le v1, v0, :cond_0

    mul-long/2addr p0, p2

    return-wide p0

    :cond_0
    xor-long v2, p0, p2

    const/16 v0, 0x3f

    ushr-long/2addr v2, v0

    const-wide v4, 0x7fffffffffffffffL

    add-long/2addr v2, v4

    const/16 v0, 0x40

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, p0, v6

    if-gez v1, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v7, p2, v7

    if-nez v7, :cond_3

    move v4, v5

    :cond_3
    and-int/2addr v4, v6

    or-int/2addr v0, v4

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    mul-long v4, p0, p2

    if-eqz v1, :cond_6

    div-long p0, v4, p0

    cmp-long p0, p0, p2

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    return-wide v2

    :cond_6
    :goto_3
    return-wide v4
.end method

.method public static u(ILjava/nio/ByteBuffer;)I
    .locals 5

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_4

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    and-int/lit16 v3, v0, -0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_0

    goto :goto_3

    :cond_0
    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const-string v4, "Invalid Nal units"

    invoke-static {v4, v3}, LF1/i;->n(Ljava/lang/String;Z)V

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_2

    add-int/2addr p0, v2

    return p0

    :cond_2
    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v4, v1}, LF1/i;->n(Ljava/lang/String;Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    const-string v3, "Invalid NAL units"

    if-gt p0, v0, :cond_8

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    invoke-static {v3, v0}, LF1/i;->n(Ljava/lang/String;Z)V

    add-int/lit8 v0, p0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v2, :cond_6

    :goto_3
    return p0

    :cond_6
    if-nez v0, :cond_7

    move v1, v2

    :cond_7
    invoke-static {v3, v1}, LF1/i;->n(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_8
    :goto_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-ge p0, v0, :cond_a

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v1

    :goto_5
    invoke-static {v3, v0}, LF1/i;->n(Ljava/lang/String;Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_a
    :goto_6
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p0

    return p0
.end method

.method public static v(Lb0/o;Z)Z
    .locals 12

    new-instance v0, LJ/D;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LJ/D;-><init>(I)V

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    :goto_0
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, LJ/D;->K(I)V

    iget-object v5, v0, LJ/D;->a:[B

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6, v4, v2}, Lb0/o;->w([BIIZ)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v7

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v5

    const-wide/16 v9, 0x1

    cmp-long v9, v7, v9

    if-nez v9, :cond_3

    iget-object v7, v0, LJ/D;->a:[B

    invoke-interface {p0, v7, v4, v4, v2}, Lb0/o;->w([BIIZ)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, LJ/D;->M(I)V

    invoke-virtual {v0}, LJ/D;->G()J

    move-result-wide v7

    move v9, v1

    goto :goto_1

    :cond_3
    move v9, v4

    :goto_1
    int-to-long v9, v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_4

    goto :goto_2

    :cond_4
    sub-long/2addr v7, v9

    long-to-int v7, v7

    if-eqz v3, :cond_9

    const v3, 0x66747970

    if-ne v5, v3, :cond_8

    if-ge v7, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, LJ/D;->K(I)V

    iget-object v4, v0, LJ/D;->a:[B

    invoke-interface {p0, v6, v4, v3}, Lb0/o;->l(I[BI)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v3

    const v4, 0x68656963

    if-eq v3, v4, :cond_6

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v7, -0x4

    invoke-interface {p0, v7}, Lb0/o;->z(I)V

    move v3, v6

    goto :goto_0

    :cond_8
    :goto_2
    return v6

    :cond_9
    const v4, 0x6d707664

    if-ne v5, v4, :cond_a

    :goto_3
    return v2

    :cond_a
    if-eqz v7, :cond_0

    invoke-interface {p0, v7}, Lb0/o;->z(I)V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/brisa/local/d0;->q(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-char v2, p0, v1

    invoke-static {v2}, Lcom/brisa/local/d0;->q(C)Z

    move-result v3

    if-eqz v3, :cond_0

    xor-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static x(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-char v2, p0, v1

    if-lt v2, v3, :cond_0

    if-gt v2, v4, :cond_0

    xor-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method


# virtual methods
.method public abstract h(Lcom/brisa/local/VideoActivity;Lm/c;Landroid/content/res/Resources;)Landroid/graphics/Typeface;
.end method

.method public abstract i(Lcom/brisa/local/VideoActivity;[Lq/e;)Landroid/graphics/Typeface;
.end method

.method public j(Lcom/brisa/local/VideoActivity;Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Typeface;
    .locals 0

    invoke-static {p1}, Le2/d;->k(Lcom/brisa/local/VideoActivity;)Ljava/io/File;

    move-result-object p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return-object p4

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Le2/d;->f(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p2

    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4
.end method

.method public m([Lq/e;)Lq/e;
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p1, v1

    iget v5, v4, Lq/e;->c:I

    add-int/lit16 v5, v5, -0x190

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iget-boolean v6, v4, Lq/e;->d:Z

    add-int/2addr v6, v5

    if-eqz v2, :cond_0

    if-le v3, v6, :cond_1

    :cond_0
    move-object v2, v4

    move v3, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method
