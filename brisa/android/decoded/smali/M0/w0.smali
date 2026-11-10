.class public final synthetic LM0/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/x0;
.implements LM0/T1;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    iput p1, p0, LM0/w0;->e:I

    iput-object p2, p0, LM0/w0;->f:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LM0/l0;)V
    .locals 13

    invoke-virtual {p1}, LM0/l0;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, LM0/l0;->u:Lu1/C0;

    iget-object v1, p1, LM0/l0;->v:Lu1/C0;

    iget-object v2, p0, LM0/w0;->f:Landroid/os/Bundle;

    iput-object v2, p1, LM0/l0;->J:Landroid/os/Bundle;

    iget-object v3, p1, LM0/l0;->t:Lu1/P;

    iget-object v4, p1, LM0/l0;->s:Lu1/P;

    iget-object v5, p1, LM0/l0;->w:LM0/j2;

    iget-object v6, p1, LM0/l0;->z:LG/c0;

    invoke-static {v3, v4, v5, v6, v2}, LM0/l0;->w1(Ljava/util/List;Ljava/util/List;LM0/j2;LG/c0;Landroid/os/Bundle;)Lu1/C0;

    move-result-object v7

    iput-object v7, p1, LM0/l0;->u:Lu1/C0;

    iget-object v8, p1, LM0/l0;->s:Lu1/P;

    iget-object v9, p1, LM0/l0;->J:Landroid/os/Bundle;

    iget-object v10, p1, LM0/l0;->w:LM0/j2;

    iget-object v11, p1, LM0/l0;->z:LG/c0;

    invoke-virtual {p1}, LM0/l0;->i1()I

    move-result v12

    invoke-static/range {v7 .. v12}, LM0/l0;->v1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;LM0/j2;LG/c0;I)Lu1/C0;

    move-result-object v2

    iput-object v2, p1, LM0/l0;->v:Lu1/C0;

    iget-object v2, p1, LM0/l0;->u:Lu1/C0;

    invoke-virtual {v2, v0}, Lu1/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p1, LM0/l0;->v:Lu1/C0;

    invoke-virtual {v2, v1}, Lu1/P;->equals(Ljava/lang/Object;)Z

    iget-object p1, p1, LM0/l0;->a:LM0/z;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p1, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LF1/i;->o(Z)V

    iget-object p1, p1, LM0/z;->d:LM0/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_2

    invoke-interface {p1}, LM0/x;->s()V

    :cond_2
    return-void
.end method

.method public i(LM0/X0;LM0/N0;I)Ljava/lang/Object;
    .locals 1

    iget p3, p0, LM0/w0;->e:I

    packed-switch p3, :pswitch_data_0

    iget-object p3, p0, LM0/w0;->f:Landroid/os/Bundle;

    :try_start_0
    iget p2, p2, LM0/N0;->c:I

    invoke-static {p2, p3}, LG/T;->b(ILandroid/os/Bundle;)LG/T;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1, p2}, LM0/d2;->X(LG/T;)V

    new-instance p1, LM0/m2;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaMetadata"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_0
    iget-object p3, p0, LM0/w0;->f:Landroid/os/Bundle;

    :try_start_1
    iget v0, p2, LM0/N0;->c:I

    invoke-static {v0, p3}, LG/P;->a(ILandroid/os/Bundle;)LG/P;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p3}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, LM0/X0;->n(LM0/N0;Lu1/C0;)Lz1/B;

    move-result-object p1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_1
    iget-object p3, p0, LM0/w0;->f:Landroid/os/Bundle;

    :try_start_2
    iget v0, p2, LM0/N0;->c:I

    invoke-static {v0, p3}, LG/P;->a(ILandroid/os/Bundle;)LG/P;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p3}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, LM0/X0;->n(LM0/N0;Lu1/C0;)Lz1/B;

    move-result-object p1

    goto :goto_2

    :catch_2
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_2
    iget-object p3, p0, LM0/w0;->f:Landroid/os/Bundle;

    :try_start_3
    iget v0, p2, LM0/N0;->c:I

    invoke-static {v0, p3}, LG/P;->a(ILandroid/os/Bundle;)LG/P;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p3}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, LM0/X0;->n(LM0/N0;Lu1/C0;)Lz1/B;

    move-result-object p1

    goto :goto_3

    :catch_3
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object p1

    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
