.class public final Lcom/brisa/local/Y;
.super Ljava/lang/Object;
.source "Y.java"


# static fields
.field public static final e:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/media/MediaPlayer;",
            "Lcom/brisa/local/Y;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/media/MediaPlayer;

.field public c:Landroid/media/audiofx/Equalizer;

.field public d:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/brisa/local/Y;->e:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/brisa/local/Y;->d:F

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/brisa/local/Y;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/brisa/local/Y;->b:Landroid/media/MediaPlayer;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "l"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Lcom/brisa/local/Y;->d:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/brisa/local/SoundCore;->clamp(I)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 10
    invoke-static {p0}, Lcom/brisa/local/SoundSessions;->release(Ljava/lang/Object;)V

    sget-object v0, Lcom/brisa/local/Y;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/brisa/local/Y;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/brisa/local/Y;->c:Landroid/media/audiofx/Equalizer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/Y;->c:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brisa/local/Y;->c:Landroid/media/audiofx/Equalizer;

    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .line 9
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "brisa-sound"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "settings"

    const-string v2, "{\"mode\":\"original\",\"bass\":2,\"mid\":0,\"treble\":1}"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static e(Lcom/brisa/local/PlaybackService;Landroid/media/MediaPlayer;F)V
    .locals 1

    .line 11
    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/brisa/local/Y;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brisa/local/Y;

    if-nez v0, :cond_1

    new-instance v0, Lcom/brisa/local/Y;

    invoke-direct {v0, p0, p1}, Lcom/brisa/local/Y;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V

    sget-object p0, Lcom/brisa/local/Y;->e:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput p2, v0, Lcom/brisa/local/Y;->d:F

    invoke-virtual {v0}, Lcom/brisa/local/Y;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/brisa/local/Y;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/brisa/local/Y;->b:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/brisa/local/Y;->d:F

    invoke-static {v0, v1, v2}, Lcom/brisa/local/SoundSessions;->music(Landroid/content/Context;Landroid/media/MediaPlayer;F)V

    return-void
.end method
