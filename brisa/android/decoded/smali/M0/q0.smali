.class public final LM0/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final a:LN0/v;

.field public b:LN0/w;

.field public c:LN0/u;

.field public final d:Landroid/os/Handler;

.field public final synthetic e:LM0/t0;


# direct methods
.method public constructor <init>(LM0/t0;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/q0;->e:LM0/t0;

    new-instance p1, LN0/v;

    invoke-direct {p1, p0}, LN0/v;-><init>(LM0/q0;)V

    iput-object p1, p0, LM0/q0;->a:LN0/v;

    new-instance p1, Landroid/os/Handler;

    new-instance v0, LJ/o;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LJ/o;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, LM0/q0;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, LM0/q0;->e:LM0/t0;

    iget-object v0, v0, LM0/t0;->b:LM0/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v0, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LF1/i;->o(Z)V

    iget-object v0, v0, LM0/z;->d:LM0/x;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "androidx.media3.session.ARGUMENT_CAPTIONING_ENABLED"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, LM0/i2;

    const-string v1, "androidx.media3.session.SESSION_COMMAND_ON_CAPTIONING_ENABLED_CHANGED"

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p1, v1, v2}, LM0/i2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, p1}, LM0/x;->H(LM0/i2;)Lz1/x;

    sget-object p1, LJ/W;->a:Ljava/lang/String;

    return-void
.end method

.method public final b(LN0/U;)V
    .locals 11

    iget-object v0, p0, LM0/q0;->e:LM0/t0;

    iget-object v1, v0, LM0/t0;->n:LM0/s0;

    invoke-static {p1}, LM0/t0;->Y0(LN0/U;)LN0/U;

    move-result-object v4

    new-instance v2, LM0/s0;

    iget-object p1, v1, LM0/s0;->c:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, LN0/A;

    iget-object p1, v1, LM0/s0;->e:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, LN0/D;

    iget-object p1, v1, LM0/s0;->f:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Ljava/util/List;

    iget-object p1, v1, LM0/s0;->g:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    iget v8, v1, LM0/s0;->a:I

    iget v9, v1, LM0/s0;->b:I

    iget-object p1, v1, LM0/s0;->h:Ljava/lang/Object;

    move-object v10, p1

    check-cast v10, Landroid/os/Bundle;

    invoke-direct/range {v2 .. v10}, LM0/s0;-><init>(LN0/A;LN0/U;LN0/D;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v2, v0, LM0/t0;->n:LM0/s0;

    invoke-virtual {p0}, LM0/q0;->e()V

    return-void
.end method

.method public final binderDied()V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LM0/q0;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LM0/q0;->b:LN0/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final d(Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_1

    iget-object p1, p0, LM0/q0;->b:LN0/w;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, LN0/w;->b:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, LM0/q0;->b:LN0/w;

    :cond_0
    return-void

    :cond_1
    new-instance v0, LN0/w;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LN0/w;-><init>(LM0/q0;Landroid/os/Looper;)V

    iput-object v0, p0, LM0/q0;->b:LN0/w;

    const/4 p1, 0x1

    iput-boolean p1, v0, LN0/w;->b:Z

    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, LM0/q0;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, LM0/q0;->e:LM0/t0;

    iget-wide v2, v2, LM0/t0;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
