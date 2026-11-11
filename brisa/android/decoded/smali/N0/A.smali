.class public final LN0/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILG/e;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LN0/A;->a:I

    .line 3
    iput-object p2, p0, LN0/A;->e:Ljava/lang/Object;

    .line 4
    iput p3, p0, LN0/A;->b:I

    .line 5
    iput p4, p0, LN0/A;->c:I

    .line 6
    iput p5, p0, LN0/A;->d:I

    .line 7
    iput-object p6, p0, LN0/A;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/A;->f:Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LN0/A;->e:Ljava/lang/Object;

    const/high16 p1, -0x80000000

    .line 10
    iput p1, p0, LN0/A;->a:I

    .line 11
    iput p1, p0, LN0/A;->b:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, LN0/A;->c:I

    .line 13
    iput p2, p0, LN0/A;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, LN0/A;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LR0/X;

    iget-object v2, p0, LN0/A;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v2, v0}, LR0/v;->c(Landroid/view/View;)I

    move-result v0

    iput v0, p0, LN0/A;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LN0/A;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/high16 v0, -0x80000000

    iput v0, p0, LN0/A;->a:I

    iput v0, p0, LN0/A;->b:I

    const/4 v0, 0x0

    iput v0, p0, LN0/A;->c:I

    return-void
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, LN0/A;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, LN0/A;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, LN0/A;->e(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0}, LN0/A;->e(II)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, LN0/A;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, LN0/A;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0}, LN0/A;->e(II)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, LN0/A;->e(II)I

    move-result v0

    return v0
.end method

.method public e(II)I
    .locals 11

    iget-object v0, p0, LN0/A;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->m()I

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v2}, LR0/v;->h()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-le p2, p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eq p1, p2, :cond_5

    iget-object v6, p0, LN0/A;->e:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v7, v6}, LR0/v;->f(Landroid/view/View;)I

    move-result v7

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v8, v6}, LR0/v;->c(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x0

    if-gt v7, v2, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    if-lt v8, v1, :cond_2

    move v9, v4

    :cond_2
    if-eqz v10, :cond_4

    if-eqz v9, :cond_4

    if-lt v7, v1, :cond_3

    if-le v8, v2, :cond_4

    :cond_3
    invoke-static {v6}, LR0/F;->C(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_4
    add-int/2addr p1, v5

    goto :goto_0

    :cond_5
    return v3
.end method

.method public f(I)I
    .locals 2

    iget v0, p0, LN0/A;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, LN0/A;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, LN0/A;->a()V

    iget p1, p0, LN0/A;->b:I

    return p1
.end method

.method public g(II)Landroid/view/View;
    .locals 6

    iget-object v0, p0, LN0/A;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, p0, LN0/A;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    if-eqz v5, :cond_0

    invoke-static {v4}, LR0/F;->C(Landroid/view/View;)I

    move-result v5

    if-le v5, p1, :cond_2

    :cond_0
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    if-nez v5, :cond_1

    invoke-static {v4}, LR0/F;->C(Landroid/view/View;)I

    move-result v5

    if-lt v5, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_6

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    if-eqz v4, :cond_4

    invoke-static {v2}, LR0/F;->C(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_6

    :cond_4
    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    if-nez v4, :cond_5

    invoke-static {v2}, LR0/F;->C(Landroid/view/View;)I

    move-result v4

    if-gt v4, p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 p2, p2, -0x1

    move-object v3, v2

    goto :goto_2

    :cond_6
    :goto_3
    return-object v3
.end method

.method public h(I)I
    .locals 2

    iget v0, p0, LN0/A;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, LN0/A;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    iget-object p1, p0, LN0/A;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/X;

    iget-object v1, p0, LN0/A;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:LR0/v;

    invoke-virtual {v1, p1}, LR0/v;->f(Landroid/view/View;)I

    move-result p1

    iput p1, p0, LN0/A;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, LN0/A;->a:I

    return p1
.end method
