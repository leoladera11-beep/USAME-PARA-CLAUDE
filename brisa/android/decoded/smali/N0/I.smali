.class public LN0/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/media/session/MediaSession;

.field public final b:LN0/H;

.field public final c:LN0/N;

.field public final d:Ljava/lang/Object;

.field public final e:Landroid/os/Bundle;

.field public final f:Landroid/os/RemoteCallbackList;

.field public g:LN0/U;

.field public h:Ljava/util/List;

.field public i:LN0/D;

.field public j:I

.field public k:I

.field public l:LN0/G;

.field public m:LN0/P;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LN0/I;->d:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, LN0/I;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, p2, p3}, LN0/I;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/session/MediaSession;

    move-result-object p1

    iput-object p1, p0, LN0/I;->a:Landroid/media/session/MediaSession;

    new-instance p2, LN0/H;

    invoke-direct {p2, p0}, LN0/H;-><init>(LN0/I;)V

    iput-object p2, p0, LN0/I;->b:LN0/H;

    new-instance v0, LN0/N;

    invoke-virtual {p1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-direct {v0, v1, p2}, LN0/N;-><init>(Landroid/media/session/MediaSession$Token;LN0/d;)V

    iput-object v0, p0, LN0/I;->c:LN0/N;

    iput-object p3, p0, LN0/I;->e:Landroid/os/Bundle;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/session/MediaSession;->setFlags(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/session/MediaSession;
    .locals 0

    new-instance p3, Landroid/media/session/MediaSession;

    invoke-direct {p3, p1, p2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p3
.end method

.method public b()LN0/P;
    .locals 2

    iget-object v0, p0, LN0/I;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LN0/I;->m:LN0/P;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(LN0/P;)V
    .locals 1

    iget-object v0, p0, LN0/I;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, LN0/I;->m:LN0/P;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
