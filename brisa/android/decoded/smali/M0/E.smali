.class public final synthetic LM0/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;
.implements LM0/S1;
.implements LJ/k;
.implements LJ/q;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILG/f0;LG/f0;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    iput v0, p0, LM0/E;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LM0/E;->g:I

    iput-object p2, p0, LM0/E;->f:Ljava/lang/Object;

    iput-object p3, p0, LM0/E;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LM0/X0;LM0/N0;I)V
    .locals 1

    .line 2
    const/4 v0, 0x4

    iput v0, p0, LM0/E;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/E;->f:Ljava/lang/Object;

    iput-object p2, p0, LM0/E;->h:Ljava/lang/Object;

    iput p3, p0, LM0/E;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, LM0/E;->e:I

    iput-object p1, p0, LM0/E;->f:Ljava/lang/Object;

    iput p2, p0, LM0/E;->g:I

    iput-object p3, p0, LM0/E;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM0/q;I)V
    .locals 9

    iget v0, p0, LM0/E;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/E;->f:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v1, p0, LM0/E;->h:Ljava/lang/Object;

    check-cast v1, LG/P;

    iget-object v2, v0, LM0/l0;->c:LM0/y0;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v3

    const/4 v4, 0x2

    iget v5, p0, LM0/E;->g:I

    const/4 v6, 0x1

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v0

    invoke-virtual {v1, v0, v6}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v2, p2, v5, v0}, LM0/q;->j(LM0/o;IILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v0

    invoke-virtual {v1, v0, v6}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v2, p2, v3, v0}, LM0/q;->M(LM0/o;IILandroid/os/Bundle;)V

    invoke-interface {p1, v2, p2, v5}, LM0/q;->i0(LM0/o;II)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LM0/E;->f:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v1, p0, LM0/E;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, LM0/l0;->c:LM0/y0;

    new-instance v3, LG/g;

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/P;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v6}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lu1/M;->f()Lu1/C0;

    move-result-object v0

    invoke-direct {v3, v0}, LG/g;-><init>(Ljava/util/List;)V

    iget v0, p0, LM0/E;->g:I

    invoke-interface {p1, v2, p2, v0, v3}, LM0/q;->v(LM0/o;IILandroid/os/IBinder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LM0/E;->f:Ljava/lang/Object;

    check-cast v0, LM0/X0;

    iget-object v1, p0, LM0/E;->h:Ljava/lang/Object;

    check-cast v1, LM0/N0;

    check-cast p1, Lz1/B;

    const-string v2, "MediaSessionStub"

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/m2;

    const-string v3, "SessionResult must not be null"

    invoke-static {p1, v3}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    const-string v3, "Session operation failed"

    invoke-static {v2, v3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, LM0/m2;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p1, :cond_0

    const/4 p1, -0x6

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    :goto_1
    invoke-direct {v2, p1}, LM0/m2;-><init>(I)V

    move-object p1, v2

    goto :goto_3

    :goto_2
    const-string v3, "Session operation cancelled"

    invoke-static {v2, v3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, LM0/m2;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, LM0/m2;-><init>(I)V

    :goto_3
    iget v2, p0, LM0/E;->g:I

    invoke-static {v0, v1, v2, p1}, LM0/W1;->Q0(LM0/X0;LM0/N0;ILM0/m2;)V

    return-void
.end method

.method public b(LM0/N0;I)V
    .locals 3

    iget-object v0, p0, LM0/E;->f:Ljava/lang/Object;

    check-cast v0, LM0/W1;

    iget-object v1, p0, LM0/E;->h:Ljava/lang/Object;

    check-cast v1, LM0/T1;

    iget v2, p0, LM0/E;->g:I

    invoke-virtual {v0, p1, p2, v2, v1}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LM0/E;->f:Ljava/lang/Object;

    check-cast v0, LG/f0;

    iget-object v1, p0, LM0/E;->h:Ljava/lang/Object;

    check-cast v1, LG/f0;

    check-cast p1, LG/e0;

    iget v2, p0, LM0/E;->g:I

    invoke-interface {p1, v2}, LG/e0;->i(I)V

    invoke-interface {p1, v2, v0, v1}, LG/e0;->l(ILG/f0;LG/f0;)V

    return-void
.end method
