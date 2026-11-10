.class public final Lcom/brisa/local/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final a:Lcom/brisa/local/PlaybackService;


# direct methods
.method public constructor <init>(Lcom/brisa/local/PlaybackService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/O;->a:Lcom/brisa/local/PlaybackService;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/brisa/local/O;->a:Lcom/brisa/local/PlaybackService;

    iget-object v1, v0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, v0, Lcom/brisa/local/PlaybackService;->j:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iput-boolean v1, v0, Lcom/brisa/local/PlaybackService;->k:Z

    iput-boolean v2, v0, Lcom/brisa/local/PlaybackService;->j:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, v0, Lcom/brisa/local/PlaybackService;->h:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Lcom/brisa/local/PlaybackService;->a(Z)V

    return-void

    :cond_2
    iput-boolean v2, v0, Lcom/brisa/local/PlaybackService;->f:Z

    :goto_0
    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->k()V

    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->o()V

    return-void
.end method
