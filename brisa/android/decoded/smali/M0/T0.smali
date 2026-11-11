.class public final LM0/T0;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LM0/X0;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LM0/T0;->a:I

    .line 3
    iput-object p1, p0, LM0/T0;->c:Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(LN0/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LM0/T0;->a:I

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LM0/T0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p0, LM0/T0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    const-string v0, "MediaBrowserCompat"

    const-string v1, "\n  Client version: 1\n  Service version: "

    const-string v2, "Unhandled message: "

    iget-object v3, p0, LM0/T0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    iget-object v4, p0, LM0/T0;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/f;

    if-eqz v3, :cond_7

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    const-class v6, LN0/O;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "data_options"

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string p1, "data_notify_children_changed_options"

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string p1, "data_media_item_id"

    invoke-virtual {v5, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "data_media_item_list"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, LN0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, LS1/e;->g(Ljava/util/List;Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    iget-object v1, v4, LN0/f;->g:Landroid/os/Messenger;

    if-eq v1, v3, :cond_4

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, v4, LN0/f;->e:Lh/e;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadChildren for id that isn\'t subscribed id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, LJ/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "Could not unparcel the data."

    invoke-static {v0, p1}, LJ/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
