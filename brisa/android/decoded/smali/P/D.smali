.class public final LP/D;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:LB/A;


# direct methods
.method public constructor <init>(LB/A;)V
    .locals 0

    iput-object p1, p0, LP/D;->a:LB/A;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 1

    iget-object p1, p0, LP/D;->a:LB/A;

    iget-object p1, p1, LB/A;->h:Ljava/lang/Object;

    check-cast p1, LP/E;

    iget-object p1, p1, LP/E;->j:LJ/t;

    new-instance p2, LP/B;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, LP/B;-><init>(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, LJ/t;->f(ILJ/q;)V

    return-void
.end method

.method public final onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 2

    iget-object p1, p0, LP/D;->a:LB/A;

    iget-object p1, p1, LB/A;->h:Ljava/lang/Object;

    check-cast p1, LP/E;

    iget-object p1, p1, LP/E;->j:LJ/t;

    new-instance v0, LP/B;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LP/B;-><init>(I)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, LJ/t;->f(ILJ/q;)V

    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 2

    iget-object p1, p0, LP/D;->a:LB/A;

    iget-object p1, p1, LB/A;->h:Ljava/lang/Object;

    check-cast p1, LP/E;

    iget-object p1, p1, LP/E;->j:LJ/t;

    new-instance v0, LP/B;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LP/B;-><init>(I)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, LJ/t;->f(ILJ/q;)V

    return-void
.end method
