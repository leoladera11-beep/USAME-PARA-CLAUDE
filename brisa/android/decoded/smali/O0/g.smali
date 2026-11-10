.class public final synthetic LO0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LO0/g;->e:I

    iput-object p1, p0, LO0/g;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget v0, p0, LO0/g;->e:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, LO0/g;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v4, Lcom/brisa/local/VideoActivity;

    sget p1, Lcom/brisa/local/VideoActivity;->l:I

    invoke-virtual {v4, v2}, Lcom/brisa/local/VideoActivity;->e(Z)V

    return-void

    :pswitch_0
    check-cast v4, Ljava/lang/Runnable;

    sget p1, Lcom/brisa/local/VideoActivity;->l:I

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_1
    check-cast v4, LO0/z;

    invoke-virtual {v4}, LO0/z;->g()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090050

    if-ne v0, v1, :cond_0

    iget-object p1, v4, LO0/z;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09004f

    if-ne p1, v0, :cond_1

    iget-object p1, v4, LO0/z;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    :pswitch_2
    check-cast v4, LO0/i;

    iget-object p1, v4, LO0/i;->f:LO0/u;

    iget-object v0, p1, LO0/u;->q0:LG/g0;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, LG/g0;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, LO0/u;->q0:LG/g0;

    invoke-interface {v0}, LG/g0;->x0()LG/w0;

    move-result-object v0

    iget-object v1, p1, LO0/u;->q0:LG/g0;

    invoke-virtual {v0}, LG/w0;->a()LG/v0;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, LG/v0;->d(I)LG/v0;

    move-result-object v0

    invoke-virtual {v0}, LG/v0;->g()LG/v0;

    move-result-object v0

    invoke-virtual {v0}, LG/v0;->i()LG/v0;

    move-result-object v0

    invoke-virtual {v0}, LG/v0;->k()LG/v0;

    move-result-object v0

    invoke-virtual {v0}, LG/v0;->b()LG/w0;

    move-result-object v0

    invoke-interface {v1, v0}, LG/g0;->n0(LG/w0;)V

    iget-object p1, p1, LO0/u;->r:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    return-void

    :pswitch_3
    check-cast v4, LO0/o;

    iget-object p1, v4, LO0/o;->w:LO0/u;

    iget-object v0, v4, LR0/T;->r:LR0/z;

    const/4 v1, -0x1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v4, LR0/T;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LR0/z;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, v4, LR0/T;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->D(LR0/T;)I

    move-result v2

    if-ne v2, v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v4, v4, LR0/T;->r:LR0/z;

    if-ne v4, v0, :cond_7

    move v1, v2

    :cond_7
    :goto_1
    iget-object v0, p1, LO0/u;->G:Landroid/view/View;

    if-nez v1, :cond_8

    iget-object v1, p1, LO0/u;->n:LO0/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1, v0}, LO0/u;->e(LR0/z;Landroid/view/View;)V

    goto :goto_2

    :cond_8
    if-ne v1, v3, :cond_9

    iget-object v1, p1, LO0/u;->p:LO0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1, v0}, LO0/u;->e(LR0/z;Landroid/view/View;)V

    goto :goto_2

    :cond_9
    iget-object p1, p1, LO0/u;->r:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_2
    return-void

    :pswitch_4
    check-cast v4, LO0/i;

    iget-object p1, v4, LO0/i;->f:LO0/u;

    iget-object v0, p1, LO0/u;->q0:LG/g0;

    if-eqz v0, :cond_b

    invoke-interface {v0, v1}, LG/g0;->S0(I)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    iget-object v0, p1, LO0/u;->q0:LG/g0;

    invoke-interface {v0}, LG/g0;->x0()LG/w0;

    move-result-object v0

    iget-object v1, p1, LO0/u;->q0:LG/g0;

    sget-object v4, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v0}, LG/w0;->a()LG/v0;

    move-result-object v0

    invoke-virtual {v0, v3}, LG/v0;->d(I)LG/v0;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, LG/v0;->l(IZ)LG/v0;

    move-result-object v0

    invoke-virtual {v0}, LG/v0;->b()LG/w0;

    move-result-object v0

    invoke-interface {v1, v0}, LG/g0;->n0(LG/w0;)V

    iget-object v0, p1, LO0/u;->m:LO0/p;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, LO0/p;->d:[Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object p1, p1, LO0/u;->r:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_b
    :goto_3
    return-void

    :pswitch_5
    check-cast v4, LO0/u;

    iget-boolean p1, v4, LO0/u;->r0:Z

    xor-int/2addr p1, v3

    invoke-virtual {v4, p1}, LO0/u;->o(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
