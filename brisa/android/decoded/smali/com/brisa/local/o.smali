.class public final synthetic Lcom/brisa/local/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/brisa/local/DownloadService;

.field public final synthetic f:Lorg/json/JSONObject;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/brisa/local/l;

.field public final synthetic i:Lcom/brisa/local/k;

.field public final synthetic j:LN/Y;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/DownloadService;Lorg/json/JSONObject;Ljava/lang/String;Lcom/brisa/local/l;Lcom/brisa/local/k;LN/Y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/o;->e:Lcom/brisa/local/DownloadService;

    iput-object p2, p0, Lcom/brisa/local/o;->f:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/brisa/local/o;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/brisa/local/o;->h:Lcom/brisa/local/l;

    iput-object p5, p0, Lcom/brisa/local/o;->i:Lcom/brisa/local/k;

    iput-object p6, p0, Lcom/brisa/local/o;->j:LN/Y;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "mp4"

    iget-object v2, v1, Lcom/brisa/local/o;->e:Lcom/brisa/local/DownloadService;

    iget-object v3, v1, Lcom/brisa/local/o;->f:Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/brisa/local/o;->g:Ljava/lang/String;

    iget-object v5, v1, Lcom/brisa/local/o;->h:Lcom/brisa/local/l;

    iget-object v6, v1, Lcom/brisa/local/o;->i:Lcom/brisa/local/k;

    iget-object v7, v1, Lcom/brisa/local/o;->j:LN/Y;

    sget-object v8, Lcom/brisa/local/DownloadService;->l:Lcom/brisa/local/DownloadService;

    const/4 v8, 0x0

    const-string v9, "error"

    const-string v10, "cancelled"

    const-string v11, "completed"

    const-string v12, "warning"

    const-string v13, "uploading"

    const/4 v14, 0x0

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v2}, Lcom/brisa/local/DownloadService;->b()V

    const-string v0, "prepare"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "preparing"

    invoke-virtual {v2, v0, v14}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/brisa/local/p;

    invoke-direct {v0, v2, v8}, Lcom/brisa/local/p;-><init>(Lcom/brisa/local/DownloadService;I)V

    invoke-static {v2, v3, v0}, Lcom/brisa/local/u;->r(Landroid/content/Context;Lorg/json/JSONObject;Lcom/brisa/local/p;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {v2, v13, v14}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/brisa/local/p;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lcom/brisa/local/p;-><init>(Lcom/brisa/local/DownloadService;I)V

    invoke-static {v2, v3, v0}, Lcom/brisa/local/u;->A(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/function/BooleanSupplier;)V

    :goto_0
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/brisa/local/DownloadService;->j:Ljava/lang/String;

    invoke-virtual {v2, v11, v14}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v2}, Lcom/brisa/local/DownloadService;->c()V

    goto/16 :goto_15

    :goto_2
    :try_start_1
    iget-boolean v3, v2, Lcom/brisa/local/DownloadService;->b:Z

    if-eqz v3, :cond_1

    move-object v9, v10

    :cond_1
    invoke-static {v0}, Lcom/brisa/local/h;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/brisa/local/DownloadService;->c()V

    throw v0

    :cond_2
    const-string v3, "url"

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, "download-"

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v15, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :try_start_2
    new-instance v14, Ljava/io/File;

    const-string v15, "video.part"

    invoke-direct {v14, v4, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    const-string v1, "audio.part"

    invoke-direct {v15, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "downloading"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v16, v9

    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v2, v1, v9}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, LN/Y;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v6, :cond_3

    iget-object v1, v6, Lcom/brisa/local/k;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_3
    move-object/from16 v17, v10

    goto/16 :goto_e

    :cond_3
    iget-object v1, v5, Lcom/brisa/local/l;->e:Ljava/lang/String;

    :goto_4
    invoke-virtual {v7}, LN/Y;->b()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v6, Lcom/brisa/local/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v9, v14}, Lcom/brisa/local/DownloadService;->h(Ljava/lang/String;Ljava/io/File;)V

    :cond_4
    iget-object v9, v7, LN/Y;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, LN/Y;->b()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v6, Lcom/brisa/local/k;->c:Ljava/lang/String;

    if-eqz v9, :cond_8

    :cond_5
    iget-boolean v9, v5, Lcom/brisa/local/l;->h:Z

    if-eqz v9, :cond_7

    invoke-virtual {v7}, LN/Y;->b()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v2, v1, v14}, Lcom/brisa/local/DownloadService;->h(Ljava/lang/String;Ljava/io/File;)V

    :cond_6
    move-object v15, v14

    goto :goto_5

    :cond_7
    invoke-virtual {v2, v1, v15}, Lcom/brisa/local/DownloadService;->h(Ljava/lang/String;Ljava/io/File;)V

    :cond_8
    :goto_5
    invoke-virtual {v7}, LN/Y;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v2}, Lcom/brisa/local/DownloadService;->b()V

    const-string v1, "merging"

    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v9, "complete.mp4"

    invoke-direct {v1, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-boolean v9, v5, Lcom/brisa/local/l;->h:Z

    if-nez v9, :cond_a

    iget-object v6, v6, Lcom/brisa/local/k;->c:Ljava/lang/String;

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    move-object v6, v15

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v6, 0x0

    :goto_7
    new-instance v9, Lcom/brisa/local/p;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v17, v10

    const/4 v10, 0x2

    :try_start_4
    invoke-direct {v9, v2, v10}, Lcom/brisa/local/p;-><init>(Lcom/brisa/local/DownloadService;I)V

    invoke-static {v14, v6, v1, v9}, LF1/i;->s(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/brisa/local/p;)V

    const-string v6, "video"

    iget-object v9, v5, Lcom/brisa/local/l;->d:Ljava/lang/String;

    invoke-virtual {v2, v1, v6, v9, v7}, Lcom/brisa/local/DownloadService;->g(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;LN/Y;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v7, LN/Y;->d:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string v9, "off"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "subtitles"

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/4 v9, 0x0

    :goto_8
    iget-object v10, v5, Lcom/brisa/local/l;->g:Lorg/json/JSONArray;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_c

    invoke-virtual {v2}, Lcom/brisa/local/DownloadService;->b()V

    new-instance v10, Lorg/json/JSONObject;

    iget-object v14, v5, Lcom/brisa/local/l;->g:Lorg/json/JSONArray;

    invoke-virtual {v14, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v11

    const-string v11, "id"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-cc-"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ".srv3"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/io/File;

    move/from16 v19, v9

    invoke-static {v2}, Lcom/brisa/local/a;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    invoke-direct {v14, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v14}, Lcom/brisa/local/DownloadService;->a(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v2, v11}, Lcom/brisa/local/a;->C(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v20, v14

    :try_start_6
    const-string v14, "srv3"

    invoke-static {v9, v14}, Le2/d;->m(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v9, "file"

    invoke-virtual {v10, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :catchall_3
    move-exception v0

    goto/16 :goto_e

    :cond_b
    new-instance v9, Ljava/io/IOException;

    const-string v10, "La pista de subt\u00edtulos est\u00e1 vac\u00eda."

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-object/from16 v20, v14

    :catch_1
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    const-string v9, "El v\u00eddeo se guard\u00f3, pero algunos subt\u00edtulos no est\u00e1n disponibles."

    iput-object v9, v2, Lcom/brisa/local/DownloadService;->j:Ljava/lang/String;

    :goto_9
    add-int/lit8 v9, v19, 0x1

    move-object/from16 v11, v18

    goto/16 :goto_8

    :cond_c
    move-object/from16 v18, v11

    iget-object v3, v5, Lcom/brisa/local/l;->g:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "Este v\u00eddeo no ofrece subt\u00edtulos en espa\u00f1ol ni una traducci\u00f3n disponible."

    iput-object v3, v2, Lcom/brisa/local/DownloadService;->j:Ljava/lang/String;

    :cond_d
    const-string v3, "captions"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v6, v2, Lcom/brisa/local/DownloadService;->j:Ljava/lang/String;

    invoke-virtual {v3, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_b

    :cond_e
    :goto_a
    move-object/from16 v18, v11

    goto :goto_b

    :cond_f
    move-object/from16 v17, v10

    goto :goto_a

    :goto_b
    iget-object v1, v7, LN/Y;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v2}, Lcom/brisa/local/DownloadService;->b()V

    const-string v0, "converting"

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_10

    const-string v0, "Convirtiendo a MP3\u2026"

    invoke-virtual {v2, v0}, Lcom/brisa/local/DownloadService;->e(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/brisa/local/n;->p(Lcom/brisa/local/DownloadService;Landroid/app/Notification;)V

    :cond_10
    new-instance v0, Ljava/io/File;

    const-string v1, "complete.mp3"

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v1, v7, LN/Y;->a:I

    iget-object v3, v5, Lcom/brisa/local/l;->d:Ljava/lang/String;

    new-instance v6, Lcom/brisa/local/p;

    const/4 v9, 0x3

    invoke-direct {v6, v2, v9}, Lcom/brisa/local/p;-><init>(Lcom/brisa/local/DownloadService;I)V

    invoke-static {v15, v0, v1, v3, v6}, Lcom/brisa/local/Mp3Encoder;->a(Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/brisa/local/p;)V

    const-string v1, "audio"

    iget-object v3, v5, Lcom/brisa/local/l;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3, v7}, Lcom/brisa/local/DownloadService;->g(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;LN/Y;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v0, v7, LN/Y;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_12

    const-string v0, "Subiendo a Drive\u2026"

    invoke-virtual {v2, v0}, Lcom/brisa/local/DownloadService;->e(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/brisa/local/n;->i(Lcom/brisa/local/DownloadService;Landroid/app/Notification;)V

    :cond_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v2}, Lcom/brisa/local/DownloadService;->b()V

    const/4 v9, 0x0

    invoke-virtual {v2, v13, v9}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/brisa/local/p;

    const/4 v5, 0x4

    invoke-direct {v3, v2, v5}, Lcom/brisa/local/p;-><init>(Lcom/brisa/local/DownloadService;I)V

    invoke-static {v2, v1, v3}, Lcom/brisa/local/u;->A(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/function/BooleanSupplier;)V

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/brisa/local/DownloadService;->j:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_c

    :catch_2
    :try_start_9
    const-string v3, "Disponible sin conexi\u00f3n. La subida a Drive est\u00e1 pendiente; puedes reintentar desde Drive."

    iput-object v3, v2, Lcom/brisa/local/DownloadService;->j:Ljava/lang/String;

    invoke-virtual {v1, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_c

    :cond_14
    invoke-virtual {v2}, Lcom/brisa/local/DownloadService;->b()V

    move-object/from16 v0, v18

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v1, v0

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v1, :cond_15

    aget-object v3, v0, v8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_15
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Lcom/brisa/local/DownloadService;->c()V

    goto/16 :goto_15

    :catchall_4
    move-exception v0

    move-object/from16 v16, v9

    goto/16 :goto_3

    :goto_e
    :try_start_a
    iget-object v1, v2, Lcom/brisa/local/DownloadService;->i:Landroid/net/Uri;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v1, :cond_16

    :try_start_b
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, v2, Lcom/brisa/local/DownloadService;->i:Landroid/net/Uri;

    invoke-static {v1, v3}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catch_3
    const/4 v9, 0x0

    goto :goto_f

    :catchall_5
    move-exception v0

    const/4 v3, 0x0

    goto :goto_16

    :goto_f
    :try_start_c
    iput-object v9, v2, Lcom/brisa/local/DownloadService;->i:Landroid/net/Uri;

    goto :goto_10

    :cond_16
    const/4 v9, 0x0

    :goto_10
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_17

    const-string v1, "brisa-downloads"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    const/4 v3, 0x0

    :try_start_d
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "folder"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_11

    :catchall_6
    move-exception v0

    goto :goto_16

    :cond_17
    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "Se conservan los archivos terminados. Revisa M\u00fasica, Videos y las subidas pendientes."

    iput-object v1, v2, Lcom/brisa/local/DownloadService;->j:Ljava/lang/String;

    :cond_18
    iget-boolean v1, v2, Lcom/brisa/local/DownloadService;->b:Z

    if-eqz v1, :cond_19

    move-object/from16 v1, v17

    goto :goto_12

    :cond_19
    move-object/from16 v1, v16

    :goto_12
    iget-boolean v5, v2, Lcom/brisa/local/DownloadService;->b:Z

    if-eqz v5, :cond_1a

    move-object v14, v9

    goto :goto_13

    :cond_1a
    invoke-static {v0}, Lcom/brisa/local/h;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    :goto_13
    invoke-virtual {v2, v1, v14}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v1, v0

    move v8, v3

    :goto_14
    if-ge v8, v1, :cond_15

    aget-object v3, v0, v8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :goto_15
    return-void

    :goto_16
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1b

    array-length v5, v1

    move v8, v3

    :goto_17
    if-ge v8, v5, :cond_1b

    aget-object v3, v1, v8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_1b
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Lcom/brisa/local/DownloadService;->c()V

    throw v0
.end method
