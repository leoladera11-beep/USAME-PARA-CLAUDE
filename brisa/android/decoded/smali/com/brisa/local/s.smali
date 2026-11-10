.class public final synthetic Lcom/brisa/local/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/c;
.implements Ls1/b;


# instance fields
.field public final synthetic e:Lcom/brisa/local/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/brisa/local/s;->e:Lcom/brisa/local/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 8

    iget-object v1, p0, Lcom/brisa/local/s;->e:Lcom/brisa/local/MainActivity;

    check-cast p1, LX0/a;

    :try_start_0
    iget-object v0, p1, LX0/a;->j:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v3, 0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-static {v1, p1}, Lcom/brisa/local/u;->a(Landroid/content/Context;LX0/a;)V

    const/4 p1, 0x0

    invoke-static {v1, p1}, Lcom/brisa/local/u;->j(Landroid/content/Context;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-static {v1, p1}, Lcom/brisa/local/u;->j(Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method

.method public e()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No se pudo autorizar Drive. Revisa la configuraci\u00f3n de Google OAuth y tu conexi\u00f3n."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brisa/local/s;->e:Lcom/brisa/local/MainActivity;

    invoke-static {v1, v0}, Lcom/brisa/local/u;->j(Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method
