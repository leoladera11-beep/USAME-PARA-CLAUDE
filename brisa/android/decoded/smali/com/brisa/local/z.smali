.class public final Lcom/brisa/local/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final f:Lcom/brisa/local/MainActivity;

.field public final g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/MainActivity;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/brisa/local/z;->e:I

    iput-object p1, p0, Lcom/brisa/local/z;->f:Lcom/brisa/local/MainActivity;

    iput-object p2, p0, Lcom/brisa/local/z;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/brisa/local/z;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/brisa/local/z;->f:Lcom/brisa/local/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/brisa/local/z;->g:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/brisa/local/z;->f:Lcom/brisa/local/MainActivity;

    iput-boolean v0, v1, Lcom/brisa/local/MainActivity;->c:Z

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-boolean v2, v1, Lcom/brisa/local/MainActivity;->g:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "window.BrisaVideosChanged&&window.BrisaVideosChanged()"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/brisa/local/z;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/brisa/local/z;->f:Lcom/brisa/local/MainActivity;

    iget-boolean v1, v0, Lcom/brisa/local/MainActivity;->g:Z

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.BrisaPlatform&&window.BrisaPlatform.receive("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/brisa/local/z;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
