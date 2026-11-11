.class Lcom/brisa/local/SoundSessions$2;
.super Ljava/lang/Object;
.source "SoundSessions.java"

# interfaces
.implements Lcom/brisa/local/SoundCore$Port;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brisa/local/SoundSessions;->music(Landroid/content/Context;Landroid/media/MediaPlayer;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$base:F

.field final synthetic val$player:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/brisa/local/SoundSessions$2;->val$player:Landroid/media/MediaPlayer;

    iput p2, p0, Lcom/brisa/local/SoundSessions$2;->val$base:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public base()F
    .locals 2

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/brisa/local/SoundSessions$2;->val$base:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public playing()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/brisa/local/SoundSessions$2;->val$player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public session()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/brisa/local/SoundSessions$2;->val$player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public volume(F)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/brisa/local/SoundSessions$2;->val$player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method
