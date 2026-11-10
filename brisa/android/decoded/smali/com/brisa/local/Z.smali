.class public final synthetic Lcom/brisa/local/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/brisa/local/VideoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/VideoActivity;I)V
    .locals 0

    iput p2, p0, Lcom/brisa/local/Z;->e:I

    iput-object p1, p0, Lcom/brisa/local/Z;->f:Lcom/brisa/local/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/brisa/local/Z;->e:I

    const/4 v1, 0x0

    const-string v2, "captions"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/brisa/local/Z;->f:Lcom/brisa/local/VideoActivity;

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, v4, Lcom/brisa/local/VideoActivity;->f:Z

    xor-int/2addr v0, v3

    invoke-virtual {v4, v0}, Lcom/brisa/local/VideoActivity;->e(Z)V

    return-void

    :pswitch_0
    sget v0, Lcom/brisa/local/VideoActivity;->l:I

    invoke-virtual {v4}, Lcom/brisa/local/VideoActivity;->f()V

    return-void

    :pswitch_1
    sget v0, Lcom/brisa/local/VideoActivity;->l:I

    :try_start_0
    iget-object v0, v4, Lcom/brisa/local/VideoActivity;->d:LM0/B;

    invoke-virtual {v0}, Lz1/p;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/z;

    iput-object v0, v4, Lcom/brisa/local/VideoActivity;->c:LM0/z;

    iget-object v5, v4, Lcom/brisa/local/VideoActivity;->a:LO0/F;

    invoke-virtual {v5, v0}, LO0/F;->setPlayer(LG/g0;)V

    iget-object v0, v4, Lcom/brisa/local/VideoActivity;->c:LM0/z;

    new-instance v5, Lcom/brisa/local/c0;

    invoke-direct {v5, v4}, Lcom/brisa/local/c0;-><init>(Lcom/brisa/local/VideoActivity;)V

    invoke-virtual {v0, v5}, LM0/z;->O(LG/e0;)V

    iget-object v0, v4, Lcom/brisa/local/VideoActivity;->j:Landroid/os/Handler;

    iget-object v5, v4, Lcom/brisa/local/VideoActivity;->k:LB/k;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v4, Lcom/brisa/local/VideoActivity;->i:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/brisa/local/a;->m(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/brisa/local/VideoActivity;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "No se pudo abrir el reproductor."

    invoke-static {v4, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return-void

    :pswitch_2
    sget v0, Lcom/brisa/local/VideoActivity;->l:I

    invoke-virtual {v4}, Lcom/brisa/local/VideoActivity;->d()V

    return-void

    :pswitch_3
    iget-object v0, v4, Lcom/brisa/local/VideoActivity;->i:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/brisa/local/a;->m(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Desactivados"

    aput-object v3, v2, v1

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "label"

    const-string v6, "Espa\u00f1ol"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    move v1, v3

    goto :goto_3

    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Subt\u00edtulos"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/brisa/local/b0;

    invoke-direct {v3, v4, v0}, Lcom/brisa/local/b0;-><init>(Lcom/brisa/local/VideoActivity;Lorg/json/JSONArray;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
