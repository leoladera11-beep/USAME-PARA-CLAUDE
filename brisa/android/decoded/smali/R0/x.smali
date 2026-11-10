.class public final LR0/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LR0/a;)V
    .locals 3

    iget v0, p1, LR0/a;->a:I

    const/4 v1, 0x1

    iget-object v2, p0, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget v1, p1, LR0/a;->b:I

    iget p1, p1, LR0/a;->c:I

    invoke-virtual {v0, v1, p1}, LR0/F;->U(II)V

    return-void

    :cond_1
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget v1, p1, LR0/a;->b:I

    iget p1, p1, LR0/a;->c:I

    invoke-virtual {v0, v1, p1}, LR0/F;->W(II)V

    return-void

    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget v1, p1, LR0/a;->b:I

    iget p1, p1, LR0/a;->c:I

    invoke-virtual {v0, v1, p1}, LR0/F;->V(II)V

    return-void

    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget v1, p1, LR0/a;->b:I

    iget p1, p1, LR0/a;->c:I

    invoke-virtual {v0, v1, p1}, LR0/F;->S(II)V

    return-void
.end method

.method public b(I)LR0/T;
    .locals 7

    iget-object v0, p0, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v1}, LB/A;->F()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v5, v3}, LB/A;->E(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, LR0/T;->g()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, v5, LR0/T;->c:I

    if-eq v6, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    iget-object v6, v5, LR0/T;->a:Landroid/view/View;

    iget-object v4, v4, LB/A;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    move-object v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    iget-object v0, v4, LR0/T;->a:Landroid/view/View;

    iget-object p1, p1, LB/A;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_3
    return-object v2

    :cond_5
    return-object v4
.end method

.method public c(II)V
    .locals 8

    iget-object v0, p0, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v1}, LB/A;->F()I

    move-result v1

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v5, v2}, LB/A;->E(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, LR0/T;->n()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    iget v7, v6, LR0/T;->c:I

    if-lt v7, p1, :cond_1

    if-ge v7, p2, :cond_1

    invoke-virtual {v6, v3}, LR0/T;->a(I)V

    const/16 v3, 0x400

    invoke-virtual {v6, v3}, LR0/T;->a(I)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LR0/G;

    iput-boolean v4, v3, LR0/G;->c:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    iget-object v2, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_2
    if-ltz v5, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LR0/T;

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    iget v7, v6, LR0/T;->c:I

    if-lt v7, p1, :cond_4

    if-ge v7, p2, :cond_4

    invoke-virtual {v6, v3}, LR0/T;->a(I)V

    invoke-virtual {v1, v5}, LM0/s0;->i(I)V

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    return-void
.end method

.method public d(II)V
    .locals 8

    iget-object v0, p0, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v1}, LB/A;->F()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v5, v3}, LB/A;->E(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, LR0/T;->n()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, LR0/T;->c:I

    if-lt v6, p1, :cond_0

    invoke-virtual {v5, p2, v2}, LR0/T;->k(IZ)V

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    iput-boolean v4, v5, LR0/O;->e:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    iget-object v1, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LR0/T;

    if-eqz v6, :cond_2

    iget v7, v6, LR0/T;->c:I

    if-lt v7, p1, :cond_2

    invoke-virtual {v6, p2, v2}, LR0/T;->k(IZ)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    return-void
.end method

.method public e(II)V
    .locals 11

    iget-object v0, p0, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v1}, LB/A;->F()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge p1, p2, :cond_0

    move v4, p1

    move v5, p2

    move v6, v2

    goto :goto_0

    :cond_0
    move v5, p1

    move v4, p2

    move v6, v3

    :goto_0
    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v1, :cond_4

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v9, v8}, LB/A;->E(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v9

    if-eqz v9, :cond_3

    iget v10, v9, LR0/T;->c:I

    if-lt v10, v4, :cond_3

    if-le v10, v5, :cond_1

    goto :goto_3

    :cond_1
    if-ne v10, p1, :cond_2

    sub-int v10, p2, p1

    invoke-virtual {v9, v10, v7}, LR0/T;->k(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v6, v7}, LR0/T;->k(IZ)V

    :goto_2
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    iput-boolean v3, v9, LR0/O;->e:Z

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    iget-object v1, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-ge p1, p2, :cond_5

    move v4, p1

    move v5, p2

    goto :goto_4

    :cond_5
    move v5, p1

    move v4, p2

    move v2, v3

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v7

    :goto_5
    if-ge v8, v6, :cond_9

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LR0/T;

    if-eqz v9, :cond_8

    iget v10, v9, LR0/T;->c:I

    if-lt v10, v4, :cond_8

    if-le v10, v5, :cond_6

    goto :goto_6

    :cond_6
    if-ne v10, p1, :cond_7

    sub-int v10, p2, p1

    invoke-virtual {v9, v10, v7}, LR0/T;->k(IZ)V

    goto :goto_6

    :cond_7
    invoke-virtual {v9, v2, v7}, LR0/T;->k(IZ)V

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    return-void
.end method

.method public f(LR0/T;LE0/e;LE0/e;)V
    .locals 8

    iget-object v0, p0, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LR0/T;->m(Z)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    move-object v2, v1

    check-cast v2, LR0/i;

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p2, LE0/e;->a:I

    iget v6, p3, LE0/e;->a:I

    if-ne v4, v6, :cond_1

    iget v1, p2, LE0/e;->b:I

    iget v3, p3, LE0/e;->b:I

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    goto :goto_1

    :cond_1
    :goto_0
    iget v5, p2, LE0/e;->b:I

    iget v7, p3, LE0/e;->b:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, LR0/i;->g(LR0/T;IIII)Z

    move-result p1

    goto :goto_2

    :goto_1
    invoke-virtual {v2, v3}, LR0/i;->l(LR0/T;)V

    iget-object p1, v3, LR0/T;->a:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, v2, LR0/i;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    :cond_2
    return-void
.end method

.method public g(LR0/T;LE0/e;LE0/e;)V
    .locals 8

    iget-object v0, p0, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    invoke-virtual {v1, p1}, LM0/s0;->n(LR0/T;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->e(LR0/T;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LR0/T;->m(Z)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    move-object v2, v1

    check-cast v2, LR0/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p2, LE0/e;->a:I

    iget v5, p2, LE0/e;->b:I

    iget-object p2, p1, LR0/T;->a:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    move v6, v1

    goto :goto_1

    :cond_0
    iget v1, p3, LE0/e;->a:I

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    :goto_2
    move v7, p3

    goto :goto_3

    :cond_1
    iget p3, p3, LE0/e;->b:I

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, LR0/T;->g()Z

    move-result p3

    if-nez p3, :cond_2

    if-ne v4, v6, :cond_3

    if-eq v5, v7, :cond_2

    goto :goto_4

    :cond_2
    move-object v3, p1

    goto :goto_5

    :cond_3
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {p2, v6, v7, p3, v1}, Landroid/view/View;->layout(IIII)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, LR0/i;->g(LR0/T;IIII)Z

    move-result p1

    goto :goto_6

    :goto_5
    invoke-virtual {v2, v3}, LR0/i;->l(LR0/T;)V

    iget-object p1, v2, LR0/i;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_6
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    :cond_4
    return-void
.end method
