.class public final LR0/u;
.super LR0/v;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(LR0/F;I)V
    .locals 0

    iput p2, p0, LR0/u;->d:I

    invoke-direct {p0, p1}, LR0/v;-><init>(LR0/F;)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;)I
    .locals 2

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-object v1, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v1, LR0/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LR0/G;

    iget-object p1, p1, LR0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr v1, p1

    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-object v1, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v1, LR0/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LR0/G;

    iget-object p1, p1, LR0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/view/View;)I
    .locals 3

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-object v1, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v1, LR0/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LR0/G;

    iget-object v1, v1, LR0/G;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-object v1, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v1, LR0/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LR0/G;

    iget-object v1, v1, LR0/G;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroid/view/View;)I
    .locals 3

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-object v1, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v1, LR0/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LR0/G;

    iget-object v1, v1, LR0/G;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-object v1, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v1, LR0/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LR0/G;

    iget-object v1, v1, LR0/G;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Landroid/view/View;)I
    .locals 2

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-object v1, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v1, LR0/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LR0/G;

    iget-object p1, p1, LR0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    sub-int/2addr v1, p1

    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-object v1, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v1, LR0/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LR0/G;

    iget-object p1, p1, LR0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()I
    .locals 1

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget v0, v0, LR0/F;->n:I

    return v0

    :pswitch_0
    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget v0, v0, LR0/F;->m:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()I
    .locals 2

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget v1, v0, LR0/F;->n:I

    invoke-virtual {v0}, LR0/F;->y()I

    move-result v0

    :goto_0
    sub-int/2addr v1, v0

    return v1

    :pswitch_0
    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget v1, v0, LR0/F;->m:I

    invoke-virtual {v0}, LR0/F;->A()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()I
    .locals 1

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    invoke-virtual {v0}, LR0/F;->y()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    invoke-virtual {v0}, LR0/F;->A()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k()I
    .locals 1

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget v0, v0, LR0/F;->l:I

    return v0

    :pswitch_0
    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget v0, v0, LR0/F;->k:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()I
    .locals 1

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget v0, v0, LR0/F;->k:I

    return v0

    :pswitch_0
    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget v0, v0, LR0/F;->l:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m()I
    .locals 1

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    invoke-virtual {v0}, LR0/F;->B()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    invoke-virtual {v0}, LR0/F;->z()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n()I
    .locals 3

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget v1, v0, LR0/F;->n:I

    invoke-virtual {v0}, LR0/F;->B()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, LR0/F;->y()I

    move-result v0

    :goto_0
    sub-int/2addr v1, v0

    return v1

    :pswitch_0
    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget v1, v0, LR0/F;->m:I

    invoke-virtual {v0}, LR0/F;->z()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, LR0/F;->A()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Landroid/view/View;)I
    .locals 2

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget-object v1, p0, LR0/v;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, LR0/F;->F(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    return p1

    :pswitch_0
    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget-object v1, p0, LR0/v;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, LR0/F;->F(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->right:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final p(Landroid/view/View;)I
    .locals 2

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget-object v1, p0, LR0/v;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, LR0/F;->F(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->top:I

    return p1

    :pswitch_0
    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget-object v1, p0, LR0/v;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, LR0/F;->F(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->left:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(I)V
    .locals 1

    iget v0, p0, LR0/u;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    invoke-virtual {v0, p1}, LR0/F;->K(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, LR0/F;

    invoke-virtual {v0, p1}, LR0/F;->J(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
