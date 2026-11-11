.class public final synthetic LO0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LO0/w;->a:I

    iput-object p1, p0, LO0/w;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, LO0/w;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LO0/w;->b:Ljava/lang/Object;

    check-cast v0, LO0/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, LO0/f;->F:F

    iget-object p1, v0, LO0/f;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LO0/w;->b:Ljava/lang/Object;

    check-cast v0, LO0/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, v0, LO0/z;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v1, v0, LO0/z;->c:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v1, v0, LO0/z;->d:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v0, v0, LO0/z;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void

    :pswitch_1
    iget-object v0, p0, LO0/w;->b:Ljava/lang/Object;

    check-cast v0, LO0/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, LO0/z;->a(F)V

    return-void

    :pswitch_2
    iget-object v0, p0, LO0/w;->b:Ljava/lang/Object;

    check-cast v0, LO0/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, LO0/z;->a(F)V

    return-void

    :pswitch_3
    iget-object v0, p0, LO0/w;->b:Ljava/lang/Object;

    check-cast v0, LO0/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, v0, LO0/z;->b:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v1, v0, LO0/z;->c:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object v1, v0, LO0/z;->d:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iget-object v0, v0, LO0/z;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
