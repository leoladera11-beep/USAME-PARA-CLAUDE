.class public LN0/J;
.super LN0/I;
.source "SourceFile"


# virtual methods
.method public final b()LN0/P;
    .locals 2

    iget-object v0, p0, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-static {v0}, LN0/n;->e(Landroid/media/session/MediaSession;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    new-instance v1, LN0/P;

    invoke-direct {v1, v0}, LN0/P;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-object v1
.end method

.method public final c(LN0/P;)V
    .locals 0

    return-void
.end method
