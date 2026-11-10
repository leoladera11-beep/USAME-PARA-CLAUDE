.class public final Lcom/brisa/local/SoundSessions;
.super Ljava/lang/Object;
.source "SoundSessions.java"


# static fields
.field private static current:Ljava/lang/Object;

.field private static currentContext:Landroid/content/Context;

.field private static currentPort:Lcom/brisa/local/SoundCore$Port;

.field private static final engine:Lcom/brisa/local/SoundCore$Engine;

.field private static final main:Landroid/os/Handler;

.field private static pendingMusic:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private static pendingPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private static waitingVideo:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/brisa/local/SoundSessions;->main:Landroid/os/Handler;

    .line 7
    new-instance v0, Lcom/brisa/local/SoundCore$Engine;

    new-instance v1, Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/brisa/local/SoundCore$Engine;-><init>(Lcom/brisa/local/SoundCore$Factory;)V

    sput-object v0, Lcom/brisa/local/SoundSessions;->engine:Lcom/brisa/local/SoundCore$Engine;

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/brisa/local/SoundSessions;->pendingMusic:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/brisa/local/SoundSessions;->pendingPlayer:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beforeMusic(Landroid/app/Service;)Z
    .locals 4

    .line 38
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.brisa.local.VideoPlaybackService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "o"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 39
    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 40
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/brisa/local/SoundSessions;->pendingMusic:Ljava/lang/ref/WeakReference;

    new-instance v2, Ljava/lang/ref/WeakReference;

    const-string v3, "c"

    invoke-static {p0, v3}, Lcom/brisa/local/SoundSessions;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaPlayer;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/brisa/local/SoundSessions;->pendingPlayer:Ljava/lang/ref/WeakReference;

    sput-object v1, Lcom/brisa/local/SoundSessions;->waitingVideo:Landroid/app/Service;

    .line 41
    invoke-static {v1}, Lcom/brisa/local/SoundSessions;->release(Ljava/lang/Object;)V

    const-string p0, "i"

    invoke-static {v1, p0}, Lcom/brisa/local/SoundSessions;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/g0;

    invoke-interface {p0}, LG/g0;->h0()V

    invoke-interface {p0}, LG/g0;->u()V

    .line 42
    invoke-static {}, Lcom/brisa/local/VideoSystemControls;->finishForMusic()V

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 43
    :catch_0
    move-exception p0

    const-string v1, "BrisaSound"

    const-string v2, "Could not complete video handoff"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static engineOwner()Ljava/lang/Object;
    .locals 1

    .line 18
    sget-object v0, Lcom/brisa/local/SoundSessions;->engine:Lcom/brisa/local/SoundCore$Engine;

    invoke-virtual {v0}, Lcom/brisa/local/SoundCore$Engine;->owner()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Object;)V
    .locals 1

    .line 9
    sget-object v0, Lcom/brisa/local/SoundSessions;->current:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    invoke-static {}, Lcom/brisa/local/SoundSessions;->engineOwner()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-static {}, Lcom/brisa/local/SoundSessions;->reapply()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$1(Ljava/lang/Object;Landroid/media/audiofx/AudioEffect;Z)V
    .locals 0

    .line 9
    sget-object p1, Lcom/brisa/local/SoundSessions;->main:Landroid/os/Handler;

    new-instance p2, Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$static$2(I)Lcom/brisa/local/SoundCore$Effect;
    .locals 3

    .line 8
    sget-object v0, Lcom/brisa/local/SoundSessions;->current:Ljava/lang/Object;

    new-instance v1, Landroid/media/audiofx/Equalizer;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    .line 9
    new-instance p0, Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda3;

    invoke-direct {p0, v0}, Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/media/audiofx/Equalizer;->setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V

    .line 10
    new-instance p0, Lcom/brisa/local/SoundSessions$1;

    invoke-direct {p0, v1}, Lcom/brisa/local/SoundSessions$1;-><init>(Landroid/media/audiofx/Equalizer;)V

    return-object p0
.end method

.method static synthetic lambda$videoDestroyed$3(Landroid/app/Service;Landroid/media/MediaPlayer;)V
    .locals 2

    .line 49
    :try_start_0
    const-string v0, "c"

    invoke-static {p0, v0}, Lcom/brisa/local/SoundSessions;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const-string p1, "f"

    invoke-static {p0, p1}, Lcom/brisa/local/SoundSessions;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "e"

    invoke-static {p0, p1}, Lcom/brisa/local/SoundSessions;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "r"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Lcom/brisa/local/SoundSessions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BrisaSound"

    const-string v0, "Music resume cancelled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static music(Landroid/content/Context;Landroid/media/MediaPlayer;F)V
    .locals 1

    .line 26
    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance v0, Lcom/brisa/local/SoundSessions$2;

    invoke-direct {v0, p1, p2}, Lcom/brisa/local/SoundSessions$2;-><init>(Landroid/media/MediaPlayer;F)V

    invoke-static {p0, p1, v0}, Lcom/brisa/local/SoundSessions;->update(Landroid/content/Context;Ljava/lang/Object;Lcom/brisa/local/SoundCore$Port;)V

    .line 28
    return-void
.end method

.method static read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static reapply()V
    .locals 3

    .line 23
    sget-object v0, Lcom/brisa/local/SoundSessions;->current:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/brisa/local/SoundSessions;->currentPort:Lcom/brisa/local/SoundCore$Port;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/brisa/local/SoundSessions;->currentContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/brisa/local/SoundSessions;->currentContext:Landroid/content/Context;

    sget-object v1, Lcom/brisa/local/SoundSessions;->current:Ljava/lang/Object;

    sget-object v2, Lcom/brisa/local/SoundSessions;->currentPort:Lcom/brisa/local/SoundCore$Port;

    invoke-static {v0, v1, v2}, Lcom/brisa/local/SoundSessions;->update(Landroid/content/Context;Ljava/lang/Object;Lcom/brisa/local/SoundCore$Port;)V

    :cond_0
    return-void
.end method

.method public static release(Ljava/lang/Object;)V
    .locals 1

    .line 24
    sget-object v0, Lcom/brisa/local/SoundSessions;->engine:Lcom/brisa/local/SoundCore$Engine;

    invoke-virtual {v0, p0}, Lcom/brisa/local/SoundCore$Engine;->release(Ljava/lang/Object;)V

    sget-object v0, Lcom/brisa/local/SoundSessions;->current:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/brisa/local/SoundSessions;->current:Ljava/lang/Object;

    sput-object p0, Lcom/brisa/local/SoundSessions;->currentPort:Lcom/brisa/local/SoundCore$Port;

    sput-object p0, Lcom/brisa/local/SoundSessions;->currentContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static sessionChanged(Landroid/app/Service;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/brisa/local/SoundSessions;->release(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/brisa/local/SoundSessions;->video(Landroid/app/Service;)V

    return-void
.end method

.method private static settings(Landroid/content/Context;)Lcom/brisa/local/SoundCore$Settings;
    .locals 6

    .line 21
    invoke-static {p0}, Lcom/brisa/local/Y;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v0, Lcom/brisa/local/SoundCore$Settings;

    const-string v1, "mode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "original"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "bass"

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/brisa/local/Y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "mid"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/brisa/local/Y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "treble"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/brisa/local/Y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/brisa/local/SoundCore$Settings;-><init>(ZIII)V

    return-object v0
.end method

.method private static update(Landroid/content/Context;Ljava/lang/Object;Lcom/brisa/local/SoundCore$Port;)V
    .locals 1

    .line 22
    sput-object p1, Lcom/brisa/local/SoundSessions;->current:Ljava/lang/Object;

    sput-object p2, Lcom/brisa/local/SoundSessions;->currentPort:Lcom/brisa/local/SoundCore$Port;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/brisa/local/SoundSessions;->currentContext:Landroid/content/Context;

    sget-object v0, Lcom/brisa/local/SoundSessions;->engine:Lcom/brisa/local/SoundCore$Engine;

    invoke-static {p0}, Lcom/brisa/local/SoundSessions;->settings(Landroid/content/Context;)Lcom/brisa/local/SoundCore$Settings;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/brisa/local/SoundCore$Engine;->apply(Ljava/lang/Object;Lcom/brisa/local/SoundCore$Port;Lcom/brisa/local/SoundCore$Settings;)Lcom/brisa/local/SoundCore$Result;

    return-void
.end method

.method public static video(Landroid/app/Service;)V
    .locals 6

    .line 31
    const-string v0, "i"

    :try_start_0
    invoke-static {p0, v0}, Lcom/brisa/local/SoundSessions;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/g0;

    const-string v2, "C"

    invoke-static {v1, v2}, Lcom/brisa/local/SoundSessions;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "c"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5, v4}, Lcom/brisa/local/SoundSessions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 32
    new-instance v3, Lcom/brisa/local/SoundSessions$3;

    invoke-direct {v3, v2, v1}, Lcom/brisa/local/SoundSessions$3;-><init>(ILG/g0;)V

    invoke-static {p0, p0, v3}, Lcom/brisa/local/SoundSessions;->update(Landroid/content/Context;Ljava/lang/Object;Lcom/brisa/local/SoundCore$Port;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {p0}, Lcom/brisa/local/SoundSessions;->release(Ljava/lang/Object;)V

    :try_start_1
    invoke-static {p0, v0}, Lcom/brisa/local/SoundSessions;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/g0;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p0, v0}, LG/g0;->J0(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string p0, "BrisaSound"

    const-string v0, "Video effect unavailable; using original sound"

    invoke-static {p0, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :goto_1
    return-void
.end method

.method public static videoDestroyed(Landroid/app/Service;)V
    .locals 3

    .line 46
    invoke-static {p0}, Lcom/brisa/local/SoundSessions;->release(Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/brisa/local/SoundSessions;->waitingVideo:Landroid/app/Service;

    if-eq v0, p0, :cond_0

    return-void

    .line 48
    :cond_0
    sget-object p0, Lcom/brisa/local/SoundSessions;->pendingMusic:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Service;

    sget-object v0, Lcom/brisa/local/SoundSessions;->pendingPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    sput-object v1, Lcom/brisa/local/SoundSessions;->waitingVideo:Landroid/app/Service;

    sget-object v1, Lcom/brisa/local/SoundSessions;->pendingMusic:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    sget-object v1, Lcom/brisa/local/SoundSessions;->pendingPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 49
    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/brisa/local/SoundSessions;->main:Landroid/os/Handler;

    new-instance v2, Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda2;-><init>(Landroid/app/Service;Landroid/media/MediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    :cond_1
    return-void
.end method
