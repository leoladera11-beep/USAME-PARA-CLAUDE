.class public final synthetic LO0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LO0/h;->a:I

    iput-object p1, p0, LO0/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    iget v0, p0, LO0/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p3, p0, LO0/h;->b:Ljava/lang/Object;

    check-cast p3, LO0/z;

    iget-object p5, p3, LO0/z;->a:LO0/u;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p7

    invoke-virtual {p5}, Landroid/view/View;->getPaddingLeft()I

    move-result p9

    sub-int/2addr p7, p9

    invoke-virtual {p5}, Landroid/view/View;->getPaddingRight()I

    move-result p9

    sub-int/2addr p7, p9

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p9

    invoke-virtual {p5}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p9, v0

    invoke-virtual {p5}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    sub-int/2addr p9, p5

    iget-object p5, p3, LO0/z;->d:Landroid/view/ViewGroup;

    invoke-static {p5}, LO0/z;->c(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p5}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sub-int/2addr v0, v3

    if-nez p5, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    :cond_2
    :goto_1
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p5}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    add-int/2addr p5, v3

    goto :goto_2

    :cond_3
    move p5, v1

    :goto_2
    sub-int/2addr v2, p5

    iget-object p5, p3, LO0/z;->j:Landroid/view/ViewGroup;

    invoke-static {p5}, LO0/z;->c(Landroid/view/View;)I

    move-result p5

    iget-object v3, p3, LO0/z;->l:Landroid/view/View;

    invoke-static {v3}, LO0/z;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, p5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p5

    iget-object v0, p3, LO0/z;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_5

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v0

    add-int/2addr v3, v4

    :cond_5
    :goto_3
    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const/4 v0, 0x1

    if-le p7, p5, :cond_7

    if-gt p9, v3, :cond_6

    goto :goto_4

    :cond_6
    move p5, v1

    goto :goto_5

    :cond_7
    :goto_4
    move p5, v0

    :goto_5
    iget-boolean p7, p3, LO0/z;->B:Z

    if-eq p7, p5, :cond_8

    iput-boolean p5, p3, LO0/z;->B:Z

    new-instance p5, LO0/v;

    const/4 p7, 0x1

    invoke-direct {p5, p3, p7}, LO0/v;-><init>(LO0/z;I)V

    invoke-virtual {p1, p5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p4, p8, :cond_9

    move v1, v0

    :cond_9
    iget-boolean p2, p3, LO0/z;->B:Z

    if-nez p2, :cond_a

    if-eqz v1, :cond_a

    new-instance p2, LO0/v;

    const/4 p4, 0x2

    invoke-direct {p2, p3, p4}, LO0/v;-><init>(LO0/z;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void

    :pswitch_0
    iget-object v0, p0, LO0/h;->b:Ljava/lang/Object;

    check-cast v0, LO0/u;

    iget v1, v0, LO0/u;->s:I

    move v2, p2

    move-object p2, p1

    iget-object p1, v0, LO0/u;->r:Landroid/widget/PopupWindow;

    sub-int/2addr p4, v2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_b

    if-eq p5, p9, :cond_c

    :cond_b
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {v0}, LO0/u;->u()V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p4

    sub-int/2addr p3, p4

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p4

    neg-int p4, p4

    sub-int/2addr p4, v1

    const/4 p5, -0x1

    const/4 p6, -0x1

    invoke-virtual/range {p1 .. p6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
