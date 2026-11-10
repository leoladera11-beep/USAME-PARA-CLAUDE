.class public final LM0/P1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/M0;


# instance fields
.field public final e:LM0/o;

.field public final f:I


# direct methods
.method public constructor <init>(LM0/o;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/P1;->e:LM0/o;

    iput p2, p0, LM0/P1;->f:I

    return-void
.end method


# virtual methods
.method public final a(ILM0/i2;)V
    .locals 2

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v1, p0, LM0/P1;->e:LM0/o;

    invoke-virtual {p2}, LM0/i2;->b()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {v1, p1, p2, v0}, LM0/o;->n0(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, LM0/P1;->e:LM0/o;

    invoke-static {v0}, LM0/Y1;->i(LM0/o;)V

    return-void
.end method

.method public final c(ILM0/l2;ZZI)V
    .locals 0

    invoke-virtual {p2, p3, p4}, LM0/l2;->a(ZZ)LM0/l2;

    move-result-object p2

    invoke-virtual {p2, p5}, LM0/l2;->c(I)Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, LM0/P1;->e:LM0/o;

    invoke-interface {p3, p1, p2}, LM0/o;->j0(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, LM0/P1;->e:LM0/o;

    invoke-interface {v0, p1}, LM0/o;->e(I)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LM0/P1;

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, LM0/P1;

    iget-object v0, p0, LM0/P1;->e:LM0/o;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p1, p1, LM0/P1;->e:LM0/o;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(ILM0/v;)V
    .locals 9

    sget-object v0, LM0/v;->j:Ljava/lang/String;

    iget-object v1, p2, LM0/v;->c:Ljava/lang/Object;

    iget v2, p2, LM0/v;->d:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, LM0/v;->g:Ljava/lang/String;

    iget v5, p2, LM0/v;->a:I

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v4, LM0/v;->h:Ljava/lang/String;

    iget-wide v5, p2, LM0/v;->b:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v4, p2, LM0/v;->e:LM0/z0;

    if-eqz v4, :cond_0

    sget-object v5, LM0/v;->i:Ljava/lang/String;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    sget-object v7, LM0/z0;->e:Ljava/lang/String;

    iget-object v8, v4, LM0/z0;->a:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v7, LM0/z0;->f:Ljava/lang/String;

    iget-boolean v8, v4, LM0/z0;->b:Z

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v7, LM0/z0;->g:Ljava/lang/String;

    iget-boolean v8, v4, LM0/z0;->c:Z

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v7, LM0/z0;->h:Ljava/lang/String;

    iget-boolean v4, v4, LM0/z0;->d:Z

    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object p2, p2, LM0/v;->f:LM0/k2;

    if-eqz p2, :cond_1

    sget-object v4, LM0/v;->l:Ljava/lang/String;

    invoke-virtual {p2}, LM0/k2;->b()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    sget-object p2, LM0/v;->k:Ljava/lang/String;

    invoke-virtual {v3, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-eq v2, p2, :cond_6

    const/4 p2, 0x2

    const/4 v4, 0x0

    iget v5, p0, LM0/P1;->f:I

    if-eq v2, p2, :cond_5

    const/4 p2, 0x3

    if-eq v2, p2, :cond_3

    const/4 p2, 0x4

    if-eq v2, p2, :cond_6

    goto :goto_1

    :cond_3
    new-instance p2, LG/g;

    check-cast v1, Lu1/P;

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v2

    move v6, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LG/P;

    invoke-virtual {v7, v5, v4}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v7}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lu1/M;->f()Lu1/C0;

    move-result-object v1

    invoke-direct {p2, v1}, LG/g;-><init>(Ljava/util/List;)V

    invoke-static {v3, v0, p2}, Lk/e;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_1

    :cond_5
    check-cast v1, LG/P;

    invoke-virtual {v1, v5, v4}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    iget-object p2, p0, LM0/P1;->e:LM0/o;

    invoke-interface {p2, p1, v3}, LM0/o;->m(ILandroid/os/Bundle;)V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final g(III)V
    .locals 1

    iget-object v0, p0, LM0/P1;->e:LM0/o;

    invoke-interface {v0, p1, p2, p3}, LM0/o;->g(III)V

    return-void
.end method

.method public final h(ILG/c0;)V
    .locals 1

    iget-object v0, p0, LM0/P1;->e:LM0/o;

    invoke-virtual {p2}, LG/c0;->c()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {v0, p1, p2}, LM0/o;->f0(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LM0/P1;->e:LM0/o;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lr/b;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i(ILM0/m2;)V
    .locals 1

    iget-object v0, p0, LM0/P1;->e:LM0/o;

    invoke-virtual {p2}, LM0/m2;->b()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {v0, p1, p2}, LM0/o;->A0(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final j(ILM0/b2;LG/c0;ZZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, LM0/P1;->f:I

    if-eqz v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-static {v3}, LF1/i;->o(Z)V

    if-nez p4, :cond_2

    const/16 v3, 0x11

    invoke-virtual {p3, v3}, LG/c0;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    if-nez p5, :cond_3

    const/16 v4, 0x1e

    invoke-virtual {p3, v4}, LG/c0;->a(I)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    const/4 v4, 0x2

    iget-object v5, p0, LM0/P1;->e:LM0/o;

    if-lt v2, v4, :cond_6

    invoke-virtual {p2, p3, p4, p5}, LM0/b2;->q(LG/c0;ZZ)LM0/b2;

    move-result-object p2

    instance-of p3, v5, LM0/y0;

    if-eqz p3, :cond_5

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    sget-object p4, LM0/b2;->o0:Ljava/lang/String;

    new-instance p5, LM0/a2;

    invoke-direct {p5, p2}, LM0/a2;-><init>(LM0/b2;)V

    invoke-virtual {p3, p4, p5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p2, v2}, LM0/b2;->t(I)Landroid/os/Bundle;

    move-result-object p3

    :goto_3
    new-instance p2, LM0/Z1;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    sget-object p4, LM0/Z1;->d:Ljava/lang/String;

    invoke-virtual {p2, p4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p4, LM0/Z1;->e:Ljava/lang/String;

    invoke-virtual {p2, p4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {v5, p1, p3, p2}, LM0/o;->u0(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :cond_6
    invoke-virtual {p2, p3, p4, v1}, LM0/b2;->q(LG/c0;ZZ)LM0/b2;

    move-result-object p2

    invoke-virtual {p2, v2}, LM0/b2;->t(I)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {v5, p1, p2, v3}, LM0/o;->k0(ILandroid/os/Bundle;Z)V

    return-void
.end method
