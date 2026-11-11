.class public final LN0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LN0/i;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:LN0/i;


# direct methods
.method public constructor <init>(LN0/i;LN0/i;ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/s;->i:LN0/i;

    iput-object p2, p0, LN0/s;->e:LN0/i;

    iput p3, p0, LN0/s;->f:I

    iput-object p4, p0, LN0/s;->g:Ljava/lang/String;

    iput p5, p0, LN0/s;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v5, p0, LN0/s;->e:LN0/i;

    iget-object v0, v5, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    iget-object v0, p0, LN0/s;->i:LN0/i;

    iget-object v1, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v1, LM0/y1;

    iget-object v1, v1, LM0/y1;->e:Lh/e;

    invoke-virtual {v1, v6}, Lh/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LM0/y1;

    iget-object v0, v1, LM0/y1;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/m;

    iget v3, v0, LN0/m;->c:I

    iget v4, p0, LN0/s;->f:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, LN0/s;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, LN0/s;->h:I

    if-gtz v3, :cond_2

    :cond_1
    move-object v2, v0

    new-instance v0, LN0/m;

    move-object v3, v2

    iget-object v2, v3, LN0/m;->a:Ljava/lang/String;

    move-object v4, v3

    iget v3, v4, LN0/m;->b:I

    iget v4, v4, LN0/m;->c:I

    invoke-direct/range {v0 .. v5}, LN0/m;-><init>(LM0/y1;Ljava/lang/String;IILN0/i;)V

    move-object v2, v0

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    :cond_3
    if-nez v2, :cond_4

    new-instance v0, LN0/m;

    iget v3, p0, LN0/s;->h:I

    iget v4, p0, LN0/s;->f:I

    iget-object v2, p0, LN0/s;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, LN0/m;-><init>(LM0/y1;Ljava/lang/String;IILN0/i;)V

    move-object v2, v0

    :cond_4
    iget-object v0, v1, LM0/y1;->e:Lh/e;

    invoke-virtual {v0, v6, v2}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "MBServiceCompat"

    const-string v1, "IBinder is already dead."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
