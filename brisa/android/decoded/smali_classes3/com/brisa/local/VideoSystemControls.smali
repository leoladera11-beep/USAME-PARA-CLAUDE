.class public final Lcom/brisa/local/VideoSystemControls;
.super Ljava/lang/Object;
.source "VideoSystemControls.java"


# static fields
.field private static final BACK:Ljava/lang/String; = "com.brisa.local.video.BACK10"

.field private static final FORWARD:Ljava/lang/String; = "com.brisa.local.video.FORWARD10"

.field private static final RESERVE_NEXT:Ljava/lang/String; = "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

.field private static final RESERVE_PREVIOUS:Ljava/lang/String; = "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

.field private static final TOGGLE:Ljava/lang/String; = "com.brisa.local.video.TOGGLE"

.field private static activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/session/MediaSession;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Service;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/brisa/local/VideoSystemControls;->sessions:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/brisa/local/VideoSystemControls;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/app/Activity;)V
    .locals 1

    .line 139
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/brisa/local/VideoSystemControls;->activity:Ljava/lang/ref/WeakReference;

    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->refresh(Landroid/app/Activity;)V

    return-void
.end method

.method public static customAction(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5

    .line 85
    const-string v0, "a"

    const-string v1, "back"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "forward"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 88
    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Lcom/brisa/local/VideoSystemControls;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    return v3

    .line 89
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 90
    if-nez p0, :cond_2

    return v3

    .line 91
    :cond_2
    invoke-static {p0, v0}, Lcom/brisa/local/VideoSystemControls;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->service(Landroid/media/session/MediaSession;)Landroid/app/Service;

    move-result-object p0

    if-nez p0, :cond_3

    return v3

    .line 92
    :cond_3
    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->player(Landroid/app/Service;)LG/g0;

    move-result-object p0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brisa/local/VideoSystemControls;->seek(LG/g0;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 93
    :catch_0
    move-exception p0

    const-string p1, "BrisaVideo"

    const-string v0, "Could not seek video from system controls"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public static detach(Landroid/app/Activity;)V
    .locals 1

    .line 140
    sget-object v0, Lcom/brisa/local/VideoSystemControls;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/brisa/local/VideoSystemControls;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method public static enter(Landroid/app/Activity;Z)V
    .locals 1

    .line 170
    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->mayEnter(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->params(Landroid/app/Activity;)Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    move-result v0

    .line 173
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->permissionHint(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->permissionHint(Landroid/app/Activity;)V

    :cond_2
    const-string p0, "BrisaVideo"

    const-string p1, "PiP not available"

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :goto_0
    return-void
.end method

.method public static finishForMusic()V
    .locals 3

    .line 135
    sget-object v0, Lcom/brisa/local/VideoSystemControls;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 137
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 138
    return-void
.end method

.method private static icon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static install(Landroid/app/Service;)V
    .locals 3

    .line 58
    :try_start_0
    const-string v0, "j"

    invoke-static {p0, v0}, Lcom/brisa/local/VideoSystemControls;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brisa/local/VideoSystemControls;->platformSession(Ljava/lang/Object;)Landroid/media/session/MediaSession;

    move-result-object v0

    sget-object v1, Lcom/brisa/local/VideoSystemControls;->sessions:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    .line 60
    if-eqz p0, :cond_0

    invoke-static {v0, p0}, Lcom/brisa/local/VideoSystemControls;->playbackState(Landroid/media/session/MediaSession;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BrisaVideo"

    const-string v1, "Could not attach system video actions"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_0
    return-void
.end method

.method static synthetic lambda$refreshActivity$1(Landroid/app/Activity;)V
    .locals 0

    .line 141
    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->refresh(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$release$0(Landroid/app/Service;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 64
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static leave(Landroid/app/Activity;)V
    .locals 1

    .line 168
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/brisa/local/VideoSystemControls;->enter(Landroid/app/Activity;Z)V

    return-void
.end method

.method private static mayEnter(Landroid/app/Activity;)Z
    .locals 5

    .line 144
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "h"

    invoke-static {p0, v1}, Lcom/brisa/local/VideoSystemControls;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 145
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    .line 146
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p0

    invoke-static {v1, v4, v2, v3, p0}, Lcom/brisa/local/VideoBackgroundPolicy;->mayEnterPip(ZZZZZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 148
    :catch_0
    move-exception p0

    return v0
.end method

.method public static notification(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 10

    .line 112
    if-eqz p0, :cond_8

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.mediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 115
    if-nez v0, :cond_1

    return-object p0

    .line 116
    :cond_1
    nop

    .line 117
    sget-object v1, Lcom/brisa/local/VideoSystemControls;->sessions:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    sget-object v2, Lcom/brisa/local/VideoSystemControls;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaSession;

    invoke-virtual {v4}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    goto :goto_1

    .line 120
    :cond_2
    goto :goto_0

    .line 118
    :cond_3
    const/4 v0, 0x0

    .line 121
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    if-nez v0, :cond_4

    return-object p0

    .line 123
    :cond_4
    :try_start_2
    invoke-static {v0}, Lcom/brisa/local/VideoSystemControls;->player(Landroid/app/Service;)LG/g0;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, LG/g0;->z()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    .line 124
    :goto_2
    new-instance v4, Landroid/app/Notification$Action$Builder;

    const-string v5, "ic_back10"

    .line 125
    invoke-static {v0, v5}, Lcom/brisa/local/VideoSystemControls;->icon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string v6, "Retroceder 10 segundos"

    const-string v7, "com.brisa.local.video.BACK10"

    const/16 v8, 0x32a

    invoke-static {v0, v7, v8}, Lcom/brisa/local/VideoSystemControls;->pending(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$Action$Builder;

    .line 126
    if-eqz v1, :cond_6

    const-string v6, "ic_pause"

    goto :goto_3

    :cond_6
    const-string v6, "ic_play"

    :goto_3
    invoke-static {v0, v6}, Lcom/brisa/local/VideoSystemControls;->icon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v1, :cond_7

    const-string v1, "Pausar"

    goto :goto_4

    :cond_7
    const-string v1, "Reproducir"

    :goto_4
    const-string v7, "com.brisa.local.video.TOGGLE"

    const/16 v8, 0x32b

    invoke-static {v0, v7, v8}, Lcom/brisa/local/VideoSystemControls;->pending(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct {v5, v6, v1, v7}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    new-instance v5, Landroid/app/Notification$Action$Builder;

    const-string v6, "ic_forward10"

    .line 127
    invoke-static {v0, v6}, Lcom/brisa/local/VideoSystemControls;->icon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const-string v7, "Adelantar 10 segundos"

    const-string v8, "com.brisa.local.video.FORWARD10"

    const/16 v9, 0x32c

    invoke-static {v0, v8, v9}, Lcom/brisa/local/VideoSystemControls;->pending(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    filled-new-array {v4, v1, v5}, [Landroid/app/Notification$Action;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 129
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.compactActions"

    const/4 v5, 0x2

    filled-new-array {v3, v2, v5}, [I

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 130
    invoke-static {v0, p0}, Lcom/brisa/local/Presentation;->decorate(Landroid/app/Service;Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 131
    :catch_0
    move-exception v0

    const-string v1, "BrisaVideo"

    const-string v2, "Could not decorate video notification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    return-object p0

    .line 112
    :cond_8
    :goto_5
    return-object p0
.end method

.method private static params(Landroid/app/Activity;)Landroid/app/PictureInPictureParams;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->player(Landroid/app/Activity;)LG/g0;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, LG/g0;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    new-instance v2, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v2}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    new-instance v3, Landroid/util/Rational;

    const/16 v4, 0x10

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v2

    .line 153
    new-instance v3, Landroid/app/RemoteAction;

    .line 154
    const-string v4, "ic_back10"

    invoke-static {p0, v4}, Lcom/brisa/local/VideoSystemControls;->icon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    const-string v5, "com.brisa.local.video.BACK10"

    const/16 v6, 0x32a

    invoke-static {p0, v5, v6}, Lcom/brisa/local/VideoSystemControls;->pending(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v6, "Retroceder 10 segundos"

    invoke-direct {v3, v4, v6, v6, v5}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    new-instance v4, Landroid/app/RemoteAction;

    .line 155
    if-eqz v0, :cond_1

    const-string v5, "ic_pause"

    goto :goto_1

    :cond_1
    const-string v5, "ic_play"

    :goto_1
    invoke-static {p0, v5}, Lcom/brisa/local/VideoSystemControls;->icon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    const-string v6, "Pausar"

    const-string v7, "Reproducir"

    if-eqz v0, :cond_2

    move-object v8, v6

    goto :goto_2

    :cond_2
    move-object v8, v7

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v6, v7

    :goto_3
    const-string v0, "com.brisa.local.video.TOGGLE"

    const/16 v7, 0x32b

    invoke-static {p0, v0, v7}, Lcom/brisa/local/VideoSystemControls;->pending(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v4, v5, v8, v6, v0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    new-instance v0, Landroid/app/RemoteAction;

    .line 156
    const-string v5, "ic_forward10"

    invoke-static {p0, v5}, Lcom/brisa/local/VideoSystemControls;->icon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    const-string v6, "com.brisa.local.video.FORWARD10"

    const/16 v7, 0x32c

    invoke-static {p0, v6, v7}, Lcom/brisa/local/VideoSystemControls;->pending(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v7, "Adelantar 10 segundos"

    invoke-direct {v0, v5, v7, v7, v6}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    filled-new-array {v3, v4, v0}, [Landroid/app/RemoteAction;

    move-result-object v0

    .line 153
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    .line 158
    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/brisa/local/VideoSystemControls;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 159
    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2, v3}, Landroid/app/PictureInPictureParams$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    .line 160
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_5

    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->mayEnter(Landroid/app/Activity;)Z

    move-result p0

    invoke-virtual {v2, p0}, Landroid/app/PictureInPictureParams$Builder;->setAutoEnterEnabled(Z)Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v2, v1}, Landroid/app/PictureInPictureParams$Builder;->setSeamlessResizeEnabled(Z)Landroid/app/PictureInPictureParams$Builder;

    .line 161
    :cond_5
    invoke-virtual {v2}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0
.end method

.method private static pending(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 1

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.brisa.local.VideoPlaybackService"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 54
    const/high16 v0, 0xc000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static permissionHint(Landroid/app/Activity;)V
    .locals 2

    .line 176
    const-string v0, "Activa Imagen en imagen o Ventana flotante para Brisa en los ajustes del tel\u00e9fono."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static platformSession(Ljava/lang/Object;)Landroid/media/session/MediaSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/brisa/local/VideoSystemControls;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 43
    const-string v1, "h"

    invoke-static {p0, v1}, Lcom/brisa/local/VideoSystemControls;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "o"

    invoke-static {p0, v1}, Lcom/brisa/local/VideoSystemControls;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 44
    const-string v1, "f"

    invoke-static {p0, v1}, Lcom/brisa/local/VideoSystemControls;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/brisa/local/VideoSystemControls;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSession;

    return-object p0
.end method

.method public static playbackState(Landroid/media/session/MediaSession;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 11

    .line 67
    const-string v0, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->service(Landroid/media/session/MediaSession;)Landroid/app/Service;

    move-result-object v1

    if-eqz v1, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 69
    :cond_0
    :try_start_0
    invoke-static {v1, p0}, Lcom/brisa/local/Presentation;->videoMetadata(Landroid/app/Service;Landroid/media/session/MediaSession;)V

    .line 70
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2, p1}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/brisa/local/VideoBackgroundPolicy;->transportActions(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v2

    .line 71
    nop

    .line 72
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "forward"

    const-string v9, "back"

    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/session/PlaybackState$CustomAction;

    .line 73
    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    if-nez v5, :cond_2

    new-instance v3, Landroid/media/session/PlaybackState$CustomAction$Builder;

    const-string v5, "Retroceder 10 segundos"

    const-string v7, "ic_back10"

    invoke-static {v1, v7}, Lcom/brisa/local/VideoSystemControls;->icon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v9, v5, v7}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    .line 76
    :cond_2
    if-nez v6, :cond_3

    new-instance v3, Landroid/media/session/PlaybackState$CustomAction$Builder;

    const-string v5, "Adelantar 10 segundos"

    const-string v6, "ic_forward10"

    invoke-static {v1, v6}, Lcom/brisa/local/VideoSystemControls;->icon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v3, v8, v5, v1}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    .line 77
    :cond_3
    invoke-virtual {p0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    if-nez v3, :cond_4

    :try_start_2
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 79
    :cond_4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    .line 81
    :cond_5
    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    .line 82
    :catch_0
    move-exception p0

    const-string v0, "BrisaVideo"

    const-string v1, "Could not publish video seek actions"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 67
    :cond_6
    :goto_1
    return-object p1
.end method

.method private static player(Landroid/app/Activity;)LG/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    const-string v0, "c"

    invoke-static {p0, v0}, Lcom/brisa/local/VideoSystemControls;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/g0;

    return-object p0
.end method

.method private static player(Landroid/app/Service;)LG/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    const-string v0, "i"

    invoke-static {p0, v0}, Lcom/brisa/local/VideoSystemControls;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/g0;

    return-object p0
.end method

.method private static read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static refresh(Landroid/app/Activity;)V
    .locals 2

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->params(Landroid/app/Activity;)Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BrisaVideo"

    const-string v1, "Could not prepare automatic PiP"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_1
    :goto_1
    return-void
.end method

.method private static refreshActivity()V
    .locals 2

    .line 141
    sget-object v0, Lcom/brisa/local/VideoSystemControls;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/brisa/local/VideoSystemControls$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/brisa/local/VideoSystemControls$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static release(Landroid/app/Service;)V
    .locals 3

    .line 64
    sget-object v0, Lcom/brisa/local/VideoSystemControls;->sessions:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/brisa/local/VideoSystemControls;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/brisa/local/VideoSystemControls$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/brisa/local/VideoSystemControls$$ExternalSyntheticLambda0;-><init>(Landroid/app/Service;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static seek(LG/g0;Z)V
    .locals 4

    .line 96
    if-eqz p0, :cond_0

    invoke-interface {p0}, LG/g0;->O0()J

    move-result-wide v0

    invoke-interface {p0}, LG/g0;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lcom/brisa/local/VideoBackgroundPolicy;->seek(JJZ)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, LG/g0;->y0(J)V

    .line 97
    :cond_0
    return-void
.end method

.method private static service(Landroid/media/session/MediaSession;)Landroid/app/Service;
    .locals 1

    .line 49
    sget-object v0, Lcom/brisa/local/VideoSystemControls;->sessions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Service;

    :goto_0
    return-object p0
.end method

.method public static serviceAction(Landroid/app/Service;Landroid/content/Intent;)Z
    .locals 3

    .line 99
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 100
    :goto_0
    const-string v0, "com.brisa.local.video.BACK10"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.brisa.local.video.TOGGLE"

    const-string v2, "com.brisa.local.video.FORWARD10"

    if-nez v0, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 102
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->player(Landroid/app/Service;)LG/g0;

    move-result-object p0

    .line 103
    if-eqz p0, :cond_4

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, LG/g0;->z()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, LG/g0;->h0()V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, LG/g0;->Q()V

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brisa/local/VideoSystemControls;->seek(LG/g0;Z)V

    .line 107
    :cond_4
    :goto_1
    invoke-static {}, Lcom/brisa/local/VideoSystemControls;->refreshActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "BrisaVideo"

    const-string v0, "Could not execute PiP action"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :goto_2
    const/4 p0, 0x1

    return p0
.end method
