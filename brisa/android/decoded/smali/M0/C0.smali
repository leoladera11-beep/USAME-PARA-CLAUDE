.class public final synthetic LM0/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, LM0/C0;->f:Ljava/lang/Object;

    iput-object p2, p0, LM0/C0;->g:Ljava/lang/Object;

    iput-boolean p3, p0, LM0/C0;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM0/q;I)V
    .locals 3

    iget-object v0, p0, LM0/C0;->f:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v1, p0, LM0/C0;->g:Ljava/lang/Object;

    check-cast v1, LG/e;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-virtual {v1}, LG/e;->d()Landroid/os/Bundle;

    move-result-object v1

    iget-boolean v2, p0, LM0/C0;->e:Z

    invoke-interface {p1, v0, p2, v1, v2}, LM0/q;->h0(LM0/o;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public b(Li/j;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, LM0/C0;->f:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LM0/I0;

    iget-object v0, p0, LM0/C0;->g:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, LM0/P0;

    iget-object v0, v2, LM0/I0;->e:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v0, v3}, Lcom/brisa/local/VideoPlaybackService;->h(LM0/P0;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v3}, LM0/I0;->e(LM0/P0;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v7, p1

    goto :goto_2

    :cond_1
    iget v0, v2, LM0/I0;->n:I

    add-int/2addr v0, v4

    iput v0, v2, LM0/I0;->n:I

    invoke-virtual {v2, v3}, LM0/I0;->c(LM0/P0;)LM0/z;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, LM0/z;->Y0()V

    iget-object v1, v1, LM0/z;->c:LM0/y;

    invoke-interface {v1}, LM0/y;->p()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, LM0/y;->S0()Lu1/P;

    move-result-object v1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_2
    sget-object v1, Lu1/P;->f:Lu1/N;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    goto :goto_0

    :goto_1
    new-instance v5, LM0/E;

    const/4 v1, 0x2

    invoke-direct {v5, v2, v0, v3, v1}, LM0/E;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    iget-object v0, v3, LM0/P0;->a:LM0/X0;

    iget-object v0, v0, LM0/X0;->l:Landroid/os/Handler;

    new-instance v1, LM0/D0;

    iget-boolean v6, p0, LM0/C0;->e:Z

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, LM0/D0;-><init>(LM0/I0;LM0/P0;Lu1/P;LM0/E;ZLi/j;)V

    invoke-static {v0, v1}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    const-string p1, "notificationUpdated"

    return-object p1

    :goto_2
    sget-object p1, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/Service;->stopForeground(I)V

    iget-object p1, v2, LM0/I0;->o:LZ0/i;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, v2, LM0/I0;->g:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget p1, v2, LM0/I0;->n:I

    add-int/2addr p1, v4

    iput p1, v2, LM0/I0;->n:I

    iput-object v0, v2, LM0/I0;->o:LZ0/i;

    :cond_3
    iput-boolean v4, v7, Li/j;->d:Z

    iget-object p1, v7, Li/j;->b:Li/l;

    if-eqz p1, :cond_4

    iget-object p1, p1, Li/l;->f:Li/k;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Li/i;->k:Ljava/lang/Object;

    sget-object v2, Li/i;->j:Lcom/brisa/local/v;

    invoke-virtual {v2, p1, v0, v1}, Lcom/brisa/local/v;->b(Li/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Li/i;->c(Li/i;)V

    iput-object v0, v7, Li/j;->a:Ljava/io/Serializable;

    iput-object v0, v7, Li/j;->b:Li/l;

    iput-object v0, v7, Li/j;->c:Li/n;

    :cond_4
    const-string p1, "notificationRemoved"

    return-object p1
.end method
