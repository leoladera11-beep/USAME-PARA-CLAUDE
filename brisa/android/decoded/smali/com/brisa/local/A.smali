.class public final Lcom/brisa/local/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final f:Lcom/brisa/local/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/MainActivity;I)V
    .locals 0

    iput p2, p0, Lcom/brisa/local/A;->e:I

    iput-object p1, p0, Lcom/brisa/local/A;->f:Lcom/brisa/local/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/brisa/local/A;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/brisa/local/A;->f:Lcom/brisa/local/MainActivity;

    new-instance v1, Lcom/brisa/local/A;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/brisa/local/A;-><init>(Lcom/brisa/local/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/brisa/local/A;->f:Lcom/brisa/local/MainActivity;

    iget-boolean v1, v0, Lcom/brisa/local/MainActivity;->g:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/brisa/local/MainActivity;->h:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/brisa/local/MainActivity;->b:Lcom/brisa/local/e;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/brisa/local/MainActivity;->b:Lcom/brisa/local/e;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/brisa/local/e;->c:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_1

    const-string v1, "batchId"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/brisa/local/MainActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "batchId"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brisa/local/MainActivity;->i:Ljava/lang/String;

    iget-object v0, v0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "window.BrisaPlatform&&window.BrisaPlatform.imported("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u2028"

    const-string v4, "\\u2028"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u2029"

    const-string v4, "\\u2029"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
