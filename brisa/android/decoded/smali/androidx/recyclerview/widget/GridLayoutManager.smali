.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public D:Z

.field public final E:I

.field public F:[I

.field public G:[Landroid/view/View;

.field public final H:Landroid/util/SparseIntArray;

.field public final I:Landroid/util/SparseIntArray;

.field public final J:LN0/O;

.field public final K:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->D:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    new-instance v0, LN0/O;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, LN0/O;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:LN0/O;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, LR0/F;->D(Landroid/content/Context;Landroid/util/AttributeSet;II)LR0/E;

    move-result-object p1

    iget p1, p1, LR0/E;->b:I

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->D:Z

    if-lt p1, p2, :cond_1

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    invoke-virtual {v0}, LN0/O;->V()V

    invoke-virtual {p0}, LR0/F;->h0()V

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Span count should be at least 1. Provided "

    invoke-static {p1, p3}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final E(LM0/s0;LR0/O;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-nez v0, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    return p1

    :cond_0
    invoke-virtual {p2}, LR0/O;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, LR0/O;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->Y0(ILM0/s0;LR0/O;)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final E0(LM0/s0;LR0/O;ZZ)Landroid/view/View;
    .locals 9

    invoke-virtual {p0}, LR0/F;->u()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, LR0/F;->u()I

    move-result p3

    sub-int/2addr p3, v0

    const/4 p4, -0x1

    move v0, p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    move v8, p4

    move p4, p3

    move p3, v8

    :goto_0
    invoke-virtual {p2}, LR0/O;->b()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0()V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v2}, LR0/v;->m()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3}, LR0/v;->h()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-eq p3, p4, :cond_6

    invoke-virtual {p0, p3}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, LR0/F;->C(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_5

    if-ge v7, v1, :cond_5

    invoke-virtual {p0, v7, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->Z0(ILM0/s0;LR0/O;)I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, LR0/G;

    iget-object v7, v7, LR0/G;->a:LR0/T;

    invoke-virtual {v7}, LR0/T;->g()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_3

    :cond_2
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v7, v6}, LR0/v;->f(Landroid/view/View;)I

    move-result v7

    if-ge v7, v3, :cond_4

    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v7, v6}, LR0/v;->c(Landroid/view/View;)I

    move-result v7

    if-ge v7, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v6

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    move-object v4, v6

    :cond_5
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    return-object v4

    :cond_7
    return-object v5
.end method

.method public final K0(LM0/s0;LR0/O;LR0/s;LP/l;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v5}, LR0/v;->l()I

    move-result v5

    const/4 v6, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v8, :cond_0

    move v9, v6

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v0}, LR0/F;->u()I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:[I

    iget v11, v0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    aget v10, v10, v11

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v9, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->c1()V

    :cond_2
    iget v11, v3, LR0/s;->e:I

    if-ne v11, v6, :cond_3

    move v11, v6

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    if-nez v11, :cond_4

    iget v12, v3, LR0/s;->d:I

    invoke-virtual {v0, v12, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->Z0(ILM0/s0;LR0/O;)I

    move-result v12

    iget v13, v3, LR0/s;->d:I

    invoke-virtual {v0, v13, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->a1(ILM0/s0;LR0/O;)I

    move-result v13

    add-int/2addr v13, v12

    :goto_3
    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    iget v13, v0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    goto :goto_3

    :goto_4
    iget v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    if-ge v12, v14, :cond_8

    iget v14, v3, LR0/s;->d:I

    if-ltz v14, :cond_8

    invoke-virtual {v2}, LR0/O;->b()I

    move-result v15

    if-ge v14, v15, :cond_8

    if-lez v13, :cond_8

    iget v14, v3, LR0/s;->d:I

    invoke-virtual {v0, v14, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->a1(ILM0/s0;LR0/O;)I

    move-result v15

    iget v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    if-gt v15, v8, :cond_7

    sub-int/2addr v13, v15

    if-gez v13, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3, v1}, LR0/s;->b(LM0/s0;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_6

    goto :goto_5

    :cond_6
    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[Landroid/view/View;

    aput-object v8, v14, v12

    add-int/lit8 v12, v12, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " spans but GridLayoutManager has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " spans."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_5
    if-nez v12, :cond_9

    iput-boolean v6, v4, LP/l;->b:Z

    return-void

    :cond_9
    if-eqz v11, :cond_a

    move v15, v6

    move v14, v12

    const/4 v13, 0x0

    goto :goto_6

    :cond_a
    add-int/lit8 v13, v12, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    :goto_6
    const/4 v6, 0x0

    :goto_7
    if-eq v13, v14, :cond_b

    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[Landroid/view/View;

    aget-object v7, v7, v13

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, LR0/q;

    invoke-static {v7}, LR0/F;->C(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v0, v7, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->a1(ILM0/s0;LR0/O;)I

    move-result v7

    iput v7, v8, LR0/q;->f:I

    iput v6, v8, LR0/q;->e:I

    add-int/2addr v6, v7

    add-int/2addr v13, v15

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_8
    if-ge v2, v12, :cond_12

    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[Landroid/view/View;

    aget-object v7, v7, v2

    iget-object v8, v3, LR0/s;->k:Ljava/util/List;

    if-nez v8, :cond_d

    if-eqz v11, :cond_c

    const/4 v8, -0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v7, v8, v13}, LR0/F;->a(Landroid/view/View;IZ)V

    goto :goto_9

    :cond_c
    const/4 v8, -0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v7, v13, v13}, LR0/F;->a(Landroid/view/View;IZ)V

    goto :goto_9

    :cond_d
    const/4 v8, -0x1

    const/4 v13, 0x0

    if-eqz v11, :cond_e

    const/4 v14, 0x1

    invoke-virtual {v0, v7, v8, v14}, LR0/F;->a(Landroid/view/View;IZ)V

    goto :goto_9

    :cond_e
    const/4 v14, 0x1

    invoke-virtual {v0, v7, v13, v14}, LR0/F;->a(Landroid/view/View;IZ)V

    :goto_9
    iget-object v8, v0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroid/graphics/Rect;

    if-nez v8, :cond_f

    invoke-virtual {v14, v13, v13, v13, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a

    :cond_f
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_a
    invoke-virtual {v0, v7, v5, v13}, Landroidx/recyclerview/widget/GridLayoutManager;->b1(Landroid/view/View;IZ)V

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v8, v7}, LR0/v;->d(Landroid/view/View;)I

    move-result v8

    if-le v8, v6, :cond_10

    move v6, v8

    :cond_10
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, LR0/q;

    iget-object v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v13, v7}, LR0/v;->e(Landroid/view/View;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v7, v13

    iget v8, v8, LR0/q;->f:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    cmpl-float v8, v7, v1

    if-lez v8, :cond_11

    move v1, v7

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    if-eqz v9, :cond_14

    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->V0(I)V

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v12, :cond_14

    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[Landroid/view/View;

    aget-object v1, v1, v13

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v14, 0x1

    invoke-virtual {v0, v1, v2, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->b1(Landroid/view/View;IZ)V

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v2, v1}, LR0/v;->d(Landroid/view/View;)I

    move-result v1

    if-le v1, v6, :cond_13

    move v6, v1

    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_14
    const/4 v13, 0x0

    :goto_c
    if-ge v13, v12, :cond_18

    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[Landroid/view/View;

    aget-object v1, v1, v13

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v2, v1}, LR0/v;->d(Landroid/view/View;)I

    move-result v2

    if-eq v2, v6, :cond_16

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, LR0/q;

    iget-object v5, v2, LR0/G;->b:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v5

    iget v5, v2, LR0/q;->e:I

    iget v9, v2, LR0/q;->f:I

    invoke-virtual {v0, v5, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->X0(II)I

    move-result v5

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v14, 0x1

    if-ne v9, v14, :cond_15

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v5, v10, v8, v2}, LR0/F;->v(ZIIII)I

    move-result v2

    sub-int v5, v6, v7

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_d

    :cond_15
    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    sub-int v8, v6, v8

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v9, v5, v10, v7, v2}, LR0/F;->v(ZIIII)I

    move-result v5

    move v2, v8

    :goto_d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, LR0/G;

    invoke-virtual {v0, v1, v2, v5, v7}, LR0/F;->r0(Landroid/view/View;IILR0/G;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    goto :goto_e

    :cond_16
    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    :cond_17
    :goto_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_18
    const/4 v9, 0x0

    iput v6, v4, LP/l;->a:I

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v14, 0x1

    if-ne v1, v14, :cond_1a

    iget v1, v3, LR0/s;->f:I

    const/4 v8, -0x1

    if-ne v1, v8, :cond_19

    iget v13, v3, LR0/s;->b:I

    sub-int v1, v13, v6

    move v3, v1

    move v1, v9

    move v2, v1

    goto :goto_10

    :cond_19
    iget v13, v3, LR0/s;->b:I

    add-int v1, v13, v6

    move v2, v9

    move v3, v13

    move v13, v1

    move v1, v2

    goto :goto_10

    :cond_1a
    const/4 v8, -0x1

    iget v1, v3, LR0/s;->f:I

    if-ne v1, v8, :cond_1b

    iget v13, v3, LR0/s;->b:I

    sub-int v1, v13, v6

    move v3, v9

    move v2, v13

    :goto_f
    move v13, v3

    goto :goto_10

    :cond_1b
    iget v13, v3, LR0/s;->b:I

    add-int v1, v13, v6

    move v2, v1

    move v3, v9

    move v1, v13

    goto :goto_f

    :goto_10
    move v7, v9

    :goto_11
    if-ge v7, v12, :cond_20

    iget-object v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[Landroid/view/View;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, LR0/q;

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v14, 0x1

    if-ne v8, v14, :cond_1d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, LR0/F;->z()I

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:[I

    iget v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    iget v9, v6, LR0/q;->e:I

    sub-int/2addr v8, v9

    aget v2, v2, v8

    add-int/2addr v1, v2

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v2, v5}, LR0/v;->e(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    goto :goto_12

    :cond_1c
    invoke-virtual {v0}, LR0/F;->z()I

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:[I

    iget v8, v6, LR0/q;->e:I

    aget v2, v2, v8

    add-int/2addr v1, v2

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v2, v5}, LR0/v;->e(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_12

    :cond_1d
    invoke-virtual {v0}, LR0/F;->B()I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:[I

    iget v9, v6, LR0/q;->e:I

    aget v8, v8, v9

    add-int/2addr v3, v8

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v8, v5}, LR0/v;->e(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v3

    move v13, v8

    :goto_12
    invoke-static {v5, v1, v3, v2, v13}, LR0/F;->I(Landroid/view/View;IIII)V

    iget-object v8, v6, LR0/G;->a:LR0/T;

    invoke-virtual {v8}, LR0/T;->g()Z

    move-result v8

    if-nez v8, :cond_1e

    iget-object v6, v6, LR0/G;->a:LR0/T;

    invoke-virtual {v6}, LR0/T;->j()Z

    move-result v6

    if-eqz v6, :cond_1f

    :cond_1e
    const/4 v14, 0x1

    goto :goto_13

    :cond_1f
    const/4 v14, 0x1

    goto :goto_14

    :goto_13
    iput-boolean v14, v4, LP/l;->c:Z

    :goto_14
    iget-boolean v6, v4, LP/l;->d:Z

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    or-int/2addr v5, v6

    iput-boolean v5, v4, LP/l;->d:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_20
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final L0(LM0/s0;LR0/O;LI0/w;I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->c1()V

    invoke-virtual {p2}, LR0/O;->b()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p2, LR0/O;->f:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget v1, p3, LI0/w;->c:I

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->Z0(ILM0/s0;LR0/O;)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget p4, p3, LI0/w;->c:I

    if-lez p4, :cond_3

    add-int/lit8 p4, p4, -0x1

    iput p4, p3, LI0/w;->c:I

    invoke-virtual {p0, p4, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->Z0(ILM0/s0;LR0/O;)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, LR0/O;->b()I

    move-result p4

    sub-int/2addr p4, v0

    iget v0, p3, LI0/w;->c:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->Z0(ILM0/s0;LR0/O;)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_2
    iput v0, p3, LI0/w;->c:I

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->W0()V

    return-void
.end method

.method public final N(Landroid/view/View;ILM0/s0;LR0/O;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object/from16 v5, p1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v0, LR0/F;->a:LB/A;

    iget-object v6, v6, LB/A;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_0
    move-object v3, v4

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, LR0/q;

    iget v7, v6, LR0/q;->e:I

    iget v6, v6, LR0/q;->f:I

    add-int/2addr v6, v7

    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->N(Landroid/view/View;ILM0/s0;LR0/O;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    :goto_1
    return-object v4

    :cond_4
    move/from16 v5, p2

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    move v5, v9

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    const/4 v11, -0x1

    if-eq v5, v10, :cond_6

    invoke-virtual {v0}, LR0/F;->u()I

    move-result v5

    sub-int/2addr v5, v9

    move v10, v11

    move v12, v10

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, LR0/F;->u()I

    move-result v5

    move v10, v5

    move v12, v9

    const/4 v5, 0x0

    :goto_3
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-ne v13, v9, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()Z

    move-result v13

    if-eqz v13, :cond_7

    move v13, v9

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v0, v5, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->Y0(ILM0/s0;LR0/O;)I

    move-result v14

    move-object/from16 v16, v4

    move v8, v11

    move v15, v8

    const/4 v9, 0x0

    move v11, v5

    const/4 v4, 0x0

    move-object/from16 v5, v16

    :goto_5
    move-object/from16 v17, v5

    if-eq v11, v10, :cond_18

    invoke-virtual {v0, v11, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->Y0(ILM0/s0;LR0/O;)I

    move-result v5

    invoke-virtual {v0, v11}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_8

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_a

    if-eq v5, v14, :cond_a

    if-eqz v16, :cond_9

    goto/16 :goto_c

    :cond_9
    move-object/from16 v18, v3

    move/from16 v19, v9

    move/from16 v21, v10

    goto/16 :goto_a

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, LR0/q;

    iget v2, v5, LR0/q;->e:I

    move-object/from16 v18, v3

    iget v3, v5, LR0/q;->f:I

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_b

    if-ne v2, v7, :cond_b

    if-ne v3, v6, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_c

    if-eqz v16, :cond_d

    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_e

    if-nez v17, :cond_e

    :cond_d
    move/from16 v19, v9

    move/from16 v21, v10

    goto :goto_9

    :cond_e
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v21, v10

    sub-int v10, v20, v19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_12

    if-le v10, v9, :cond_f

    :goto_6
    move/from16 v19, v9

    goto :goto_9

    :cond_f
    if-ne v10, v9, :cond_11

    if-le v2, v15, :cond_10

    const/4 v10, 0x1

    goto :goto_7

    :cond_10
    const/4 v10, 0x0

    :goto_7
    if-ne v13, v10, :cond_11

    goto :goto_6

    :cond_11
    move/from16 v19, v9

    goto :goto_a

    :cond_12
    if-nez v16, :cond_11

    move/from16 v19, v9

    iget-object v9, v0, LR0/F;->c:LN0/O;

    invoke-virtual {v9, v1}, LN0/O;->X(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, v0, LR0/F;->d:LN0/O;

    invoke-virtual {v9, v1}, LN0/O;->X(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_13

    goto :goto_a

    :cond_13
    if-le v10, v4, :cond_14

    goto :goto_9

    :cond_14
    if-ne v10, v4, :cond_17

    if-le v2, v8, :cond_15

    const/4 v9, 0x1

    goto :goto_8

    :cond_15
    const/4 v9, 0x0

    :goto_8
    if-ne v13, v9, :cond_17

    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_16

    iget v5, v5, LR0/q;->e:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v9, v3, v2

    move-object/from16 v16, v1

    move v15, v5

    move-object/from16 v5, v17

    goto :goto_b

    :cond_16
    iget v4, v5, LR0/q;->e:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v3, v2

    move-object v5, v1

    move v8, v4

    move/from16 v9, v19

    move v4, v2

    goto :goto_b

    :cond_17
    :goto_a
    move-object/from16 v5, v17

    move/from16 v9, v19

    :goto_b
    add-int/2addr v11, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    move/from16 v10, v21

    goto/16 :goto_5

    :cond_18
    :goto_c
    if-eqz v16, :cond_19

    return-object v16

    :cond_19
    return-object v17
.end method

.method public final P(LM0/s0;LR0/O;Lt/d;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, LR0/F;->P(LM0/s0;LR0/O;Lt/d;)V

    const-class p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p3, Lt/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final Q(LM0/s0;LR0/O;Landroid/view/View;Lt/d;)V
    .locals 8

    iget-object v0, p4, Lt/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, LR0/q;

    if-nez v2, :cond_0

    invoke-virtual {p0, p3, p4}, LR0/F;->R(Landroid/view/View;Lt/d;)V

    return-void

    :cond_0
    check-cast v1, LR0/q;

    iget-object p3, v1, LR0/G;->a:LR0/T;

    invoke-virtual {p3}, LR0/T;->b()I

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->Y0(ILM0/s0;LR0/O;)I

    move-result v2

    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-nez p1, :cond_1

    move v4, v2

    iget v2, v1, LR0/q;->e:I

    iget v3, v1, LR0/q;->f:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void

    :cond_1
    move v4, v2

    iget p1, v1, LR0/q;->e:I

    iget v5, v1, LR0/q;->f:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    move v4, p1

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public final R0(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final S(II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:LN0/O;

    invoke-virtual {p1}, LN0/O;->V()V

    iget-object p1, p1, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final T()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:LN0/O;

    invoke-virtual {v0}, LN0/O;->V()V

    iget-object v0, v0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final U(II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:LN0/O;

    invoke-virtual {p1}, LN0/O;->V()V

    iget-object p1, p1, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final V(II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:LN0/O;

    invoke-virtual {p1}, LN0/O;->V()V

    iget-object p1, p1, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final V0(I)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v3, v0

    add-int/lit8 v4, v1, 0x1

    if-ne v3, v4, :cond_0

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v3, v0, v3

    if-eq v3, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    :cond_1
    const/4 v3, 0x0

    aput v3, v0, v3

    div-int v4, p1, v1

    rem-int/2addr p1, v1

    move v5, v3

    :goto_0
    if-gt v2, v1, :cond_3

    add-int/2addr v3, p1

    if-lez v3, :cond_2

    sub-int v6, v1, v3

    if-ge v6, p1, :cond_2

    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    add-int/2addr v5, v6

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:[I

    return-void
.end method

.method public final W(II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:LN0/O;

    invoke-virtual {p1}, LN0/O;->V()V

    iget-object p1, p1, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final W0()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[Landroid/view/View;

    if-eqz v0, :cond_1

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[Landroid/view/View;

    return-void
.end method

.method public final X(LM0/s0;LR0/O;)V
    .locals 7

    iget-boolean v0, p2, LR0/O;->f:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LR0/q;

    iget-object v5, v4, LR0/G;->a:LR0/T;

    invoke-virtual {v5}, LR0/T;->b()I

    move-result v5

    iget v6, v4, LR0/q;->f:I

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    iget v4, v4, LR0/q;->e:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->X(LM0/s0;LR0/O;)V

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final X0(II)I
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget p1, v0, v1

    sub-int/2addr v2, p1

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public final Y(LR0/O;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y(LR0/O;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->D:Z

    return-void
.end method

.method public final Y0(ILM0/s0;LR0/O;)I
    .locals 1

    iget-boolean p3, p3, LR0/O;->f:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:LN0/O;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    invoke-static {p1, p2}, LN0/O;->T(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2, p1}, LM0/s0;->d(I)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot find span size for pre layout position. "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    invoke-static {p2, p1}, LN0/O;->T(II)I

    move-result p1

    return p1
.end method

.method public final Z0(ILM0/s0;LR0/O;)I
    .locals 2

    iget-boolean p3, p3, LR0/O;->f:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:LN0/O;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    rem-int/2addr p1, p2

    return p1

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-eq p3, v1, :cond_1

    return p3

    :cond_1
    invoke-virtual {p2, p1}, LM0/s0;->d(I)I

    move-result p2

    if-ne p2, v1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    rem-int/2addr p2, p1

    return p2
.end method

.method public final a1(ILM0/s0;LR0/O;)I
    .locals 3

    iget-boolean p3, p3, LR0/O;->f:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:LN0/O;

    const/4 v1, 0x1

    if-nez p3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {p3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-eq p3, v2, :cond_1

    return p3

    :cond_1
    invoke-virtual {p2, p1}, LM0/s0;->d(I)I

    move-result p2

    if-ne p2, v2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1
.end method

.method public final b1(Landroid/view/View;IZ)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/q;

    iget-object v1, v0, LR0/G;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, LR0/q;->e:I

    iget v4, v0, LR0/q;->f:I

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->X0(II)I

    move-result v1

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v5, v1, p2, v3, v4}, LR0/F;->v(ZIIII)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->n()I

    move-result v1

    iget v3, p0, LR0/F;->l:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v6, v1, v3, v2, v0}, LR0/F;->v(ZIIII)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v5, v1, p2, v2, v4}, LR0/F;->v(ZIIII)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->n()I

    move-result v1

    iget v2, p0, LR0/F;->k:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v6, v1, v2, v3, v0}, LR0/F;->v(ZIIII)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LR0/G;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, v0, v1}, LR0/F;->r0(Landroid/view/View;IILR0/G;)Z

    move-result p3

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, LR0/F;->p0(Landroid/view/View;IILR0/G;)Z

    move-result p3

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public final c1()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, LR0/F;->m:I

    invoke-virtual {p0}, LR0/F;->A()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, LR0/F;->z()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_0
    iget v0, p0, LR0/F;->n:I

    invoke-virtual {p0}, LR0/F;->y()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, LR0/F;->B()I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->V0(I)V

    return-void
.end method

.method public final e(LR0/G;)Z
    .locals 0

    instance-of p1, p1, LR0/q;

    return p1
.end method

.method public final i0(ILM0/s0;LR0/O;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->c1()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->W0()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->i0(ILM0/s0;LR0/O;)I

    move-result p1

    return p1
.end method

.method public final j(LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->v0(LR0/O;)I

    move-result p1

    return p1
.end method

.method public final j0(ILM0/s0;LR0/O;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->c1()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->W0()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->j0(ILM0/s0;LR0/O;)I

    move-result p1

    return p1
.end method

.method public final k(LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->w0(LR0/O;)I

    move-result p1

    return p1
.end method

.method public final m(LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->v0(LR0/O;)I

    move-result p1

    return p1
.end method

.method public final m0(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, LR0/F;->m0(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, LR0/F;->z()I

    move-result v0

    invoke-virtual {p0}, LR0/F;->A()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, LR0/F;->B()I

    move-result v0

    invoke-virtual {p0}, LR0/F;->y()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v0}, Ls/g;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, LR0/F;->f(III)I

    move-result p1

    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:[I

    array-length v0, p3

    sub-int/2addr v0, v3

    aget p3, p3, v0

    add-int/2addr p3, v1

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ls/g;->e(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, p3, v0}, LR0/F;->f(III)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v0}, Ls/g;->e(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, p1, v0}, LR0/F;->f(III)I

    move-result p2

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v2

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ls/g;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, LR0/F;->f(III)I

    move-result p1

    :goto_0
    iget-object p3, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public final n(LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->w0(LR0/O;)I

    move-result p1

    return p1
.end method

.method public final q()LR0/G;
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    new-instance v0, LR0/q;

    invoke-direct {v0, v2, v1}, LR0/q;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, LR0/q;

    invoke-direct {v0, v1, v2}, LR0/q;-><init>(II)V

    return-object v0
.end method

.method public final r(Landroid/content/Context;Landroid/util/AttributeSet;)LR0/G;
    .locals 1

    new-instance v0, LR0/q;

    invoke-direct {v0, p1, p2}, LR0/G;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, v0, LR0/q;->e:I

    const/4 p1, 0x0

    iput p1, v0, LR0/q;->f:I

    return-object v0
.end method

.method public final s(Landroid/view/ViewGroup$LayoutParams;)LR0/G;
    .locals 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    new-instance v0, LR0/q;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, LR0/G;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput v2, v0, LR0/q;->e:I

    iput v1, v0, LR0/q;->f:I

    return-object v0

    :cond_0
    new-instance v0, LR0/q;

    invoke-direct {v0, p1}, LR0/G;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v2, v0, LR0/q;->e:I

    iput v1, v0, LR0/q;->f:I

    return-object v0
.end method

.method public final s0()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->D:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t0(LR0/O;LR0/s;LJ/f;)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    if-ge v2, v3, :cond_0

    iget v3, p2, LR0/s;->d:I

    if-ltz v3, :cond_0

    invoke-virtual {p1}, LR0/O;->b()I

    move-result v4

    if-ge v3, v4, :cond_0

    if-lez v0, :cond_0

    iget v3, p2, LR0/s;->d:I

    iget v4, p2, LR0/s;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p3, v3, v4}, LJ/f;->b(II)V

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:LN0/O;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, -0x1

    iget v3, p2, LR0/s;->d:I

    iget v4, p2, LR0/s;->e:I

    add-int/2addr v3, v4

    iput v3, p2, LR0/s;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(LM0/s0;LR0/O;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:I

    return p1

    :cond_0
    invoke-virtual {p2}, LR0/O;->b()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, LR0/O;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->Y0(ILM0/s0;LR0/O;)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method
