.class public final LM0/X1;
.super LC/b;
.source "SourceFile"


# instance fields
.field public final b:LM0/P0;

.field public c:[I


# direct methods
.method public constructor <init>(LM0/P0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/X1;->b:LM0/P0;

    return-void
.end method


# virtual methods
.method public final a(LB/A;)V
    .locals 3

    iget-object p1, p1, LB/A;->f:Ljava/lang/Object;

    check-cast p1, Landroid/app/Notification$Builder;

    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    iget-object v1, p0, LM0/X1;->b:LM0/P0;

    iget-object v2, v1, LM0/P0;->a:LM0/X0;

    iget-object v2, v2, LM0/X0;->h:LM0/t1;

    iget-object v2, v2, LM0/t1;->o:LN0/O;

    iget-object v2, v2, LN0/O;->f:Ljava/lang/Object;

    check-cast v2, LN0/I;

    iget-object v2, v2, LN0/I;->c:LN0/N;

    iget-object v2, v2, LN0/N;->f:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0, v2}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    iget-object v2, p0, LM0/X1;->c:[I

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, v1, LM0/P0;->a:LM0/X0;

    iget-object v1, v1, LM0/X0;->j:LM0/o2;

    invoke-virtual {v1}, LM0/o2;->b()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "androidx.media3.session"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-void
.end method
