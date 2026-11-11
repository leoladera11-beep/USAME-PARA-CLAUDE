.class public final Lb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lb/e;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lb/e;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lb/d;->e:I

    iput-object p1, p0, Lb/d;->g:Lb/e;

    iput p2, p0, Lb/d;->f:I

    iput-object p3, p0, Lb/d;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lb/d;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lb/d;->h:Ljava/lang/Object;

    check-cast v1, Landroid/content/IntentSender$SendIntentException;

    const-string v2, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lb/d;->g:Lb/e;

    iget v2, p0, Lb/d;->f:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lb/e;->a(IILandroid/content/Intent;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lb/d;->h:Ljava/lang/Object;

    check-cast v0, LZ0/i;

    iget-object v0, v0, LZ0/i;->e:Ljava/lang/Object;

    iget-object v1, p0, Lb/d;->g:Lb/e;

    iget-object v2, v1, Lb/e;->b:Ljava/util/HashMap;

    iget v3, p0, Lb/d;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lb/e;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/c;

    if-eqz v3, :cond_1

    iget-object v3, v3, Ld/c;->a:Ld/b;

    iget-object v1, v1, Lb/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3, v0}, Ld/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lb/e;->h:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v1, v1, Lb/e;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
