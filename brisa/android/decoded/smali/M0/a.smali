.class public final synthetic LM0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/b;


# direct methods
.method public synthetic constructor <init>(LM0/b;I)V
    .locals 0

    iput p2, p0, LM0/a;->e:I

    iput-object p1, p0, LM0/a;->f:LM0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, LM0/a;->e:I

    iget-object v1, p0, LM0/a;->f:LM0/b;

    packed-switch v0, :pswitch_data_0

    sget-object v0, LM0/b;->g:Landroid/net/Uri;

    invoke-virtual {v1}, LM0/b;->a()V

    return-void

    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "androidx.car.app.connection.action.CAR_CONNECTION_UPDATED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_0

    iget-object v0, v1, LM0/b;->a:Landroid/content/Context;

    iget-object v2, v1, LM0/b;->d:LJ/z;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v2, v1, LM0/b;->a:Landroid/content/Context;

    iget-object v3, v1, LM0/b;->d:LJ/z;

    invoke-static {}, LS1/e;->k()Z

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v0, :cond_1

    invoke-static/range {v2 .. v7}, Ll/d;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-static/range {v2 .. v7}, Ll/b;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v1}, LM0/b;->a()V

    return-void

    :pswitch_1
    iget-object v0, v1, LM0/b;->a:Landroid/content/Context;

    iget-object v1, v1, LM0/b;->d:LJ/z;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
