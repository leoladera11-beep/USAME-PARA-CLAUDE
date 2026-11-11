.class public final Lcom/brisa/local/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/e0;


# instance fields
.field public final synthetic e:Lcom/brisa/local/VideoPlaybackService;


# direct methods
.method public constructor <init>(Lcom/brisa/local/VideoPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/e0;->e:Lcom/brisa/local/VideoPlaybackService;

    return-void
.end method


# virtual methods
.method public final G(LG/Z;)V
    .locals 0
    invoke-static {p1}, Lcom/brisa/local/MobileVideoFiles;->playerError(Ljava/lang/Throwable;)V
    return-void
.end method

.method public final U(Z)V
    .locals 1

    iget-object p1, p0, Lcom/brisa/local/e0;->e:Lcom/brisa/local/VideoPlaybackService;

    sget-object v0, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {p1}, Lcom/brisa/local/VideoPlaybackService;->c()V

    return-void
.end method

.method public final z(I)V
    .locals 1
    iget-object v0, p0, Lcom/brisa/local/e0;->e:Lcom/brisa/local/VideoPlaybackService;
    invoke-static {v0}, Lcom/brisa/local/SoundSessions;->sessionChanged(Landroid/app/Service;)V
    return-void
.end method
