.class public abstract LR0/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LB/A;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:LN0/O;

.field public final d:LN0/O;

.field public e:Z

.field public f:Z

.field public final g:Z

.field public final h:Z

.field public i:I

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LZ0/i;

    invoke-direct {v0, p0}, LZ0/i;-><init>(Ljava/lang/Object;)V

    new-instance v1, La1/g;

    invoke-direct {v1, p0}, La1/g;-><init>(Ljava/lang/Object;)V

    new-instance v2, LN0/O;

    invoke-direct {v2, v0}, LN0/O;-><init>(LR0/b0;)V

    iput-object v2, p0, LR0/F;->c:LN0/O;

    new-instance v0, LN0/O;

    invoke-direct {v0, v1}, LN0/O;-><init>(LR0/b0;)V

    iput-object v0, p0, LR0/F;->d:LN0/O;

    const/4 v0, 0x0

    iput-boolean v0, p0, LR0/F;->e:Z

    iput-boolean v0, p0, LR0/F;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LR0/F;->g:Z

    iput-boolean v0, p0, LR0/F;->h:Z

    return-void
.end method

.method public static C(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, LR0/G;

    iget-object p0, p0, LR0/G;->a:LR0/T;

    invoke-virtual {p0}, LR0/T;->b()I

    move-result p0

    return p0
.end method

.method public static D(Landroid/content/Context;Landroid/util/AttributeSet;II)LR0/E;
    .locals 2

    new-instance v0, LR0/E;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, LQ0/a;->a:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v0, LR0/E;->a:I

    const/16 p3, 0xa

    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, LR0/E;->b:I

    const/16 p2, 0x9

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v0, LR0/E;->c:Z

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, LR0/E;->d:Z

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static H(III)Z
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public static I(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-object v1, v0, LR0/G;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static f(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static v(ZIIII)I
    .locals 4

    sub-int/2addr p1, p3

    const/4 p3, 0x0

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p0, :cond_2

    if-ltz p4, :cond_0

    :goto_0
    move p2, v3

    goto :goto_2

    :cond_0
    if-ne p4, v1, :cond_1

    if-eq p2, v2, :cond_4

    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_4

    :cond_1
    move p2, p3

    move p4, p2

    goto :goto_2

    :cond_2
    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    if-ne p4, v1, :cond_5

    :cond_4
    move p4, p1

    goto :goto_2

    :cond_5
    if-ne p4, v0, :cond_1

    if-eq p2, v2, :cond_7

    if-ne p2, v3, :cond_6

    goto :goto_1

    :cond_6
    move p4, p1

    move p2, p3

    goto :goto_2

    :cond_7
    :goto_1
    move p4, p1

    move p2, v2

    :goto_2
    invoke-static {p4, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static x(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->w0:[I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-object v1, v0, LR0/G;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public E(LM0/s0;LR0/O;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final F(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-object v0, v0, LR0/G;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/RectF;

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public abstract G()Z
.end method

.method public J(I)V
    .locals 4

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v1}, LB/A;->y()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v3, v2}, LB/A;->x(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K(I)V
    .locals 4

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v1}, LB/A;->y()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v3, v2}, LB/A;->x(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public L()V
    .locals 0

    return-void
.end method

.method public abstract M(Landroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public abstract N(Landroid/view/View;ILM0/s0;LR0/O;)Landroid/view/View;
.end method

.method public O(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LR0/z;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public P(LM0/s0;LR0/O;Lt/d;)V
    .locals 3

    iget-object p3, p3, Lt/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, LR0/F;->E(LM0/s0;LR0/O;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, LR0/F;->w(LM0/s0;LR0/O;)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public Q(LM0/s0;LR0/O;Landroid/view/View;Lt/d;)V
    .locals 0

    return-void
.end method

.method public final R(Landroid/view/View;Lt/d;)V
    .locals 2

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LR0/T;->g()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LR0/F;->a:LB/A;

    iget-object v0, v0, LR0/T;->a:Landroid/view/View;

    iget-object v1, v1, LB/A;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    invoke-virtual {p0, v1, v0, p1, p2}, LR0/F;->Q(LM0/s0;LR0/O;Landroid/view/View;Lt/d;)V

    :cond_0
    return-void
.end method

.method public S(II)V
    .locals 0

    return-void
.end method

.method public T()V
    .locals 0

    return-void
.end method

.method public U(II)V
    .locals 0

    return-void
.end method

.method public V(II)V
    .locals 0

    return-void
.end method

.method public W(II)V
    .locals 0

    return-void
.end method

.method public abstract X(LM0/s0;LR0/O;)V
.end method

.method public abstract Y(LR0/O;)V
.end method

.method public abstract Z(Landroid/os/Parcelable;)V
.end method

.method public final a(Landroid/view/View;IZ)V
    .locals 8

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_1

    invoke-virtual {v0}, LR0/T;->g()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->g:LN0/O;

    invoke-virtual {p3, v0}, LN0/O;->e0(LR0/T;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->g:LN0/O;

    iget-object p3, p3, LN0/O;->f:Ljava/lang/Object;

    check-cast p3, Lh/j;

    invoke-virtual {p3, v0, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR0/c0;

    if-nez v3, :cond_2

    invoke-static {}, LR0/c0;->a()LR0/c0;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget p3, v3, LR0/c0;->a:I

    or-int/2addr p3, v2

    iput p3, v3, LR0/c0;->a:I

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, LR0/G;

    invoke-virtual {v0}, LR0/T;->o()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_c

    invoke-virtual {v0}, LR0/T;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v5, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v3, v5, :cond_b

    iget-object v3, p0, LR0/F;->a:LB/A;

    iget-object v5, v3, LB/A;->g:Ljava/lang/Object;

    check-cast v5, LR0/b;

    iget-object v3, v3, LB/A;->f:Ljava/lang/Object;

    check-cast v3, LR0/y;

    iget-object v3, v3, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    :goto_2
    move v3, v6

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v3}, LR0/b;->i(I)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v3}, LR0/b;->g(I)I

    move-result v5

    sub-int/2addr v3, v5

    :goto_3
    if-ne p2, v6, :cond_6

    iget-object p2, p0, LR0/F;->a:LB/A;

    invoke-virtual {p2}, LB/A;->y()I

    move-result p2

    :cond_6
    if-eq v3, v6, :cond_a

    if-eq v3, p2, :cond_e

    iget-object p1, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {p1, v3}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {p1, v3}, LR0/F;->t(I)Landroid/view/View;

    iget-object v6, p1, LR0/F;->a:LB/A;

    invoke-virtual {v6, v3}, LB/A;->u(I)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LR0/G;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v6

    invoke-virtual {v6}, LR0/T;->g()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p1, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->g:LN0/O;

    iget-object v7, v7, LN0/O;->f:Ljava/lang/Object;

    check-cast v7, Lh/j;

    invoke-virtual {v7, v6, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR0/c0;

    if-nez v1, :cond_7

    invoke-static {}, LR0/c0;->a()LR0/c0;

    move-result-object v1

    invoke-virtual {v7, v6, v1}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget v7, v1, LR0/c0;->a:I

    or-int/2addr v2, v7

    iput v2, v1, LR0/c0;->a:I

    goto :goto_4

    :cond_8
    iget-object v1, p1, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->g:LN0/O;

    invoke-virtual {v1, v6}, LN0/O;->e0(LR0/T;)V

    :goto_4
    iget-object p1, p1, LR0/F;->a:LB/A;

    invoke-virtual {v6}, LR0/T;->g()Z

    move-result v1

    invoke-virtual {p1, v5, p2, v3, v1}, LB/A;->r(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_7

    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot move a child from non-existing index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p1, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    iget-object v1, p0, LR0/F;->a:LB/A;

    invoke-virtual {v1, p1, p2, v4}, LB/A;->q(Landroid/view/View;IZ)V

    iput-boolean v2, p3, LR0/G;->c:Z

    goto :goto_7

    :cond_c
    :goto_5
    invoke-virtual {v0}, LR0/T;->h()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, LR0/T;->m:LM0/s0;

    invoke-virtual {v1, v0}, LM0/s0;->n(LR0/T;)V

    goto :goto_6

    :cond_d
    iget v1, v0, LR0/T;->i:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, LR0/T;->i:I

    :goto_6
    iget-object v1, p0, LR0/F;->a:LB/A;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2, v4}, LB/A;->r(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_e
    :goto_7
    iget-boolean p1, p3, LR0/G;->d:Z

    if-eqz p1, :cond_f

    iget-object p1, v0, LR0/T;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iput-boolean v4, p3, LR0/G;->d:Z

    :cond_f
    return-void
.end method

.method public abstract a0()Landroid/os/Parcelable;
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public b0(I)V
    .locals 0

    return-void
.end method

.method public abstract c()Z
.end method

.method public final c0(LM0/s0;)V
    .locals 2

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v1

    invoke-virtual {v1}, LR0/T;->n()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, LR0/F;->f0(I)V

    invoke-virtual {p1, v1}, LM0/s0;->j(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract d()Z
.end method

.method public final d0(LM0/s0;)V
    .locals 7

    iget-object v0, p1, LM0/s0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR0/T;

    iget-object v3, v3, LR0/T;->a:Landroid/view/View;

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v4

    invoke-virtual {v4}, LR0/T;->n()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, LR0/T;->m(Z)V

    invoke-virtual {v4}, LR0/T;->i()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v6, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v4}, LR0/D;->d(LR0/T;)V

    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, LR0/T;->m(Z)V

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, LR0/T;->m:LM0/s0;

    iput-boolean v5, v3, LR0/T;->n:Z

    iget v4, v3, LR0/T;->i:I

    and-int/lit8 v4, v4, -0x21

    iput v4, v3, LR0/T;->i:I

    invoke-virtual {p1, v3}, LM0/s0;->k(LR0/T;)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, LM0/s0;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v1, :cond_5

    iget-object p1, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public e(LR0/G;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e0(Landroid/view/View;LM0/s0;)V
    .locals 4

    iget-object v0, p0, LR0/F;->a:LB/A;

    iget-object v1, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, LR0/y;

    iget-object v2, v1, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v3, LR0/b;

    invoke-virtual {v3, v2}, LR0/b;->n(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, p1}, LB/A;->T(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v1, v2}, LR0/y;->a(I)V

    :goto_0
    invoke-virtual {p2, p1}, LM0/s0;->j(Landroid/view/View;)V

    return-void
.end method

.method public final f0(I)V
    .locals 4

    invoke-virtual {p0, p1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LR0/F;->a:LB/A;

    invoke-virtual {v0, p1}, LB/A;->C(I)I

    move-result p1

    iget-object v1, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, LR0/y;

    iget-object v2, v1, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v3, LR0/b;

    invoke-virtual {v3, p1}, LR0/b;->n(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, LB/A;->T(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v1, p1}, LR0/y;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract g(IILR0/O;LJ/f;)V
.end method

.method public final g0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 8

    invoke-virtual {p0}, LR0/F;->z()I

    move-result v0

    invoke-virtual {p0}, LR0/F;->B()I

    move-result v1

    iget v2, p0, LR0/F;->m:I

    invoke-virtual {p0}, LR0/F;->A()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, LR0/F;->n:I

    invoke-virtual {p0}, LR0/F;->y()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v5, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v5

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr p2, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p3, v3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object v3, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v7, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v3}, Ls/h;->d(Landroid/view/View;)I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_0
    move v2, v6

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    filled-new-array {v2, v1}, [I

    move-result-object p2

    aget p3, p2, v0

    aget p2, p2, v7

    if-eqz p5, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, LR0/F;->z()I

    move-result v1

    invoke-virtual {p0}, LR0/F;->B()I

    move-result v2

    iget v3, p0, LR0/F;->m:I

    invoke-virtual {p0}, LR0/F;->A()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, LR0/F;->n:I

    invoke-virtual {p0}, LR0/F;->y()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-static {p5, v5}, LR0/F;->x(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p3

    if-ge p5, v3, :cond_6

    iget p5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    if-le p5, v1, :cond_6

    iget p5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p2

    if-ge p5, v4, :cond_6

    iget p5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p2

    if-gt p5, v2, :cond_5

    goto :goto_3

    :cond_5
    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    return v0

    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return v7

    :cond_8
    invoke-virtual {p1, p3, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->X(IIZ)V

    return v7
.end method

.method public h(ILJ/f;)V
    .locals 0

    return-void
.end method

.method public final h0()V
    .locals 1

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public abstract i(LR0/O;)I
.end method

.method public abstract i0(ILM0/s0;LR0/O;)I
.end method

.method public abstract j(LR0/O;)I
.end method

.method public abstract j0(ILM0/s0;LR0/O;)I
.end method

.method public abstract k(LR0/O;)I
.end method

.method public final k0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, LR0/F;->l0(II)V

    return-void
.end method

.method public abstract l(LR0/O;)I
.end method

.method public final l0(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, LR0/F;->m:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, LR0/F;->k:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->y0:Z

    if-nez p1, :cond_0

    iput v0, p0, LR0/F;->m:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, LR0/F;->n:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, LR0/F;->l:I

    if-nez p1, :cond_1

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->y0:Z

    if-nez p1, :cond_1

    iput v0, p0, LR0/F;->n:I

    :cond_1
    return-void
.end method

.method public abstract m(LR0/O;)I
.end method

.method public m0(Landroid/graphics/Rect;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, LR0/F;->z()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, LR0/F;->A()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, LR0/F;->B()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, LR0/F;->y()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v1, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v1}, Ls/g;->e(Landroid/view/View;)I

    move-result v1

    invoke-static {p2, v0, v1}, LR0/F;->f(III)I

    move-result p2

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ls/g;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, LR0/F;->f(III)I

    move-result p1

    iget-object p3, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public abstract n(LR0/O;)I
.end method

.method public final n0(II)V
    .locals 8

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->l(II)V

    return-void

    :cond_0
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    if-ge v5, v0, :cond_5

    invoke-virtual {p0, v5}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-static {v6, v7}, LR0/F;->x(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    move v3, v6

    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v1, :cond_2

    move v1, v6

    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v4, :cond_3

    move v4, v6

    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v2, :cond_4

    move v2, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, LR0/F;->m0(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public final o(LM0/s0;)V
    .locals 4

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v2

    invoke-virtual {v2}, LR0/T;->n()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, LR0/T;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, LR0/T;->g()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, LR0/F;->f0(I)V

    invoke-virtual {p1, v2}, LM0/s0;->k(LR0/T;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, LR0/F;->t(I)Landroid/view/View;

    iget-object v3, p0, LR0/F;->a:LB/A;

    invoke-virtual {v3, v0}, LB/A;->u(I)V

    invoke-virtual {p1, v1}, LM0/s0;->l(Landroid/view/View;)V

    iget-object v1, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->g:LN0/O;

    invoke-virtual {v1, v2}, LN0/O;->e0(LR0/T;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final o0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, LR0/F;->a:LB/A;

    const/4 p1, 0x0

    iput p1, p0, LR0/F;->m:I

    iput p1, p0, LR0/F;->n:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    iput-object v0, p0, LR0/F;->a:LB/A;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, LR0/F;->m:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, LR0/F;->n:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, LR0/F;->k:I

    iput p1, p0, LR0/F;->l:I

    return-void
.end method

.method public p(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, LR0/T;->b()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, LR0/T;->n()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    iget-boolean v4, v4, LR0/O;->f:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, LR0/T;->g()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final p0(Landroid/view/View;IILR0/G;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, LR0/F;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, LR0/F;->H(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, LR0/F;->H(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract q()LR0/G;
.end method

.method public q0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r(Landroid/content/Context;Landroid/util/AttributeSet;)LR0/G;
    .locals 1

    new-instance v0, LR0/G;

    invoke-direct {v0, p1, p2}, LR0/G;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final r0(Landroid/view/View;IILR0/G;)Z
    .locals 2

    iget-boolean v0, p0, LR0/F;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, LR0/F;->H(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, LR0/F;->H(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public s(Landroid/view/ViewGroup$LayoutParams;)LR0/G;
    .locals 1

    instance-of v0, p1, LR0/G;

    if-eqz v0, :cond_0

    new-instance v0, LR0/G;

    check-cast p1, LR0/G;

    invoke-direct {v0, p1}, LR0/G;-><init>(LR0/G;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, LR0/G;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, LR0/G;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, LR0/G;

    invoke-direct {v0, p1}, LR0/G;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public abstract s0()Z
.end method

.method public final t(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, LR0/F;->a:LB/A;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LB/A;->x(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final u()I
    .locals 1

    iget-object v0, p0, LR0/F;->a:LB/A;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LB/A;->y()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public w(LM0/s0;LR0/O;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()I
    .locals 1

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
