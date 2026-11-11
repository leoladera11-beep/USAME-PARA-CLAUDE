.class public final Lcom/brisa/local/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final a:Lcom/brisa/local/PlaybackService;


# direct methods
.method public constructor <init>(Lcom/brisa/local/PlaybackService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/N;->a:Lcom/brisa/local/PlaybackService;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/brisa/local/N;->a:Lcom/brisa/local/PlaybackService;

    iget-object v1, v0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/brisa/local/PlaybackService;->r:Z

    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->o()V

    :cond_0
    return-void
.end method
