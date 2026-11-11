.class public final Lcom/brisa/local/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final a:Lcom/brisa/local/PlaybackService;


# direct methods
.method public constructor <init>(Lcom/brisa/local/PlaybackService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/P;->a:Lcom/brisa/local/PlaybackService;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    iget-object p2, p0, Lcom/brisa/local/P;->a:Lcom/brisa/local/PlaybackService;

    iget-object p3, p2, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Android no puede reproducir esta versi\u00f3n del audio. Prueba otro formato."

    invoke-virtual {p2, p1}, Lcom/brisa/local/PlaybackService;->f(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
