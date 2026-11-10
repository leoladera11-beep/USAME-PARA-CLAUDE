.class public abstract Lcom/brisa/local/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Ljava/lang/String; = ""

.field public static volatile b:J

.field public static volatile c:Ljava/lang/String;


# direct methods
.method public static A(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/function/BooleanSupplier;)V
    .locals 26

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v0, "account"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v6}, Lcom/brisa/local/u;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Conecta la cuenta original para subir este archivo pendiente."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->A(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v9, "driveId"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v10, "pendingUpload"

    const/4 v11, 0x0

    if-nez v0, :cond_2

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-static/range {p0 .. p2}, Lcom/brisa/local/u;->B(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/function/BooleanSupplier;)V

    return-void

    :cond_2
    const-string v12, "uploadSession"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v4, "video/mp4"

    const-string v5, "name"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/brisa/local/AudioExport;->mime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "kind"

    const-string v13, ""

    const-string v14, "id"

    const-string v15, "audio"

    const/4 v11, 0x0

    if-eqz v1, :cond_8

    const-string v0, "root"

    const-string v1, "Brisa"

    invoke-static {v6, v0, v1, v11}, Lcom/brisa/local/u;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    const-string v16, "M\u00fasica"

    :goto_1
    move-object/from16 v11, v16

    goto :goto_2

    :cond_3
    const-string v16, "Videos"

    goto :goto_1

    :goto_2
    invoke-static {v6, v1, v11, v0}, Lcom/brisa/local/u;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v16, v4

    const-string v4, "name"

    move-object/from16 v17, v5

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v5, "parents"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "brisaKind"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "brisaAssetId"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "appProperties"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v4, Lcom/brisa/local/W;->a:LW1/q;

    const-string v5, "https://www.googleapis.com/upload/drive/v3/files?uploadType=resumable&fields=id"

    invoke-static {v6, v5}, Lcom/brisa/local/u;->c(Landroid/content/Context;Ljava/lang/String;)LC2/b;

    move-result-object v5

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v1, v17

    goto :goto_3

    :cond_4
    move-object/from16 v1, v16

    :goto_3
    const-string v11, "X-Upload-Content-Type"

    invoke-virtual {v5, v11, v1}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-Upload-Content-Length"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v1, v11}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LW1/o;->c:Ljava/util/regex/Pattern;

    const-string v1, "application/json"

    invoke-static {v1}, LW1/t;->i(Ljava/lang/String;)LW1/o;

    move-result-object v1

    invoke-static {v0, v1}, LW1/t;->e(Ljava/lang/String;LW1/o;)LW1/s;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v5, v1, v0}, LC2/b;->m(Ljava/lang/String;LW1/t;)V

    invoke-virtual {v5}, LC2/b;->b()LM0/r0;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, La2/h;

    invoke-direct {v1, v4, v0}, La2/h;-><init>(LW1/q;LM0/r0;)V

    invoke-virtual {v1}, La2/h;->d()LW1/v;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, LW1/v;->c()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v1}, Lcom/brisa/local/u;->p(LW1/v;)Lorg/json/JSONObject;

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_7

    :cond_5
    :goto_4
    const-string v0, "Location"

    iget-object v4, v1, LW1/v;->j:LW1/k;

    invoke-virtual {v4, v0}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    move-object v0, v13

    :cond_6
    :try_start_1
    new-instance v4, LW1/l;

    invoke-direct {v4}, LW1/l;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, LW1/l;->d(LW1/m;Ljava/lang/String;)V

    invoke-virtual {v4}, LW1/l;->b()LW1/m;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catch_0
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_7

    :try_start_2
    iget-boolean v4, v5, LW1/m;->i:Z

    if-eqz v4, :cond_7

    iget-object v4, v5, LW1/m;->d:Ljava/lang/String;

    const-string v5, "www.googleapis.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v7, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, LW1/v;->close()V

    :goto_6
    move-object v11, v0

    goto :goto_9

    :cond_7
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Drive no devolvi\u00f3 una sesi\u00f3n de subida v\u00e1lida."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    :try_start_4
    invoke-virtual {v1}, LW1/v;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v2

    :cond_8
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_6

    :goto_9
    sget-object v0, Lcom/brisa/local/W;->a:LW1/q;

    invoke-static {v6, v11}, Lcom/brisa/local/u;->c(Landroid/content/Context;Ljava/lang/String;)LC2/b;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes */"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Range"

    invoke-virtual {v1, v5, v4}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v18, v2

    const/4 v4, 0x0

    new-array v2, v4, [B

    move-object v3, v5

    int-to-long v5, v4

    move-wide/from16 v22, v5

    move-wide/from16 v24, v5

    move-wide/from16 v20, v5

    invoke-static/range {v20 .. v25}, LX1/b;->c(JJJ)V

    new-instance v5, LW1/s;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4, v2}, LW1/s;-><init>(LW1/o;I[B)V

    const-string v2, "PUT"

    invoke-virtual {v1, v2, v5}, LC2/b;->m(Ljava/lang/String;LW1/t;)V

    invoke-virtual {v1}, LC2/b;->b()LM0/r0;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, La2/h;

    invoke-direct {v4, v0, v1}, La2/h;-><init>(LW1/q;LM0/r0;)V

    invoke-virtual {v4}, La2/h;->d()LW1/v;

    move-result-object v1

    :try_start_5
    invoke-virtual {v1}, LW1/v;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v1}, Lcom/brisa/local/u;->p(LW1/v;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-static/range {p0 .. p2}, Lcom/brisa/local/u;->B(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/function/BooleanSupplier;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v1}, LW1/v;->close()V

    return-void

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_e

    :cond_9
    :try_start_6
    iget v4, v1, LW1/v;->h:I

    const/16 v5, 0x134

    if-ne v4, v5, :cond_d

    const-string v4, "Range"

    iget-object v5, v1, LW1/v;->j:LW1/k;

    invoke-virtual {v5, v4}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move-object v4, v13

    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-wide/16 v20, 0x1

    if-nez v5, :cond_b

    const-string v5, ".*-"

    invoke-virtual {v4, v5, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    add-long v4, v4, v20

    goto :goto_a

    :cond_b
    const-wide/16 v4, 0x0

    :goto_a
    invoke-virtual {v1}, LW1/v;->close()V

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v1, v17

    :goto_b
    move-object v6, v0

    goto :goto_c

    :cond_c
    move-object/from16 v1, v16

    goto :goto_b

    :goto_c
    new-instance v0, Lcom/brisa/local/t;

    move-object/from16 v8, p2

    move-object v15, v2

    move-object v13, v6

    move-object/from16 v16, v10

    move-object/from16 v6, p0

    move-object v10, v3

    move-wide/from16 v2, v18

    invoke-direct/range {v0 .. v8}, Lcom/brisa/local/t;-><init>(Ljava/lang/String;JJLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/function/BooleanSupplier;)V

    invoke-static {v6, v11}, Lcom/brisa/local/u;->c(Landroid/content/Context;Ljava/lang/String;)LC2/b;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "bytes "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v2, v20

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v15, v0}, LC2/b;->m(Ljava/lang/String;LW1/t;)V

    invoke-virtual {v1}, LC2/b;->b()LM0/r0;

    move-result-object v0

    new-instance v1, La2/h;

    invoke-direct {v1, v13, v0}, La2/h;-><init>(LW1/q;LM0/r0;)V

    invoke-virtual {v1}, La2/h;->d()LW1/v;

    move-result-object v1

    :try_start_7
    invoke-static {v1}, Lcom/brisa/local/u;->p(LW1/v;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v0, v16

    const/4 v4, 0x0

    invoke-virtual {v7, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-virtual {v1}, LW1/v;->close()V

    invoke-static/range {p0 .. p2}, Lcom/brisa/local/u;->B(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/function/BooleanSupplier;)V

    return-void

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1}, LW1/v;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v2

    :cond_d
    move-object/from16 v6, p0

    :try_start_9
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    new-instance v0, Ljava/io/IOException;

    const-string v2, "La sesi\u00f3n de Drive caduc\u00f3. Pulsa Reintentar subida."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_e
    :try_start_a
    invoke-virtual {v1}, LW1/v;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_f

    :catchall_5
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v2

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "La copia sin conexi\u00f3n ya no est\u00e1 disponible."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static B(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/function/BooleanSupplier;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "\r\n--"

    const-string v4, "--"

    const-string v5, "format"

    const-string v6, "label"

    const-string v7, "name"

    const-string v0, "captions"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v11, "captionPending"

    invoke-virtual {v2, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "Brisa"

    const/4 v12, 0x0

    const-string v13, "root"

    invoke-static {v1, v13, v0, v12}, Lcom/brisa/local/u;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "video"

    const-string v13, "Videos"

    invoke-static {v1, v12, v13, v0}, Lcom/brisa/local/u;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v12, v0

    goto :goto_2

    :cond_1
    const-string v0, ""

    goto :goto_1

    :goto_2
    const-string v13, "warning"

    if-eqz v8, :cond_7

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v3, v11

    const/4 v9, 0x1

    goto/16 :goto_d

    :cond_2
    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v9, "driveId"

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_3

    move/from16 v17, v0

    move-object/from16 v22, v6

    move-object/from16 v20, v7

    move-object/from16 v18, v8

    :goto_4
    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move/from16 v19, v14

    const/4 v11, 0x0

    goto/16 :goto_8

    :cond_3
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    const-string v0, "trashed=false and appProperties has { key=\'brisaParent\' and value=\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' } and appProperties has { key=\'brisaTrack\' and value=\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' }"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/brisa/local/u;->u(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object/from16 v18, v8

    const-string v8, "id"

    if-lez v10, :cond_4

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    move-object/from16 v22, v6

    move-object/from16 v20, v7

    goto :goto_4

    :catch_0
    move-object/from16 v22, v6

    move-object/from16 v20, v7

    :goto_5
    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move/from16 v19, v14

    :catch_1
    :goto_6
    const/4 v11, 0x0

    goto/16 :goto_b

    :catch_2
    move-object/from16 v22, v6

    move-object/from16 v20, v7

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move/from16 v19, v14

    move v11, v10

    goto/16 :goto_b

    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v19, v14

    :try_start_3
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " \u00b7 "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "."

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v10, "parents"

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v0, v10, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v10, "appProperties"

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-object/from16 v20, v7

    :try_start_4
    const-string v7, "brisaParent"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v21, v12

    :try_start_5
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v12, "brisaTrack"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v12, "brisaLabel"

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v22, v6

    :goto_7
    :try_start_6
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v23, v11

    const/16 v11, 0x64

    if-le v6, v11, :cond_5

    :try_start_7
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v11, -0x1

    invoke-virtual {v14, v6, v11}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const/4 v11, 0x0

    :try_start_8
    invoke-virtual {v14, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v11, v23

    goto :goto_7

    :cond_5
    const/4 v11, 0x0

    invoke-virtual {v7, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "brisaFormat"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "brisaEffects"

    const-string v12, "effects"

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brisa"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\r\nContent-Type: application/json; charset=UTF-8\r\n\r\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\nContent-Type: text/plain; charset=UTF-8\r\n\r\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "file"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/brisa/local/a;->C(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/brisa/local/W;->a:LW1/q;

    const-string v10, "https://www.googleapis.com/upload/drive/v3/files?uploadType=multipart"

    invoke-static {v1, v10}, Lcom/brisa/local/u;->c(Landroid/content/Context;Ljava/lang/String;)LC2/b;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "multipart/related; boundary="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v12, LW1/o;->c:Ljava/util/regex/Pattern;

    invoke-static {v6}, LW1/t;->i(Ljava/lang/String;)LW1/o;

    move-result-object v6

    invoke-static {v0, v6}, LW1/t;->e(Ljava/lang/String;LW1/o;)LW1/s;

    move-result-object v0

    const-string v6, "POST"

    invoke-virtual {v10, v6, v0}, LC2/b;->m(Ljava/lang/String;LW1/t;)V

    invoke-virtual {v10}, LC2/b;->b()LM0/r0;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, La2/h;

    invoke-direct {v6, v7, v0}, La2/h;-><init>(LW1/q;LM0/r0;)V

    invoke-virtual {v6}, La2/h;->d()LW1/v;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :try_start_9
    invoke-static {v6}, Lcom/brisa/local/u;->p(LW1/v;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v6}, LW1/v;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :goto_8
    move/from16 v0, v17

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v7, v0

    :try_start_b
    invoke-virtual {v6}, LW1/v;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    :try_start_c
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :catch_3
    move-object/from16 v22, v6

    :catch_4
    move-object/from16 v23, v11

    goto/16 :goto_6

    :catch_5
    move-object/from16 v22, v6

    :goto_a
    move-object/from16 v23, v11

    move-object/from16 v21, v12

    goto/16 :goto_6

    :catch_6
    move-object/from16 v22, v6

    move-object/from16 v20, v7

    goto :goto_a

    :catch_7
    move-object/from16 v22, v6

    move-object/from16 v20, v7

    move-object/from16 v18, v8

    goto/16 :goto_5

    :catch_8
    :goto_b
    const-string v0, "El v\u00eddeo est\u00e1 en Drive, pero no se pudieron subir todos sus subt\u00edtulos."

    invoke-virtual {v2, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    :goto_c
    add-int/lit8 v14, v19, 0x1

    move-object/from16 v8, v18

    move-object/from16 v7, v20

    move-object/from16 v12, v21

    move-object/from16 v6, v22

    move-object/from16 v11, v23

    goto/16 :goto_3

    :cond_6
    move/from16 v17, v0

    move-object v3, v11

    move/from16 v9, v17

    goto :goto_d

    :cond_7
    move-object/from16 v23, v11

    const/4 v11, 0x0

    move v9, v11

    move-object/from16 v3, v23

    :goto_d
    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-nez v9, :cond_9

    const-string v0, "pendingUpload"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "subida"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "subir"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_9
    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Landroid/content/Context;LX0/a;)V
    .locals 4

    iget-object v0, p1, LX0/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    sput-object v0, Lcom/brisa/local/u;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x2dc6c0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/brisa/local/u;->b:J

    iget-object p1, p1, LX0/a;->i:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->h:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "brisa-drive"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "email"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No se pudo identificar la cuenta de Google."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Google no concedi\u00f3 acceso a Drive."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p0, p1, :cond_2

    sget-object v0, LL1/a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LK1/a;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)LC2/b;
    .locals 7

    new-instance v0, LC2/b;

    invoke-direct {v0}, LC2/b;-><init>()V

    invoke-virtual {v0, p1}, LC2/b;->s(Ljava/lang/String;)V

    const-string p1, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/brisa/local/u;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/brisa/local/u;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/brisa/local/u;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-wide v5, Lcom/brisa/local/u;->b:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    sget-object p0, Lcom/brisa/local/u;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    new-instance v3, Lm1/b;

    new-instance v4, LX0/b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, p0, v4}, Lm1/b;-><init>(Landroid/content/Context;LX0/b;)V

    invoke-static {p0}, Lcom/brisa/local/u;->w(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lm1/b;->c(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)La2/d;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3}, Lcom/brisa/local/u;->d(La2/d;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX0/a;

    iget-object v4, v3, LX0/a;->j:Landroid/app/PendingIntent;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    invoke-static {p0, v3}, Lcom/brisa/local/u;->a(Landroid/content/Context;LX0/a;)V

    sget-object p0, Lcom/brisa/local/u;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Abre Conectar Drive para renovar el permiso de tu cuenta."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Conecta tu cuenta de Google Drive primero."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static d(La2/d;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "Must not be called on the main application thread"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_6

    const-string v1, "Must not be called on GoogleApiHandler thread."

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GoogleApiHandler"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v1, "Task must not be null"

    invoke-static {p0, v1}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "TimeUnit must not be null"

    invoke-static {v0, v1}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, La2/d;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, La2/d;->a:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, La2/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, La2/d;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, La2/d;->c()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance v1, La1/g;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, La1/g;-><init>(I)V

    sget-object v2, Ls1/e;->b:Ls1/i;

    new-instance v3, Ls1/g;

    invoke-direct {v3, v2, v1}, Ls1/g;-><init>(Ljava/util/concurrent/Executor;Ls1/c;)V

    iget-object v4, p0, La2/d;->c:Ljava/lang/Object;

    check-cast v4, LM0/l;

    invoke-virtual {v4, v3}, LM0/l;->f(Ls1/h;)V

    invoke-virtual {p0}, La2/d;->j()V

    new-instance v3, Ls1/g;

    invoke-direct {v3, v2, v1}, Ls1/g;-><init>(Ljava/util/concurrent/Executor;Ls1/b;)V

    iget-object v4, p0, La2/d;->c:Ljava/lang/Object;

    check-cast v4, LM0/l;

    invoke-virtual {v4, v3}, LM0/l;->f(Ls1/h;)V

    invoke-virtual {p0}, La2/d;->j()V

    new-instance v3, Ls1/f;

    invoke-direct {v3, v2, v1}, Ls1/f;-><init>(Ljava/util/concurrent/Executor;La1/g;)V

    iget-object v2, p0, La2/d;->c:Ljava/lang/Object;

    check-cast v2, LM0/l;

    invoke-virtual {v2, v3}, LM0/l;->f(Ls1/h;)V

    invoke-virtual {p0}, La2/d;->j()V

    iget-object v1, v1, La1/g;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2d

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, La2/d;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, La2/d;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, La2/d;->c()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string v0, "Timed out waiting for Task"

    invoke-direct {p0, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/brisa/local/p;)V
    .locals 6

    const-string v0, "[a-zA-Z0-9_-]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/brisa/local/W;->a:LW1/q;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://www.googleapis.com/drive/v3/files/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?alt=media"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/brisa/local/u;->c(Landroid/content/Context;Ljava/lang/String;)LC2/b;

    move-result-object p0

    invoke-virtual {p0}, LC2/b;->b()LM0/r0;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, La2/h;

    invoke-direct {p1, v0, p0}, La2/h;-><init>(LW1/q;LM0/r0;)V

    invoke-virtual {p1}, La2/h;->d()LW1/v;

    move-result-object p0

    iget-object p1, p0, LW1/v;->k:LW1/x;

    :try_start_0
    invoke-virtual {p0}, LW1/v;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, LW1/x;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x1000000

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Falta espacio para preparar la copia sin conexi\u00f3n."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_2
    :goto_0
    invoke-virtual {p1}, LW1/x;->q()Lj2/i;

    move-result-object p1

    invoke-interface {p1}, Lj2/i;->p()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/high16 p2, 0x10000

    :try_start_2
    new-array p2, p2, [B

    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v2, p3, Lcom/brisa/local/p;->b:Lcom/brisa/local/DownloadService;

    iget-boolean v2, v2, Lcom/brisa/local/DownloadService;->b:Z

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, LW1/v;->close()V

    return-void

    :catchall_2
    move-exception p2

    goto :goto_4

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p3

    :try_start_6
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_4
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    :try_start_8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p2

    :cond_5
    :goto_6
    invoke-static {p0}, Lcom/brisa/local/u;->p(LW1/v;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {p0}, LW1/v;->close()V

    return-void

    :goto_7
    :try_start_9
    invoke-virtual {p0}, LW1/v;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p1

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Archivo de Drive no v\u00e1lido."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

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

.method public static j(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 2

    sget-object v0, Lcom/brisa/local/u;->c:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/brisa/local/u;->c:Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Lcom/brisa/local/u;->x(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trashed=false and mimeType=\'application/vnd.google-apps.folder\' and appProperties has { key=\'brisaRole\' and value=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/brisa/local/u;->u(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const-string v2, "id"

    if-lez v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "mimeType"

    const-string v1, "application/vnd.google-apps.folder"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "brisaRole"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "appProperties"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p3, :cond_1

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p2

    const-string p3, "parents"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    sget-object p2, Lcom/brisa/local/W;->a:LW1/q;

    new-instance p3, LW1/l;

    invoke-direct {p3}, LW1/l;-><init>()V

    const/4 v0, 0x0

    const-string v1, "https://www.googleapis.com/drive/v3/files"

    invoke-virtual {p3, v0, v1}, LW1/l;->d(LW1/m;Ljava/lang/String;)V

    invoke-virtual {p3}, LW1/l;->b()LW1/m;

    move-result-object p3

    invoke-virtual {p3}, LW1/m;->f()LW1/l;

    move-result-object p3

    const-string v0, "fields"

    invoke-virtual {p3, v0, v2}, LW1/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, LW1/l;->b()LW1/m;

    move-result-object p3

    iget-object p3, p3, LW1/m;->h:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/brisa/local/u;->c(Landroid/content/Context;Ljava/lang/String;)LC2/b;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, LW1/o;->c:Ljava/util/regex/Pattern;

    const-string p3, "application/json"

    invoke-static {p3}, LW1/t;->i(Ljava/lang/String;)LW1/o;

    move-result-object p3

    invoke-static {p1, p3}, LW1/t;->e(Ljava/lang/String;LW1/o;)LW1/s;

    move-result-object p1

    const-string p3, "POST"

    invoke-virtual {p0, p3, p1}, LC2/b;->m(Ljava/lang/String;LW1/t;)V

    invoke-virtual {p0}, LC2/b;->b()LM0/r0;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, La2/h;

    invoke-direct {p1, p2, p0}, La2/h;-><init>(LW1/q;LM0/r0;)V

    invoke-virtual {p1}, La2/h;->d()LW1/v;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/brisa/local/u;->p(LW1/v;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, LW1/v;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, LW1/v;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static n(D)J
    .locals 3

    invoke-static {p0, p1}, Lcom/brisa/local/u;->o(D)Z

    move-result v0

    const-string v1, "not a normal value"

    invoke-static {v1, v0}, LF1/i;->f(Ljava/lang/String;Z)V

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v1, 0xfffffffffffffL

    and-long/2addr p0, v1

    const/16 v1, -0x3ff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    return-wide p0

    :cond_0
    const-wide/high16 v0, 0x10000000000000L

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static o(D)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result p0

    const/16 p1, 0x3ff

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p(LW1/v;)Lorg/json/JSONObject;
    .locals 4

    invoke-virtual {p0}, LW1/v;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LW1/v;->k:LW1/x;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, LW1/x;->q()Lj2/i;

    move-result-object p0

    :try_start_0
    invoke-virtual {v0}, LW1/x;->e()LW1/o;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, LS1/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, LW1/o;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, LS1/a;->a:Ljava/nio/charset/Charset;

    :cond_2
    invoke-static {p0, v0}, LX1/b;->r(Lj2/i;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-interface {p0, v0}, Lj2/i;->o(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_4

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-static {v0, p0}, Lcom/brisa/local/u;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1

    :cond_5
    :goto_1
    iget v0, p0, LW1/v;->h:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_6

    const-string v0, ""

    sput-object v0, Lcom/brisa/local/u;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/brisa/local/u;->b:J

    :cond_6
    new-instance v0, Ljava/io/IOException;

    iget v2, p0, LW1/v;->h:I

    if-ne v2, v1, :cond_7

    const-string p0, "Renueva la conexi\u00f3n con Google Drive."

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Google Drive devolvi\u00f3 HTTP "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, LW1/v;->h:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". El archivo sin conexi\u00f3n se conserva."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LK2/a;

    invoke-direct {v1, v0}, LK2/a;-><init>(Ljava/lang/String;)V

    new-instance v2, La1/g;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, La1/g;-><init>(I)V

    iget-object v3, v2, La1/g;->e:Ljava/lang/Object;

    check-cast v3, [LE0/e;

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v1}, LK2/a;->c()I

    move-result v8

    :goto_1
    const/4 v9, 0x3

    if-eq v8, v9, :cond_2e

    const/16 v10, 0x5e

    if-ne v8, v10, :cond_0

    goto/16 :goto_1a

    :cond_0
    const/16 v11, 0x2e

    const/16 v12, 0x30

    const/16 p0, 0x2

    const/16 v10, 0x32

    const/16 v9, 0x3e

    const/16 v13, 0x14

    if-eq v8, v13, :cond_1

    if-ne v8, v9, :cond_16

    :cond_1
    aget-object v14, v3, v6

    if-eqz v14, :cond_7

    const/16 v16, 0x1

    iget v15, v14, LE0/e;->a:I

    const/16 v17, 0x1

    const/16 v18, 0x0

    packed-switch v15, :pswitch_data_0

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    move/from16 v17, v18

    :pswitch_1
    if-eqz v17, :cond_4

    const/16 v14, 0x1f

    if-eq v15, v14, :cond_3

    :cond_2
    :goto_2
    move/from16 v10, v16

    goto :goto_3

    :cond_3
    move v10, v6

    goto :goto_3

    :cond_4
    if-ne v15, v10, :cond_5

    instance-of v10, v14, LK2/e;

    if-eqz v10, :cond_5

    check-cast v14, LK2/e;

    iget-object v10, v14, LK2/e;->c:LK2/d;

    iget-boolean v10, v10, LK2/d;->b:Z

    goto :goto_3

    :cond_5
    if-ne v15, v12, :cond_6

    instance-of v10, v14, LK2/c;

    if-eqz v10, :cond_6

    check-cast v14, LK2/c;

    iget-object v10, v14, LK2/c;->c:LK2/b;

    iget-boolean v14, v10, LK2/b;->a:Z

    if-eqz v14, :cond_3

    iget-object v10, v10, LK2/b;->b:LK2/d;

    if-eqz v10, :cond_2

    iget-boolean v10, v10, LK2/d;->a:Z

    xor-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    invoke-static {v15}, LB1/e;->b(I)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eq v15, v11, :cond_3

    goto :goto_2

    :cond_7
    const/16 v16, 0x1

    goto :goto_2

    :goto_3
    if-eqz v10, :cond_16

    iget v10, v1, LK2/a;->k:I

    iput v6, v1, LK2/a;->c:I

    const-string v14, "msg.unterminated.re.lit"

    if-ne v8, v9, :cond_8

    const/16 v8, 0x3d

    invoke-virtual {v1, v8}, LK2/a;->a(I)V

    move/from16 v8, v16

    goto :goto_4

    :cond_8
    if-eq v8, v13, :cond_9

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    move/from16 v8, v16

    invoke-virtual {v1, v8, v6}, LK2/a;->b(ZZ)I

    move-result v9

    invoke-virtual {v1, v9}, LK2/a;->i(I)V

    const/16 v13, 0x2a

    if-eq v9, v13, :cond_15

    :goto_4
    move v9, v6

    :goto_5
    invoke-virtual {v1, v8, v6}, LK2/a;->b(ZZ)I

    move-result v13

    const/4 v15, -0x1

    const/16 v11, 0x2f

    if-ne v13, v11, :cond_f

    if-eqz v9, :cond_a

    goto :goto_8

    :cond_a
    :goto_6
    invoke-virtual {v1, v8, v8}, LK2/a;->b(ZZ)I

    move-result v9

    const-string v8, "gimysu"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v15, :cond_b

    invoke-virtual {v1, v9}, LK2/a;->a(I)V

    const/4 v8, 0x1

    goto :goto_6

    :cond_b
    const/16 v8, 0x5a

    if-gt v9, v8, :cond_c

    const/16 v8, 0x41

    if-le v8, v9, :cond_d

    goto :goto_7

    :cond_c
    const/16 v8, 0x61

    if-gt v8, v9, :cond_e

    const/16 v8, 0x7a

    if-le v9, v8, :cond_d

    goto :goto_7

    :cond_d
    new-instance v0, Lu2/f;

    const-string v1, "msg.invalid.re.flag"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_7
    invoke-virtual {v1, v9}, LK2/a;->j(I)V

    iget v8, v1, LK2/a;->c:I

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, 0x2

    iput v10, v1, LK2/a;->l:I

    const/16 v8, 0x24

    goto :goto_a

    :cond_f
    :goto_8
    const/16 v8, 0xa

    if-eq v13, v8, :cond_14

    if-eq v13, v15, :cond_14

    const/16 v11, 0x5c

    if-ne v13, v11, :cond_11

    invoke-virtual {v1, v13}, LK2/a;->a(I)V

    const/4 v11, 0x1

    invoke-virtual {v1, v11, v6}, LK2/a;->b(ZZ)I

    move-result v13

    if-eq v13, v8, :cond_10

    if-eq v13, v15, :cond_10

    goto :goto_9

    :cond_10
    new-instance v0, Lu2/f;

    invoke-direct {v0, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/16 v8, 0x5b

    if-ne v13, v8, :cond_12

    const/4 v9, 0x1

    goto :goto_9

    :cond_12
    const/16 v8, 0x5d

    if-ne v13, v8, :cond_13

    move v9, v6

    :cond_13
    :goto_9
    invoke-virtual {v1, v13}, LK2/a;->a(I)V

    const/4 v8, 0x1

    const/16 v11, 0x2e

    goto :goto_5

    :cond_14
    new-instance v0, Lu2/f;

    invoke-direct {v0, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget v0, v1, LK2/a;->j:I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, LK2/a;->l:I

    new-instance v0, Lu2/f;

    invoke-direct {v0, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_a
    iget v9, v1, LK2/a;->k:I

    iget v10, v1, LK2/a;->l:I

    invoke-static {v8}, LB1/e;->b(I)Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-static {v8}, Lz/K;->b(I)I

    move-result v11

    const/4 v13, 0x0

    packed-switch v11, :pswitch_data_1

    const/16 v9, 0x5e

    const/16 v13, 0x2f

    const/16 v16, 0x1

    goto/16 :goto_17

    :pswitch_2
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_17

    new-instance v9, LK2/e;

    iget v11, v1, LK2/a;->g:I

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LK2/d;

    const/16 v13, 0x32

    invoke-direct {v9, v13, v11, v12}, LK2/e;-><init>(IILK2/d;)V

    invoke-virtual {v2, v9}, La1/g;->D(LE0/e;)V

    :goto_b
    const/16 v13, 0x2f

    const/16 v16, 0x1

    goto/16 :goto_18

    :cond_17
    new-instance v0, Lu2/f;

    const-string v1, "unmatched closing paren at "

    invoke-static {v9, v1}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    aget-object v9, v3, v6

    const/16 v11, 0x4e

    const/4 v12, 0x4

    const/16 v14, 0x48

    if-eqz v9, :cond_1a

    iget v9, v9, LE0/e;->a:I

    if-ne v9, v14, :cond_1a

    const/16 v16, 0x1

    aget-object v9, v3, v16

    if-eqz v9, :cond_1d

    iget v9, v9, LE0/e;->a:I

    invoke-static {v9}, LB1/e;->a(I)Z

    move-result v14

    if-nez v14, :cond_19

    if-eq v9, v12, :cond_19

    if-ne v9, v11, :cond_18

    goto :goto_c

    :cond_18
    move v9, v6

    goto :goto_d

    :cond_19
    :goto_c
    const/4 v9, 0x1

    :goto_d
    if-eqz v9, :cond_1d

    :goto_e
    const/4 v9, 0x1

    goto :goto_11

    :cond_1a
    const/16 v16, 0x1

    aget-object v9, v3, v16

    if-eqz v9, :cond_1d

    iget v9, v9, LE0/e;->a:I

    if-ne v9, v14, :cond_1d

    aget-object v9, v3, p0

    if-eqz v9, :cond_1d

    iget v9, v9, LE0/e;->a:I

    invoke-static {v9}, LB1/e;->a(I)Z

    move-result v14

    if-nez v14, :cond_1c

    if-eq v9, v12, :cond_1c

    if-ne v9, v11, :cond_1b

    goto :goto_f

    :cond_1b
    move v9, v6

    goto :goto_10

    :cond_1c
    :goto_f
    const/4 v9, 0x1

    :goto_10
    if-eqz v9, :cond_1d

    goto :goto_e

    :cond_1d
    move v9, v6

    :goto_11
    aget-object v11, v3, v6

    if-eqz v11, :cond_20

    iget v11, v11, LE0/e;->a:I

    if-eqz v11, :cond_1f

    const/16 v12, 0x4b

    if-eq v11, v12, :cond_1e

    const/16 v12, 0x52

    if-eq v11, v12, :cond_1e

    const/16 v12, 0x50

    if-eq v11, v12, :cond_1e

    const/16 v12, 0x56

    if-ne v11, v12, :cond_20

    :cond_1e
    const/4 v11, 0x1

    goto :goto_12

    :cond_1f
    throw v13

    :cond_20
    move v11, v6

    :goto_12
    new-instance v12, LK2/d;

    invoke-direct {v12, v9, v11}, LK2/d;-><init>(ZZ)V

    invoke-virtual {v5, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, LK2/e;

    const/16 v11, 0x31

    iget v13, v1, LK2/a;->g:I

    invoke-direct {v9, v11, v13, v12}, LK2/e;-><init>(IILK2/d;)V

    invoke-virtual {v2, v9}, La1/g;->D(LE0/e;)V

    goto/16 :goto_b

    :pswitch_4
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_21

    new-instance v9, LK2/c;

    iget v11, v1, LK2/a;->g:I

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LK2/b;

    invoke-direct {v9, v12, v11, v13}, LK2/c;-><init>(IILK2/b;)V

    invoke-virtual {v2, v9}, La1/g;->D(LE0/e;)V

    goto/16 :goto_b

    :cond_21
    new-instance v0, Lu2/f;

    const-string v1, "unmatched closing brace at "

    invoke-static {v9, v1}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    aget-object v9, v3, v6

    if-eqz v9, :cond_26

    iget v9, v9, LE0/e;->a:I

    invoke-static {v9}, Lz/K;->b(I)I

    move-result v9

    const/4 v11, 0x3

    if-eq v9, v11, :cond_22

    const/16 v11, 0x27

    if-eq v9, v11, :cond_22

    const/16 v11, 0x2e

    if-eq v9, v11, :cond_24

    if-eq v9, v12, :cond_24

    const/16 v11, 0x41

    if-eq v9, v11, :cond_23

    const/16 v11, 0x4d

    if-eq v9, v11, :cond_24

    const/16 v11, 0x5f

    if-eq v9, v11, :cond_22

    aget-object v9, v3, v6

    iget v9, v9, LE0/e;->a:I

    invoke-static {v9}, LB1/e;->a(I)Z

    move-result v9

    const/16 v16, 0x1

    xor-int/lit8 v9, v9, 0x1

    :goto_13
    const/16 v16, 0x1

    goto :goto_16

    :cond_22
    const/16 v16, 0x1

    goto :goto_14

    :cond_23
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_24

    invoke-virtual {v4}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LK2/b;

    iget-boolean v9, v9, LK2/b;->a:Z

    if-eqz v9, :cond_24

    const/4 v9, 0x1

    goto :goto_13

    :cond_24
    move v9, v6

    goto :goto_13

    :goto_14
    aget-object v9, v3, v16

    if-eqz v9, :cond_25

    iget v9, v9, LE0/e;->b:I

    iget v11, v1, LK2/a;->g:I

    if-eq v9, v11, :cond_25

    goto :goto_15

    :cond_25
    move v9, v6

    goto :goto_16

    :cond_26
    const/16 v16, 0x1

    :goto_15
    move/from16 v9, v16

    :goto_16
    aget-object v11, v3, v6

    instance-of v12, v11, LK2/e;

    if-eqz v12, :cond_27

    iget v12, v11, LE0/e;->a:I

    const/16 v14, 0x32

    if-ne v12, v14, :cond_27

    check-cast v11, LK2/e;

    iget-object v13, v11, LK2/e;->c:LK2/d;

    :cond_27
    new-instance v11, LK2/b;

    invoke-direct {v11, v9, v13}, LK2/b;-><init>(ZLK2/d;)V

    invoke-virtual {v4, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, LK2/c;

    iget v12, v1, LK2/a;->g:I

    const/16 v13, 0x2f

    invoke-direct {v9, v13, v12, v11}, LK2/c;-><init>(IILK2/b;)V

    invoke-virtual {v2, v9}, La1/g;->D(LE0/e;)V

    goto :goto_18

    :cond_28
    const/16 v13, 0x2f

    const/16 v16, 0x1

    const/16 v9, 0x5e

    :goto_17
    if-eq v8, v9, :cond_29

    new-instance v9, LE0/e;

    iget v11, v1, LK2/a;->g:I

    invoke-direct {v9, v8, v11}, LE0/e;-><init>(II)V

    invoke-virtual {v2, v9}, La1/g;->D(LE0/e;)V

    :cond_29
    :goto_18
    if-ne v8, v13, :cond_2a

    move/from16 v7, v16

    goto/16 :goto_0

    :cond_2a
    if-eqz v7, :cond_2c

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2b

    move/from16 v15, v16

    goto :goto_19

    :cond_2b
    move v15, v6

    :goto_19
    if-eqz v15, :cond_2c

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    move/from16 v9, p0

    if-eq v8, v9, :cond_2d

    goto/16 :goto_0

    :cond_2d
    new-instance v0, Lu2/f;

    const-string v1, "Could not find matching braces"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :goto_1a
    invoke-virtual {v1}, LK2/a;->c()I

    move-result v8

    goto/16 :goto_1

    :cond_2f
    new-instance v0, Lu2/f;

    const-string v1, "Start not found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static r(Landroid/content/Context;Lorg/json/JSONObject;Lcom/brisa/local/p;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "srv3"

    const-string v4, "brisaFormat"

    const-string v5, "size"

    const-string v6, "trashed=false and appProperties has { key=\'brisaParent\' and value=\'"

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->A(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v7

    const-string v8, "hidden"

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    const-string v7, "account"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/brisa/local/u;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "driveId"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "id"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "kind"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "audio"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, ".mp3"

    goto :goto_0

    :cond_1
    const-string v12, ".mp4"

    :goto_0
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/io/File;

    invoke-static {v0}, Lcom/brisa/local/a;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    invoke-static {v0}, Lcom/brisa/local/a;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object v14

    const-string v15, ".part"

    invoke-static {v10, v15}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0, v7, v13, v2}, Lcom/brisa/local/u;->h(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/brisa/local/p;)V

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v5, v14, v16

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "La copia sin conexi\u00f3n qued\u00f3 incompleta."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_3
    :goto_1
    invoke-virtual {v13, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "privateFile"

    invoke-virtual {v1, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "localUri"

    invoke-static {v0, v12}, Lcom/brisa/local/a;->D(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\'"

    const-string v8, ""

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' }"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/brisa/local/u;->u(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v9, v7, :cond_5

    const/16 v7, 0x14

    if-ge v9, v7, :cond_5

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "appProperties"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "-cc-"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/io/File;

    invoke-static {v0}, Lcom/brisa/local/a;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object v14

    invoke-direct {v12, v14, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v12, v2}, Lcom/brisa/local/u;->h(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/brisa/local/p;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/32 v16, 0x400000

    cmp-long v7, v14, v16

    if-lez v7, :cond_4

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    goto :goto_3

    :cond_4
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "file"

    invoke-virtual {v7, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "label"

    const-string v12, "brisaLabel"

    const-string v14, "Espa\u00f1ol"

    invoke-virtual {v8, v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "format"

    invoke-virtual {v8, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "effects"

    const-string v12, "brisaEffects"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_5
    const-string v2, "captions"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p1}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    return-void

    :cond_6
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No se pudo conservar la copia sin conexi\u00f3n."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Conecta la cuenta de Drive de este archivo."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, ""

    :goto_0
    new-instance v2, LW1/l;

    invoke-direct {v2}, LW1/l;-><init>()V

    const/4 v3, 0x0

    const-string v4, "https://www.googleapis.com/drive/v3/files"

    invoke-virtual {v2, v3, v4}, LW1/l;->d(LW1/m;Ljava/lang/String;)V

    invoke-virtual {v2}, LW1/l;->b()LW1/m;

    move-result-object v2

    invoke-virtual {v2}, LW1/m;->f()LW1/l;

    move-result-object v2

    const-string v3, "q"

    invoke-virtual {v2, v3, p1}, LW1/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pageSize"

    const-string v4, "100"

    invoke-virtual {v2, v3, v4}, LW1/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "fields"

    const-string v4, "nextPageToken,files(id,name,size,mimeType,appProperties)"

    invoke-virtual {v2, v3, v4}, LW1/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "pageToken"

    invoke-virtual {v2, v3, v1}, LW1/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/brisa/local/W;->a:LW1/q;

    invoke-virtual {v2}, LW1/l;->b()LW1/m;

    move-result-object v2

    iget-object v2, v2, LW1/m;->h:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/brisa/local/u;->c(Landroid/content/Context;Ljava/lang/String;)LC2/b;

    move-result-object v2

    invoke-virtual {v2}, LC2/b;->b()LM0/r0;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, La2/h;

    invoke-direct {v3, v1, v2}, La2/h;-><init>(LW1/q;LM0/r0;)V

    invoke-virtual {v3}, La2/h;->d()LW1/v;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/brisa/local/u;->p(LW1/v;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "files"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-string v3, "nextPageToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, LW1/v;->close()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v3, 0x1388

    if-le v1, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    return-object v0

    :cond_3
    move-object v1, v2

    goto/16 :goto_0

    :goto_3
    :try_start_1
    invoke-virtual {v1}, LW1/v;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method

.method public static v(Landroid/content/Context;)V
    .locals 11

    invoke-static {p0}, Lcom/brisa/local/u;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "trashed=false and (appProperties has { key=\'brisaKind\' and value=\'audio\' } or appProperties has { key=\'brisaKind\' and value=\'video\' })"

    invoke-static {p0, v1}, Lcom/brisa/local/u;->u(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "appProperties"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "brisaAssetId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[a-zA-Z0-9_-]{1,100}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, v5}, Lcom/brisa/local/a;->m(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "account"

    if-eqz v6, :cond_1

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v8, "id"

    if-nez v6, :cond_2

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "storageMode"

    const-string v9, "drive"

    invoke-virtual {v5, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    :cond_2
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v9, "driveId"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "brisaKind"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "kind"

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "size"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v4, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0, v6}, Lcom/brisa/local/a;->z(Landroid/content/Context;Lorg/json/JSONObject;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/brisa/local/a;->s(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    return-void

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Conecta Google Drive primero."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;
    .locals 14

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const/4 v1, 0x1

    const-string v2, "https://www.googleapis.com/auth/drive.file"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "requestedScopes cannot be null or empty"

    invoke-static {v2, v1}, Ld1/s;->a(Ljava/lang/String;Z)V

    const-string v1, "brisa-drive"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "email"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v8, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    new-instance v3, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-object v3
.end method

.method public static x(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Lcom/brisa/local/u;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "connected"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "email"

    invoke-static {p0}, Lcom/brisa/local/u;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "scope"

    const-string v1, "drive.file"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static y(LP1/c;I)LP1/a;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_2

    iget v0, p0, LP1/a;->e:I

    iget v1, p0, LP1/a;->f:I

    iget p0, p0, LP1/a;->g:I

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    :goto_1
    new-instance p0, LP1/a;

    invoke-direct {p0, v0, v1, p1}, LP1/a;-><init>(III)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Step must be positive, was: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static z(II)LP1/c;
    .locals 2

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object p0, LP1/c;->h:LP1/c;

    sget-object p0, LP1/c;->h:LP1/c;

    return-object p0

    :cond_0
    new-instance v0, LP1/c;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-direct {v0, p0, p1, v1}, LP1/a;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public abstract e(Lz1/p;Lz1/d;Lz1/d;)Z
.end method

.method public abstract f(Lz1/p;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract g(Lz1/p;Lz1/o;Lz1/o;)Z
.end method

.method public abstract l(Lz1/p;)Lz1/d;
.end method

.method public abstract m(Lz1/p;)Lz1/o;
.end method

.method public abstract s(Lz1/o;Lz1/o;)V
.end method

.method public abstract t(Lz1/o;Ljava/lang/Thread;)V
.end method
