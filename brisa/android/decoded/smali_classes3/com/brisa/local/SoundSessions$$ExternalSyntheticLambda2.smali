.class public final synthetic Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Service;

.field public final synthetic f$1:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Service;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda2;->f$0:Landroid/app/Service;

    iput-object p2, p0, Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda2;->f$1:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda2;->f$0:Landroid/app/Service;

    iget-object v1, p0, Lcom/brisa/local/SoundSessions$$ExternalSyntheticLambda2;->f$1:Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lcom/brisa/local/SoundSessions;->lambda$videoDestroyed$3(Landroid/app/Service;Landroid/media/MediaPlayer;)V

    return-void
.end method
