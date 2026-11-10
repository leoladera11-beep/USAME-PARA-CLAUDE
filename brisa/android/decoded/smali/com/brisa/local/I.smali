.class public final Lcom/brisa/local/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final f:Lcom/brisa/local/K;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/K;I)V
    .locals 0

    iput p2, p0, Lcom/brisa/local/I;->e:I

    iput-object p1, p0, Lcom/brisa/local/I;->f:Lcom/brisa/local/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/brisa/local/I;->e:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/brisa/local/I;->f:Lcom/brisa/local/K;

    iget-object v0, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    const-string v1, "Brisa Local 2.6.0. Conserva el paquete y tu copia de firma para las pr\u00f3ximas actualizaciones."

    invoke-virtual {v0, v1}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/brisa/local/I;->f:Lcom/brisa/local/K;

    iget-object v0, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    iput-boolean v1, v0, Lcom/brisa/local/MainActivity;->h:Z

    const-string v1, ""

    iput-object v1, v0, Lcom/brisa/local/MainActivity;->i:Ljava/lang/String;

    new-instance v1, Lcom/brisa/local/A;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/brisa/local/A;-><init>(Lcom/brisa/local/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/brisa/local/I;->f:Lcom/brisa/local/K;

    iget-object v0, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    iget-boolean v2, v0, Lcom/brisa/local/MainActivity;->c:Z

    if-eqz v2, :cond_0

    const-string v1, "Espera a que termine la importaci\u00f3n de videos."

    invoke-virtual {v0, v1}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "video/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0x41

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0xe

    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "No se pudo abrir el selector de videos."

    invoke-virtual {v0, v1}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/brisa/local/I;->f:Lcom/brisa/local/K;

    iget-object v0, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    invoke-static {v0, v1}, Lcom/brisa/local/MainActivity;->a(Lcom/brisa/local/MainActivity;Z)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/brisa/local/I;->f:Lcom/brisa/local/K;

    iget-object v1, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    sget-object v2, Lcom/brisa/local/MainActivity;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Lcom/brisa/local/MainActivity;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "A\u00f1adir m\u00fasica en masa"

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Seleccionar varias canciones"

    const-string v3, "Importar carpeta y subcarpetas"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brisa/local/J;

    invoke-direct {v3, v0}, Lcom/brisa/local/J;-><init>(Lcom/brisa/local/K;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancelar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/brisa/local/I;->f:Lcom/brisa/local/K;

    iget-object v1, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    iget-object v1, v1, Lcom/brisa/local/MainActivity;->b:Lcom/brisa/local/e;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    iget-object v0, v0, Lcom/brisa/local/MainActivity;->b:Lcom/brisa/local/e;

    invoke-virtual {v0}, Lcom/brisa/local/e;->b()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
