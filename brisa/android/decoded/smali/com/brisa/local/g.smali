.class public final synthetic Lcom/brisa/local/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/brisa/local/h;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/g;->e:Lcom/brisa/local/h;

    iput-object p2, p0, Lcom/brisa/local/g;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/brisa/local/g;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/brisa/local/g;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/brisa/local/g;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/brisa/local/g;->e:Lcom/brisa/local/h;

    iget-object v2, v1, Lcom/brisa/local/g;->f:Ljava/lang/String;

    iget-object v3, v1, Lcom/brisa/local/g;->g:Ljava/lang/String;

    iget-object v4, v1, Lcom/brisa/local/g;->h:Ljava/lang/String;

    iget-object v5, v1, Lcom/brisa/local/g;->i:Ljava/lang/String;

    const-string v6, "drive"

    const-string v7, "mp3"

    const-string v8, "mp4"

    const-string v9, "local"

    iget-object v10, v0, Lcom/brisa/local/h;->a:Lcom/brisa/local/MainActivity;

    :try_start_0
    const-string v12, "both"

    new-instance v13, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_0

    :cond_0
    move-object v14, v2

    goto :goto_1

    :cond_1
    :goto_0
    const-string v14, "{}"

    :goto_1
    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v14, "output"

    invoke-virtual {v13, v14, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "destination"

    invoke-virtual {v13, v15, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v11, "subtitles"

    const-string v1, "auto-es"

    invoke-virtual {v13, v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "bitrate"

    const/16 v11, 0x140

    invoke-virtual {v13, v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    filled-new-array {v7, v8, v12}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    filled-new-array {v9, v6, v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/16 v12, 0x80

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0xc0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v16, 0x100

    move/from16 v17, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move/from16 v16, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v12, v13, v11, v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_4

    sget-object v1, Lcom/brisa/local/u;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v11

    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Termina de conectar Google Drive antes de descargar."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_4
    :goto_3
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v10}, Lcom/brisa/local/u;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Conecta Google Drive antes de descargar."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    sget-object v1, Lcom/brisa/local/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brisa/local/l;

    if-eqz v1, :cond_7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v1, Lcom/brisa/local/l;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_8
    :goto_6
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, v1, Lcom/brisa/local/l;->e:Ljava/lang/String;

    if-eqz v7, :cond_7

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v12, v1, Lcom/brisa/local/l;->b:J

    sub-long/2addr v7, v12

    const-wide/32 v12, 0x927c0

    cmp-long v1, v7, v12

    if-lez v1, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {}, Lcom/brisa/local/DownloadService;->d()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/brisa/local/h;->b:Ljava/lang/String;

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    if-lt v1, v7, :cond_c

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v10, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_c

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x52

    invoke-virtual {v10, v1, v7}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_c
    iput-object v3, v0, Lcom/brisa/local/h;->b:Ljava/lang/String;

    iput-object v4, v0, Lcom/brisa/local/h;->c:Ljava/lang/String;

    iput-object v5, v0, Lcom/brisa/local/h;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/brisa/local/h;->e:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "brisa-downloads"

    invoke-virtual {v10, v1, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "folder"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/brisa/local/h;->a()V

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/brisa/local/h;->c()V

    return-void

    :cond_e
    :goto_7
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Ya hay una descarga o una selecci\u00f3n de carpeta en curso."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v3, v1, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :goto_8
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "El enlace ha caducado. Vuelve a consultar sus calidades."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_f
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Opciones de descarga no v\u00e1lidas."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_9
    invoke-static {v3, v1, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
