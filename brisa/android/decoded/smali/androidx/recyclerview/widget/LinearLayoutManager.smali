.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super LR0/F;
.source "SourceFile"


# instance fields
.field public final A:LP/l;

.field public final B:I

.field public final C:[I

.field public o:I

.field public p:LR0/s;

.field public q:LR0/v;

.field public r:Z

.field public final s:Z

.field public t:Z

.field public u:Z

.field public final v:Z

.field public w:I

.field public x:I

.field public y:LR0/t;

.field public final z:LI0/w;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, LR0/F;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    .line 4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 5
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    const/high16 v2, -0x80000000

    .line 8
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    .line 10
    new-instance v3, LI0/w;

    invoke-direct {v3}, LI0/w;-><init>()V

    iput-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:LI0/w;

    .line 11
    new-instance v3, LP/l;

    .line 12
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:LP/l;

    const/4 v3, 0x2

    .line 14
    iput v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I

    .line 15
    new-array v3, v3, [I

    iput-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:[I

    .line 16
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0(I)V

    .line 17
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Ljava/lang/String;)V

    .line 18
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    .line 20
    invoke-virtual {p0}, LR0/F;->h0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, LR0/F;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    .line 24
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 25
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 26
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    const/high16 v0, -0x80000000

    .line 28
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    .line 30
    new-instance v1, LI0/w;

    invoke-direct {v1}, LI0/w;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:LI0/w;

    .line 31
    new-instance v1, LP/l;

    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:LP/l;

    const/4 v1, 0x2

    .line 34
    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I

    .line 35
    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:[I

    .line 36
    invoke-static {p1, p2, p3, p4}, LR0/F;->D(Landroid/content/Context;Landroid/util/AttributeSet;II)LR0/E;

    move-result-object p1

    .line 37
    iget p2, p1, LR0/E;->a:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0(I)V

    .line 38
    iget-boolean p2, p1, LR0/E;->c:Z

    .line 39
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Ljava/lang/String;)V

    .line 40
    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iput-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    .line 42
    invoke-virtual {p0}, LR0/F;->h0()V

    .line 43
    :goto_0
    iget-boolean p1, p1, LR0/E;->d:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(Z)V

    return-void
.end method


# virtual methods
.method public final A0(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final B0(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final C0(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0()V

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_3

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {p0, p1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, LR0/v;->f(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->m()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_1
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-nez v2, :cond_2

    iget-object v2, p0, LR0/F;->c:LN0/O;

    invoke-virtual {v2, p1, p2, v0, v1}, LN0/O;->N(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, LR0/F;->d:LN0/O;

    invoke-virtual {v2, p1, p2, v0, v1}, LN0/O;->N(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final D0(IIZ)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-nez v1, :cond_1

    iget-object v1, p0, LR0/F;->c:LN0/O;

    invoke-virtual {v1, p1, p2, p3, v0}, LN0/O;->N(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, LR0/F;->d:LN0/O;

    invoke-virtual {v1, p1, p2, p3, v0}, LN0/O;->N(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public E0(LM0/s0;LR0/O;ZZ)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0()V

    invoke-virtual {v0}, LR0/F;->u()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {v0}, LR0/F;->u()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v4, -0x1

    move v5, v4

    goto :goto_0

    :cond_0
    move v4, v1

    move v1, v2

    move v5, v3

    :goto_0
    invoke-virtual/range {p2 .. p2}, LR0/O;->b()I

    move-result v6

    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v7}, LR0/v;->m()I

    move-result v7

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v8}, LR0/v;->h()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v9

    move-object v11, v10

    :goto_1
    if-eq v1, v4, :cond_a

    invoke-virtual {v0, v1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, LR0/F;->C(Landroid/view/View;)I

    move-result v13

    iget-object v14, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v14, v12}, LR0/v;->f(Landroid/view/View;)I

    move-result v14

    iget-object v15, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v15, v12}, LR0/v;->c(Landroid/view/View;)I

    move-result v15

    if-ltz v13, :cond_9

    if-ge v13, v6, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, LR0/G;

    iget-object v13, v13, LR0/G;->a:LR0/T;

    invoke-virtual {v13}, LR0/T;->g()Z

    move-result v13

    if-eqz v13, :cond_1

    if-nez v11, :cond_9

    move-object v11, v12

    goto :goto_7

    :cond_1
    if-gt v15, v7, :cond_2

    if-ge v14, v7, :cond_2

    move v13, v3

    goto :goto_2

    :cond_2
    move v13, v2

    :goto_2
    if-lt v14, v8, :cond_3

    if-le v15, v8, :cond_3

    move v14, v3

    goto :goto_3

    :cond_3
    move v14, v2

    :goto_3
    if-nez v13, :cond_5

    if-eqz v14, :cond_4

    goto :goto_4

    :cond_4
    return-object v12

    :cond_5
    :goto_4
    if-eqz p3, :cond_7

    if-eqz v14, :cond_6

    goto :goto_5

    :cond_6
    if-nez v9, :cond_9

    goto :goto_6

    :cond_7
    if-eqz v13, :cond_8

    :goto_5
    move-object v10, v12

    goto :goto_7

    :cond_8
    if-nez v9, :cond_9

    :goto_6
    move-object v9, v12

    :cond_9
    :goto_7
    add-int/2addr v1, v5

    goto :goto_1

    :cond_a
    if-eqz v9, :cond_b

    return-object v9

    :cond_b
    if-eqz v10, :cond_c

    return-object v10

    :cond_c
    return-object v11
.end method

.method public final F0(ILM0/s0;LR0/O;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v0}, LR0/v;->h()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(ILM0/s0;LR0/O;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {p3}, LR0/v;->h()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {p1, p3}, LR0/v;->q(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final G()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final G0(ILM0/s0;LR0/O;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v0}, LR0/v;->m()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(ILM0/s0;LR0/O;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {p3}, LR0/v;->m()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    neg-int p4, p1

    invoke-virtual {p3, p4}, LR0/v;->q(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final H0()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final I0()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final J0()Z
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

.method public K0(LM0/s0;LR0/O;LR0/s;LP/l;)V
    .locals 10

    invoke-virtual {p3, p1}, LR0/s;->b(LM0/s0;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, LP/l;->b:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-object v1, p3, LR0/s;->k:Ljava/util/List;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iget v4, p3, LR0/s;->f:I

    if-ne v4, v2, :cond_1

    move v4, p2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-ne v1, v4, :cond_2

    invoke-virtual {p0, p1, v2, v3}, LR0/F;->a(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v3, v3}, LR0/F;->a(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_3
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iget v4, p3, LR0/s;->f:I

    if-ne v4, v2, :cond_4

    move v4, p2

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    if-ne v1, v4, :cond_5

    invoke-virtual {p0, p1, v2, p2}, LR0/F;->a(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v3, p2}, LR0/F;->a(Landroid/view/View;IZ)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LR0/G;

    iget-object v3, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    iget v3, p0, LR0/F;->m:I

    iget v6, p0, LR0/F;->k:I

    invoke-virtual {p0}, LR0/F;->z()I

    move-result v7

    invoke-virtual {p0}, LR0/F;->A()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c()Z

    move-result v7

    invoke-static {v7, v3, v6, v8, v4}, LR0/F;->v(ZIIII)I

    move-result v3

    iget v4, p0, LR0/F;->n:I

    iget v6, p0, LR0/F;->l:I

    invoke-virtual {p0}, LR0/F;->B()I

    move-result v7

    invoke-virtual {p0}, LR0/F;->y()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d()Z

    move-result v7

    invoke-static {v7, v4, v6, v8, v5}, LR0/F;->v(ZIIII)I

    move-result v4

    invoke-virtual {p0, p1, v3, v4, v1}, LR0/F;->p0(Landroid/view/View;IILR0/G;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v1, p1}, LR0/v;->d(Landroid/view/View;)I

    move-result v1

    iput v1, p4, LP/l;->a:I

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-ne v1, p2, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, LR0/F;->m:I

    invoke-virtual {p0}, LR0/F;->A()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3, p1}, LR0/v;->e(Landroid/view/View;)I

    move-result v3

    sub-int v3, v1, v3

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, LR0/F;->z()I

    move-result v3

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v1, p1}, LR0/v;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v3

    :goto_3
    iget v4, p3, LR0/s;->f:I

    if-ne v4, v2, :cond_8

    iget p3, p3, LR0/s;->b:I

    iget v2, p4, LP/l;->a:I

    sub-int v2, p3, v2

    goto :goto_4

    :cond_8
    iget v2, p3, LR0/s;->b:I

    iget p3, p4, LP/l;->a:I

    add-int/2addr p3, v2

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, LR0/F;->B()I

    move-result v1

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3, p1}, LR0/v;->e(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p3, LR0/s;->f:I

    if-ne v4, v2, :cond_a

    iget p3, p3, LR0/s;->b:I

    iget v2, p4, LP/l;->a:I

    sub-int v2, p3, v2

    move v9, v1

    move v1, p3

    move p3, v3

    move v3, v2

    move v2, v9

    goto :goto_4

    :cond_a
    iget p3, p3, LR0/s;->b:I

    iget v2, p4, LP/l;->a:I

    add-int/2addr v2, p3

    move v9, v3

    move v3, p3

    move p3, v9

    move v9, v2

    move v2, v1

    move v1, v9

    :goto_4
    invoke-static {p1, v3, v2, v1, p3}, LR0/F;->I(Landroid/view/View;IIII)V

    iget-object p3, v0, LR0/G;->a:LR0/T;

    invoke-virtual {p3}, LR0/T;->g()Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, v0, LR0/G;->a:LR0/T;

    invoke-virtual {p3}, LR0/T;->j()Z

    move-result p3

    if-eqz p3, :cond_c

    :cond_b
    iput-boolean p2, p4, LP/l;->c:Z

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, LP/l;->d:Z

    return-void
.end method

.method public L0(LM0/s0;LR0/O;LI0/w;I)V
    .locals 0

    return-void
.end method

.method public final M(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public final M0(LM0/s0;LR0/s;)V
    .locals 5

    iget-boolean v0, p2, LR0/s;->a:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p2, LR0/s;->l:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p2, LR0/s;->g:I

    iget v1, p2, LR0/s;->i:I

    iget p2, p2, LR0/s;->f:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_7

    invoke-virtual {p0}, LR0/F;->u()I

    move-result p2

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3}, LR0/v;->g()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_0
    if-ge v0, p2, :cond_e

    invoke-virtual {p0, v0}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v4, v1}, LR0/v;->f(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v4, v1}, LR0/v;->p(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(LM0/s0;II)V

    return-void

    :cond_4
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    :goto_2
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v2, v1}, LR0/v;->f(Landroid/view/View;)I

    move-result v2

    if-lt v2, v3, :cond_6

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v2, v1}, LR0/v;->p(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(LM0/s0;II)V

    return-void

    :cond_7
    if-gez v0, :cond_8

    goto :goto_8

    :cond_8
    sub-int/2addr v0, v1

    invoke-virtual {p0}, LR0/F;->u()I

    move-result p2

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz v1, :cond_b

    add-int/lit8 p2, p2, -0x1

    move v1, p2

    :goto_4
    if-ltz v1, :cond_e

    invoke-virtual {p0, v1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3, v2}, LR0/v;->c(Landroid/view/View;)I

    move-result v3

    if-gt v3, v0, :cond_a

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3, v2}, LR0/v;->o(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-virtual {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(LM0/s0;II)V

    return-void

    :cond_b
    move v1, v2

    :goto_6
    if-ge v1, p2, :cond_e

    invoke-virtual {p0, v1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v4, v3}, LR0/v;->c(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_d

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v4, v3}, LR0/v;->o(Landroid/view/View;)I

    move-result v3

    if-le v3, v0, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    invoke-virtual {p0, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(LM0/s0;II)V

    :cond_e
    :goto_8
    return-void
.end method

.method public N(Landroid/view/View;ILM0/s0;LR0/O;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0()V

    invoke-virtual {p0}, LR0/F;->u()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v0}, LR0/v;->n()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eaaaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0(IIZLR0/O;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput p2, v0, LR0/s;->g:I

    iput-boolean v1, v0, LR0/s;->a:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p3, v0, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(LM0/s0;LR0/s;LR0/O;Z)I

    const/4 p3, -0x1

    if-ne p1, p3, :cond_3

    iget-boolean p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz p4, :cond_2

    invoke-virtual {p0}, LR0/F;->u()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LR0/F;->u()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-boolean p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz p4, :cond_4

    invoke-virtual {p0}, LR0/F;->u()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, LR0/F;->u()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(II)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-ne p1, p3, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0()Landroid/view/View;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p3

    if-eqz p3, :cond_7

    if-nez p2, :cond_6

    :goto_2
    const/4 p1, 0x0

    :cond_6
    return-object p1

    :cond_7
    return-object p2
.end method

.method public final N0(LM0/s0;II)V
    .locals 1

    if-ne p2, p3, :cond_0

    goto :goto_2

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p3}, LR0/F;->f0(I)V

    invoke-virtual {p1, v0}, LM0/s0;->j(Landroid/view/View;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2}, LR0/F;->f0(I)V

    invoke-virtual {p1, v0}, LM0/s0;->j(Landroid/view/View;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final O(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-super {p0, p1}, LR0/F;->O(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(IIZ)Landroid/view/View;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, LR0/F;->C(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, LR0/F;->C(Landroid/view/View;)I

    move-result v2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_2
    return-void
.end method

.method public final O0()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    return-void
.end method

.method public final P0(ILM0/s0;LR0/O;)I
    .locals 5

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    const/4 v2, 0x1

    iput-boolean v2, v0, LR0/s;->a:Z

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0(IIZLR0/O;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget v4, v2, LR0/s;->g:I

    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(LM0/s0;LR0/s;LR0/O;Z)I

    move-result p2

    add-int/2addr p2, v4

    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    if-le v3, p2, :cond_3

    mul-int p1, v0, p2

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    neg-int p3, p1

    invoke-virtual {p2, p3}, LR0/v;->q(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput p1, p2, LR0/s;->j:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public final Q0(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation:"

    invoke-static {p1, v1}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-static {p0, p1}, LR0/v;->b(LR0/F;I)LR0/v;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:LI0/w;

    iput-object v0, v1, LI0/w;->f:Ljava/lang/Object;

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    invoke-virtual {p0}, LR0/F;->h0()V

    return-void
.end method

.method public R0(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    invoke-virtual {p0}, LR0/F;->h0()V

    return-void
.end method

.method public final S0(IIZLR0/O;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->k()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->g()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, LR0/s;->l:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput p1, v0, LR0/s;->f:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:[I

    aput v2, v0, v2

    aput v2, v0, v3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget p4, p4, LR0/s;->f:I

    aput v2, v0, v2

    aput v2, v0, v3

    invoke-static {v2, v2}, Ljava/lang/Math;->max(II)I

    move-result p4

    aget v0, v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v3, :cond_1

    move v2, v3

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p4

    :goto_1
    iput v1, p1, LR0/s;->h:I

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move p4, v0

    :goto_2
    iput p4, p1, LR0/s;->i:I

    const/4 p4, -0x1

    if-eqz v2, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v0}, LR0/v;->i()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p1, LR0/s;->h:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz v1, :cond_4

    move v3, p4

    :cond_4
    iput v3, v0, LR0/s;->e:I

    invoke-static {p1}, LR0/F;->C(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget v2, v1, LR0/s;->e:I

    add-int/2addr p4, v2

    iput p4, v0, LR0/s;->d:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {p4, p1}, LR0/v;->c(Landroid/view/View;)I

    move-result p4

    iput p4, v1, LR0/s;->b:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {p4, p1}, LR0/v;->c(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {p4}, LR0/v;->h()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget v1, v0, LR0/s;->h:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v2}, LR0/v;->m()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, LR0/s;->h:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v3, p4

    :goto_3
    iput v3, v0, LR0/s;->e:I

    invoke-static {p1}, LR0/F;->C(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget v2, v1, LR0/s;->e:I

    add-int/2addr p4, v2

    iput p4, v0, LR0/s;->d:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {p4, p1}, LR0/v;->f(Landroid/view/View;)I

    move-result p4

    iput p4, v1, LR0/s;->b:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {p4, p1}, LR0/v;->f(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {p4}, LR0/v;->m()I

    move-result p4

    add-int/2addr p1, p4

    :goto_4
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput p2, p4, LR0/s;->c:I

    if-eqz p3, :cond_7

    sub-int/2addr p2, p1

    iput p2, p4, LR0/s;->c:I

    :cond_7
    iput p1, p4, LR0/s;->g:I

    return-void
.end method

.method public final T0(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->h()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, LR0/s;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, LR0/s;->e:I

    iput p1, v0, LR0/s;->d:I

    iput v2, v0, LR0/s;->f:I

    iput p2, v0, LR0/s;->b:I

    const/high16 p1, -0x80000000

    iput p1, v0, LR0/s;->g:I

    return-void
.end method

.method public final U0(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->m()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, LR0/s;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput p1, v0, LR0/s;->d:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, v0, LR0/s;->e:I

    iput v1, v0, LR0/s;->f:I

    iput p2, v0, LR0/s;->b:I

    const/high16 p1, -0x80000000

    iput p1, v0, LR0/s;->g:I

    return-void
.end method

.method public X(LM0/s0;LR0/O;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    const/4 v4, -0x1

    if-nez v3, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, LR0/O;->b()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p1}, LR0/F;->c0(LM0/s0;)V

    return-void

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    if-eqz v3, :cond_2

    iget v3, v3, LR0/t;->e:I

    if-ltz v3, :cond_2

    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0()V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    const/4 v5, 0x0

    iput-boolean v5, v3, LR0/s;->a:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0()V

    iget-object v3, v0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v7, v0, LR0/F;->a:LB/A;

    iget-object v7, v7, LB/A;->h:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    :goto_0
    const/4 v3, 0x0

    :cond_5
    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:LI0/w;

    iget-boolean v8, v7, LI0/w;->d:Z

    const/high16 v9, -0x80000000

    const/4 v10, 0x1

    if-eqz v8, :cond_8

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    if-ne v8, v4, :cond_8

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_27

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v8, v3}, LR0/v;->f(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->h()I

    move-result v11

    if-ge v8, v11, :cond_7

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v8, v3}, LR0/v;->c(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->m()I

    move-result v11

    if-gt v8, v11, :cond_27

    :cond_7
    invoke-static {v3}, LR0/F;->C(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v3, v8}, LI0/w;->d(Landroid/view/View;I)V

    goto/16 :goto_e

    :cond_8
    :goto_1
    invoke-virtual {v7}, LI0/w;->g()V

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v7, LI0/w;->b:Z

    iget-boolean v3, v2, LR0/O;->f:Z

    if-nez v3, :cond_19

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    if-ne v3, v4, :cond_9

    goto/16 :goto_7

    :cond_9
    if-ltz v3, :cond_18

    invoke-virtual {v2}, LR0/O;->b()I

    move-result v8

    if-lt v3, v8, :cond_a

    goto/16 :goto_6

    :cond_a
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    iput v3, v7, LI0/w;->c:I

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    if-eqz v8, :cond_c

    iget v11, v8, LR0/t;->e:I

    if-ltz v11, :cond_c

    iget-boolean v3, v8, LR0/t;->g:Z

    iput-boolean v3, v7, LI0/w;->b:Z

    if-eqz v3, :cond_b

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3}, LR0/v;->h()I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    iget v8, v8, LR0/t;->f:I

    sub-int/2addr v3, v8

    iput v3, v7, LI0/w;->e:I

    goto/16 :goto_d

    :cond_b
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3}, LR0/v;->m()I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    iget v8, v8, LR0/t;->f:I

    add-int/2addr v3, v8

    iput v3, v7, LI0/w;->e:I

    goto/16 :goto_d

    :cond_c
    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v8, v9, :cond_16

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->p(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v8, v3}, LR0/v;->d(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->n()I

    move-result v11

    if-le v8, v11, :cond_d

    invoke-virtual {v7}, LI0/w;->b()V

    goto/16 :goto_d

    :cond_d
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v8, v3}, LR0/v;->f(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->m()I

    move-result v11

    sub-int/2addr v8, v11

    if-gez v8, :cond_e

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3}, LR0/v;->m()I

    move-result v3

    iput v3, v7, LI0/w;->e:I

    iput-boolean v5, v7, LI0/w;->b:Z

    goto/16 :goto_d

    :cond_e
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v8}, LR0/v;->h()I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v11, v3}, LR0/v;->c(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v8, v11

    if-gez v8, :cond_f

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3}, LR0/v;->h()I

    move-result v3

    iput v3, v7, LI0/w;->e:I

    iput-boolean v10, v7, LI0/w;->b:Z

    goto/16 :goto_d

    :cond_f
    iget-boolean v8, v7, LI0/w;->b:Z

    if-eqz v8, :cond_11

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v8, v3}, LR0/v;->c(Landroid/view/View;)I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    iget v11, v8, LR0/v;->a:I

    if-ne v9, v11, :cond_10

    move v11, v5

    goto :goto_2

    :cond_10
    invoke-virtual {v8}, LR0/v;->n()I

    move-result v11

    iget v8, v8, LR0/v;->a:I

    sub-int/2addr v11, v8

    :goto_2
    add-int/2addr v11, v3

    goto :goto_3

    :cond_11
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v8, v3}, LR0/v;->f(Landroid/view/View;)I

    move-result v11

    :goto_3
    iput v11, v7, LI0/w;->e:I

    goto/16 :goto_d

    :cond_12
    invoke-virtual {v0}, LR0/F;->u()I

    move-result v3

    if-lez v3, :cond_15

    invoke-virtual {v0, v5}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, LR0/F;->C(Landroid/view/View;)I

    move-result v3

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    if-ge v8, v3, :cond_13

    move v3, v10

    goto :goto_4

    :cond_13
    move v3, v5

    :goto_4
    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-ne v3, v8, :cond_14

    move v3, v10

    goto :goto_5

    :cond_14
    move v3, v5

    :goto_5
    iput-boolean v3, v7, LI0/w;->b:Z

    :cond_15
    invoke-virtual {v7}, LI0/w;->b()V

    goto/16 :goto_d

    :cond_16
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iput-boolean v3, v7, LI0/w;->b:Z

    if-eqz v3, :cond_17

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3}, LR0/v;->h()I

    move-result v3

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    sub-int/2addr v3, v8

    iput v3, v7, LI0/w;->e:I

    goto/16 :goto_d

    :cond_17
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3}, LR0/v;->m()I

    move-result v3

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    add-int/2addr v3, v8

    iput v3, v7, LI0/w;->e:I

    goto/16 :goto_d

    :cond_18
    :goto_6
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    iput v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    :cond_19
    :goto_7
    invoke-virtual {v0}, LR0/F;->u()I

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_b

    :cond_1a
    iget-object v3, v0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_1b

    goto :goto_8

    :cond_1b
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1c

    iget-object v8, v0, LR0/F;->a:LB/A;

    iget-object v8, v8, LB/A;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    :cond_1c
    :goto_8
    const/4 v3, 0x0

    :cond_1d
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, LR0/G;

    iget-object v11, v8, LR0/G;->a:LR0/T;

    invoke-virtual {v11}, LR0/T;->g()Z

    move-result v11

    if-nez v11, :cond_1e

    iget-object v11, v8, LR0/G;->a:LR0/T;

    invoke-virtual {v11}, LR0/T;->b()I

    move-result v11

    if-ltz v11, :cond_1e

    iget-object v8, v8, LR0/G;->a:LR0/T;

    invoke-virtual {v8}, LR0/T;->b()I

    move-result v8

    invoke-virtual {v2}, LR0/O;->b()I

    move-result v11

    if-ge v8, v11, :cond_1e

    invoke-static {v3}, LR0/F;->C(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v3, v8}, LI0/w;->d(Landroid/view/View;I)V

    goto/16 :goto_d

    :cond_1e
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Z

    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eq v3, v8, :cond_1f

    goto :goto_b

    :cond_1f
    iget-boolean v3, v7, LI0/w;->b:Z

    invoke-virtual {v0, v1, v2, v3, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(LM0/s0;LR0/O;ZZ)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-static {v3}, LR0/F;->C(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v3, v8}, LI0/w;->c(Landroid/view/View;I)V

    iget-boolean v8, v2, LR0/O;->f:Z

    if-nez v8, :cond_26

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->s0()Z

    move-result v8

    if-eqz v8, :cond_26

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v8, v3}, LR0/v;->f(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v11, v3}, LR0/v;->c(Landroid/view/View;)I

    move-result v3

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->m()I

    move-result v11

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v12}, LR0/v;->h()I

    move-result v12

    if-gt v3, v11, :cond_20

    if-ge v8, v11, :cond_20

    move v13, v10

    goto :goto_9

    :cond_20
    move v13, v5

    :goto_9
    if-lt v8, v12, :cond_21

    if-le v3, v12, :cond_21

    move v3, v10

    goto :goto_a

    :cond_21
    move v3, v5

    :goto_a
    if-nez v13, :cond_22

    if-eqz v3, :cond_26

    :cond_22
    iget-boolean v3, v7, LI0/w;->b:Z

    if-eqz v3, :cond_23

    move v11, v12

    :cond_23
    iput v11, v7, LI0/w;->e:I

    goto :goto_d

    :cond_24
    :goto_b
    invoke-virtual {v7}, LI0/w;->b()V

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v3, :cond_25

    invoke-virtual {v2}, LR0/O;->b()I

    move-result v3

    sub-int/2addr v3, v10

    goto :goto_c

    :cond_25
    move v3, v5

    :goto_c
    iput v3, v7, LI0/w;->c:I

    :cond_26
    :goto_d
    iput-boolean v10, v7, LI0/w;->d:Z

    :cond_27
    :goto_e
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget v8, v3, LR0/s;->j:I

    if-ltz v8, :cond_28

    move v8, v10

    goto :goto_f

    :cond_28
    move v8, v4

    :goto_f
    iput v8, v3, LR0/s;->f:I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:[I

    aput v5, v3, v5

    aput v5, v3, v10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget v8, v8, LR0/s;->f:I

    aput v5, v3, v5

    aput v5, v3, v10

    invoke-static {v5, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v11}, LR0/v;->m()I

    move-result v11

    add-int/2addr v11, v8

    aget v3, v3, v10

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v8}, LR0/v;->i()I

    move-result v8

    add-int/2addr v8, v3

    iget-boolean v3, v2, LR0/O;->f:Z

    if-eqz v3, :cond_2b

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    if-eq v3, v4, :cond_2b

    iget v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-eq v12, v9, :cond_2b

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->p(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2b

    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz v9, :cond_29

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v9}, LR0/v;->h()I

    move-result v9

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v12, v3}, LR0/v;->c(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v9, v3

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    :goto_10
    sub-int/2addr v9, v3

    goto :goto_11

    :cond_29
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v9, v3}, LR0/v;->f(Landroid/view/View;)I

    move-result v3

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v9}, LR0/v;->m()I

    move-result v9

    sub-int/2addr v3, v9

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    goto :goto_10

    :goto_11
    if-lez v9, :cond_2a

    add-int/2addr v11, v9

    goto :goto_12

    :cond_2a
    sub-int/2addr v8, v9

    :cond_2b
    :goto_12
    iget-boolean v3, v7, LI0/w;->b:Z

    if-eqz v3, :cond_2d

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz v3, :cond_2e

    :cond_2c
    move v4, v10

    goto :goto_13

    :cond_2d
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eqz v3, :cond_2c

    :cond_2e
    :goto_13
    invoke-virtual {v0, v1, v2, v7, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(LM0/s0;LR0/O;LI0/w;I)V

    invoke-virtual/range {p0 .. p1}, LR0/F;->o(LM0/s0;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v4}, LR0/v;->k()I

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v4}, LR0/v;->g()I

    move-result v4

    if-nez v4, :cond_2f

    move v4, v10

    goto :goto_14

    :cond_2f
    move v4, v5

    :goto_14
    iput-boolean v4, v3, LR0/s;->l:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput v5, v3, LR0/s;->i:I

    iget-boolean v3, v7, LI0/w;->b:Z

    if-eqz v3, :cond_31

    iget v3, v7, LI0/w;->c:I

    iget v4, v7, LI0/w;->e:I

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput v11, v3, LR0/s;->h:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(LM0/s0;LR0/s;LR0/O;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget v4, v3, LR0/s;->b:I

    iget v9, v3, LR0/s;->d:I

    iget v3, v3, LR0/s;->c:I

    if-lez v3, :cond_30

    add-int/2addr v8, v3

    :cond_30
    iget v3, v7, LI0/w;->c:I

    iget v11, v7, LI0/w;->e:I

    invoke-virtual {v0, v3, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput v8, v3, LR0/s;->h:I

    iget v8, v3, LR0/s;->d:I

    iget v11, v3, LR0/s;->e:I

    add-int/2addr v8, v11

    iput v8, v3, LR0/s;->d:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(LM0/s0;LR0/s;LR0/O;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget v8, v3, LR0/s;->b:I

    iget v3, v3, LR0/s;->c:I

    if-lez v3, :cond_34

    invoke-virtual {v0, v9, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0(II)V

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput v3, v4, LR0/s;->h:I

    invoke-virtual {v0, v1, v4, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(LM0/s0;LR0/s;LR0/O;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget v4, v3, LR0/s;->b:I

    goto :goto_15

    :cond_31
    iget v3, v7, LI0/w;->c:I

    iget v4, v7, LI0/w;->e:I

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput v8, v3, LR0/s;->h:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(LM0/s0;LR0/s;LR0/O;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget v8, v3, LR0/s;->b:I

    iget v4, v3, LR0/s;->d:I

    iget v3, v3, LR0/s;->c:I

    if-lez v3, :cond_32

    add-int/2addr v11, v3

    :cond_32
    iget v3, v7, LI0/w;->c:I

    iget v9, v7, LI0/w;->e:I

    invoke-virtual {v0, v3, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput v11, v3, LR0/s;->h:I

    iget v9, v3, LR0/s;->d:I

    iget v11, v3, LR0/s;->e:I

    add-int/2addr v9, v11

    iput v9, v3, LR0/s;->d:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(LM0/s0;LR0/s;LR0/O;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget v9, v3, LR0/s;->b:I

    iget v3, v3, LR0/s;->c:I

    if-lez v3, :cond_33

    invoke-virtual {v0, v4, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0(II)V

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput v3, v4, LR0/s;->h:I

    invoke-virtual {v0, v1, v4, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(LM0/s0;LR0/s;LR0/O;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iget v8, v3, LR0/s;->b:I

    :cond_33
    move v4, v9

    :cond_34
    :goto_15
    invoke-virtual {v0}, LR0/F;->u()I

    move-result v3

    if-lez v3, :cond_36

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    xor-int/2addr v3, v9

    if-eqz v3, :cond_35

    invoke-virtual {v0, v8, v1, v2, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(ILM0/s0;LR0/O;Z)I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr v8, v3

    invoke-virtual {v0, v4, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(ILM0/s0;LR0/O;Z)I

    move-result v3

    :goto_16
    add-int/2addr v4, v3

    add-int/2addr v8, v3

    goto :goto_17

    :cond_35
    invoke-virtual {v0, v4, v1, v2, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(ILM0/s0;LR0/O;Z)I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr v8, v3

    invoke-virtual {v0, v8, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(ILM0/s0;LR0/O;Z)I

    move-result v3

    goto :goto_16

    :cond_36
    :goto_17
    iget-boolean v3, v2, LR0/O;->j:Z

    if-eqz v3, :cond_3e

    invoke-virtual {v0}, LR0/F;->u()I

    move-result v3

    if-eqz v3, :cond_3e

    iget-boolean v3, v2, LR0/O;->f:Z

    if-nez v3, :cond_3e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->s0()Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_1c

    :cond_37
    iget-object v3, v1, LM0/s0;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v0, v5}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, LR0/F;->C(Landroid/view/View;)I

    move-result v11

    move v12, v5

    move v13, v12

    move v14, v13

    :goto_18
    if-ge v12, v9, :cond_3b

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LR0/T;

    invoke-virtual {v15}, LR0/T;->g()Z

    move-result v16

    iget-object v10, v15, LR0/T;->a:Landroid/view/View;

    if-eqz v16, :cond_38

    goto :goto_1a

    :cond_38
    invoke-virtual {v15}, LR0/T;->b()I

    move-result v15

    if-ge v15, v11, :cond_39

    const/4 v15, 0x1

    goto :goto_19

    :cond_39
    move v15, v5

    :goto_19
    iget-boolean v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-eq v15, v6, :cond_3a

    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v6, v10}, LR0/v;->d(Landroid/view/View;)I

    move-result v6

    add-int/2addr v13, v6

    goto :goto_1a

    :cond_3a
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v6, v10}, LR0/v;->d(Landroid/view/View;)I

    move-result v6

    add-int/2addr v14, v6

    :goto_1a
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto :goto_18

    :cond_3b
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput-object v3, v6, LR0/s;->k:Ljava/util/List;

    if-lez v13, :cond_3c

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, LR0/F;->C(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput v13, v3, LR0/s;->h:I

    iput v5, v3, LR0/s;->c:I

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, LR0/s;->a(Landroid/view/View;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(LM0/s0;LR0/s;LR0/O;Z)I

    :cond_3c
    if-lez v14, :cond_3d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, LR0/F;->C(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput v14, v3, LR0/s;->h:I

    iput v5, v3, LR0/s;->c:I

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, LR0/s;->a(Landroid/view/View;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(LM0/s0;LR0/s;LR0/O;Z)I

    goto :goto_1b

    :cond_3d
    const/4 v4, 0x0

    :goto_1b
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    iput-object v4, v1, LR0/s;->k:Ljava/util/List;

    :cond_3e
    :goto_1c
    iget-boolean v1, v2, LR0/O;->f:Z

    if-nez v1, :cond_3f

    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v1}, LR0/v;->n()I

    move-result v2

    iput v2, v1, LR0/v;->a:I

    goto :goto_1d

    :cond_3f
    invoke-virtual {v7}, LI0/w;->g()V

    :goto_1d
    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Z

    return-void
.end method

.method public Y(LR0/O;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:LI0/w;

    invoke-virtual {p1}, LI0/w;->g()V

    return-void
.end method

.method public final Z(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, LR0/t;

    if-eqz v0, :cond_1

    check-cast p1, LR0/t;

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v1, p1, LR0/t;->e:I

    :cond_0
    invoke-virtual {p0}, LR0/F;->h0()V

    :cond_1
    return-void
.end method

.method public final a0()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    if-eqz v0, :cond_0

    new-instance v1, LR0/t;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget v2, v0, LR0/t;->e:I

    iput v2, v1, LR0/t;->e:I

    iget v2, v0, LR0/t;->f:I

    iput v2, v1, LR0/t;->f:I

    iget-boolean v0, v0, LR0/t;->g:Z

    iput-boolean v0, v1, LR0/t;->g:Z

    return-object v1

    :cond_0
    new-instance v0, LR0/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, LR0/t;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v2}, LR0/v;->h()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v3, v1}, LR0/v;->c(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, LR0/t;->f:I

    invoke-static {v1}, LR0/F;->C(Landroid/view/View;)I

    move-result v1

    iput v1, v0, LR0/t;->e:I

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, LR0/F;->C(Landroid/view/View;)I

    move-result v2

    iput v2, v0, LR0/t;->e:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v2, v1}, LR0/v;->f(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    invoke-virtual {v2}, LR0/v;->m()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, LR0/t;->f:I

    return-object v0

    :cond_2
    const/4 v1, -0x1

    iput v1, v0, LR0/t;->e:I

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    if-nez v0, :cond_0

    iget-object v0, p0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g(IILR0/O;LJ/f;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, LR0/F;->u()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0(IIZLR0/O;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->t0(LR0/O;LR0/s;LJ/f;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final h(ILJ/f;)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, LR0/t;->e:I

    if-ltz v3, :cond_0

    iget-boolean v0, v0, LR0/t;->g:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    move v0, v2

    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I

    if-ge v0, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    invoke-virtual {p2, v3, v2}, LJ/f;->b(II)V

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final i(LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->u0(LR0/O;)I

    move-result p1

    return p1
.end method

.method public i0(ILM0/s0;LR0/O;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(ILM0/s0;LR0/O;)I

    move-result p1

    return p1
.end method

.method public j(LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->v0(LR0/O;)I

    move-result p1

    return p1
.end method

.method public j0(ILM0/s0;LR0/O;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(ILM0/s0;LR0/O;)I

    move-result p1

    return p1
.end method

.method public k(LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->w0(LR0/O;)I

    move-result p1

    return p1
.end method

.method public final l(LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->u0(LR0/O;)I

    move-result p1

    return p1
.end method

.method public m(LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->v0(LR0/O;)I

    move-result p1

    return p1
.end method

.method public n(LR0/O;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->w0(LR0/O;)I

    move-result p1

    return p1
.end method

.method public final p(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, LR0/F;->C(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LR0/F;->C(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, LR0/F;->p(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public q()LR0/G;
    .locals 2

    new-instance v0, LR0/G;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, LR0/G;-><init>(II)V

    return-object v0
.end method

.method public final q0()Z
    .locals 5

    iget v0, p0, LR0/F;->l:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_1

    iget v0, p0, LR0/F;->k:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, LR0/F;->t(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public s0()Z
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:LR0/t;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public t0(LR0/O;LR0/s;LJ/f;)V
    .locals 1

    iget v0, p2, LR0/s;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, LR0/O;->b()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, LR0/s;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, v0, p1}, LJ/f;->b(II)V

    :cond_0
    return-void
.end method

.method public final u0(LR0/O;)I
    .locals 6

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->A0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    move-object v4, p0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/brisa/local/d0;->d(LR0/O;LR0/v;Landroid/view/View;Landroid/view/View;LR0/F;Z)I

    move-result p1

    return p1
.end method

.method public final v0(LR0/O;)I
    .locals 7

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->A0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    move-object v4, p0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/brisa/local/d0;->e(LR0/O;LR0/v;Landroid/view/View;Landroid/view/View;LR0/F;ZZ)I

    move-result p1

    return p1
.end method

.method public final w0(LR0/O;)I
    .locals 6

    invoke-virtual {p0}, LR0/F;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:LR0/v;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->A0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    move-object v4, p0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/brisa/local/d0;->f(LR0/O;LR0/v;Landroid/view/View;Landroid/view/View;LR0/F;Z)I

    move-result p1

    return p1
.end method

.method public final x0(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    return v3

    :cond_6
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-nez p1, :cond_7

    return v0

    :cond_7
    return v3

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->o:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final y0()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    if-nez v0, :cond_0

    new-instance v0, LR0/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, LR0/s;->a:Z

    const/4 v1, 0x0

    iput v1, v0, LR0/s;->h:I

    iput v1, v0, LR0/s;->i:I

    const/4 v1, 0x0

    iput-object v1, v0, LR0/s;->k:Ljava/util/List;

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:LR0/s;

    :cond_0
    return-void
.end method

.method public final z0(LM0/s0;LR0/s;LR0/O;Z)I
    .locals 7

    iget v0, p2, LR0/s;->c:I

    iget v1, p2, LR0/s;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, LR0/s;->g:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(LM0/s0;LR0/s;)V

    :cond_1
    iget v1, p2, LR0/s;->c:I

    iget v3, p2, LR0/s;->h:I

    add-int/2addr v1, v3

    :cond_2
    iget-boolean v3, p2, LR0/s;->l:Z

    if-nez v3, :cond_3

    if-lez v1, :cond_9

    :cond_3
    iget v3, p2, LR0/s;->d:I

    if-ltz v3, :cond_9

    invoke-virtual {p3}, LR0/O;->b()I

    move-result v4

    if-ge v3, v4, :cond_9

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:LP/l;

    const/4 v4, 0x0

    iput v4, v3, LP/l;->a:I

    iput-boolean v4, v3, LP/l;->b:Z

    iput-boolean v4, v3, LP/l;->c:Z

    iput-boolean v4, v3, LP/l;->d:Z

    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(LM0/s0;LR0/O;LR0/s;LP/l;)V

    iget-boolean v4, v3, LP/l;->b:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    iget v4, p2, LR0/s;->b:I

    iget v5, v3, LP/l;->a:I

    iget v6, p2, LR0/s;->f:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v4

    iput v6, p2, LR0/s;->b:I

    iget-boolean v4, v3, LP/l;->c:Z

    if-eqz v4, :cond_5

    iget-object v4, p2, LR0/s;->k:Ljava/util/List;

    if-nez v4, :cond_5

    iget-boolean v4, p3, LR0/O;->f:Z

    if-nez v4, :cond_6

    :cond_5
    iget v4, p2, LR0/s;->c:I

    sub-int/2addr v4, v5

    iput v4, p2, LR0/s;->c:I

    sub-int/2addr v1, v5

    :cond_6
    iget v4, p2, LR0/s;->g:I

    if-eq v4, v2, :cond_8

    add-int/2addr v4, v5

    iput v4, p2, LR0/s;->g:I

    iget v5, p2, LR0/s;->c:I

    if-gez v5, :cond_7

    add-int/2addr v4, v5

    iput v4, p2, LR0/s;->g:I

    :cond_7
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(LM0/s0;LR0/s;)V

    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v3, v3, LP/l;->d:Z

    if-eqz v3, :cond_2

    :cond_9
    :goto_0
    iget p1, p2, LR0/s;->c:I

    sub-int/2addr v0, p1

    return v0
.end method
