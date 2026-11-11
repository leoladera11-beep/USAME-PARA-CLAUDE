.class public final LO0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/e0;
.implements Landroid/view/View$OnClickListener;
.implements LO0/t;
.implements LO0/k;


# instance fields
.field public final e:LG/n0;

.field public f:Ljava/lang/Object;

.field public final synthetic g:LO0/F;


# direct methods
.method public constructor <init>(LO0/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO0/B;->g:LO0/F;

    new-instance p1, LG/n0;

    invoke-direct {p1}, LG/n0;-><init>()V

    iput-object p1, p0, LO0/B;->e:LG/n0;

    return-void
.end method


# virtual methods
.method public final E(I)V
    .locals 1

    iget-object p1, p0, LO0/B;->g:LO0/F;

    invoke-virtual {p1}, LO0/F;->k()V

    invoke-virtual {p1}, LO0/F;->m()V

    invoke-virtual {p1}, LO0/F;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, LO0/F;->D:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, LO0/F;->l:LO0/u;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LO0/u;->g()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LO0/F;->e(Z)V

    return-void
.end method

.method public final K(II)V
    .locals 4

    iget-object p1, p0, LO0/B;->g:LO0/F;

    iget-object p2, p1, LO0/F;->d:Landroid/view/View;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    instance-of v0, p2, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, LO0/F;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, LO0/F;->f:La1/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, LO0/F;->o:Landroid/os/Handler;

    check-cast p2, Landroid/view/SurfaceView;

    new-instance v2, LH/a;

    const/16 v3, 0xb

    invoke-direct {v2, p1, v3}, LH/a;-><init>(Ljava/lang/Object;I)V

    new-instance p1, LJ/U;

    invoke-direct {p1, v3, v0, p2, v2}, LJ/U;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final M(LI/c;)V
    .locals 1

    iget-object v0, p0, LO0/B;->g:LO0/F;

    iget-object v0, v0, LO0/F;->i:Landroidx/media3/ui/SubtitleView;

    if-eqz v0, :cond_0

    iget-object p1, p1, LI/c;->a:Lu1/C0;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final a(LG/C0;)V
    .locals 2

    sget-object v0, LG/C0;->d:LG/C0;

    invoke-virtual {p1, v0}, LG/C0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LO0/B;->g:LO0/F;

    iget-object v0, p1, LO0/F;->s:LG/g0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LG/g0;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LO0/F;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final k(LG/y0;)V
    .locals 7

    iget-object p1, p0, LO0/B;->g:LO0/F;

    iget-object v0, p1, LO0/F;->s:LG/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x11

    invoke-interface {v0, v1}, LG/g0;->S0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LG/g0;->p0()LG/q0;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, LG/q0;->a:LG/m0;

    :goto_0
    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iput-object v4, p0, LO0/B;->f:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/16 v2, 0x1e

    invoke-interface {v0, v2}, LG/g0;->S0(I)Z

    move-result v2

    iget-object v5, p0, LO0/B;->e:LG/n0;

    if-eqz v2, :cond_2

    invoke-interface {v0}, LG/g0;->E()LG/y0;

    move-result-object v2

    iget-object v2, v2, LG/y0;->a:Lu1/P;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, LG/g0;->K()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v5, v2}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v0

    iget-object v0, v0, LG/n0;->b:Ljava/lang/Object;

    iput-object v0, p0, LO0/B;->f:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, p0, LO0/B;->f:Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    invoke-virtual {v1, v2, v5, v3}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v1

    iget v1, v1, LG/n0;->c:I

    invoke-interface {v0}, LG/g0;->V()I

    move-result v0

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    iput-object v4, p0, LO0/B;->f:Ljava/lang/Object;

    :cond_4
    :goto_1
    invoke-virtual {p1, v3}, LO0/F;->n(Z)V

    return-void
.end method

.method public final l(ILG/f0;LG/f0;)V
    .locals 0

    iget-object p1, p0, LO0/B;->g:LO0/F;

    invoke-virtual {p1}, LO0/F;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p1, LO0/F;->D:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, LO0/F;->l:LO0/u;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LO0/u;->g()V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LO0/B;->g:LO0/F;

    invoke-virtual {p1}, LO0/F;->i()V

    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, LO0/B;->g:LO0/F;

    iget-object v1, v0, LO0/F;->c:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, LO0/F;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, LO0/F;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, LO0/F;->c()V

    :cond_1
    return-void
.end method

.method public final v(IZ)V
    .locals 0

    iget-object p1, p0, LO0/B;->g:LO0/F;

    invoke-virtual {p1}, LO0/F;->k()V

    invoke-virtual {p1}, LO0/F;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p1, LO0/F;->D:Z

    if-eqz p2, :cond_1

    iget-object p1, p1, LO0/F;->l:LO0/u;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LO0/u;->g()V

    :cond_0
    return-void

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LO0/F;->e(Z)V

    return-void
.end method
