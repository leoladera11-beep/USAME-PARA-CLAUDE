.class public final LR0/j;
.super LR0/I;
.source "SourceFile"


# instance fields
.field public final synthetic a:LR0/m;


# direct methods
.method public constructor <init>(LR0/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/j;->a:LR0/m;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 10

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget-object v1, p0, LR0/j;->a:LR0/m;

    iget v2, v1, LR0/m;->a:I

    iget-object v3, v1, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    iget v4, v1, LR0/m;->r:I

    sub-int v5, v3, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v5, :cond_0

    if-lt v4, v2, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iput-boolean v5, v1, LR0/m;->t:Z

    iget-object v5, v1, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v5

    iget v8, v1, LR0/m;->q:I

    sub-int v9, v5, v8

    if-lez v9, :cond_1

    if-lt v8, v2, :cond_1

    move v2, v7

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    iput-boolean v2, v1, LR0/m;->u:Z

    iget-boolean v9, v1, LR0/m;->t:Z

    if-nez v9, :cond_2

    if-nez v2, :cond_2

    iget p1, v1, LR0/m;->v:I

    if-eqz p1, :cond_5

    invoke-virtual {v1, v6}, LR0/m;->d(I)V

    return-void

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v9, :cond_3

    int-to-float p1, p1

    int-to-float v6, v4

    div-float v9, v6, v2

    add-float/2addr v9, p1

    mul-float/2addr v9, v6

    int-to-float p1, v3

    div-float/2addr v9, p1

    float-to-int p1, v9

    iput p1, v1, LR0/m;->l:I

    mul-int p1, v4, v4

    div-int/2addr p1, v3

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, LR0/m;->k:I

    :cond_3
    iget-boolean p1, v1, LR0/m;->u:Z

    if-eqz p1, :cond_4

    int-to-float p1, v0

    int-to-float v0, v8

    div-float v2, v0, v2

    add-float/2addr v2, p1

    mul-float/2addr v2, v0

    int-to-float p1, v5

    div-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, v1, LR0/m;->o:I

    mul-int p1, v8, v8

    div-int/2addr p1, v5

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, LR0/m;->n:I

    :cond_4
    iget p1, v1, LR0/m;->v:I

    if-eqz p1, :cond_6

    if-ne p1, v7, :cond_5

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_2
    invoke-virtual {v1, v7}, LR0/m;->d(I)V

    return-void
.end method
