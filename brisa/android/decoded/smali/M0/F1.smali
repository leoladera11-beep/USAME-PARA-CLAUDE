.class public final synthetic LM0/F1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/T1;
.implements LJ/k;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    iput p3, p0, LM0/F1;->e:I

    iput-object p1, p0, LM0/F1;->g:Ljava/lang/Object;

    iput-boolean p2, p0, LM0/F1;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LM0/F1;->g:Ljava/lang/Object;

    check-cast v0, LG/e;

    iget-boolean v1, p0, LM0/F1;->f:Z

    check-cast p1, LM0/d2;

    invoke-virtual {p1, v0, v1}, LM0/d2;->D0(LG/e;Z)V

    return-void
.end method

.method public i(LM0/X0;LM0/N0;I)Ljava/lang/Object;
    .locals 6

    iget p3, p0, LM0/F1;->e:I

    packed-switch p3, :pswitch_data_0

    iget-object p3, p0, LM0/F1;->g:Ljava/lang/Object;

    check-cast p3, Landroid/os/IBinder;

    :try_start_0
    invoke-static {p3}, LG/g;->a(Landroid/os/IBinder;)Lu1/P;

    move-result-object p3

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p2, LM0/N0;->c:I

    invoke-static {v3, v2}, LG/P;->a(ILandroid/os/Bundle;)LG/P;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean p3, p0, LM0/F1;->f:Z

    if-eqz p3, :cond_1

    const/4 v0, -0x1

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object v0, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {v0}, LM0/d2;->V()I

    move-result v0

    goto :goto_1

    :goto_2
    if-eqz p3, :cond_2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    move-wide v4, v0

    move-object v0, p1

    move-object v1, p2

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p3, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {p3}, LM0/d2;->O0()J

    move-result-wide v0

    goto :goto_3

    :goto_4
    invoke-virtual/range {v0 .. v5}, LM0/X0;->s(LM0/N0;Lu1/C0;IJ)Lz1/H;

    move-result-object p1

    goto :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object p1

    :goto_5
    return-object p1

    :pswitch_0
    move-object v0, p1

    move-object v1, p2

    iget-object p1, p0, LM0/F1;->g:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    :try_start_1
    iget p2, v1, LM0/N0;->c:I

    invoke-static {p2, p1}, LG/P;->a(ILandroid/os/Bundle;)LG/P;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v2

    iget-boolean p1, p0, LM0/F1;->f:Z

    if-eqz p1, :cond_3

    const/4 p2, -0x1

    :goto_6
    move v3, p2

    goto :goto_7

    :cond_3
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object p2, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {p2}, LM0/d2;->V()I

    move-result p2

    goto :goto_6

    :goto_7
    if-eqz p1, :cond_4

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_8
    move-wide v4, p1

    goto :goto_9

    :cond_4
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object p1, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1}, LM0/d2;->O0()J

    move-result-wide p1

    goto :goto_8

    :goto_9
    invoke-virtual/range {v0 .. v5}, LM0/X0;->s(LM0/N0;Lu1/C0;IJ)Lz1/H;

    move-result-object p1

    goto :goto_a

    :catch_1
    move-exception v0

    move-object p1, v0

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object p1

    :goto_a
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
