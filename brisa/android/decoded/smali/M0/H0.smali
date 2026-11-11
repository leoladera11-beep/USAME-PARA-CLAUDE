.class public final LM0/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/x;
.implements LG/e0;


# instance fields
.field public final e:Lcom/brisa/local/VideoPlaybackService;

.field public final f:LM0/P0;

.field public final synthetic g:LM0/I0;


# direct methods
.method public constructor <init>(LM0/I0;Lcom/brisa/local/VideoPlaybackService;LM0/P0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/H0;->g:LM0/I0;

    iput-object p2, p0, LM0/H0;->e:Lcom/brisa/local/VideoPlaybackService;

    iput-object p3, p0, LM0/H0;->f:LM0/P0;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    iget-object v0, p0, LM0/H0;->f:LM0/P0;

    const/4 v1, 0x0

    iget-object v2, p0, LM0/H0;->e:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v2, v0, v1}, Lcom/brisa/local/VideoPlaybackService;->o(LM0/P0;Z)Lz1/a;

    return-void
.end method

.method public final H(LM0/i2;)Lz1/x;
    .locals 1

    iget-object p1, p1, LM0/i2;->b:Ljava/lang/String;

    const-string v0, "androidx.media3.session.NOTIFICATION_DISMISSED_EVENT_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LM0/H0;->f:LM0/P0;

    iget-object v0, p0, LM0/H0;->g:LM0/I0;

    iget-object v0, v0, LM0/I0;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/G0;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, LM0/G0;->b:Z

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x6

    :goto_0
    new-instance v0, LM0/m2;

    invoke-direct {v0, p1}, LM0/m2;-><init>(I)V

    invoke-static {v0}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1
.end method

.method public final S(LG/d0;)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/16 v2, 0xe

    const/4 v3, 0x0

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iget-object p1, p1, LG/d0;->a:LG/u;

    invoke-virtual {p1, v0}, LG/u;->a([I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LM0/H0;->e:Lcom/brisa/local/VideoPlaybackService;

    iget-object v0, p0, LM0/H0;->f:LM0/P0;

    invoke-virtual {p1, v0, v3}, Lcom/brisa/local/VideoPlaybackService;->o(LM0/P0;Z)Lz1/a;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, LM0/H0;->e:Lcom/brisa/local/VideoPlaybackService;

    iget-object v1, p0, LM0/H0;->f:LM0/P0;

    invoke-virtual {v0, v1}, Lcom/brisa/local/VideoPlaybackService;->h(LM0/P0;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/brisa/local/VideoPlaybackService;->p(LM0/P0;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/brisa/local/VideoPlaybackService;->o(LM0/P0;Z)Lz1/a;

    return-void
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, LM0/H0;->f:LM0/P0;

    const/4 v1, 0x0

    iget-object v2, p0, LM0/H0;->e:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v2, v0, v1}, Lcom/brisa/local/VideoPlaybackService;->o(LM0/P0;Z)Lz1/a;

    return-void
.end method
