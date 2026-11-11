.class public final LN0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LN0/i;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:LN0/i;


# direct methods
.method public constructor <init>(LN0/i;LN0/i;Ljava/lang/String;Landroid/os/Bundle;La/d;)V
    .locals 0

    const/4 p4, 0x1

    iput p4, p0, LN0/r;->e:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/r;->i:LN0/i;

    iput-object p2, p0, LN0/r;->f:LN0/i;

    iput-object p3, p0, LN0/r;->g:Ljava/lang/String;

    iput-object p5, p0, LN0/r;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LN0/i;LN0/i;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, LN0/r;->e:I

    iput-object p1, p0, LN0/r;->i:LN0/i;

    iput-object p2, p0, LN0/r;->f:LN0/i;

    iput-object p3, p0, LN0/r;->g:Ljava/lang/String;

    iput-object p4, p0, LN0/r;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, LN0/r;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/r;->f:LN0/i;

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, LN0/r;->i:LN0/i;

    iget-object v2, v1, LN0/i;->a:Ljava/lang/Object;

    check-cast v2, LM0/y1;

    iget-object v2, v2, LM0/y1;->e:Lh/e;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/m;

    const-string v2, "MBServiceCompat"

    iget-object v4, p0, LN0/r;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeSubscription for callback that isn\'t registered id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    iget-object v0, v0, LN0/m;->f:Ljava/util/HashMap;

    iget-object v1, v1, LN0/i;->a:Ljava/lang/Object;

    check-cast v1, LM0/y1;

    iget-object v5, p0, LN0/r;->h:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_2

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    move v6, v7

    :cond_1
    :goto_0
    iput-object v3, v1, LM0/y1;->f:LN0/m;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr/c;

    iget-object v10, v10, Lr/c;->a:Ljava/lang/Object;

    if-ne v5, v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    move v6, v7

    goto :goto_1

    :cond_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    if-nez v6, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeSubscription called for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " which is not subscribed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void

    :goto_4
    iput-object v3, v1, LM0/y1;->f:LN0/m;

    throw v0

    :pswitch_0
    iget-object v0, p0, LN0/r;->f:LN0/i;

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, LN0/r;->i:LN0/i;

    iget-object v2, v1, LN0/i;->a:Ljava/lang/Object;

    check-cast v2, LM0/y1;

    iget-object v2, v2, LM0/y1;->e:Lh/e;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/m;

    if-nez v0, :cond_6

    const-string v0, "MBServiceCompat"

    const-string v1, "search for callback that isn\'t registered query="

    iget-object v2, p0, LN0/r;->g:Ljava/lang/String;

    invoke-static {v1, v2, v0}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object v1, v1, LN0/i;->a:Ljava/lang/Object;

    check-cast v1, LM0/y1;

    iget-object v2, p0, LN0/r;->h:Ljava/lang/Object;

    check-cast v2, La/d;

    iput-object v0, v1, LM0/y1;->f:LN0/m;

    const/4 v0, -0x1

    invoke-virtual {v2, v0, v3}, La/d;->b(ILandroid/os/Bundle;)V

    iput-object v3, v1, LM0/y1;->f:LN0/m;

    :goto_5
    return-void

    :pswitch_1
    iget-object v0, p0, LN0/r;->f:LN0/i;

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, LN0/r;->i:LN0/i;

    iget-object v2, v1, LN0/i;->a:Ljava/lang/Object;

    check-cast v2, LM0/y1;

    iget-object v2, v2, LM0/y1;->e:Lh/e;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/m;

    if-nez v0, :cond_7

    const-string v0, "MBServiceCompat"

    const-string v1, "getMediaItem for callback that isn\'t registered id="

    iget-object v2, p0, LN0/r;->g:Ljava/lang/String;

    invoke-static {v1, v2, v0}, LB1/e;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    iget-object v1, v1, LN0/i;->a:Ljava/lang/Object;

    check-cast v1, LM0/y1;

    iget-object v2, p0, LN0/r;->h:Ljava/lang/Object;

    check-cast v2, La/d;

    iput-object v0, v1, LM0/y1;->f:LN0/m;

    const/4 v0, 0x2

    and-int/2addr v0, v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    invoke-virtual {v2, v0, v3}, La/d;->b(ILandroid/os/Bundle;)V

    goto :goto_6

    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "media_item"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, La/d;->b(ILandroid/os/Bundle;)V

    :goto_6
    iput-object v3, v1, LM0/y1;->f:LN0/m;

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
