.class public abstract LR0/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LR0/y;

.field public b:Ljava/util/ArrayList;

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public static b(LR0/T;)V
    .locals 2

    iget v0, p0, LR0/T;->i:I

    invoke-virtual {p0}, LR0/T;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    iget-object v0, p0, LR0/T;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->D(LR0/T;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(LR0/T;LR0/T;LE0/e;LE0/e;)Z
.end method

.method public final c(LR0/T;)V
    .locals 10

    iget-object v0, p0, LR0/D;->a:LR0/y;

    if-eqz v0, :cond_5

    iget-object v0, v0, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LR0/T;->m(Z)V

    iget-object v2, p1, LR0/T;->a:Landroid/view/View;

    iget-object v3, p1, LR0/T;->g:LR0/T;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p1, LR0/T;->h:LR0/T;

    if-nez v3, :cond_0

    iput-object v4, p1, LR0/T;->g:LR0/T;

    :cond_0
    iput-object v4, p1, LR0/T;->h:LR0/T;

    iget v3, p1, LR0/T;->i:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->Y()V

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    iget-object v5, v4, LB/A;->g:Ljava/lang/Object;

    check-cast v5, LR0/b;

    iget-object v6, v4, LB/A;->f:Ljava/lang/Object;

    check-cast v6, LR0/y;

    iget-object v7, v6, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-ne v7, v8, :cond_2

    invoke-virtual {v4, v2}, LB/A;->T(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v7}, LR0/b;->i(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5, v7}, LR0/b;->n(I)Z

    invoke-virtual {v4, v2}, LB/A;->T(Landroid/view/View;)V

    invoke-virtual {v6, v7}, LR0/y;->a(I)V

    goto :goto_0

    :cond_3
    move v1, v9

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v4

    invoke-virtual {v3, v4}, LM0/s0;->n(LR0/T;)V

    invoke-virtual {v3, v4}, LM0/s0;->k(LR0/T;)V

    :cond_4
    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->Z(Z)V

    if-nez v1, :cond_5

    invoke-virtual {p1}, LR0/T;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public abstract d(LR0/T;)V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method
