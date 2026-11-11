.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super LR0/F;
.source "SourceFile"


# instance fields
.field public final A:LN0/O;

.field public final B:I

.field public C:Z

.field public D:Z

.field public E:LR0/Z;

.field public final F:Landroid/graphics/Rect;

.field public final G:LR0/W;

.field public final H:Z

.field public I:[I

.field public final J:LB/k;

.field public final o:I

.field public final p:[LN0/A;

.field public final q:LR0/v;

.field public final r:LR0/v;

.field public final s:I

.field public t:I

.field public final u:LR0/r;

.field public v:Z

.field public w:Z

.field public final x:Ljava/util/BitSet;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0}, LR0/F;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    new-instance v0, LN0/O;

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, LN0/O;-><init>(IZ)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:LN0/O;

    const/4 v2, 0x2

    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroid/graphics/Rect;

    new-instance v2, LR0/W;

    invoke-direct {v2, p0}, LR0/W;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:LR0/W;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z

    new-instance v3, LB/k;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, LB/k;-><init>(Ljava/lang/Object;I)V

    iput-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:LB/k;

    invoke-static {p1, p2, p3, p4}, LR0/F;->D(Landroid/content/Context;Landroid/util/AttributeSet;II)LR0/E;

    move-result-object p1

    iget p2, p1, LR0/E;->a:I

    if-eqz p2, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid orientation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Ljava/lang/String;)V

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    if-ne p2, p4, :cond_2

    goto :goto_1

    :cond_2
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    iput-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    invoke-virtual {p0}, LR0/F;->h0()V

    :goto_1
    iget p2, p1, LR0/E;->b:I

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Ljava/lang/String;)V

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-eq p2, p4, :cond_4

    invoke-virtual {v0}, LN0/O;->I()V

    invoke-virtual {p0}, LR0/F;->h0()V

    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    new-instance p2, Ljava/util/BitSet;

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    invoke-direct {p2, p4}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Ljava/util/BitSet;

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    new-array p2, p2, [LN0/A;

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    move p2, v1

    :goto_2
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge p2, p4, :cond_3

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    new-instance v0, LN0/A;

    invoke-direct {v0, p0, p2}, LN0/A;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object v0, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, LR0/F;->h0()V

    :cond_4
    iget-boolean p1, p1, LR0/E;->c:Z

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    if-eqz p2, :cond_5

    iget-boolean p3, p2, LR0/Z;->l:Z

    if-eq p3, p1, :cond_5

    iput-boolean p1, p2, LR0/Z;->l:Z

    :cond_5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    invoke-virtual {p0}, LR0/F;->h0()V

    new-instance p1, LR0/r;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p1, LR0/r;->a:Z

    iput v1, p1, LR0/r;->f:I

    iput v1, p1, LR0/r;->g:I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:LR0/r;

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    invoke-static {p0, p1}, LR0/v;->b(LR0/F;I)LR0/v;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    sub-int/2addr v2, p1

    invoke-static {p0, v2}, LR0/v;->b(LR0/F;I)LR0/v;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    return-void
.end method

.method public static T0(III)I
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return p0

    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0()I
    .locals 2

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LR0/F;->C(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final B0()I
    .locals 1

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LR0/F;->C(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final C0(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, LN0/A;->f(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, LN0/A;->f(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final D0(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, LN0/A;->h(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, LN0/A;->h(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final E0(III)V
    .locals 9

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B0()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A0()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    :goto_1
    move v3, p1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    goto :goto_1

    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:LN0/O;

    iget-object v5, v4, LN0/O;->f:Ljava/lang/Object;

    check-cast v5, [I

    if-nez v5, :cond_3

    goto/16 :goto_9

    :cond_3
    array-length v5, v5

    if-lt v3, v5, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-object v5, v4, LN0/O;->g:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, -0x1

    if-nez v5, :cond_6

    :cond_5
    move v5, v6

    goto :goto_8

    :cond_6
    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_9

    iget-object v7, v4, LN0/O;->g:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LR0/Y;

    iget v8, v7, LR0/Y;->e:I

    if-ne v8, v3, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_9
    :goto_4
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_a

    iget-object v5, v4, LN0/O;->g:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_a
    iget-object v5, v4, LN0/O;->g:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v5, :cond_c

    iget-object v8, v4, LN0/O;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LR0/Y;

    iget v8, v8, LR0/Y;->e:I

    if-lt v8, v3, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    move v7, v6

    :goto_7
    if-eq v7, v6, :cond_5

    iget-object v5, v4, LN0/O;->g:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR0/Y;

    iget-object v8, v4, LN0/O;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v5, v5, LR0/Y;->e:I

    :goto_8
    if-ne v5, v6, :cond_d

    iget-object v5, v4, LN0/O;->f:Ljava/lang/Object;

    check-cast v5, [I

    array-length v7, v5

    invoke-static {v5, v3, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v5, v4, LN0/O;->f:Ljava/lang/Object;

    check-cast v5, [I

    array-length v5, v5

    goto :goto_9

    :cond_d
    add-int/lit8 v5, v5, 0x1

    iget-object v7, v4, LN0/O;->f:Ljava/lang/Object;

    check-cast v7, [I

    array-length v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v7, v4, LN0/O;->f:Ljava/lang/Object;

    check-cast v7, [I

    invoke-static {v7, v3, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    :goto_9
    const/4 v5, 0x1

    if-eq p3, v5, :cond_10

    const/4 v6, 0x2

    if-eq p3, v6, :cond_f

    if-eq p3, v1, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v4, p1, v5}, LN0/O;->a0(II)V

    invoke-virtual {v4, p2, v5}, LN0/O;->Z(II)V

    goto :goto_a

    :cond_f
    invoke-virtual {v4, p1, p2}, LN0/O;->a0(II)V

    goto :goto_a

    :cond_10
    invoke-virtual {v4, p1, p2}, LN0/O;->Z(II)V

    :goto_a
    if-gt v2, v0, :cond_11

    goto :goto_c

    :cond_11
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A0()I

    move-result p1

    goto :goto_b

    :cond_12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B0()I

    move-result p1

    :goto_b
    if-gt v3, p1, :cond_13

    invoke-virtual {p0}, LR0/F;->h0()V

    :cond_13
    :goto_c
    return-void
.end method

.method public final F0()Landroid/view/View;
    .locals 13

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    const/4 v6, -0x1

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    if-eqz v7, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_2

    move v6, v5

    :cond_2
    if-eq v1, v0, :cond_d

    invoke-virtual {p0, v1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, LR0/X;

    iget-object v9, v8, LR0/X;->e:LN0/A;

    iget v9, v9, LN0/A;->d:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v8, LR0/X;->e:LN0/A;

    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    const/high16 v11, -0x80000000

    if-eqz v10, :cond_4

    iget v10, v9, LN0/A;->b:I

    if-eq v10, v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, LN0/A;->a()V

    iget v10, v9, LN0/A;->b:I

    :goto_2
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->h()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v0, v9, LN0/A;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/X;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v7

    :cond_4
    iget v10, v9, LN0/A;->a:I

    if-eq v10, v11, :cond_5

    goto :goto_3

    :cond_5
    iget-object v10, v9, LN0/A;->e:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, LR0/X;

    iget-object v12, v9, LN0/A;->f:Ljava/lang/Object;

    check-cast v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v12, v10}, LR0/v;->f(Landroid/view/View;)I

    move-result v10

    iput v10, v9, LN0/A;->a:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v9, LN0/A;->a:I

    :goto_3
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->m()I

    move-result v11

    if-le v10, v11, :cond_6

    iget-object v0, v9, LN0/A;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/X;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v7

    :cond_6
    iget-object v9, v8, LR0/X;->e:LN0/A;

    iget v9, v9, LN0/A;->d:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    :cond_7
    add-int/2addr v1, v6

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v9

    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v10, v7}, LR0/v;->c(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v11, v9}, LR0/v;->c(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_8

    goto :goto_7

    :cond_8
    if-ne v10, v11, :cond_2

    goto :goto_4

    :cond_9
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v10, v7}, LR0/v;->f(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v11, v9}, LR0/v;->f(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_a

    goto :goto_7

    :cond_a
    if-ne v10, v11, :cond_2

    :goto_4
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, LR0/X;

    iget-object v8, v8, LR0/X;->e:LN0/A;

    iget v8, v8, LN0/A;->d:I

    iget-object v9, v9, LR0/X;->e:LN0/A;

    iget v9, v9, LN0/A;->d:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_b

    move v8, v5

    goto :goto_5

    :cond_b
    move v8, v4

    :goto_5
    if-gez v3, :cond_c

    move v9, v5

    goto :goto_6

    :cond_c
    move v9, v4

    :goto_6
    if-eq v8, v9, :cond_2

    :goto_7
    return-object v7

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final G()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final G0()Z
    .locals 2

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v0}, Ls/h;->d(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final H0(Landroid/view/View;II)V
    .locals 5

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/X;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-static {p2, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0(III)I

    move-result p2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    invoke-static {p3, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0(III)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, LR0/F;->p0(Landroid/view/View;IILR0/G;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method public final I0(LM0/s0;LR0/O;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    const/4 v4, -0x1

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:LR0/W;

    if-nez v3, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, LR0/O;->b()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p1}, LR0/F;->c0(LM0/s0;)V

    invoke-virtual {v5}, LR0/W;->a()V

    return-void

    :cond_1
    iget-boolean v3, v5, LR0/W;->e:Z

    iget-object v6, v5, LR0/W;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:I

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v7

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v8

    :goto_1
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:LN0/O;

    const/high16 v10, -0x80000000

    if-eqz v3, :cond_25

    invoke-virtual {v5}, LR0/W;->a()V

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    if-eqz v11, :cond_a

    iget v12, v11, LR0/Z;->g:I

    const/4 v13, 0x0

    if-lez v12, :cond_7

    iget v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ne v12, v14, :cond_6

    move v11, v7

    :goto_2
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v11, v12, :cond_7

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v12, v12, v11

    invoke-virtual {v12}, LN0/A;->b()V

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    iget-object v14, v12, LR0/Z;->h:[I

    aget v14, v14, v11

    if-eq v14, v10, :cond_5

    iget-boolean v12, v12, LR0/Z;->m:Z

    if-eqz v12, :cond_4

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v12}, LR0/v;->h()I

    move-result v12

    :goto_3
    add-int/2addr v14, v12

    goto :goto_4

    :cond_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v12}, LR0/v;->m()I

    move-result v12

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v12, v12, v11

    iput v14, v12, LN0/A;->a:I

    iput v14, v12, LN0/A;->b:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    iput-object v13, v11, LR0/Z;->h:[I

    iput v7, v11, LR0/Z;->g:I

    iput v7, v11, LR0/Z;->i:I

    iput-object v13, v11, LR0/Z;->j:[I

    iput-object v13, v11, LR0/Z;->k:Ljava/util/ArrayList;

    iget v12, v11, LR0/Z;->f:I

    iput v12, v11, LR0/Z;->e:I

    :cond_7
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    iget-boolean v12, v11, LR0/Z;->n:Z

    iput-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    iget-boolean v11, v11, LR0/Z;->l:Z

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Ljava/lang/String;)V

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    if-eqz v12, :cond_8

    iget-boolean v13, v12, LR0/Z;->l:Z

    if-eq v13, v11, :cond_8

    iput-boolean v11, v12, LR0/Z;->l:Z

    :cond_8
    iput-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    invoke-virtual {v0}, LR0/F;->h0()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0()V

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    iget v12, v11, LR0/Z;->e:I

    if-eq v12, v4, :cond_9

    iput v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:I

    iget-boolean v12, v11, LR0/Z;->m:Z

    iput-boolean v12, v5, LR0/W;->c:Z

    goto :goto_5

    :cond_9
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    iput-boolean v12, v5, LR0/W;->c:Z

    :goto_5
    iget v12, v11, LR0/Z;->i:I

    if-le v12, v8, :cond_b

    iget-object v12, v11, LR0/Z;->j:[I

    iput-object v12, v9, LN0/O;->f:Ljava/lang/Object;

    iget-object v11, v11, LR0/Z;->k:Ljava/util/ArrayList;

    iput-object v11, v9, LN0/O;->g:Ljava/lang/Object;

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0()V

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    iput-boolean v11, v5, LR0/W;->c:Z

    :cond_b
    :goto_6
    iget-boolean v11, v2, LR0/O;->f:Z

    if-nez v11, :cond_20

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:I

    if-ne v11, v4, :cond_c

    goto/16 :goto_10

    :cond_c
    if-ltz v11, :cond_1f

    invoke-virtual {v2}, LR0/O;->b()I

    move-result v12

    if-lt v11, v12, :cond_d

    goto/16 :goto_f

    :cond_d
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    if-eqz v11, :cond_f

    iget v12, v11, LR0/Z;->e:I

    if-eq v12, v4, :cond_f

    iget v11, v11, LR0/Z;->g:I

    if-ge v11, v8, :cond_e

    goto :goto_7

    :cond_e
    iput v10, v5, LR0/W;->b:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:I

    iput v11, v5, LR0/W;->a:I

    goto/16 :goto_14

    :cond_f
    :goto_7
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:I

    invoke-virtual {v0, v11}, LR0/F;->p(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_17

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    if-eqz v12, :cond_10

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B0()I

    move-result v12

    goto :goto_8

    :cond_10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A0()I

    move-result v12

    :goto_8
    iput v12, v5, LR0/W;->a:I

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    if-eq v12, v10, :cond_12

    iget-boolean v12, v5, LR0/W;->c:Z

    if-eqz v12, :cond_11

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v12}, LR0/v;->h()I

    move-result v12

    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    sub-int/2addr v12, v13

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v13, v11}, LR0/v;->c(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    iput v12, v5, LR0/W;->b:I

    goto/16 :goto_14

    :cond_11
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v12}, LR0/v;->m()I

    move-result v12

    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    add-int/2addr v12, v13

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v13, v11}, LR0/v;->f(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    iput v12, v5, LR0/W;->b:I

    goto/16 :goto_14

    :cond_12
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v12, v11}, LR0/v;->d(Landroid/view/View;)I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v13}, LR0/v;->n()I

    move-result v13

    if-le v12, v13, :cond_14

    iget-boolean v11, v5, LR0/W;->c:Z

    if-eqz v11, :cond_13

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->h()I

    move-result v11

    goto :goto_9

    :cond_13
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->m()I

    move-result v11

    :goto_9
    iput v11, v5, LR0/W;->b:I

    goto/16 :goto_14

    :cond_14
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v12, v11}, LR0/v;->f(Landroid/view/View;)I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v13}, LR0/v;->m()I

    move-result v13

    sub-int/2addr v12, v13

    if-gez v12, :cond_15

    neg-int v11, v12

    iput v11, v5, LR0/W;->b:I

    goto/16 :goto_14

    :cond_15
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v12}, LR0/v;->h()I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v13, v11}, LR0/v;->c(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    if-gez v12, :cond_16

    iput v12, v5, LR0/W;->b:I

    goto/16 :goto_14

    :cond_16
    iput v10, v5, LR0/W;->b:I

    goto/16 :goto_14

    :cond_17
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:I

    iput v11, v5, LR0/W;->a:I

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    if-ne v12, v10, :cond_1d

    invoke-virtual {v0}, LR0/F;->u()I

    move-result v12

    if-nez v12, :cond_18

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    if-eqz v11, :cond_1a

    goto :goto_b

    :cond_18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A0()I

    move-result v12

    if-ge v11, v12, :cond_19

    move v11, v8

    goto :goto_a

    :cond_19
    move v11, v7

    :goto_a
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    if-eq v11, v12, :cond_1b

    :cond_1a
    move v11, v7

    goto :goto_c

    :cond_1b
    :goto_b
    move v11, v8

    :goto_c
    iput-boolean v11, v5, LR0/W;->c:Z

    if-eqz v11, :cond_1c

    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->h()I

    move-result v11

    goto :goto_d

    :cond_1c
    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->m()I

    move-result v11

    :goto_d
    iput v11, v5, LR0/W;->b:I

    goto :goto_e

    :cond_1d
    iget-boolean v11, v5, LR0/W;->c:Z

    if-eqz v11, :cond_1e

    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->h()I

    move-result v11

    sub-int/2addr v11, v12

    iput v11, v5, LR0/W;->b:I

    goto :goto_e

    :cond_1e
    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->m()I

    move-result v11

    add-int/2addr v11, v12

    iput v11, v5, LR0/W;->b:I

    :goto_e
    iput-boolean v8, v5, LR0/W;->d:Z

    goto :goto_14

    :cond_1f
    :goto_f
    iput v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:I

    iput v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    :cond_20
    :goto_10
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Z

    if-eqz v11, :cond_23

    invoke-virtual {v2}, LR0/O;->b()I

    move-result v11

    invoke-virtual {v0}, LR0/F;->u()I

    move-result v12

    sub-int/2addr v12, v8

    :goto_11
    if-ltz v12, :cond_22

    invoke-virtual {v0, v12}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13}, LR0/F;->C(Landroid/view/View;)I

    move-result v13

    if-ltz v13, :cond_21

    if-ge v13, v11, :cond_21

    goto :goto_13

    :cond_21
    add-int/lit8 v12, v12, -0x1

    goto :goto_11

    :cond_22
    move v13, v7

    goto :goto_13

    :cond_23
    invoke-virtual {v2}, LR0/O;->b()I

    move-result v11

    invoke-virtual {v0}, LR0/F;->u()I

    move-result v12

    move v13, v7

    :goto_12
    if-ge v13, v12, :cond_22

    invoke-virtual {v0, v13}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v14

    invoke-static {v14}, LR0/F;->C(Landroid/view/View;)I

    move-result v14

    if-ltz v14, :cond_24

    if-ge v14, v11, :cond_24

    move v13, v14

    goto :goto_13

    :cond_24
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :goto_13
    iput v13, v5, LR0/W;->a:I

    iput v10, v5, LR0/W;->b:I

    :goto_14
    iput-boolean v8, v5, LR0/W;->e:Z

    :cond_25
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    if-nez v11, :cond_27

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:I

    if-ne v11, v4, :cond_27

    iget-boolean v11, v5, LR0/W;->c:Z

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Z

    if-ne v11, v12, :cond_26

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0()Z

    move-result v11

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    if-eq v11, v12, :cond_27

    :cond_26
    invoke-virtual {v9}, LN0/O;->I()V

    iput-boolean v8, v5, LR0/W;->d:Z

    :cond_27
    invoke-virtual {v0}, LR0/F;->u()I

    move-result v9

    if-lez v9, :cond_36

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    if-eqz v9, :cond_28

    iget v9, v9, LR0/Z;->g:I

    if-ge v9, v8, :cond_36

    :cond_28
    iget-boolean v9, v5, LR0/W;->d:Z

    if-eqz v9, :cond_2a

    move v3, v7

    :goto_15
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v3, v6, :cond_36

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v6, v6, v3

    invoke-virtual {v6}, LN0/A;->b()V

    iget v6, v5, LR0/W;->b:I

    if-eq v6, v10, :cond_29

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v9, v9, v3

    iput v6, v9, LN0/A;->a:I

    iput v6, v9, LN0/A;->b:I

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2a
    if-nez v3, :cond_2c

    iget-object v3, v5, LR0/W;->f:[I

    if-nez v3, :cond_2b

    goto :goto_17

    :cond_2b
    move v3, v7

    :goto_16
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v3, v6, :cond_36

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v6, v6, v3

    invoke-virtual {v6}, LN0/A;->b()V

    iget-object v9, v5, LR0/W;->f:[I

    aget v9, v9, v3

    iput v9, v6, LN0/A;->a:I

    iput v9, v6, LN0/A;->b:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2c
    :goto_17
    move v3, v7

    :goto_18
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v3, v9, :cond_33

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v9, v9, v3

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    iget v12, v5, LR0/W;->b:I

    iget-object v13, v9, LN0/A;->f:Ljava/lang/Object;

    check-cast v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v11, :cond_2d

    invoke-virtual {v9, v10}, LN0/A;->f(I)I

    move-result v14

    goto :goto_19

    :cond_2d
    invoke-virtual {v9, v10}, LN0/A;->h(I)I

    move-result v14

    :goto_19
    invoke-virtual {v9}, LN0/A;->b()V

    if-ne v14, v10, :cond_2e

    goto :goto_1a

    :cond_2e
    if-eqz v11, :cond_2f

    iget-object v15, v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v15}, LR0/v;->h()I

    move-result v15

    if-lt v14, v15, :cond_32

    :cond_2f
    if-nez v11, :cond_30

    iget-object v11, v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->m()I

    move-result v11

    if-le v14, v11, :cond_30

    goto :goto_1a

    :cond_30
    if-eq v12, v10, :cond_31

    add-int/2addr v14, v12

    :cond_31
    iput v14, v9, LN0/A;->b:I

    iput v14, v9, LN0/A;->a:I

    :cond_32
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_33
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    array-length v9, v3

    iget-object v11, v5, LR0/W;->f:[I

    if-eqz v11, :cond_34

    array-length v11, v11

    if-ge v11, v9, :cond_35

    :cond_34
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    array-length v6, v6

    new-array v6, v6, [I

    iput-object v6, v5, LR0/W;->f:[I

    :cond_35
    move v6, v7

    :goto_1b
    if-ge v6, v9, :cond_36

    iget-object v11, v5, LR0/W;->f:[I

    aget-object v12, v3, v6

    invoke-virtual {v12, v10}, LN0/A;->h(I)I

    move-result v12

    aput v12, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_36
    invoke-virtual/range {p0 .. p1}, LR0/F;->o(LM0/s0;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:LR0/r;

    iput-boolean v7, v3, LR0/r;->a:Z

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    invoke-virtual {v6}, LR0/v;->n()I

    move-result v6

    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    div-int v9, v6, v9

    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    invoke-virtual {v9}, LR0/v;->k()I

    move-result v9

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    iget v6, v5, LR0/W;->a:I

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R0(I)V

    iget-boolean v6, v5, LR0/W;->c:Z

    if-eqz v6, :cond_37

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0(I)V

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v0(LM0/s0;LR0/r;LR0/O;)I

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0(I)V

    iget v4, v5, LR0/W;->a:I

    iget v6, v3, LR0/r;->d:I

    add-int/2addr v4, v6

    iput v4, v3, LR0/r;->c:I

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v0(LM0/s0;LR0/r;LR0/O;)I

    goto :goto_1c

    :cond_37
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0(I)V

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v0(LM0/s0;LR0/r;LR0/O;)I

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0(I)V

    iget v4, v5, LR0/W;->a:I

    iget v6, v3, LR0/r;->d:I

    add-int/2addr v4, v6

    iput v4, v3, LR0/r;->c:I

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v0(LM0/s0;LR0/r;LR0/O;)I

    :goto_1c
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    invoke-virtual {v3}, LR0/v;->k()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_38

    goto/16 :goto_21

    :cond_38
    invoke-virtual {v0}, LR0/F;->u()I

    move-result v3

    const/4 v4, 0x0

    move v6, v7

    :goto_1d
    if-ge v6, v3, :cond_3a

    invoke-virtual {v0, v6}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v9

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    invoke-virtual {v11, v9}, LR0/v;->d(Landroid/view/View;)I

    move-result v11

    int-to-float v11, v11

    cmpg-float v12, v11, v4

    if-gez v12, :cond_39

    goto :goto_1e

    :cond_39
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, LR0/X;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_3a
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    int-to-float v9, v9

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    invoke-virtual {v9}, LR0/v;->k()I

    move-result v9

    if-ne v9, v10, :cond_3b

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    invoke-virtual {v9}, LR0/v;->n()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_3b
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    div-int v9, v4, v9

    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    invoke-virtual {v9}, LR0/v;->k()I

    move-result v9

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    if-ne v4, v6, :cond_3c

    goto :goto_21

    :cond_3c
    move v4, v7

    :goto_1f
    if-ge v4, v3, :cond_3f

    invoke-virtual {v0, v4}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, LR0/X;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0()Z

    move-result v11

    if-eqz v11, :cond_3d

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    if-ne v11, v8, :cond_3d

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    sub-int/2addr v11, v8

    iget-object v10, v10, LR0/X;->e:LN0/A;

    iget v10, v10, LN0/A;->d:I

    sub-int/2addr v11, v10

    neg-int v10, v11

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    mul-int/2addr v11, v10

    mul-int/2addr v10, v6

    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_20

    :cond_3d
    iget-object v10, v10, LR0/X;->e:LN0/A;

    iget v10, v10, LN0/A;->d:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    mul-int/2addr v11, v10

    mul-int/2addr v10, v6

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    if-ne v12, v8, :cond_3e

    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_20

    :cond_3e
    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_3f
    :goto_21
    invoke-virtual {v0}, LR0/F;->u()I

    move-result v3

    if-lez v3, :cond_41

    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    if-eqz v3, :cond_40

    invoke-virtual {v0, v1, v2, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y0(LM0/s0;LR0/O;Z)V

    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z0(LM0/s0;LR0/O;Z)V

    goto :goto_22

    :cond_40
    invoke-virtual {v0, v1, v2, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z0(LM0/s0;LR0/O;Z)V

    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y0(LM0/s0;LR0/O;Z)V

    :cond_41
    :goto_22
    if-eqz p3, :cond_43

    iget-boolean v3, v2, LR0/O;->f:Z

    if-nez v3, :cond_43

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    if-eqz v3, :cond_43

    invoke-virtual {v0}, LR0/F;->u()I

    move-result v3

    if-lez v3, :cond_43

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F0()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_43

    iget-object v3, v0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_42

    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:LB/k;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t0()Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_23

    :cond_43
    move v8, v7

    :goto_23
    iget-boolean v3, v2, LR0/O;->f:Z

    if-eqz v3, :cond_44

    invoke-virtual {v5}, LR0/W;->a()V

    :cond_44
    iget-boolean v3, v5, LR0/W;->c:Z

    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0()Z

    move-result v3

    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    if-eqz v8, :cond_45

    invoke-virtual {v5}, LR0/W;->a()V

    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I0(LM0/s0;LR0/O;Z)V

    :cond_45
    return-void
.end method

.method public final J(I)V
    .locals 4

    invoke-super {p0, p1}, LR0/F;->J(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v1, v1, v0

    iget v2, v1, LN0/A;->a:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    add-int/2addr v2, p1

    iput v2, v1, LN0/A;->a:I

    :cond_0
    iget v2, v1, LN0/A;->b:I

    if-eq v2, v3, :cond_1

    add-int/2addr v2, p1

    iput v2, v1, LN0/A;->b:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final J0(I)Z
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    if-eq p1, v0, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    if-ne p1, v1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    if-ne p1, v0, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0()Z

    move-result v0

    if-ne p1, v0, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method public final K(I)V
    .locals 4

    invoke-super {p0, p1}, LR0/F;->K(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v1, v1, v0

    iget v2, v1, LN0/A;->a:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    add-int/2addr v2, p1

    iput v2, v1, LN0/A;->a:I

    :cond_0
    iget v2, v1, LN0/A;->b:I

    if-eq v2, v3, :cond_1

    add-int/2addr v2, p1

    iput v2, v1, LN0/A;->b:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final K0(I)V
    .locals 4

    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B0()I

    move-result v1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A0()I

    move-result v1

    const/4 v2, -0x1

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:LR0/r;

    iput-boolean v0, v3, LR0/r;->a:Z

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R0(I)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0(I)V

    iget v0, v3, LR0/r;->d:I

    add-int/2addr v1, v0

    iput v1, v3, LR0/r;->c:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, v3, LR0/r;->b:I

    return-void
.end method

.method public final L()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:LN0/O;

    invoke-virtual {v0}, LN0/O;->I()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LN0/A;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final L0(LM0/s0;LR0/r;)V
    .locals 4

    iget-boolean v0, p2, LR0/r;->a:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p2, LR0/r;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p2, LR0/r;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p2, LR0/r;->e:I

    if-ne v0, v1, :cond_1

    iget p2, p2, LR0/r;->g:I

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M0(LM0/s0;I)V

    return-void

    :cond_1
    iget p2, p2, LR0/r;->f:I

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0(LM0/s0;I)V

    return-void

    :cond_2
    iget v0, p2, LR0/r;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6

    iget v0, p2, LR0/r;->f:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, LN0/A;->h(I)I

    move-result v1

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, LN0/A;->h(I)I

    move-result v3

    if-le v3, v1, :cond_3

    move v1, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    iget p2, p2, LR0/r;->g:I

    goto :goto_1

    :cond_5
    iget v1, p2, LR0/r;->g:I

    iget p2, p2, LR0/r;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M0(LM0/s0;I)V

    return-void

    :cond_6
    iget v0, p2, LR0/r;->g:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, LN0/A;->f(I)I

    move-result v1

    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, LN0/A;->f(I)I

    move-result v3

    if-ge v3, v1, :cond_7

    move v1, v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iget v0, p2, LR0/r;->g:I

    sub-int/2addr v1, v0

    if-gez v1, :cond_9

    iget p2, p2, LR0/r;->f:I

    goto :goto_3

    :cond_9
    iget v0, p2, LR0/r;->f:I

    iget p2, p2, LR0/r;->b:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v0

    :goto_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0(LM0/s0;I)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final M(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:LB/k;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LN0/A;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final M0(LM0/s0;I)V
    .locals 8

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v3, v2}, LR0/v;->f(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v3, v2}, LR0/v;->p(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LR0/X;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, LR0/X;->e:LN0/A;

    iget-object v4, v4, LN0/A;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v3, LR0/X;->e:LN0/A;

    iget-object v4, v3, LN0/A;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, LR0/X;

    const/4 v7, 0x0

    iput-object v7, v6, LR0/X;->e:LN0/A;

    iget-object v7, v6, LR0/G;->a:LR0/T;

    invoke-virtual {v7}, LR0/T;->g()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v6, v6, LR0/G;->a:LR0/T;

    invoke-virtual {v6}, LR0/T;->j()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget v6, v3, LN0/A;->c:I

    iget-object v7, v3, LN0/A;->f:Ljava/lang/Object;

    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v7, v4}, LR0/v;->d(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v6, v4

    iput v6, v3, LN0/A;->c:I

    :cond_2
    const/high16 v4, -0x80000000

    if-ne v5, v1, :cond_3

    iput v4, v3, LN0/A;->a:I

    :cond_3
    iput v4, v3, LN0/A;->b:I

    invoke-virtual {p0, v2, p1}, LR0/F;->e0(Landroid/view/View;LM0/s0;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final N(Landroid/view/View;ILM0/s0;LR0/O;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, LR0/F;->a:LB/A;

    iget-object v0, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    move-object p1, v1

    :cond_3
    if-nez p1, :cond_4

    goto/16 :goto_10

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0()V

    const/high16 v0, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v3, :cond_e

    const/4 v4, 0x2

    if-eq p2, v4, :cond_c

    const/16 v4, 0x11

    if-eq p2, v4, :cond_b

    const/16 v4, 0x21

    if-eq p2, v4, :cond_9

    const/16 v4, 0x42

    if-eq p2, v4, :cond_8

    const/16 v4, 0x82

    if-eq p2, v4, :cond_6

    :cond_5
    move p2, v0

    goto :goto_4

    :cond_6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    if-ne p2, v3, :cond_5

    :cond_7
    :goto_1
    move p2, v3

    goto :goto_4

    :cond_8
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    if-nez p2, :cond_5

    goto :goto_1

    :cond_9
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    if-ne p2, v3, :cond_5

    :cond_a
    :goto_2
    move p2, v2

    goto :goto_4

    :cond_b
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    if-nez p2, :cond_5

    :goto_3
    goto :goto_2

    :cond_c
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    if-ne p2, v3, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_e
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    if-ne p2, v3, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0()Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_1

    :goto_4
    if-ne p2, v0, :cond_10

    goto/16 :goto_10

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/X;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LR0/X;->e:LN0/A;

    if-ne p2, v3, :cond_11

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B0()I

    move-result v4

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A0()I

    move-result v4

    :goto_5
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R0(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0(I)V

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:LR0/r;

    iget v6, v5, LR0/r;->d:I

    add-int/2addr v6, v4

    iput v6, v5, LR0/r;->c:I

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v6}, LR0/v;->n()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3eaaaaab

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, LR0/r;->b:I

    iput-boolean v3, v5, LR0/r;->h:Z

    const/4 v6, 0x0

    iput-boolean v6, v5, LR0/r;->a:Z

    invoke-virtual {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v0(LM0/s0;LR0/r;LR0/O;)I

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Z

    invoke-virtual {v0, v4, p2}, LN0/A;->g(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_12

    if-eq p3, p1, :cond_12

    return-object p3

    :cond_12
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J0(I)Z

    move-result p3

    if-eqz p3, :cond_14

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    sub-int/2addr p3, v3

    :goto_6
    if-ltz p3, :cond_16

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, LN0/A;->g(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_13

    if-eq p4, p1, :cond_13

    return-object p4

    :cond_13
    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    :cond_14
    move p3, v6

    :goto_7
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge p3, p4, :cond_16

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, LN0/A;->g(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_15

    if-eq p4, p1, :cond_15

    return-object p4

    :cond_15
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_16
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    xor-int/2addr p3, v3

    if-ne p2, v2, :cond_17

    move p4, v3

    goto :goto_8

    :cond_17
    move p4, v6

    :goto_8
    if-ne p3, p4, :cond_18

    move p3, v3

    goto :goto_9

    :cond_18
    move p3, v6

    :goto_9
    if-eqz p3, :cond_19

    invoke-virtual {v0}, LN0/A;->c()I

    move-result p4

    goto :goto_a

    :cond_19
    invoke-virtual {v0}, LN0/A;->d()I

    move-result p4

    :goto_a
    invoke-virtual {p0, p4}, LR0/F;->p(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1a

    if-eq p4, p1, :cond_1a

    return-object p4

    :cond_1a
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J0(I)Z

    move-result p2

    if-eqz p2, :cond_1e

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    sub-int/2addr p2, v3

    :goto_b
    if-ltz p2, :cond_21

    iget p4, v0, LN0/A;->d:I

    if-ne p2, p4, :cond_1b

    goto :goto_d

    :cond_1b
    if-eqz p3, :cond_1c

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object p4, p4, p2

    invoke-virtual {p4}, LN0/A;->c()I

    move-result p4

    goto :goto_c

    :cond_1c
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object p4, p4, p2

    invoke-virtual {p4}, LN0/A;->d()I

    move-result p4

    :goto_c
    invoke-virtual {p0, p4}, LR0/F;->p(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1d

    if-eq p4, p1, :cond_1d

    return-object p4

    :cond_1d
    :goto_d
    add-int/lit8 p2, p2, -0x1

    goto :goto_b

    :cond_1e
    :goto_e
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v6, p2, :cond_21

    if-eqz p3, :cond_1f

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object p2, p2, v6

    invoke-virtual {p2}, LN0/A;->c()I

    move-result p2

    goto :goto_f

    :cond_1f
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object p2, p2, v6

    invoke-virtual {p2}, LN0/A;->d()I

    move-result p2

    :goto_f
    invoke-virtual {p0, p2}, LR0/F;->p(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_20

    if-eq p2, p1, :cond_20

    return-object p2

    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_21
    :goto_10
    return-object v1
.end method

.method public final N0(LM0/s0;I)V
    .locals 6

    :goto_0
    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v2, v1}, LR0/v;->c(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v2, v1}, LR0/v;->o(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, LR0/X;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, LR0/X;->e:LN0/A;

    iget-object v3, v3, LN0/A;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v2, LR0/X;->e:LN0/A;

    iget-object v3, v2, LN0/A;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LR0/X;

    const/4 v5, 0x0

    iput-object v5, v4, LR0/X;->e:LN0/A;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v5, -0x80000000

    if-nez v3, :cond_1

    iput v5, v2, LN0/A;->b:I

    :cond_1
    iget-object v3, v4, LR0/G;->a:LR0/T;

    invoke-virtual {v3}, LR0/T;->g()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v4, LR0/G;->a:LR0/T;

    invoke-virtual {v3}, LR0/T;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v3, v2, LN0/A;->c:I

    iget-object v4, v2, LN0/A;->f:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v4, v0}, LR0/v;->d(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, v2, LN0/A;->c:I

    :cond_3
    iput v5, v2, LN0/A;->a:I

    invoke-virtual {p0, v1, p1}, LR0/F;->e0(Landroid/view/View;LM0/s0;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final O(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, LR0/F;->O(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x0(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w0(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, LR0/F;->C(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, LR0/F;->C(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final O0()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    return-void
.end method

.method public final P0(ILM0/s0;LR0/O;)I
    .locals 3

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:LR0/r;

    invoke-virtual {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v0(LM0/s0;LR0/r;LR0/O;)I

    move-result p3

    iget v2, v0, LR0/r;->b:I

    if-ge v2, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    neg-int v2, p1

    invoke-virtual {p3, v2}, LR0/v;->q(I)V

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Z

    iput v1, v0, LR0/r;->b:I

    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0(LM0/s0;LR0/r;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public final Q0(I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:LR0/r;

    iput p1, v0, LR0/r;->e:I

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput v2, v0, LR0/r;->d:I

    return-void
.end method

.method public final R0(I)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:LR0/r;

    const/4 v1, 0x0

    iput v1, v0, LR0/r;->b:I

    iput p1, v0, LR0/r;->c:I

    iget-object p1, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {p1}, LR0/v;->m()I

    move-result p1

    iput p1, v0, LR0/r;->f:I

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {p1}, LR0/v;->h()I

    move-result p1

    iput p1, v0, LR0/r;->g:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {p1}, LR0/v;->g()I

    move-result p1

    iput p1, v0, LR0/r;->g:I

    iput v1, v0, LR0/r;->f:I

    :goto_0
    iput-boolean v1, v0, LR0/r;->h:Z

    const/4 p1, 0x1

    iput-boolean p1, v0, LR0/r;->a:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v2}, LR0/v;->k()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v2}, LR0/v;->g()I

    move-result v2

    if-nez v2, :cond_1

    move v1, p1

    :cond_1
    iput-boolean v1, v0, LR0/r;->i:Z

    return-void
.end method

.method public final S(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E0(III)V

    return-void
.end method

.method public final S0(LN0/A;II)V
    .locals 5

    iget v0, p1, LN0/A;->c:I

    iget v1, p1, LN0/A;->d:I

    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    if-ne p2, v2, :cond_1

    iget p2, p1, LN0/A;->a:I

    if-eq p2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, LN0/A;->e:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, LR0/X;

    iget-object v3, p1, LN0/A;->f:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v3, p2}, LR0/v;->f(Landroid/view/View;)I

    move-result p2

    iput p2, p1, LN0/A;->a:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, LN0/A;->a:I

    :goto_0
    add-int/2addr p2, v0

    if-gt p2, p3, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Ljava/util/BitSet;

    invoke-virtual {p1, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    return-void

    :cond_1
    iget p2, p1, LN0/A;->b:I

    if-eq p2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, LN0/A;->a()V

    iget p2, p1, LN0/A;->b:I

    :goto_1
    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Ljava/util/BitSet;

    invoke-virtual {p1, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    :cond_3
    return-void
.end method

.method public final T()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:LN0/O;

    invoke-virtual {v0}, LN0/O;->I()V

    invoke-virtual {p0}, LR0/F;->h0()V

    return-void
.end method

.method public final U(II)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E0(III)V

    return-void
.end method

.method public final V(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E0(III)V

    return-void
.end method

.method public final W(II)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E0(III)V

    return-void
.end method

.method public final X(LM0/s0;LR0/O;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I0(LM0/s0;LR0/O;Z)V

    return-void
.end method

.method public final Y(LR0/O;)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:LR0/W;

    invoke-virtual {p1}, LR0/W;->a()V

    return-void
.end method

.method public final Z(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, LR0/Z;

    if-eqz v0, :cond_1

    check-cast p1, LR0/Z;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v1, p1, LR0/Z;->e:I

    iput v1, p1, LR0/Z;->f:I

    const/4 v0, 0x0

    iput-object v0, p1, LR0/Z;->h:[I

    const/4 v1, 0x0

    iput v1, p1, LR0/Z;->g:I

    iput v1, p1, LR0/Z;->i:I

    iput-object v0, p1, LR0/Z;->j:[I

    iput-object v0, p1, LR0/Z;->k:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p0}, LR0/F;->h0()V

    :cond_1
    return-void
.end method

.method public final a0()Landroid/os/Parcelable;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    if-eqz v0, :cond_0

    new-instance v1, LR0/Z;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget v2, v0, LR0/Z;->g:I

    iput v2, v1, LR0/Z;->g:I

    iget v2, v0, LR0/Z;->e:I

    iput v2, v1, LR0/Z;->e:I

    iget v2, v0, LR0/Z;->f:I

    iput v2, v1, LR0/Z;->f:I

    iget-object v2, v0, LR0/Z;->h:[I

    iput-object v2, v1, LR0/Z;->h:[I

    iget v2, v0, LR0/Z;->i:I

    iput v2, v1, LR0/Z;->i:I

    iget-object v2, v0, LR0/Z;->j:[I

    iput-object v2, v1, LR0/Z;->j:[I

    iget-boolean v2, v0, LR0/Z;->l:Z

    iput-boolean v2, v1, LR0/Z;->l:Z

    iget-boolean v2, v0, LR0/Z;->m:Z

    iput-boolean v2, v1, LR0/Z;->m:Z

    iget-boolean v2, v0, LR0/Z;->n:Z

    iput-boolean v2, v1, LR0/Z;->n:Z

    iget-object v0, v0, LR0/Z;->k:Ljava/util/ArrayList;

    iput-object v0, v1, LR0/Z;->k:Ljava/util/ArrayList;

    return-object v1

    :cond_0
    new-instance v0, LR0/Z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    iput-boolean v1, v0, LR0/Z;->l:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Z

    iput-boolean v1, v0, LR0/Z;->m:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    iput-boolean v1, v0, LR0/Z;->n:Z

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:LN0/O;

    if-eqz v2, :cond_1

    iget-object v3, v2, LN0/O;->f:Ljava/lang/Object;

    check-cast v3, [I

    if-eqz v3, :cond_1

    iput-object v3, v0, LR0/Z;->j:[I

    array-length v3, v3

    iput v3, v0, LR0/Z;->i:I

    iget-object v2, v2, LN0/O;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, LR0/Z;->k:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iput v1, v0, LR0/Z;->i:I

    :goto_0
    invoke-virtual {p0}, LR0/F;->u()I

    move-result v2

    const/4 v3, -0x1

    if-lez v2, :cond_8

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B0()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A0()I

    move-result v2

    :goto_1
    iput v2, v0, LR0/Z;->e:I

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w0(Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x0(Z)Landroid/view/View;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v2}, LR0/F;->C(Landroid/view/View;)I

    move-result v3

    :goto_3
    iput v3, v0, LR0/Z;->f:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    iput v2, v0, LR0/Z;->g:I

    new-array v2, v2, [I

    iput-object v2, v0, LR0/Z;->h:[I

    :goto_4
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v1, v2, :cond_7

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Z

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, LN0/A;->f(I)I

    move-result v2

    if-eq v2, v3, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v3}, LR0/v;->h()I

    move-result v3

    :goto_5
    sub-int/2addr v2, v3

    goto :goto_6

    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, LN0/A;->h(I)I

    move-result v2

    if-eq v2, v3, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v3}, LR0/v;->m()I

    move-result v3

    goto :goto_5

    :cond_6
    :goto_6
    iget-object v3, v0, LR0/Z;->h:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object v0

    :cond_8
    iput v3, v0, LR0/Z;->e:I

    iput v3, v0, LR0/Z;->f:I

    iput v1, v0, LR0/Z;->g:I

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    if-nez v0, :cond_0

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b0(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t0()Z

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(LR0/G;)Z
    .locals 0

    instance-of p1, p1, LR0/X;

    return p1
.end method

.method public final g(IILR0/O;LJ/f;)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, LR0/F;->u()I

    move-result p2

    if-eqz p2, :cond_7

    if-nez p1, :cond_1

    goto :goto_5

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge p1, p2, :cond_3

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[I

    :cond_3
    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:LR0/r;

    if-ge p2, v1, :cond_6

    iget v1, v2, LR0/r;->d:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    iget v1, v2, LR0/r;->f:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, LN0/A;->h(I)I

    move-result v2

    :goto_2
    sub-int/2addr v1, v2

    goto :goto_3

    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v1, v1, p2

    iget v3, v2, LR0/r;->g:I

    invoke-virtual {v1, v3}, LN0/A;->f(I)I

    move-result v1

    iget v2, v2, LR0/r;->g:I

    goto :goto_2

    :goto_3
    if-ltz v1, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_4
    if-ge p1, v0, :cond_7

    iget p2, v2, LR0/r;->c:I

    if-ltz p2, :cond_7

    invoke-virtual {p3}, LR0/O;->b()I

    move-result v1

    if-ge p2, v1, :cond_7

    iget p2, v2, LR0/r;->c:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[I

    aget v1, v1, p1

    invoke-virtual {p4, p2, v1}, LJ/f;->b(II)V

    iget p2, v2, LR0/r;->c:I

    iget v1, v2, LR0/r;->d:I

    add-int/2addr p2, v1

    iput p2, v2, LR0/r;->c:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method public final i(LR0/O;)I
    .locals 7

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x0(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w0(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/brisa/local/d0;->d(LR0/O;LR0/v;Landroid/view/View;Landroid/view/View;LR0/F;Z)I

    move-result p1

    return p1
.end method

.method public final i0(ILM0/s0;LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P0(ILM0/s0;LR0/O;)I

    move-result p1

    return p1
.end method

.method public final j(LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u0(LR0/O;)I

    move-result p1

    return p1
.end method

.method public final j0(ILM0/s0;LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P0(ILM0/s0;LR0/O;)I

    move-result p1

    return p1
.end method

.method public final k(LR0/O;)I
    .locals 7

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x0(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w0(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/brisa/local/d0;->f(LR0/O;LR0/v;Landroid/view/View;Landroid/view/View;LR0/F;Z)I

    move-result p1

    return p1
.end method

.method public final l(LR0/O;)I
    .locals 7

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x0(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w0(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/brisa/local/d0;->d(LR0/O;LR0/v;Landroid/view/View;Landroid/view/View;LR0/F;Z)I

    move-result p1

    return p1
.end method

.method public final m(LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u0(LR0/O;)I

    move-result p1

    return p1
.end method

.method public final m0(Landroid/graphics/Rect;II)V
    .locals 5

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

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    const/4 v3, 0x1

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v0}, Ls/g;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, LR0/F;->f(III)I

    move-result p1

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    mul-int/2addr p3, v4

    add-int/2addr p3, v1

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ls/g;->e(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, p3, v0}, LR0/F;->f(III)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v0}, Ls/g;->e(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, p1, v0}, LR0/F;->f(III)I

    move-result p2

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    mul-int/2addr p1, v4

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
    .locals 7

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x0(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w0(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/brisa/local/d0;->f(LR0/O;LR0/v;Landroid/view/View;Landroid/view/View;LR0/F;Z)I

    move-result p1

    return p1
.end method

.method public final q()LR0/G;
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    new-instance v0, LR0/X;

    invoke-direct {v0, v2, v1}, LR0/G;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, LR0/X;

    invoke-direct {v0, v1, v2}, LR0/G;-><init>(II)V

    return-object v0
.end method

.method public final r(Landroid/content/Context;Landroid/util/AttributeSet;)LR0/G;
    .locals 1

    new-instance v0, LR0/X;

    invoke-direct {v0, p1, p2}, LR0/G;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final s(Landroid/view/ViewGroup$LayoutParams;)LR0/G;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, LR0/X;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, LR0/G;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, LR0/X;

    invoke-direct {v0, p1}, LR0/G;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final s0()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:LR0/Z;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t0()Z
    .locals 2

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, LR0/F;->f:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B0()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A0()I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A0()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B0()I

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:LN0/O;

    invoke-virtual {v0}, LN0/O;->I()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LR0/F;->e:Z

    invoke-virtual {p0}, LR0/F;->h0()V

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method public final u0(LR0/O;)I
    .locals 8

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x0(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w0(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z

    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/brisa/local/d0;->e(LR0/O;LR0/v;Landroid/view/View;Landroid/view/View;LR0/F;ZZ)I

    move-result p1

    return p1
.end method

.method public final v0(LM0/s0;LR0/r;LR0/O;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Ljava/util/BitSet;

    const/4 v4, 0x0

    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:LR0/r;

    iget-boolean v5, v3, LR0/r;->i:Z

    if-eqz v5, :cond_1

    iget v5, v2, LR0/r;->e:I

    if-ne v5, v6, :cond_0

    const v5, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v5, -0x80000000

    goto :goto_0

    :cond_1
    iget v5, v2, LR0/r;->e:I

    if-ne v5, v6, :cond_2

    iget v5, v2, LR0/r;->g:I

    iget v9, v2, LR0/r;->b:I

    add-int/2addr v5, v9

    goto :goto_0

    :cond_2
    iget v5, v2, LR0/r;->f:I

    iget v9, v2, LR0/r;->b:I

    sub-int/2addr v5, v9

    :goto_0
    iget v9, v2, LR0/r;->e:I

    move v10, v4

    :goto_1
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    if-ge v10, v11, :cond_4

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v11, v11, v10

    iget-object v11, v11, LN0/A;->e:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v11, v11, v10

    invoke-virtual {v0, v11, v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S0(LN0/A;II)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    if-eqz v9, :cond_5

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v9}, LR0/v;->h()I

    move-result v9

    goto :goto_3

    :cond_5
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v9}, LR0/v;->m()I

    move-result v9

    :goto_3
    move v10, v4

    :goto_4
    iget v11, v2, LR0/r;->c:I

    const/4 v12, -0x1

    if-ltz v11, :cond_1c

    invoke-virtual/range {p3 .. p3}, LR0/O;->b()I

    move-result v13

    if-ge v11, v13, :cond_1c

    iget-boolean v11, v3, LR0/r;->i:Z

    if-nez v11, :cond_6

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1c

    :cond_6
    iget v10, v2, LR0/r;->c:I

    const-wide v13, 0x7fffffffffffffffL

    invoke-virtual {v1, v10, v13, v14}, LM0/s0;->m(IJ)LR0/T;

    move-result-object v10

    iget-object v10, v10, LR0/T;->a:Landroid/view/View;

    iget v11, v2, LR0/r;->c:I

    iget v13, v2, LR0/r;->d:I

    add-int/2addr v11, v13

    iput v11, v2, LR0/r;->c:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, LR0/X;

    iget-object v13, v11, LR0/G;->a:LR0/T;

    invoke-virtual {v13}, LR0/T;->b()I

    move-result v13

    iget-object v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:LN0/O;

    iget-object v15, v14, LN0/O;->f:Ljava/lang/Object;

    check-cast v15, [I

    if-eqz v15, :cond_8

    array-length v8, v15

    if-lt v13, v8, :cond_7

    goto :goto_5

    :cond_7
    aget v8, v15, v13

    goto :goto_6

    :cond_8
    :goto_5
    move v8, v12

    :goto_6
    if-ne v8, v12, :cond_e

    iget v8, v2, LR0/r;->e:I

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J0(I)Z

    move-result v8

    if-eqz v8, :cond_9

    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    sub-int/2addr v8, v6

    move v15, v12

    move/from16 v16, v15

    goto :goto_7

    :cond_9
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    move/from16 v16, v6

    move v15, v8

    move v8, v4

    :goto_7
    iget v7, v2, LR0/r;->e:I

    const/16 v17, 0x0

    if-ne v7, v6, :cond_c

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v7}, LR0/v;->m()I

    move-result v7

    const v4, 0x7fffffff

    :goto_8
    if-eq v8, v15, :cond_b

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v12, v12, v8

    invoke-virtual {v12, v7}, LN0/A;->f(I)I

    move-result v6

    if-ge v6, v4, :cond_a

    move v4, v6

    move-object/from16 v17, v12

    :cond_a
    add-int v8, v8, v16

    const/4 v6, 0x1

    const/4 v12, -0x1

    goto :goto_8

    :cond_b
    move-object/from16 v4, v17

    goto :goto_a

    :cond_c
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v4}, LR0/v;->h()I

    move-result v4

    const/high16 v6, -0x80000000

    :goto_9
    if-eq v8, v15, :cond_b

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v7, v7, v8

    invoke-virtual {v7, v4}, LN0/A;->h(I)I

    move-result v12

    if-le v12, v6, :cond_d

    move-object/from16 v17, v7

    move v6, v12

    :cond_d
    add-int v8, v8, v16

    goto :goto_9

    :goto_a
    invoke-virtual {v14, v13}, LN0/O;->M(I)V

    iget-object v6, v14, LN0/O;->f:Ljava/lang/Object;

    check-cast v6, [I

    iget v7, v4, LN0/A;->d:I

    aput v7, v6, v13

    goto :goto_b

    :cond_e
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:[LN0/A;

    aget-object v4, v4, v8

    :goto_b
    iput-object v4, v11, LR0/X;->e:LN0/A;

    iget v6, v2, LR0/r;->e:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    const/4 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v10, v6, v8}, LR0/F;->a(Landroid/view/View;IZ)V

    goto :goto_c

    :cond_f
    const/4 v8, 0x0

    invoke-virtual {v0, v10, v8, v8}, LR0/F;->a(Landroid/view/View;IZ)V

    :goto_c
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    if-ne v6, v7, :cond_10

    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    iget v12, v0, LR0/F;->k:I

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v8, v6, v12, v8, v13}, LR0/F;->v(ZIIII)I

    move-result v6

    iget v8, v0, LR0/F;->n:I

    iget v12, v0, LR0/F;->l:I

    invoke-virtual {v0}, LR0/F;->B()I

    move-result v13

    invoke-virtual {v0}, LR0/F;->y()I

    move-result v14

    add-int/2addr v14, v13

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v7, v8, v12, v14, v13}, LR0/F;->v(ZIIII)I

    move-result v8

    invoke-virtual {v0, v10, v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H0(Landroid/view/View;II)V

    goto :goto_d

    :cond_10
    iget v6, v0, LR0/F;->m:I

    iget v8, v0, LR0/F;->k:I

    invoke-virtual {v0}, LR0/F;->z()I

    move-result v12

    invoke-virtual {v0}, LR0/F;->A()I

    move-result v13

    add-int/2addr v13, v12

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v7, v6, v8, v13, v12}, LR0/F;->v(ZIIII)I

    move-result v6

    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    iget v12, v0, LR0/F;->l:I

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v14, 0x0

    invoke-static {v14, v8, v12, v14, v13}, LR0/F;->v(ZIIII)I

    move-result v8

    invoke-virtual {v0, v10, v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H0(Landroid/view/View;II)V

    :goto_d
    iget v6, v2, LR0/r;->e:I

    if-ne v6, v7, :cond_11

    invoke-virtual {v4, v9}, LN0/A;->f(I)I

    move-result v6

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v7, v10}, LR0/v;->d(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v6

    goto :goto_e

    :cond_11
    invoke-virtual {v4, v9}, LN0/A;->h(I)I

    move-result v7

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v6, v10}, LR0/v;->d(Landroid/view/View;)I

    move-result v6

    sub-int v6, v7, v6

    :goto_e
    iget v8, v2, LR0/r;->e:I

    const/4 v12, 0x1

    if-ne v8, v12, :cond_15

    iget-object v8, v11, LR0/X;->e:LN0/A;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, LR0/X;

    iput-object v8, v11, LR0/X;->e:LN0/A;

    iget-object v13, v8, LN0/A;->e:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v14, -0x80000000

    iput v14, v8, LN0/A;->b:I

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v13, v12, :cond_12

    iput v14, v8, LN0/A;->a:I

    :cond_12
    iget-object v12, v11, LR0/G;->a:LR0/T;

    invoke-virtual {v12}, LR0/T;->g()Z

    move-result v12

    if-nez v12, :cond_13

    iget-object v11, v11, LR0/G;->a:LR0/T;

    invoke-virtual {v11}, LR0/T;->j()Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_13
    iget v11, v8, LN0/A;->c:I

    iget-object v12, v8, LN0/A;->f:Ljava/lang/Object;

    check-cast v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v12, v10}, LR0/v;->d(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v11

    iput v12, v8, LN0/A;->c:I

    :cond_14
    const/high16 v14, -0x80000000

    goto :goto_f

    :cond_15
    iget-object v8, v11, LR0/X;->e:LN0/A;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, LR0/X;

    iput-object v8, v11, LR0/X;->e:LN0/A;

    iget-object v12, v8, LN0/A;->e:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v14, -0x80000000

    iput v14, v8, LN0/A;->a:I

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    iput v14, v8, LN0/A;->b:I

    :cond_16
    iget-object v12, v11, LR0/G;->a:LR0/T;

    invoke-virtual {v12}, LR0/T;->g()Z

    move-result v12

    if-nez v12, :cond_17

    iget-object v11, v11, LR0/G;->a:LR0/T;

    invoke-virtual {v11}, LR0/T;->j()Z

    move-result v11

    if-eqz v11, :cond_18

    :cond_17
    iget v11, v8, LN0/A;->c:I

    iget-object v12, v8, LN0/A;->f:Ljava/lang/Object;

    check-cast v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v12, v10}, LR0/v;->d(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v11

    iput v12, v8, LN0/A;->c:I

    :cond_18
    :goto_f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0()Z

    move-result v8

    if-eqz v8, :cond_19

    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    const/4 v12, 0x1

    if-ne v8, v12, :cond_19

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    invoke-virtual {v8}, LR0/v;->h()I

    move-result v8

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:I

    sub-int/2addr v11, v12

    iget v12, v4, LN0/A;->d:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    mul-int/2addr v11, v12

    sub-int/2addr v8, v11

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    invoke-virtual {v11, v10}, LR0/v;->d(Landroid/view/View;)I

    move-result v11

    sub-int v11, v8, v11

    goto :goto_10

    :cond_19
    iget v8, v4, LN0/A;->d:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    mul-int/2addr v8, v11

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    invoke-virtual {v11}, LR0/v;->m()I

    move-result v11

    add-int/2addr v11, v8

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:LR0/v;

    invoke-virtual {v8, v10}, LR0/v;->d(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v11

    :goto_10
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1a

    invoke-static {v10, v11, v6, v8, v7}, LR0/F;->I(Landroid/view/View;IIII)V

    goto :goto_11

    :cond_1a
    invoke-static {v10, v6, v11, v7, v8}, LR0/F;->I(Landroid/view/View;IIII)V

    :goto_11
    iget v6, v3, LR0/r;->e:I

    invoke-virtual {v0, v4, v6, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S0(LN0/A;II)V

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0(LM0/s0;LR0/r;)V

    iget-boolean v6, v3, LR0/r;->h:Z

    if-eqz v6, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Ljava/util/BitSet;

    iget v4, v4, LN0/A;->d:I

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Ljava/util/BitSet;->set(IZ)V

    :cond_1b
    move v6, v13

    move v10, v6

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_1c
    if-nez v10, :cond_1d

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0(LM0/s0;LR0/r;)V

    :cond_1d
    iget v1, v3, LR0/r;->e:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1e

    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D0(I)I

    move-result v1

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v3}, LR0/v;->m()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_12

    :cond_1e
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C0(I)I

    move-result v1

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v3}, LR0/v;->h()I

    move-result v3

    sub-int v3, v1, v3

    :goto_12
    if-lez v3, :cond_1f

    iget v1, v2, LR0/r;->b:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_1f
    const/16 v18, 0x0

    return v18
.end method

.method public final w0(Z)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v0}, LR0/v;->m()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->h()I

    move-result v1

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v5, v4}, LR0/v;->f(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v6, v4}, LR0/v;->c(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final x0(Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v0}, LR0/v;->m()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->h()I

    move-result v1

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v6, v5}, LR0/v;->f(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v7, v5}, LR0/v;->c(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final y0(LM0/s0;LR0/O;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C0(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v0}, LR0/v;->h()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P0(ILM0/s0;LR0/O;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {p1, v0}, LR0/v;->q(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final z0(LM0/s0;LR0/O;Z)V
    .locals 2

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D0(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v0}, LR0/v;->m()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P0(ILM0/s0;LR0/O;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    neg-int p2, v1

    invoke-virtual {p1, p2}, LR0/v;->q(I)V

    :cond_1
    :goto_0
    return-void
.end method
