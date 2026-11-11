.class public final LN0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LN0/i;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic i:LN0/i;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LN0/i;LN0/i;Ljava/lang/String;Landroid/os/Bundle;La/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LN0/q;->e:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/q;->i:LN0/i;

    iput-object p2, p0, LN0/q;->f:LN0/i;

    iput-object p3, p0, LN0/q;->g:Ljava/lang/String;

    iput-object p4, p0, LN0/q;->h:Landroid/os/Bundle;

    iput-object p5, p0, LN0/q;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LN0/i;LN0/i;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LN0/q;->e:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/q;->i:LN0/i;

    iput-object p2, p0, LN0/q;->f:LN0/i;

    iput-object p3, p0, LN0/q;->g:Ljava/lang/String;

    iput-object p4, p0, LN0/q;->j:Ljava/lang/Object;

    iput-object p5, p0, LN0/q;->h:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, LN0/q;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/q;->f:LN0/i;

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, LN0/q;->i:LN0/i;

    iget-object v2, v1, LN0/i;->a:Ljava/lang/Object;

    check-cast v2, LM0/y1;

    iget-object v2, v2, LM0/y1;->e:Lh/e;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN0/m;

    iget-object v2, p0, LN0/q;->h:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendCustomAction for callback that isn\'t registered action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LN0/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBServiceCompat"

    invoke-static {v1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, v1, LN0/i;->a:Ljava/lang/Object;

    check-cast v1, LM0/y1;

    iget-object v4, p0, LN0/q;->j:Ljava/lang/Object;

    check-cast v4, La/d;

    iput-object v0, v1, LM0/y1;->f:LN0/m;

    if-nez v2, :cond_1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v4, v0, v3}, La/d;->b(ILandroid/os/Bundle;)V

    iput-object v3, v1, LM0/y1;->f:LN0/m;

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LN0/q;->f:LN0/i;

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, LN0/q;->i:LN0/i;

    iget-object v2, v1, LN0/i;->a:Ljava/lang/Object;

    check-cast v2, LM0/y1;

    iget-object v2, v2, LM0/y1;->e:Lh/e;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LN0/m;

    if-nez v7, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addSubscription for callback that isn\'t registered id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LN0/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBServiceCompat"

    invoke-static {v1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, v7, LN0/m;->f:Ljava/util/HashMap;

    iget-object v1, v1, LN0/i;->a:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, LM0/y1;

    iget-object v1, p0, LN0/q;->j:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v6, p0, LN0/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    iget-object v9, p0, LN0/q;->h:Landroid/os/Bundle;

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr/c;

    iget-object v10, v8, Lr/c;->a:Ljava/lang/Object;

    if-ne v1, v10, :cond_4

    iget-object v8, v8, Lr/c;->b:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    if-ne v9, v8, :cond_5

    goto :goto_2

    :cond_5
    const-string v10, "android.media.browse.extra.PAGE_SIZE"

    const-string v11, "android.media.browse.extra.PAGE"

    const/4 v12, -0x1

    if-nez v9, :cond_6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v11, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v12, :cond_4

    invoke-virtual {v8, v10, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v12, :cond_4

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    invoke-virtual {v9, v11, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v12, :cond_4

    invoke-virtual {v9, v10, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v12, :cond_4

    goto :goto_2

    :cond_7
    invoke-virtual {v9, v11, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v8, v11, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v13, v11, :cond_4

    invoke-virtual {v9, v10, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v10, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v9, v8, :cond_4

    goto :goto_2

    :cond_8
    new-instance v4, Lr/c;

    invoke-direct {v4, v1, v9}, Lr/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, LN0/j;

    move-object v8, v6

    invoke-direct/range {v4 .. v9}, LN0/j;-><init>(LM0/y1;Ljava/lang/Object;LN0/m;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v7, v5, LM0/y1;->f:LN0/m;

    if-nez v9, :cond_9

    invoke-virtual {v4}, LN0/j;->b()V

    goto :goto_1

    :cond_9
    const/4 v0, 0x1

    iput v0, v4, LN0/j;->b:I

    invoke-virtual {v4}, LN0/j;->b()V

    :goto_1
    iput-object v3, v5, LM0/y1;->f:LN0/m;

    iget-boolean v0, v4, LN0/j;->a:Z

    if-eqz v0, :cond_a

    iput-object v3, v5, LM0/y1;->f:LN0/m;

    :goto_2
    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, LN0/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
