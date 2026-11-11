.class public Lcom/brisa/local/PlaybackService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile z:Lcom/brisa/local/PlaybackService;


# instance fields
.field public a:Landroid/media/AudioFocusRequest;

.field public b:Landroid/media/AudioManager;

.field public c:Landroid/media/MediaPlayer;

.field public d:Landroid/media/session/MediaSession;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:F

.field public m:F

.field public n:Ljava/lang/String;

.field public o:Lorg/json/JSONObject;

.field public p:Lorg/json/JSONArray;

.field public q:J

.field public r:Z

.field public s:J

.field public t:Ljava/lang/String;

.field public final u:Landroid/os/Handler;

.field public final v:La2/d;

.field public final w:Ljava/util/ArrayDeque;

.field public final x:Lcom/brisa/local/Q;

.field public final y:Lcom/brisa/local/Q;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->e:Z

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->f:Z

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->g:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/brisa/local/PlaybackService;->h:Z

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->i:Z

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->j:Z

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->k:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/brisa/local/PlaybackService;->l:F

    iput v1, p0, Lcom/brisa/local/PlaybackService;->m:F

    const-string v1, "off"

    iput-object v1, p0, Lcom/brisa/local/PlaybackService;->n:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/brisa/local/PlaybackService;->o:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/brisa/local/PlaybackService;->p:Lorg/json/JSONArray;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/brisa/local/PlaybackService;->q:J

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->r:Z

    iput-wide v1, p0, Lcom/brisa/local/PlaybackService;->s:J

    const-string v0, ""

    iput-object v0, p0, Lcom/brisa/local/PlaybackService;->t:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/brisa/local/PlaybackService;->u:Landroid/os/Handler;

    new-instance v0, La2/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La2/d;-><init>(I)V

    iput-object v0, p0, Lcom/brisa/local/PlaybackService;->v:La2/d;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/brisa/local/PlaybackService;->w:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/brisa/local/Q;

    invoke-direct {v0, p0, v1}, Lcom/brisa/local/Q;-><init>(Lcom/brisa/local/PlaybackService;I)V

    iput-object v0, p0, Lcom/brisa/local/PlaybackService;->x:Lcom/brisa/local/Q;

    new-instance v0, Lcom/brisa/local/Q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/brisa/local/Q;-><init>(Lcom/brisa/local/PlaybackService;I)V

    iput-object v0, p0, Lcom/brisa/local/PlaybackService;->y:Lcom/brisa/local/Q;

    return-void
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "back10"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f070067

    return p0

    :cond_0
    const-string v0, "forward10"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f070068

    return p0

    :cond_1
    const-string v0, "play"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f07006b

    return p0

    :cond_2
    const-string v0, "pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f07006a

    return p0

    :cond_3
    const-string v0, "previous"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x1080025

    return p0

    :cond_4
    const p0, 0x1080022

    return p0
.end method

.method public static h(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->v:La2/d;

    iget-object v3, v2, La2/d;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashSet;

    iget-object v4, v2, La2/d;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, "one"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    move-object v0, v7

    goto/16 :goto_2

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, La2/d;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-boolean v4, v2, La2/d;->a:Z

    const-string v8, "all"

    const/4 v9, 0x0

    if-nez v4, :cond_6

    iget-object v3, v2, La2/d;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    iget-object v0, v2, La2/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    add-int/2addr v0, v6

    iget-object v3, v2, La2/d;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, v2, La2/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    iget-object v1, v2, La2/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v2, v0}, La2/d;->h(Ljava/lang/String;)V

    iget-object v4, v2, La2/d;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz p1, :cond_7

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget-object v1, v2, La2/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, La2/d;->d:Ljava/lang/Object;

    iget-object v1, v2, La2/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v2, La2/d;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    iget-object v0, v2, La2/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, v2, La2/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Random;

    invoke-static {v0, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    iget-object v0, v2, La2/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v2, La2/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_b
    iget-object v0, v2, La2/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, La2/d;->h(Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->k()V

    return-void

    :cond_c
    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/brisa/local/PlaybackService;->n:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/brisa/local/PlaybackService;->p(J)V

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->l()V

    return-void

    :cond_d
    invoke-virtual {p0, v0}, Lcom/brisa/local/PlaybackService;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p0, p1, v6, v6}, Lcom/brisa/local/PlaybackService;->i(Lorg/json/JSONObject;ZZ)V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->k()V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/brisa/local/PlaybackService;->e:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/PlaybackParams;

    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    iget v2, p0, Lcom/brisa/local/PlaybackService;->m:F

    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->o:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/brisa/local/PlaybackService;->p:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/brisa/local/PlaybackService;->p:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/brisa/local/PlaybackService;->h(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->o:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/brisa/local/PlaybackService;->h(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->d:Landroid/media/session/MediaSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->j()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    iput-boolean v1, p0, Lcom/brisa/local/PlaybackService;->g:Z

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/brisa/local/PlaybackService;->t:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->r:Z

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->f:Z

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->u:Landroid/os/Handler;

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->x:Lcom/brisa/local/Q;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/brisa/local/Y;->c(Landroid/media/MediaPlayer;)V

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->e:Z

    iget-boolean v1, p0, Lcom/brisa/local/PlaybackService;->g:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(I)V

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->g:Z

    :cond_1
    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->q()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_1
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {v0}, Lcom/brisa/local/MainActivity;->i(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->p:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->p:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/brisa/local/PlaybackService;->h(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i(Lorg/json/JSONObject;ZZ)V
    .locals 4

    const-string v0, "nativeId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/brisa/local/DriveStream;->audio(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "El permiso del archivo ya no est\u00e1 disponible. A\u00f1\u00e1delo de nuevo."

    invoke-virtual {p0, p1}, Lcom/brisa/local/PlaybackService;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/brisa/local/PlaybackService;->h(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/brisa/local/PlaybackService;->w:Ljava/util/ArrayDeque;

    invoke-virtual {p3, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v3, 0xc8

    if-le v1, v3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_1
    iget-object p3, p0, Lcom/brisa/local/PlaybackService;->v:La2/d;

    invoke-virtual {p3, v2}, La2/d;->h(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/brisa/local/PlaybackService;->f:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/brisa/local/PlaybackService;->e:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/brisa/local/PlaybackService;->q:J

    iput-boolean p3, p0, Lcom/brisa/local/PlaybackService;->r:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/brisa/local/PlaybackService;->t:Ljava/lang/String;

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v1}, Lcom/brisa/local/Y;->c(Landroid/media/MediaPlayer;)V

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iput-object p1, p0, Lcom/brisa/local/PlaybackService;->o:Lorg/json/JSONObject;

    const-string v1, "brisa-player"

    invoke-virtual {p0, v1, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v1, "last"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    new-instance p3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p3

    const/4 v2, 0x2

    invoke-virtual {p3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {p1, p0, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    iget p3, p0, Lcom/brisa/local/PlaybackService;->l:F

    invoke-static {p0, p1, p3}, Lcom/brisa/local/Y;->e(Lcom/brisa/local/PlaybackService;Landroid/media/MediaPlayer;F)V

    new-instance p3, Lcom/brisa/local/M;

    invoke-direct {p3, p0}, Lcom/brisa/local/M;-><init>(Lcom/brisa/local/PlaybackService;)V

    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance p3, Lcom/brisa/local/N;

    invoke-direct {p3, p0}, Lcom/brisa/local/N;-><init>(Lcom/brisa/local/PlaybackService;)V

    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    new-instance p3, Lcom/brisa/local/O;

    invoke-direct {p3, p0}, Lcom/brisa/local/O;-><init>(Lcom/brisa/local/PlaybackService;)V

    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p3, Lcom/brisa/local/P;

    invoke-direct {p3, p0}, Lcom/brisa/local/P;-><init>(Lcom/brisa/local/PlaybackService;)V

    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :try_start_1
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->e()V

    :cond_3
    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->o()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p1, "No se puede leer el archivo. Puede haberse movido o eliminado."

    invoke-virtual {p0, p1}, Lcom/brisa/local/PlaybackService;->f(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final j()Landroid/app/Notification;
    .locals 13

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "playing"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "brisa-playback"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->o:Lorg/json/JSONObject;

    const-string v3, "title"

    const-string v4, "Brisa"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->o:Lorg/json/JSONObject;

    const-string v3, "artist"

    const-string v4, "Tu m\u00fasica, a tu ritmo"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/brisa/local/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, -0x46165c

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v5, "transport"

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {v0}, LS1/e;->n(Z)[LC2/a;

    move-result-object v0

    move v5, v3

    :goto_0
    const/4 v6, 0x5

    if-ge v5, v6, :cond_0

    aget-object v6, v0, v5

    new-instance v7, Landroid/app/Notification$Action$Builder;

    iget-object v8, v6, LC2/a;->b:Ljava/lang/String;

    invoke-static {v8}, Lcom/brisa/local/PlaybackService;->c(Ljava/lang/String;)I

    move-result v8

    iget-object v9, v6, LC2/a;->c:Ljava/lang/String;

    iget-object v6, v6, LC2/a;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/brisa/local/PlaybackService;

    invoke-direct {v11, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v11, "notification"

    invoke-virtual {v6, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-static {p0, v10, v6, v4}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {v7, v8, v9, v6}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    iget-object v4, p0, Lcom/brisa/local/PlaybackService;->d:Landroid/media/session/MediaSession;

    invoke-virtual {v4}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    const/4 v4, 0x2

    filled-new-array {v3, v2, v4}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/brisa/local/Presentation;->decorate(Landroid/app/Service;Landroid/app/Notification;)Landroid/app/Notification;
    move-result-object v0
    return-object v0
.end method

.method public final k()V
    .locals 3

    invoke-static {p0}, Lcom/brisa/local/Idle;->paused(Landroid/app/Service;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->f:Z

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->u:Landroid/os/Handler;

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->x:Lcom/brisa/local/Q;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/brisa/local/PlaybackService;->e:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    invoke-static {v1}, Lcom/brisa/local/Y;->c(Landroid/media/MediaPlayer;)V

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/brisa/local/Y;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brisa/local/Y;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/brisa/local/Y;->c:Landroid/media/audiofx/Equalizer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->b:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->a:Landroid/media/AudioFocusRequest;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    iget-boolean v1, p0, Lcom/brisa/local/PlaybackService;->g:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(I)V

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->g:Z

    :cond_1
    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->o()V

    return-void
.end method

.method public final l()V
    .locals 5

    const-string v0, "Elige una canci\u00f3n para empezar."

    sget-object v1, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    iget-object v1, v1, Lcom/brisa/local/VideoPlaybackService;->i:LN/x;

    invoke-virtual {v1}, LC/b;->h0()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/brisa/local/PlaybackService;->f:Z

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->e()V

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    iget-boolean v0, p0, Lcom/brisa/local/PlaybackService;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->r()V

    :cond_1
    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->o()V

    return-void

    :cond_2
    :try_start_0
    const-string v2, "brisa-player"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/brisa/local/PlaybackService;->f(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1, v1}, Lcom/brisa/local/PlaybackService;->i(Lorg/json/JSONObject;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0, v0}, Lcom/brisa/local/PlaybackService;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final m()J
    .locals 4

    iget-boolean v0, p0, Lcom/brisa/local/PlaybackService;->r:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/brisa/local/PlaybackService;->s:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/brisa/local/PlaybackService;->e:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    :cond_2
    :goto_0
    return-wide v1
.end method

.method public final n()V
    .locals 7

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->m()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/brisa/local/PlaybackService;->p(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->w:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/brisa/local/PlaybackService;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v5, v4}, Lcom/brisa/local/PlaybackService;->i(Lorg/json/JSONObject;ZZ)V

    return-void

    :cond_1
    move v0, v4

    :goto_0
    iget-object v3, p0, Lcom/brisa/local/PlaybackService;->p:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/brisa/local/PlaybackService;->p:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/brisa/local/PlaybackService;->h(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->p:Lorg/json/JSONArray;

    sub-int/2addr v0, v5

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v4}, Lcom/brisa/local/PlaybackService;->i(Lorg/json/JSONObject;ZZ)V

    return-void

    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/brisa/local/PlaybackService;->p(J)V

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final o()V
    .locals 14

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-long v1, v1

    const-string v5, "position"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-long v9, v5

    const-string v3, "playing"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/brisa/local/PlaybackService;->d:Landroid/media/session/MediaSession;

    new-instance v5, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v5}, Landroid/media/MediaMetadata$Builder;-><init>()V

    iget-object v6, p0, Lcom/brisa/local/PlaybackService;->o:Lorg/json/JSONObject;

    const-string v7, "title"

    const-string v8, "Brisa"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.media.metadata.TITLE"

    invoke-virtual {v5, v7, v6}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/brisa/local/PlaybackService;->o:Lorg/json/JSONObject;

    const-string v7, "artist"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.media.metadata.ARTIST"

    invoke-virtual {v5, v7, v6}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v5

    const-string v6, "android.media.metadata.DURATION"

    invoke-virtual {v5, v6, v1, v2}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-static {p0, v4, v1}, Lcom/brisa/local/Presentation;->setMusicMetadata(Landroid/app/Service;Landroid/media/session/MediaSession;Landroid/media/MediaMetadata;)V

    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-ge v2, v4, :cond_0

    const-wide/16 v5, 0x37f

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x34f

    :goto_0
    invoke-virtual {v1, v5, v6}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v7

    if-eqz v3, :cond_1

    const/4 v1, 0x3

    :goto_1
    move v8, v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :goto_2
    iget v11, p0, Lcom/brisa/local/PlaybackService;->m:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual/range {v7 .. v13}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-result-object v1

    if-lt v2, v4, :cond_3

    invoke-static {v3}, LS1/e;->n(Z)[LC2/a;

    move-result-object v2

    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    iget-object v5, v4, LC2/a;->a:Ljava/lang/String;

    const-string v6, "play"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "pause"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Landroid/media/session/PlaybackState$CustomAction$Builder;

    iget-object v7, v4, LC2/a;->c:Ljava/lang/String;

    iget-object v4, v4, LC2/a;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/brisa/local/PlaybackService;->c(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v6, v5, v7, v4}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v6}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->d:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    iget-boolean v1, p0, Lcom/brisa/local/PlaybackService;->g:Z

    iget-boolean v2, p0, Lcom/brisa/local/PlaybackService;->e:Z

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->j()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/brisa/local/Presentation;->notifyIfChanged(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    :cond_5
    invoke-static {v0}, Lcom/brisa/local/MainActivity;->i(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/brisa/local/PlaybackService;->b:Landroid/media/AudioManager;

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "brisa-playback"

    const-string v2, "Reproducci\u00f3n de m\u00fasica"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    new-instance v2, Lcom/brisa/local/S;

    invoke-direct {v2, p0}, Lcom/brisa/local/S;-><init>(Lcom/brisa/local/PlaybackService;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/brisa/local/PlaybackService;->a:Landroid/media/AudioFocusRequest;

    new-instance v0, Landroid/media/session/MediaSession;

    const-string v2, "Brisa"

    invoke-direct {v0, p0, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brisa/local/PlaybackService;->d:Landroid/media/session/MediaSession;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->d:Landroid/media/session/MediaSession;

    new-instance v2, LN0/F;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LN0/F;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->d:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/brisa/local/Y;->c(Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->e:Z

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->f:Z

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->b:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->a:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->d:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    sput-object v1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    iget-object p2, p0, Lcom/brisa/local/PlaybackService;->y:Lcom/brisa/local/Q;

    iget-object p3, p0, Lcom/brisa/local/PlaybackService;->u:Landroid/os/Handler;

    const/4 v0, 0x2

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v3, "notification"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->e()V

    :cond_1
    const-string p1, "load"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4, v3}, Lcom/brisa/local/PlaybackService;->i(Lorg/json/JSONObject;ZZ)V

    goto/16 :goto_2

    :cond_2
    const-string p1, "play"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->l()V

    goto/16 :goto_2

    :cond_3
    const-string p1, "pause"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->k()V

    goto/16 :goto_2

    :cond_4
    const-string p1, "stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->s()V

    goto/16 :goto_2

    :cond_5
    const-string p1, "toggle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/brisa/local/PlaybackService;->f:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->k()V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->l()V

    goto/16 :goto_2

    :cond_7
    const-string p1, "resetCycle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lcom/brisa/local/PlaybackService;->v:La2/d;

    if-eqz p1, :cond_8

    :try_start_1
    iget-object p1, v5, La2/d;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, v5, La2/d;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v5, La2/d;->d:Ljava/lang/Object;

    iget-object p2, v5, La2/d;->c:Ljava/lang/Object;

    check-cast p2, Ljava/util/Random;

    invoke-static {p1, p2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    goto/16 :goto_2

    :cond_8
    const-string p1, "next"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v4}, Lcom/brisa/local/PlaybackService;->a(Z)V

    goto/16 :goto_2

    :cond_9
    const-string p1, "previous"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->n()V

    goto/16 :goto_2

    :cond_a
    const-string p1, "back"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v6, 0x2710

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->m()J

    move-result-wide p1

    sub-long/2addr p1, v6

    invoke-virtual {p0, p1, p2}, Lcom/brisa/local/PlaybackService;->p(J)V

    goto/16 :goto_2

    :cond_b
    const-string p1, "forward"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->m()J

    move-result-wide p1

    add-long/2addr p1, v6

    invoke-virtual {p0, p1, p2}, Lcom/brisa/local/PlaybackService;->p(J)V

    goto/16 :goto_2

    :cond_c
    const-string p1, "seek"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v1

    double-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/brisa/local/PlaybackService;->p(J)V

    goto/16 :goto_2

    :cond_d
    const-string p1, "volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/brisa/local/PlaybackService;->l:F

    iget-object p2, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_14

    invoke-static {p0, p2, p1}, Lcom/brisa/local/Y;->e(Lcom/brisa/local/PlaybackService;Landroid/media/MediaPlayer;F)V

    goto/16 :goto_2

    :cond_e
    const-string p1, "rate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/brisa/local/PlaybackService;->m:F

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->b()V

    goto/16 :goto_2

    :cond_f
    const-string p1, "queue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "tracks"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    iput-object p3, p0, Lcom/brisa/local/PlaybackService;->p:Lorg/json/JSONArray;

    if-eqz p2, :cond_11

    move p3, v4

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v2, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p3, v1, :cond_11

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v2, "nativeId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/brisa/local/DriveStream;->queued(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->p:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_10
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_11
    const-string p2, "autoplay"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/brisa/local/PlaybackService;->h:Z

    const-string p2, "shuffle"

    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/brisa/local/PlaybackService;->i:Z

    const-string p2, "repeat"

    const-string p3, "off"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brisa/local/PlaybackService;->n:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move p2, v4

    :goto_1
    iget-object p3, p0, Lcom/brisa/local/PlaybackService;->p:Lorg/json/JSONArray;

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p2, p3, :cond_12

    iget-object p3, p0, Lcom/brisa/local/PlaybackService;->p:Lorg/json/JSONArray;

    invoke-virtual {p3, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {p3}, Lcom/brisa/local/PlaybackService;->h(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_12
    iget-boolean p2, p0, Lcom/brisa/local/PlaybackService;->i:Z

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p1, p2, p3}, La2/d;->b(Ljava/util/ArrayList;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, La2/d;->h(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/brisa/local/PlaybackService;->w:Ljava/util/ArrayDeque;

    new-instance p3, Lcom/brisa/local/T;

    invoke-direct {p3, p1}, Lcom/brisa/local/T;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_2

    :cond_13
    const-string p1, "sleep"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, "end"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brisa/local/PlaybackService;->j:Z

    iput-boolean v4, p0, Lcom/brisa/local/PlaybackService;->k:Z

    if-nez p1, :cond_14

    const-string p1, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v5, 0xea60

    mul-long/2addr v1, v5

    invoke-virtual {p3, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    :goto_2
    iget-boolean p1, p0, Lcom/brisa/local/PlaybackService;->f:Z

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lcom/brisa/local/PlaybackService;->g:Z

    if-eqz p1, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    iput-boolean v4, p0, Lcom/brisa/local/PlaybackService;->g:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_15
    :goto_3
    return v0

    :catch_0
    const-string p1, "No se pudo reproducir el archivo. Vuelve a seleccionarlo desde Android."

    invoke-virtual {p0, p1}, Lcom/brisa/local/PlaybackService;->f(Ljava/lang/String;)V

    return v0
.end method

.method public final onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->s()V

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public final p(J)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-boolean v2, p0, Lcom/brisa/local/PlaybackService;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/brisa/local/PlaybackService;->s:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/brisa/local/PlaybackService;->r:Z

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, p2, v3}, Landroid/media/MediaPlayer;->seekTo(JI)V

    iput-wide v0, p0, Lcom/brisa/local/PlaybackService;->q:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/brisa/local/PlaybackService;->q:J

    :catch_0
    :goto_1
    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->o()V

    return-void
.end method

.method public final declared-synchronized q()Lorg/json/JSONObject;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "id"

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->o:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "position"

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->m()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "duration"

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/brisa/local/PlaybackService;->e:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->o:Lorg/json/JSONObject;

    const-string v3, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "playing"

    iget-boolean v2, p0, Lcom/brisa/local/PlaybackService;->f:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/brisa/local/PlaybackService;->e:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "prepared"

    iget-boolean v2, p0, Lcom/brisa/local/PlaybackService;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "rate"

    iget v2, p0, Lcom/brisa/local/PlaybackService;->m:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "volume"

    iget v2, p0, Lcom/brisa/local/PlaybackService;->l:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "sleepFinished"

    iget-boolean v2, p0, Lcom/brisa/local/PlaybackService;->k:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "error"

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_3
    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final r()V
    .locals 6

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->e()V
    invoke-static {p0}, Lcom/brisa/local/SoundSessions;->beforeMusic(Landroid/app/Service;)Z
    move-result v0
    if-nez v0, :sound_video_released
    return-void
    :sound_video_released

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->x:Lcom/brisa/local/Q;

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->u:Landroid/os/Handler;

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->b:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/brisa/local/PlaybackService;->a:Landroid/media/AudioFocusRequest;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-string v0, "Otra aplicaci\u00f3n tiene prioridad sobre el audio."

    invoke-virtual {p0, v0}, Lcom/brisa/local/PlaybackService;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0


    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    iget-object v2, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    sget-object v2, Lcom/brisa/local/Y;->e:Ljava/util/WeakHashMap;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/brisa/local/Y;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brisa/local/Y;

    if-nez v5, :cond_2

    new-instance v5, Lcom/brisa/local/Y;

    invoke-direct {v5, p0, v2}, Lcom/brisa/local/Y;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v5}, Lcom/brisa/local/Y;->a()V

    :goto_0
    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->b()V

    iput-boolean v3, p0, Lcom/brisa/local/PlaybackService;->f:Z

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/brisa/local/MainActivity;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brisa/local/MainActivity;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lcom/brisa/local/MainActivity;->g:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "No se pudo iniciar el audio."

    invoke-virtual {p0, v0}, Lcom/brisa/local/PlaybackService;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Lcom/brisa/local/PlaybackService;->k()V

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->y:Lcom/brisa/local/Q;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/brisa/local/Y;->c(Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/PlaybackService;->e:Z

    iget-object v1, p0, Lcom/brisa/local/PlaybackService;->d:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setActive(Z)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
