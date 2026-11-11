.class public final LO0/x;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LO0/z;


# direct methods
.method public synthetic constructor <init>(LO0/z;I)V
    .locals 0

    iput p2, p0, LO0/x;->a:I

    iput-object p1, p0, LO0/x;->b:LO0/z;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, LO0/x;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_1
    iget-object p1, p0, LO0/x;->b:LO0/z;

    iget-object p1, p1, LO0/z;->i:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_2
    iget-object p1, p0, LO0/x;->b:LO0/z;

    iget-object p1, p1, LO0/z;->g:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_3
    iget-object p1, p0, LO0/x;->b:LO0/z;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LO0/z;->i(I)V

    return-void

    :pswitch_4
    iget-object p1, p0, LO0/x;->b:LO0/z;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LO0/z;->i(I)V

    return-void

    :pswitch_5
    iget-object p1, p0, LO0/x;->b:LO0/z;

    iget-object v0, p1, LO0/z;->b:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p1, LO0/z;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p1, LO0/z;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p1, LO0/z;->f:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 8

    iget p1, p0, LO0/x;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-wide/16 v2, 0xfa

    const/4 v4, 0x4

    const/4 v5, 0x0

    iget-object v6, p0, LO0/x;->b:LO0/z;

    packed-switch p1, :pswitch_data_0

    iget-object p1, v6, LO0/z;->g:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, v6, LO0/z;->i:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v6, LO0/z;->i:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, v6, LO0/z;->i:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0, v5}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {v6, v4}, LO0/z;->i(I)V

    return-void

    :pswitch_2
    invoke-virtual {v6, v4}, LO0/z;->i(I)V

    return-void

    :pswitch_3
    iget-object p1, v6, LO0/z;->b:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, v6, LO0/z;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, v6, LO0/z;->d:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, v6, LO0/z;->f:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    iget-boolean v7, v6, LO0/z;->B:Z

    if-eqz v7, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p1, v6, LO0/z;->k:Landroid/view/View;

    instance-of v4, p1, LO0/f;

    if-eqz v4, :cond_8

    iget-boolean v4, v6, LO0/z;->B:Z

    if-nez v4, :cond_8

    check-cast p1, LO0/f;

    iget-object v4, p1, LO0/f;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    iput-boolean v5, p1, LO0/f;->G:Z

    iget p1, p1, LO0/f;->F:F

    new-array v1, v1, [F

    aput p1, v1, v5

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v1, v0

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    return-void

    :pswitch_4
    iget-object p1, v6, LO0/z;->k:Landroid/view/View;

    instance-of v4, p1, LO0/f;

    if-eqz v4, :cond_a

    iget-boolean v4, v6, LO0/z;->B:Z

    if-nez v4, :cond_a

    check-cast p1, LO0/f;

    iget-object v4, p1, LO0/f;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    iget p1, p1, LO0/f;->F:F

    new-array v1, v1, [F

    aput p1, v1, v5

    const/4 p1, 0x0

    aput p1, v1, v0

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
