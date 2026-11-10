.class public final Lcom/brisa/local/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final a:Lcom/brisa/local/PlaybackService;


# direct methods
.method public constructor <init>(Lcom/brisa/local/PlaybackService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/M;->a:Lcom/brisa/local/PlaybackService;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    iget-object v0, p0, Lcom/brisa/local/M;->a:Lcom/brisa/local/PlaybackService;

    iget-object v1, v0, Lcom/brisa/local/PlaybackService;->c:Landroid/media/MediaPlayer;

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/brisa/local/PlaybackService;->e:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/brisa/local/Y;->e:Ljava/util/WeakHashMap;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/brisa/local/Y;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brisa/local/Y;

    if-nez v2, :cond_2

    new-instance v2, Lcom/brisa/local/Y;

    invoke-direct {v2, v0, p1}, Lcom/brisa/local/Y;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2}, Lcom/brisa/local/Y;->a()V

    :goto_0
    iget-wide v1, v0, Lcom/brisa/local/PlaybackService;->q:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    invoke-virtual {v0, v1, v2}, Lcom/brisa/local/PlaybackService;->p(J)V

    :cond_3
    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->b()V

    iget-boolean p1, v0, Lcom/brisa/local/PlaybackService;->f:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->r()V

    :cond_4
    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->o()V

    return-void
.end method
