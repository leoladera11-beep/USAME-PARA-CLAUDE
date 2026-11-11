.class public final LN0/F;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LN0/F;->a:I

    iput-object p1, p0, LN0/F;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method public static b(LN0/I;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN0/I;->a:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getCallingPackage"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MediaSessionCompat"

    const-string v3, "Cannot execute MediaSession.getCallingPackage()"

    invoke-static {v2, v3, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "android.media.session.MediaController"

    :cond_1
    new-instance v0, LN0/P;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v2}, LN0/P;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, LN0/I;->c(LN0/P;)V

    return-void
.end method


# virtual methods
.method public a()LN0/I;
    .locals 4

    iget-object v0, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v0, LN0/G;

    iget-object v0, v0, LN0/G;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    iget-object v1, v1, LN0/G;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN0/I;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    iget-object v0, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v0, LN0/G;

    iget-object v2, v1, LN0/I;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v1, LN0/I;->l:LN0/G;

    monitor-exit v2

    if-ne v0, v3, :cond_0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 6

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/media/session/MediaSession$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_9

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p2, v0, LN0/I;->c:LN0/N;

    invoke-virtual {p2}, LN0/N;->a()LN0/d;

    move-result-object v2

    const-string v3, "android.support.v4.media.session.EXTRA_BINDER"

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v2, p2, LN0/N;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p2, LN0/N;->h:LV0/d;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "android.support.v4.media.session.SESSION_TOKEN2"

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "a"

    new-instance v5, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v5, p2}, Landroidx/versionedparcelable/ParcelImpl;-><init>(LV0/d;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_1
    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_3
    const-string v2, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_9

    iget-object p1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast p1, LN0/G;

    const-string p3, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    sget-object p3, LN0/C;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LS1/e;->f(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, LN0/C;

    invoke-virtual {p1, p2}, LN0/G;->b(LN0/C;)V

    goto/16 :goto_3

    :cond_4
    const-string v2, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_9

    iget-object p1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast p1, LN0/G;

    const-string p3, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    sget-object v2, LN0/C;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p3, v2}, LS1/e;->f(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, LN0/C;

    const-string v2, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p3, p2}, LN0/G;->c(LN0/C;I)V

    goto :goto_3

    :cond_5
    const-string v2, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_9

    iget-object p1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast p1, LN0/G;

    const-string p3, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    sget-object p3, LN0/C;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LS1/e;->f(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, LN0/C;

    invoke-virtual {p1, p2}, LN0/G;->q(LN0/C;)V

    goto :goto_3

    :cond_6
    const-string v2, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p1, v0, LN0/I;->h:Ljava/util/List;

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    const-string p3, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    const/4 v2, -0x1

    invoke-virtual {p2, p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_7

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN0/M;

    goto :goto_2

    :cond_7
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_9

    iget-object p2, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast p2, LN0/G;

    iget-object p1, p1, LN0/M;->e:LN0/C;

    invoke-virtual {p2, p1}, LN0/G;->q(LN0/C;)V

    goto :goto_3

    :cond_8
    iget-object v2, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v2, LN0/G;

    invoke-virtual {v2, p1, p2, p3}, LN0/G;->d(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_4
    .catch Landroid/os/BadParcelableException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "MediaSessionCompat"

    const-string p2, "Could not unparcel the extra data."

    invoke-static {p1, p2}, LJ/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_3
    invoke-virtual {v0, v1}, LN0/I;->c(LN0/P;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    invoke-static {p0, p1}, Lcom/brisa/local/VideoSystemControls;->customAction(Ljava/lang/Object;Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :original_custom_action
    return-void
    :original_custom_action

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast p2, Lcom/brisa/local/PlaybackService;

    const-string v0, "back"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x2710

    if-eqz v0, :cond_0

    sget-object p1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {p2}, Lcom/brisa/local/PlaybackService;->m()J

    move-result-wide v3

    sub-long/2addr v3, v1

    goto :goto_0

    :cond_0
    const-string v0, "forward"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "previous"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {p2}, Lcom/brisa/local/PlaybackService;->n()V

    goto :goto_1

    :cond_1
    const-string v0, "next"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/brisa/local/PlaybackService;->a(Z)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {p2}, Lcom/brisa/local/PlaybackService;->m()J

    move-result-wide v3

    add-long/2addr v3, v1

    :goto_0
    invoke-virtual {p2, v3, v4}, Lcom/brisa/local/PlaybackService;->p(J)V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v0, LN0/G;

    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v1

    if-nez v1, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v1}, LN0/F;->b(LN0/I;)V

    :try_start_0
    const-string v2, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "android.support.v4.media.session.action.ARGUMENT_URI"

    const-string v4, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    if-eqz v2, :cond_5

    if-eqz p2, :cond_f

    :try_start_1
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, LN0/G;->l(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_5
    const-string v2, "android.support.v4.media.session.action.PREPARE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, LN0/G;->m()V

    goto/16 :goto_2

    :cond_6
    const-string v2, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_f

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, LN0/G;->n(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_7
    const-string v2, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p2, :cond_f

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, LN0/G;->o(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_8
    const-string v2, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p2, :cond_f

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, LN0/G;->p(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_9
    const-string v2, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p2, :cond_f

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_a
    const-string v2, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p2, :cond_f

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, LN0/G;->w(I)V

    goto :goto_2

    :cond_b
    const-string v2, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz p2, :cond_f

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, LN0/G;->x(I)V

    goto :goto_2

    :cond_c
    const-string v2, "android.support.v4.media.session.action.SET_RATING"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz p2, :cond_f

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_RATING"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    sget-object v2, LN0/V;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2}, LS1/e;->f(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, LN0/V;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {v0, p1}, LN0/G;->v(LN0/V;)V

    goto :goto_2

    :cond_d
    const-string v2, "android.support.v4.media.session.action.SET_PLAYBACK_SPEED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz p2, :cond_f

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {v0, p1}, LN0/G;->t(F)V

    goto :goto_2

    :cond_e
    invoke-virtual {v0, p1, p2}, LN0/G;->e(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "MediaSessionCompat"

    const-string p2, "Could not unparcel the data."

    invoke-static {p1, p2}, LJ/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_2
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, LN0/I;->c(LN0/P;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onFastForward()V
    .locals 5

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/PlaybackService;

    sget-object v1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->m()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/brisa/local/PlaybackService;->p(J)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1}, LN0/G;->f()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1, p1}, LN0/G;->g(Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LN0/I;->c(LN0/P;)V

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/PlaybackService;

    sget-object v1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->k()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1}, LN0/G;->h()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPlay()V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/PlaybackService;

    sget-object v1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->l()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1}, LN0/G;->i()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1, p1, p2}, LN0/G;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1, p1, p2}, LN0/G;->k(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1, p1, p2}, LN0/G;->l(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepare()V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/media/session/MediaSession$Callback;->onPrepare()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1}, LN0/G;->m()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1, p1, p2}, LN0/G;->n(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1, p1, p2}, LN0/G;->o(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1, p1, p2}, LN0/G;->p(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onRewind()V
    .locals 5

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/PlaybackService;

    sget-object v1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->m()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/brisa/local/PlaybackService;->p(J)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1}, LN0/G;->r()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSeekTo(J)V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/PlaybackService;

    sget-object v1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/brisa/local/PlaybackService;->p(J)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1, p1, p2}, LN0/G;->s(J)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSetPlaybackSpeed(F)V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onSetPlaybackSpeed(F)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1, p1}, LN0/G;->t(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onSetRating(Landroid/media/Rating;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-static {p1}, LN0/V;->a(Landroid/os/Parcelable;)LN0/V;

    move-result-object p1

    invoke-virtual {v1, p1}, LN0/G;->u(LN0/V;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSkipToNext()V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/PlaybackService;

    sget-object v1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brisa/local/PlaybackService;->a(Z)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1}, LN0/G;->y()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSkipToPrevious()V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/PlaybackService;

    sget-object v1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->n()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1}, LN0/G;->z()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSkipToQueueItem(J)V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onSkipToQueueItem(J)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1, p1, p2}, LN0/G;->A(J)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStop()V
    .locals 2

    iget v0, p0, LN0/F;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/PlaybackService;

    sget-object v1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->s()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LN0/F;->a()LN0/I;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LN0/F;->b(LN0/I;)V

    iget-object v1, p0, LN0/F;->b:Ljava/lang/Object;

    check-cast v1, LN0/G;

    invoke-virtual {v1}, LN0/G;->B()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LN0/I;->c(LN0/P;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
