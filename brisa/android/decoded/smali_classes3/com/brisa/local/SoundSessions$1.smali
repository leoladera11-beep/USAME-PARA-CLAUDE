.class Lcom/brisa/local/SoundSessions$1;
.super Ljava/lang/Object;
.source "SoundSessions.java"

# interfaces
.implements Lcom/brisa/local/SoundCore$Effect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/SoundSessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$eq:Landroid/media/audiofx/Equalizer;


# direct methods
.method constructor <init>(Landroid/media/audiofx/Equalizer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/brisa/local/SoundSessions$1;->val$eq:Landroid/media/audiofx/Equalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lcom/brisa/local/SoundCore$Settings;)V
    .locals 11

    .line 12
    iget-object v0, p0, Lcom/brisa/local/SoundSessions$1;->val$eq:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/brisa/local/SoundSessions$1;->val$eq:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v3}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v3

    if-ge v2, v3, :cond_0

    aget-short v3, v0, v1

    int-to-long v3, v3

    const/4 v5, 0x1

    aget-short v5, v0, v5

    int-to-long v5, v5

    iget-object v7, p0, Lcom/brisa/local/SoundSessions$1;->val$eq:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v7, v2}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v9

    invoke-static {p1, v7, v8}, Lcom/brisa/local/SoundCore;->band(Lcom/brisa/local/SoundCore$Settings;D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-short v3, v3

    iget-object v4, p0, Lcom/brisa/local/SoundSessions$1;->val$eq:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v4, v2, v3}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public control()Z
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/brisa/local/SoundSessions$1;->val$eq:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->hasControl()Z

    move-result v0

    return v0
.end method

.method public enable()V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/brisa/local/SoundSessions$1;->val$eq:Landroid/media/audiofx/Equalizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EQ enable rejected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/brisa/local/SoundSessions$1;->val$eq:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->release()V

    return-void
.end method
