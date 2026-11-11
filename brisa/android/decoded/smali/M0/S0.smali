.class public final LM0/S0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/N0;

.field public final synthetic g:Z

.field public final synthetic h:LM0/X0;


# direct methods
.method public constructor <init>(LM0/X0;LM0/N0;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LM0/S0;->e:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/S0;->h:LM0/X0;

    iput-object p2, p0, LM0/S0;->f:LM0/N0;

    iput-boolean p3, p0, LM0/S0;->g:Z

    return-void
.end method

.method public constructor <init>(LM0/X0;LM0/N0;ZLG/c0;)V
    .locals 0

    const/4 p4, 0x1

    iput p4, p0, LM0/S0;->e:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/S0;->h:LM0/X0;

    iput-object p2, p0, LM0/S0;->f:LM0/N0;

    iput-boolean p3, p0, LM0/S0;->g:Z

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, LM0/S0;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LM0/O0;

    iget-object v0, p0, LM0/S0;->h:LM0/X0;

    iget-object v1, v0, LM0/X0;->t:LM0/d2;

    invoke-static {v1, p1}, LM0/Y1;->n(LG/g0;LM0/O0;)V

    iget-object p1, v0, LM0/X0;->t:LM0/d2;

    invoke-static {p1}, LJ/W;->z(LG/g0;)Z

    iget-boolean p1, p0, LM0/S0;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LM0/S0;->f:LM0/N0;

    invoke-virtual {v0, p1}, LM0/X0;->r(LM0/N0;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, LM0/S0;->h:LM0/X0;

    iget-object v0, p1, LM0/X0;->t:LM0/d2;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, LM0/d2;->S0(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {v0}, LM0/d2;->R0()LG/P;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p1, LM0/X0;->t:LM0/d2;

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, LM0/d2;->S0(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, LM0/X0;->t:LM0/d2;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, LM0/d2;->S0(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iget-object v3, p0, LM0/S0;->f:LM0/N0;

    invoke-virtual {p1, v3}, LM0/X0;->u(LM0/N0;)LM0/N0;

    move-result-object v3

    new-instance v4, LG/b0;

    invoke-direct {v4}, LG/b0;-><init>()V

    iget-object v5, v4, LG/b0;->a:LE/b;

    invoke-virtual {v5, v2}, LE/b;->a(I)V

    invoke-virtual {v4}, LG/b0;->c()LG/c0;

    move-result-object v2

    iget-boolean v4, p0, LM0/S0;->g:Z

    if-nez v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p1, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-static {v0}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object v0

    new-instance v1, LM0/S0;

    invoke-direct {v1, p1, v3, v4, v2}, LM0/S0;-><init>(LM0/X0;LM0/N0;ZLG/c0;)V

    new-instance v2, LM0/A;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, LM0/A;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lz1/v;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v3}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v2}, Lz1/p;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    const-string v0, "MediaSessionImpl"

    const-string v1, "Play requested without current MediaItem, but playback resumption prevented by missing available commands"

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p1, LM0/X0;->t:LM0/d2;

    invoke-static {v0}, LJ/W;->z(LG/g0;)Z

    if-eqz v4, :cond_7

    invoke-virtual {p1, v3}, LM0/X0;->r(LM0/N0;)V

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, LM0/S0;->e:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MediaSessionImpl"

    if-eqz v0, :cond_0

    const-string v0, "UnsupportedOperationException: Make sure to implement MediaSession.Callback.onPlaybackResumption() if you add a media button receiver to your manifest or if you implement the recent media item contract with your MediaLibraryService."

    invoke-static {v1, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failure calling MediaSession.Callback.onPlaybackResumption(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, LM0/S0;->h:LM0/X0;

    iget-object v0, p1, LM0/X0;->t:LM0/d2;

    invoke-static {v0}, LJ/W;->z(LG/g0;)Z

    iget-boolean v0, p0, LM0/S0;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LM0/S0;->f:LM0/N0;

    invoke-virtual {p1, v0}, LM0/X0;->r(LM0/N0;)V

    :cond_1
    return-void

    :pswitch_0
    const-string v0, "MediaSessionImpl"

    const-string v1, "Failed calling onPlayRequested"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
