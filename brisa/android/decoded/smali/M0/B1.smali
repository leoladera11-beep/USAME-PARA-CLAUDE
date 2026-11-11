.class public final synthetic LM0/B1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/T1;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;I)V
    .locals 0

    iput p2, p0, LM0/B1;->e:I

    iput-object p1, p0, LM0/B1;->f:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(LM0/X0;LM0/N0;I)Ljava/lang/Object;
    .locals 4

    iget p3, p0, LM0/B1;->e:I

    packed-switch p3, :pswitch_data_0

    iget-object p3, p0, LM0/B1;->f:Landroid/os/IBinder;

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

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p2, p3}, LM0/X0;->n(LM0/N0;Lu1/C0;)Lz1/B;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_0
    iget-object p3, p0, LM0/B1;->f:Landroid/os/IBinder;

    :try_start_1
    invoke-static {p3}, LG/g;->a(Landroid/os/IBinder;)Lu1/P;

    move-result-object p3

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p2, LM0/N0;->c:I

    invoke-static {v3, v2}, LG/P;->a(ILandroid/os/Bundle;)LG/P;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p1, p2, p3}, LM0/X0;->n(LM0/N0;Lu1/C0;)Lz1/B;

    move-result-object p1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object p1

    :goto_3
    return-object p1

    :pswitch_1
    iget-object p3, p0, LM0/B1;->f:Landroid/os/IBinder;

    :try_start_2
    invoke-static {p3}, LG/g;->a(Landroid/os/IBinder;)Lu1/P;

    move-result-object p3

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    const/4 v1, 0x0

    :goto_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p2, LM0/N0;->c:I

    invoke-static {v3, v2}, LG/P;->a(ILandroid/os/Bundle;)LG/P;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p1, p2, p3}, LM0/X0;->n(LM0/N0;Lu1/C0;)Lz1/B;

    move-result-object p1

    goto :goto_5

    :catch_2
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object p1

    :goto_5
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
