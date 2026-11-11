.class public final Lcom/brisa/local/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final a:Lcom/brisa/local/PlaybackService;


# direct methods
.method public constructor <init>(Lcom/brisa/local/PlaybackService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/S;->a:Lcom/brisa/local/PlaybackService;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/brisa/local/S;->a:Lcom/brisa/local/PlaybackService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->k()V

    return-void
.end method
