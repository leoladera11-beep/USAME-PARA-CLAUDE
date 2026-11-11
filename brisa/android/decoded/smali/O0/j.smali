.class public final LO0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/e0;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic e:LO0/u;


# direct methods
.method public constructor <init>(LO0/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO0/j;->e:LO0/u;

    return-void
.end method


# virtual methods
.method public final S(LG/d0;)V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/16 v2, 0xd

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    iget-object p1, p1, LG/d0;->a:LG/u;

    invoke-virtual {p1, v3}, LG/u;->a([I)Z

    move-result v3

    iget-object v4, p0, LO0/j;->e:LO0/u;

    if-eqz v3, :cond_0

    invoke-virtual {v4}, LO0/u;->q()V

    :cond_0
    const/4 v3, 0x7

    filled-new-array {v0, v1, v3, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, LG/u;->a([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, LO0/u;->s()V

    :cond_1
    const/16 v0, 0x8

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, LG/u;->a([I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, LO0/u;->t()V

    :cond_2
    const/16 v0, 0x9

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, LG/u;->a([I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, LO0/u;->v()V

    :cond_3
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, LG/u;->a([I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, LO0/u;->p()V

    :cond_4
    const/16 v0, 0xb

    const/4 v1, 0x0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, LG/u;->a([I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, LO0/u;->w()V

    :cond_5
    const/16 v0, 0xc

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, LG/u;->a([I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, LO0/u;->r()V

    :cond_6
    const/4 v0, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, LG/u;->a([I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v4}, LO0/u;->x()V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, LO0/j;->e:LO0/u;

    iget-object v1, v0, LO0/u;->D:Landroid/widget/ImageView;

    iget-object v2, v0, LO0/u;->I:Landroid/view/View;

    iget-object v3, v0, LO0/u;->H:Landroid/view/View;

    iget-object v4, v0, LO0/u;->G:Landroid/view/View;

    iget-object v5, v0, LO0/u;->a:LO0/z;

    iget-object v6, v0, LO0/u;->q0:LG/g0;

    if-nez v6, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v5}, LO0/z;->g()V

    iget-object v7, v0, LO0/u;->u:Landroid/widget/ImageView;

    if-ne v7, p1, :cond_1

    const/16 p1, 0x9

    invoke-interface {v6, p1}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, LG/g0;->C0()V

    return-void

    :cond_1
    iget-object v7, v0, LO0/u;->t:Landroid/widget/ImageView;

    if-ne v7, p1, :cond_2

    const/4 p1, 0x7

    invoke-interface {v6, p1}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, LG/g0;->M0()V

    return-void

    :cond_2
    iget-object v7, v0, LO0/u;->w:Landroid/view/View;

    if-ne v7, p1, :cond_3

    invoke-interface {v6}, LG/g0;->c()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_11

    const/16 p1, 0xc

    invoke-interface {v6, p1}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, LG/g0;->E0()V

    return-void

    :cond_3
    iget-object v7, v0, LO0/u;->x:Landroid/view/View;

    if-ne v7, p1, :cond_4

    const/16 p1, 0xb

    invoke-interface {v6, p1}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, LG/g0;->H0()V

    return-void

    :cond_4
    iget-object v7, v0, LO0/u;->v:Landroid/widget/ImageView;

    const/4 v8, 0x1

    if-ne v7, p1, :cond_6

    iget-boolean p1, v0, LO0/u;->u0:Z

    invoke-static {v6, p1}, LJ/W;->Q(LG/g0;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v6}, LJ/W;->z(LG/g0;)Z

    return-void

    :cond_5
    invoke-interface {v6, v8}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, LG/g0;->h0()V

    return-void

    :cond_6
    iget-object v7, v0, LO0/u;->A:Landroid/widget/ImageView;

    if-ne v7, p1, :cond_c

    const/16 p1, 0xf

    invoke-interface {v6, p1}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, LG/g0;->f()I

    move-result p1

    iget v0, v0, LO0/u;->A0:I

    move v1, v8

    :goto_0
    const/4 v2, 0x2

    if-gt v1, v2, :cond_b

    add-int v3, p1, v1

    rem-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_a

    if-eq v3, v8, :cond_8

    if-eq v3, v2, :cond_7

    goto :goto_1

    :cond_7
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_8
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    :goto_2
    move p1, v3

    :cond_b
    invoke-interface {v6, p1}, LG/g0;->b0(I)V

    return-void

    :cond_c
    iget-object v7, v0, LO0/u;->B:Landroid/widget/ImageView;

    if-ne v7, p1, :cond_d

    const/16 p1, 0xe

    invoke-interface {v6, p1}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, LG/g0;->w0()Z

    move-result p1

    xor-int/2addr p1, v8

    invoke-interface {v6, p1}, LG/g0;->B(Z)V

    return-void

    :cond_d
    if-ne v4, p1, :cond_e

    invoke-virtual {v5}, LO0/z;->f()V

    iget-object p1, v0, LO0/u;->m:LO0/p;

    invoke-virtual {v0, p1, v4}, LO0/u;->e(LR0/z;Landroid/view/View;)V

    return-void

    :cond_e
    if-ne v3, p1, :cond_f

    invoke-virtual {v5}, LO0/z;->f()V

    iget-object p1, v0, LO0/u;->n:LO0/m;

    invoke-virtual {v0, p1, v3}, LO0/u;->e(LR0/z;Landroid/view/View;)V

    return-void

    :cond_f
    if-ne v2, p1, :cond_10

    invoke-virtual {v5}, LO0/z;->f()V

    iget-object p1, v0, LO0/u;->p:LO0/i;

    invoke-virtual {v0, p1, v2}, LO0/u;->e(LR0/z;Landroid/view/View;)V

    return-void

    :cond_10
    if-ne v1, p1, :cond_11

    invoke-virtual {v5}, LO0/z;->f()V

    iget-object p1, v0, LO0/u;->o:LO0/i;

    invoke-virtual {v0, p1, v1}, LO0/u;->e(LR0/z;Landroid/view/View;)V

    :cond_11
    :goto_3
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, LO0/j;->e:LO0/u;

    iget-boolean v1, v0, LO0/u;->G0:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, LO0/u;->a:LO0/z;

    invoke-virtual {v0}, LO0/z;->g()V

    :cond_0
    return-void
.end method
