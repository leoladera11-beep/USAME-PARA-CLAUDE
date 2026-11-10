.class public final LM0/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, LM0/s0;->c:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, LM0/s0;->d:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, LM0/s0;->e:Ljava/lang/Object;

    .line 14
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, LM0/s0;->f:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, LM0/s0;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, LM0/s0;->a:I

    .line 17
    iput v0, p0, LM0/s0;->b:I

    .line 18
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, LM0/s0;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LG/x;LG/x;IILP/p;LH/j;LG/q0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LM0/s0;->c:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, LM0/s0;->d:Ljava/lang/Object;

    .line 4
    iput p3, p0, LM0/s0;->a:I

    .line 5
    iput p4, p0, LM0/s0;->b:I

    .line 6
    iput-object p5, p0, LM0/s0;->e:Ljava/lang/Object;

    .line 7
    iput-object p6, p0, LM0/s0;->f:Ljava/lang/Object;

    .line 8
    iput-object p7, p0, LM0/s0;->g:Ljava/lang/Object;

    .line 9
    iput-object p8, p0, LM0/s0;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LN0/A;LN0/U;LN0/D;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, LM0/s0;->c:Ljava/lang/Object;

    .line 21
    iput-object p2, p0, LM0/s0;->d:Ljava/lang/Object;

    .line 22
    iput-object p3, p0, LM0/s0;->e:Ljava/lang/Object;

    .line 23
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iput-object p4, p0, LM0/s0;->f:Ljava/lang/Object;

    .line 25
    iput-object p5, p0, LM0/s0;->g:Ljava/lang/Object;

    .line 26
    iput p6, p0, LM0/s0;->a:I

    .line 27
    iput p7, p0, LM0/s0;->b:I

    if-eqz p8, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    sget-object p8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    iput-object p8, p0, LM0/s0;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/s0;->h:Ljava/lang/Object;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LM0/s0;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, LM0/s0;->d:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LM0/s0;->e:Ljava/lang/Object;

    .line 33
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LM0/s0;->f:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 34
    iput p1, p0, LM0/s0;->a:I

    .line 35
    iput p1, p0, LM0/s0;->b:I

    return-void
.end method

.method public static a(LM0/s0;LP/p;)LM0/s0;
    .locals 9

    new-instance v0, LM0/s0;

    iget-object v1, p0, LM0/s0;->c:Ljava/lang/Object;

    check-cast v1, LG/x;

    iget-object v2, p0, LM0/s0;->d:Ljava/lang/Object;

    check-cast v2, LG/x;

    iget v3, p0, LM0/s0;->a:I

    iget v4, p0, LM0/s0;->b:I

    iget-object v5, p0, LM0/s0;->f:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, LH/j;

    iget-object v5, p0, LM0/s0;->g:Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, LG/q0;

    iget-object v8, p0, LM0/s0;->h:Ljava/lang/Object;

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, LM0/s0;-><init>(LG/x;LG/x;IILP/p;LH/j;LG/q0;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(LM0/s0;)Z
    .locals 1

    iget-object p0, p0, LM0/s0;->c:Ljava/lang/Object;

    check-cast p0, LG/x;

    iget-object p0, p0, LG/x;->p:Ljava/lang/String;

    const-string v0, "audio/raw"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public c(LR0/T;Z)V
    .locals 4

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->g(LR0/T;)V

    iget-object v0, p1, LR0/T;->a:Landroid/view/View;

    iget-object v1, p0, LM0/s0;->h:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->k0:LR0/V;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, LR0/V;->e:LR0/U;

    if-eqz v2, :cond_0

    iget-object v2, v2, LR0/U;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/c;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Ls/u;->b(Landroid/view/View;Ls/c;)V

    :cond_1
    if-eqz p2, :cond_3

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    if-eqz p2, :cond_3

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->g:LN0/O;

    invoke-virtual {p2, p1}, LN0/O;->g0(LR0/T;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object v3, p1, LR0/T;->r:LR0/z;

    iput-object v3, p1, LR0/T;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, LM0/s0;->e()LR0/K;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, LR0/T;->e:I

    invoke-virtual {p2, v1}, LR0/K;->a(I)LR0/J;

    move-result-object v2

    iget-object v2, v2, LR0/J;->a:Ljava/util/ArrayList;

    iget-object p2, p2, LR0/K;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LR0/J;

    iget p2, p2, LR0/J;->b:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p2, v1, :cond_4

    invoke-static {v0}, Landroid/support/v4/media/session/b;->c(Landroid/view/View;)V

    return-void

    :cond_4
    invoke-virtual {p1}, LR0/T;->l()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(I)I
    .locals 4

    iget-object v0, p0, LM0/s0;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-ltz p1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    invoke-virtual {v1}, LR0/O;->b()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    iget-boolean v1, v1, LR0/O;->f:Z

    if-nez v1, :cond_0

    return p1

    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LC2/b;->j(II)I

    move-result p1

    return p1

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "invalid position "

    const-string v3, ". State item count is "

    invoke-static {v2, v3, p1}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    invoke-virtual {v2}, LR0/O;->b()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public e()LR0/K;
    .locals 2

    iget-object v0, p0, LM0/s0;->g:Ljava/lang/Object;

    check-cast v0, LR0/K;

    if-nez v0, :cond_0

    new-instance v0, LR0/K;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, LR0/K;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput v1, v0, LR0/K;->b:I

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, LR0/K;->c:Ljava/util/Set;

    iput-object v0, p0, LM0/s0;->g:Ljava/lang/Object;

    invoke-virtual {p0}, LM0/s0;->f()V

    :cond_0
    iget-object v0, p0, LM0/s0;->g:Ljava/lang/Object;

    check-cast v0, LR0/K;

    return-object v0
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, LM0/s0;->g:Ljava/lang/Object;

    check-cast v0, LR0/K;

    if-eqz v0, :cond_0

    iget-object v1, p0, LM0/s0;->h:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, LR0/K;->c:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public g(LR0/z;Z)V
    .locals 4

    iget-object v0, p0, LM0/s0;->g:Ljava/lang/Object;

    check-cast v0, LR0/K;

    if-eqz v0, :cond_1

    iget-object v1, v0, LR0/K;->a:Landroid/util/SparseArray;

    iget-object v0, v0, LR0/K;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR0/J;

    iget-object v0, v0, LR0/J;->a:Ljava/util/ArrayList;

    move v2, p1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR0/T;

    iget-object v3, v3, LR0/T;->a:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/media/session/b;->c(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, LM0/s0;->i(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LM0/s0;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:LJ/f;

    iget-object v1, v0, LJ/f;->c:[I

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, LJ/f;->d:I

    :cond_2
    return-void
.end method

.method public i(I)V
    .locals 3

    iget-object v0, p0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR0/T;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, LM0/s0;->c(LR0/T;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public j(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, LM0/s0;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v1

    invoke-virtual {v1}, LR0/T;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v1}, LR0/T;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, LR0/T;->m:LM0/s0;

    invoke-virtual {p1, v1}, LM0/s0;->n(LR0/T;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, LR0/T;->o()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v1, LR0/T;->i:I

    and-int/lit8 p1, p1, -0x21

    iput p1, v1, LR0/T;->i:I

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, LM0/s0;->k(LR0/T;)V

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz p1, :cond_3

    invoke-virtual {v1}, LR0/T;->f()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    invoke-virtual {p1, v1}, LR0/D;->d(LR0/T;)V

    :cond_3
    return-void
.end method

.method public k(LR0/T;)V
    .locals 12

    iget-object v0, p0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, LM0/s0;->h:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, LR0/T;->h()Z

    move-result v2

    iget-object v3, p1, LR0/T;->a:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_f

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p1}, LR0/T;->i()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p1}, LR0/T;->n()Z

    move-result v2

    if-nez v2, :cond_d

    iget v2, p1, LR0/T;->i:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    sget-object v2, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v3}, Ls/g;->i(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p1}, LR0/T;->f()Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, p0, LM0/s0;->b:I

    if-lez v6, :cond_9

    iget v6, p1, LR0/T;->i:I

    and-int/lit16 v6, v6, 0x20e

    if-eqz v6, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, LM0/s0;->b:I

    if-lt v6, v7, :cond_3

    if-lez v6, :cond_3

    invoke-virtual {p0, v4}, LM0/s0;->i(I)V

    add-int/lit8 v6, v6, -0x1

    :cond_3
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    if-eqz v7, :cond_8

    if-lez v6, :cond_8

    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView;->c0:LJ/f;

    iget v8, p1, LR0/T;->c:I

    iget-object v9, v7, LJ/f;->c:[I

    if-eqz v9, :cond_5

    iget v9, v7, LJ/f;->d:I

    mul-int/lit8 v9, v9, 0x2

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_5

    iget-object v11, v7, LJ/f;->c:[I

    aget v11, v11, v10

    if-ne v11, v8, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v10, v10, 0x2

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, -0x1

    :goto_2
    if-ltz v6, :cond_7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LR0/T;

    iget v7, v7, LR0/T;->c:I

    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView;->c0:LJ/f;

    iget-object v9, v8, LJ/f;->c:[I

    if-eqz v9, :cond_7

    iget v9, v8, LJ/f;->d:I

    mul-int/lit8 v9, v9, 0x2

    move v10, v4

    :goto_3
    if-ge v10, v9, :cond_7

    iget-object v11, v8, LJ/f;->c:[I

    aget v11, v11, v10

    if-ne v11, v7, :cond_6

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v10, v10, 0x2

    goto :goto_3

    :cond_7
    add-int/2addr v6, v5

    :cond_8
    :goto_4
    invoke-virtual {v0, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v5

    goto :goto_6

    :cond_9
    :goto_5
    move v0, v4

    :goto_6
    if-nez v0, :cond_a

    invoke-virtual {p0, p1, v5}, LM0/s0;->c(LR0/T;Z)V

    :goto_7
    move v4, v0

    goto :goto_8

    :cond_a
    move v5, v4

    goto :goto_7

    :cond_b
    move v5, v4

    :goto_8
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->g:LN0/O;

    invoke-virtual {v0, p1}, LN0/O;->g0(LR0/T;)V

    if-nez v4, :cond_c

    if-nez v5, :cond_c

    if-eqz v2, :cond_c

    invoke-static {v3}, Landroid/support/v4/media/session/b;->c(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p1, LR0/T;->r:LR0/z;

    iput-object v0, p1, LR0/T;->q:Landroidx/recyclerview/widget/RecyclerView;

    :cond_c
    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LR0/T;->h()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isAttached:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_10

    move v4, v5

    :cond_10
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, LM0/s0;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object p1

    iget v1, p1, LR0/T;->i:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LR0/T;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, LR0/T;->c()Ljava/util/List;

    move-result-object v2

    check-cast v1, LR0/i;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v1, v1, LR0/i;->g:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, LR0/T;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LM0/s0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LM0/s0;->d:Ljava/lang/Object;

    :cond_2
    iput-object p0, p1, LR0/T;->m:LM0/s0;

    const/4 v0, 0x1

    iput-boolean v0, p1, LR0/T;->n:Z

    iget-object v0, p0, LM0/s0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p1}, LR0/T;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, LR0/T;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iput-object p0, p1, LR0/T;->m:LM0/s0;

    const/4 v0, 0x0

    iput-boolean v0, p1, LR0/T;->n:Z

    iget-object v0, p0, LM0/s0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m(IJ)LR0/T;
    .locals 23

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-object v2, v1, LM0/s0;->h:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    if-ltz v0, :cond_43

    invoke-virtual {v3}, LR0/O;->b()I

    move-result v4

    if-ge v0, v4, :cond_43

    iget-boolean v4, v3, LR0/O;->f:Z

    const/16 v5, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    iget-object v4, v1, LM0/s0;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move v9, v8

    :goto_0
    if-ge v9, v4, :cond_2

    iget-object v10, v1, LM0/s0;->d:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LR0/T;

    invoke-virtual {v10}, LR0/T;->o()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10}, LR0/T;->b()I

    move-result v11

    if-ne v11, v0, :cond_1

    invoke-virtual {v10, v5}, LR0/T;->a(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_1
    move-object v10, v6

    :goto_2
    if-eqz v10, :cond_5

    move v4, v7

    goto :goto_3

    :cond_4
    move-object v10, v6

    :cond_5
    move v4, v8

    :goto_3
    if-nez v10, :cond_1a

    iget-object v9, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    iget-object v10, v1, LM0/s0;->c:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v8

    :goto_4
    if-ge v12, v11, :cond_8

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LR0/T;

    invoke-virtual {v13}, LR0/T;->o()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v13}, LR0/T;->b()I

    move-result v14

    if-ne v14, v0, :cond_7

    invoke-virtual {v13}, LR0/T;->e()Z

    move-result v14

    if-nez v14, :cond_7

    iget-boolean v14, v3, LR0/O;->f:Z

    if-nez v14, :cond_6

    invoke-virtual {v13}, LR0/T;->g()Z

    move-result v14

    if-nez v14, :cond_7

    :cond_6
    invoke-virtual {v13, v5}, LR0/T;->a(I)V

    move-object v10, v13

    goto/16 :goto_b

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_8
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    iget-object v5, v5, LB/A;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v8

    :goto_5
    if-ge v11, v10, :cond_a

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v13

    invoke-virtual {v13}, LR0/T;->b()I

    move-result v14

    if-ne v14, v0, :cond_9

    invoke-virtual {v13}, LR0/T;->e()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v13}, LR0/T;->g()Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    move-object v12, v6

    :goto_6
    if-eqz v12, :cond_10

    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v5

    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    iget-object v10, v9, LB/A;->g:Ljava/lang/Object;

    check-cast v10, LR0/b;

    iget-object v11, v9, LB/A;->f:Ljava/lang/Object;

    check-cast v11, LR0/y;

    iget-object v11, v11, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    if-ltz v11, :cond_f

    invoke-virtual {v10, v11}, LR0/b;->i(I)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v10, v11}, LR0/b;->b(I)V

    invoke-virtual {v9, v12}, LB/A;->T(Landroid/view/View;)V

    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    iget-object v10, v9, LB/A;->g:Ljava/lang/Object;

    check-cast v10, LR0/b;

    iget-object v9, v9, LB/A;->f:Ljava/lang/Object;

    check-cast v9, LR0/y;

    iget-object v9, v9, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_b

    :goto_7
    move v9, v11

    goto :goto_8

    :cond_b
    invoke-virtual {v10, v9}, LR0/b;->i(I)Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v10, v9}, LR0/b;->g(I)I

    move-result v10

    sub-int/2addr v9, v10

    :goto_8
    if-eq v9, v11, :cond_d

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v10, v9}, LB/A;->u(I)V

    invoke-virtual {v1, v12}, LM0/s0;->l(Landroid/view/View;)V

    const/16 v9, 0x2020

    invoke-virtual {v5, v9}, LR0/T;->a(I)V

    move-object v10, v5

    goto/16 :goto_b

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "view is not a child, cannot hide "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v10, v8

    :goto_9
    if-ge v10, v5, :cond_13

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LR0/T;

    invoke-virtual {v11}, LR0/T;->e()Z

    move-result v12

    if-nez v12, :cond_12

    invoke-virtual {v11}, LR0/T;->b()I

    move-result v12

    if-ne v12, v0, :cond_12

    iget-object v12, v11, LR0/T;->a:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-eqz v13, :cond_11

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    iget-object v13, v11, LR0/T;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v12, v13, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v10, v11

    goto :goto_b

    :cond_12
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_13
    move-object v10, v6

    :goto_b
    if-eqz v10, :cond_1a

    invoke-virtual {v10}, LR0/T;->g()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-boolean v5, v3, LR0/O;->f:Z

    goto :goto_c

    :cond_14
    iget v5, v10, LR0/T;->c:I

    if-ltz v5, :cond_19

    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v9}, LR0/z;->a()I

    move-result v9

    if-ge v5, v9, :cond_19

    iget-boolean v5, v3, LR0/O;->f:Z

    if-nez v5, :cond_15

    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v10, LR0/T;->e:I

    if-eqz v5, :cond_15

    move v5, v8

    goto :goto_c

    :cond_15
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, v7

    :goto_c
    if-nez v5, :cond_18

    const/4 v5, 0x4

    invoke-virtual {v10, v5}, LR0/T;->a(I)V

    invoke-virtual {v10}, LR0/T;->h()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v10, LR0/T;->a:Landroid/view/View;

    invoke-virtual {v2, v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v5, v10, LR0/T;->m:LM0/s0;

    invoke-virtual {v5, v10}, LM0/s0;->n(LR0/T;)V

    goto :goto_d

    :cond_16
    invoke-virtual {v10}, LR0/T;->o()Z

    move-result v5

    if-eqz v5, :cond_17

    iget v5, v10, LR0/T;->i:I

    and-int/lit8 v5, v5, -0x21

    iput v5, v10, LR0/T;->i:I

    :cond_17
    :goto_d
    invoke-virtual {v1, v10}, LM0/s0;->k(LR0/T;)V

    move-object v10, v6

    goto :goto_e

    :cond_18
    move v4, v7

    goto :goto_e

    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_e
    const-wide/16 v15, 0x0

    const-wide v17, 0x7fffffffffffffffL

    if-nez v10, :cond_28

    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    invoke-virtual {v5, v0, v8}, LC2/b;->j(II)I

    move-result v5

    if-ltz v5, :cond_27

    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v9}, LR0/z;->a()I

    move-result v9

    if-ge v5, v9, :cond_27

    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v10, :cond_1e

    invoke-virtual {v1}, LM0/s0;->e()LR0/K;

    move-result-object v5

    iget-object v5, v5, LR0/K;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR0/J;

    if-eqz v5, :cond_1d

    iget-object v5, v5, LR0/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1d

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    :goto_f
    if-ltz v9, :cond_1d

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LR0/T;

    const-wide/16 v19, 0x3

    iget-object v11, v10, LR0/T;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_1b

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    iget-object v10, v10, LR0/T;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v11, v10, :cond_1b

    move v10, v7

    goto :goto_10

    :cond_1b
    move v10, v8

    :goto_10
    if-nez v10, :cond_1c

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR0/T;

    move-object v10, v5

    goto :goto_11

    :cond_1c
    add-int/lit8 v9, v9, -0x1

    goto :goto_f

    :cond_1d
    const-wide/16 v19, 0x3

    move-object v10, v6

    :goto_11
    if-eqz v10, :cond_1f

    invoke-virtual {v10}, LR0/T;->l()V

    sget-object v5, Landroidx/recyclerview/widget/RecyclerView;->w0:[I

    goto :goto_12

    :cond_1e
    const-wide/16 v19, 0x3

    :cond_1f
    :goto_12
    if-nez v10, :cond_26

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v9

    cmp-long v5, p2, v17

    if-eqz v5, :cond_22

    iget-object v5, v1, LM0/s0;->g:Ljava/lang/Object;

    check-cast v5, LR0/K;

    invoke-virtual {v5, v8}, LR0/K;->a(I)LR0/J;

    move-result-object v5

    iget-wide v11, v5, LR0/J;->c:J

    cmp-long v5, v11, v15

    if-eqz v5, :cond_21

    add-long/2addr v11, v9

    cmp-long v5, v11, p2

    if-gez v5, :cond_20

    goto :goto_13

    :cond_20
    move v5, v8

    goto :goto_14

    :cond_21
    :goto_13
    move v5, v7

    :goto_14
    if-nez v5, :cond_22

    return-object v6

    :cond_22
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v11, "RV CreateView"

    sget v12, Lp/e;->a:I

    invoke-static {v11}, Lp/d;->a(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, LR0/z;->c(Landroid/view/ViewGroup;)LR0/T;

    move-result-object v5

    iget-object v11, v5, LR0/T;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_25

    iput v8, v5, LR0/T;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lp/d;->b()V

    sget-boolean v12, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    if-eqz v12, :cond_23

    invoke-static {v11}, Landroidx/recyclerview/widget/RecyclerView;->B(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v11

    if-eqz v11, :cond_23

    new-instance v12, Ljava/lang/ref/WeakReference;

    invoke-direct {v12, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v12, v5, LR0/T;->b:Ljava/lang/ref/WeakReference;

    :cond_23
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v11

    const-wide/16 v21, 0x4

    iget-object v13, v1, LM0/s0;->g:Ljava/lang/Object;

    check-cast v13, LR0/K;

    sub-long/2addr v11, v9

    invoke-virtual {v13, v8}, LR0/K;->a(I)LR0/J;

    move-result-object v9

    iget-wide v13, v9, LR0/J;->c:J

    cmp-long v10, v13, v15

    if-nez v10, :cond_24

    goto :goto_15

    :cond_24
    div-long v13, v13, v21

    mul-long v13, v13, v19

    div-long v11, v11, v21

    add-long/2addr v11, v13

    :goto_15
    iput-wide v11, v9, LR0/J;->c:J

    move-object v10, v5

    goto :goto_18

    :catchall_0
    move-exception v0

    goto :goto_16

    :cond_25
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_16
    sget v2, Lp/e;->a:I

    invoke-static {}, Lp/d;->b()V

    throw v0

    :cond_26
    :goto_17
    const-wide/16 v21, 0x4

    goto :goto_18

    :cond_27
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Inconsistency detected. Invalid item position "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(offset:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ").state:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, LR0/O;->b()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_28
    const-wide/16 v19, 0x3

    goto :goto_17

    :goto_18
    iget-object v5, v10, LR0/T;->a:Landroid/view/View;

    if-eqz v4, :cond_2a

    iget-boolean v9, v3, LR0/O;->f:Z

    if-nez v9, :cond_2a

    iget v9, v10, LR0/T;->i:I

    and-int/lit16 v11, v9, 0x2000

    if-eqz v11, :cond_29

    move v11, v7

    goto :goto_19

    :cond_29
    move v11, v8

    :goto_19
    if-eqz v11, :cond_2a

    and-int/lit16 v9, v9, -0x2001

    iput v9, v10, LR0/T;->i:I

    iget-boolean v9, v3, LR0/O;->i:Z

    if-eqz v9, :cond_2a

    invoke-static {v10}, LR0/D;->b(LR0/T;)V

    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    invoke-virtual {v10}, LR0/T;->c()Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, LE0/e;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v10}, LE0/e;->b(LR0/T;)V

    invoke-virtual {v2, v10, v9}, Landroidx/recyclerview/widget/RecyclerView;->P(LR0/T;LE0/e;)V

    :cond_2a
    iget-boolean v9, v3, LR0/O;->f:Z

    if-eqz v9, :cond_2b

    invoke-virtual {v10}, LR0/T;->d()Z

    move-result v9

    if-eqz v9, :cond_2b

    iput v0, v10, LR0/T;->f:I

    goto :goto_1b

    :cond_2b
    invoke-virtual {v10}, LR0/T;->d()Z

    move-result v9

    if-eqz v9, :cond_2e

    iget v9, v10, LR0/T;->i:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_2c

    move v9, v7

    goto :goto_1a

    :cond_2c
    move v9, v8

    :goto_1a
    if-nez v9, :cond_2e

    invoke-virtual {v10}, LR0/T;->e()Z

    move-result v9

    if-eqz v9, :cond_2d

    goto :goto_1c

    :cond_2d
    :goto_1b
    move v0, v8

    goto/16 :goto_23

    :cond_2e
    :goto_1c
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    invoke-virtual {v9, v0, v8}, LC2/b;->j(II)I

    move-result v9

    iput-object v6, v10, LR0/T;->r:LR0/z;

    iput-object v2, v10, LR0/T;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget v11, v10, LR0/T;->e:I

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v12

    cmp-long v14, p2, v17

    if-eqz v14, :cond_30

    iget-object v14, v1, LM0/s0;->g:Ljava/lang/Object;

    check-cast v14, LR0/K;

    invoke-virtual {v14, v11}, LR0/K;->a(I)LR0/J;

    move-result-object v11

    move/from16 v17, v7

    iget-wide v6, v11, LR0/J;->d:J

    cmp-long v11, v6, v15

    if-eqz v11, :cond_31

    add-long/2addr v6, v12

    cmp-long v6, v6, p2

    if-gez v6, :cond_2f

    goto :goto_1d

    :cond_2f
    move v0, v8

    move/from16 v7, v17

    goto/16 :goto_23

    :cond_30
    move/from16 v17, v7

    :cond_31
    :goto_1d
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v10, LR0/T;->r:LR0/z;

    if-nez v7, :cond_32

    move/from16 v7, v17

    goto :goto_1e

    :cond_32
    move v7, v8

    :goto_1e
    if-eqz v7, :cond_33

    iput v9, v10, LR0/T;->c:I

    iget v11, v10, LR0/T;->i:I

    and-int/lit16 v11, v11, -0x208

    or-int/lit8 v11, v11, 0x1

    iput v11, v10, LR0/T;->i:I

    sget v11, Lp/e;->a:I

    const-string v11, "RV OnBindView"

    invoke-static {v11}, Lp/d;->a(Ljava/lang/String;)V

    :cond_33
    iput-object v6, v10, LR0/T;->r:LR0/z;

    invoke-virtual {v10}, LR0/T;->c()Ljava/util/List;

    invoke-virtual {v6, v10, v9}, LR0/z;->b(LR0/T;I)V

    if-eqz v7, :cond_36

    iget-object v6, v10, LR0/T;->j:Ljava/util/ArrayList;

    if-eqz v6, :cond_34

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_34
    iget v6, v10, LR0/T;->i:I

    and-int/lit16 v6, v6, -0x401

    iput v6, v10, LR0/T;->i:I

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, LR0/G;

    if-eqz v7, :cond_35

    check-cast v6, LR0/G;

    move/from16 v7, v17

    iput-boolean v7, v6, LR0/G;->c:Z

    :cond_35
    sget v6, Lp/e;->a:I

    invoke-static {}, Lp/d;->b()V

    :cond_36
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v6

    iget-object v9, v1, LM0/s0;->g:Ljava/lang/Object;

    check-cast v9, LR0/K;

    iget v11, v10, LR0/T;->e:I

    sub-long/2addr v6, v12

    invoke-virtual {v9, v11}, LR0/K;->a(I)LR0/J;

    move-result-object v9

    iget-wide v11, v9, LR0/J;->d:J

    cmp-long v13, v11, v15

    if-nez v13, :cond_37

    goto :goto_1f

    :cond_37
    div-long v11, v11, v21

    mul-long v11, v11, v19

    div-long v6, v6, v21

    add-long/2addr v6, v11

    :goto_1f
    iput-wide v6, v9, LR0/J;->d:J

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->z:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v6, :cond_38

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_38

    const/4 v7, 0x1

    goto :goto_20

    :cond_38
    move v7, v8

    :goto_20
    if-eqz v7, :cond_3e

    sget-object v6, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v5}, Ls/g;->c(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_39

    invoke-static {v5, v7}, Ls/g;->s(Landroid/view/View;I)V

    :cond_39
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->k0:LR0/V;

    if-nez v6, :cond_3a

    goto :goto_22

    :cond_3a
    iget-object v6, v6, LR0/V;->e:LR0/U;

    if-eqz v6, :cond_3d

    invoke-static {v5}, Ls/u;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v9

    if-nez v9, :cond_3b

    const/4 v14, 0x0

    goto :goto_21

    :cond_3b
    instance-of v11, v9, Ls/a;

    if-eqz v11, :cond_3c

    check-cast v9, Ls/a;

    iget-object v9, v9, Ls/a;->a:Ls/c;

    move-object v14, v9

    goto :goto_21

    :cond_3c
    new-instance v11, Ls/c;

    invoke-direct {v11, v9}, Ls/c;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    move-object v14, v11

    :goto_21
    if-eqz v14, :cond_3d

    if-eq v14, v6, :cond_3d

    iget-object v9, v6, LR0/U;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v9, v5, v14}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    invoke-static {v5, v6}, Ls/u;->b(Landroid/view/View;Ls/c;)V

    goto :goto_22

    :cond_3e
    const/4 v7, 0x1

    :goto_22
    iget-boolean v3, v3, LR0/O;->f:Z

    if-eqz v3, :cond_3f

    iput v0, v10, LR0/T;->f:I

    :cond_3f
    move v0, v7

    :goto_23
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_40

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, LR0/G;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    :cond_40
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_41

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, LR0/G;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    :cond_41
    move-object v2, v3

    check-cast v2, LR0/G;

    :goto_24
    iput-object v10, v2, LR0/G;->a:LR0/T;

    if-eqz v4, :cond_42

    if-eqz v0, :cond_42

    goto :goto_25

    :cond_42
    move v7, v8

    :goto_25
    iput-boolean v7, v2, LR0/G;->d:Z

    return-object v10

    :cond_43
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid item position "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). Item count:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, LR0/O;->b()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public n(LR0/T;)V
    .locals 1

    iget-boolean v0, p1, LR0/T;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LM0/s0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, LM0/s0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, LR0/T;->m:LM0/s0;

    const/4 v0, 0x0

    iput-boolean v0, p1, LR0/T;->n:Z

    iget v0, p1, LR0/T;->i:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p1, LR0/T;->i:I

    return-void
.end method

.method public o()V
    .locals 4

    iget-object v0, p0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, LM0/s0;->h:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz v1, :cond_0

    iget v1, v1, LR0/F;->i:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, LM0/s0;->a:I

    add-int/2addr v2, v1

    iput v2, p0, LM0/s0;->b:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, LM0/s0;->b:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, LM0/s0;->i(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
