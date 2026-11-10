.class public final Lz/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:LB/A;

.field public B:LB/A;

.field public C:Ljava/util/ArrayDeque;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Ljava/util/ArrayList;

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Lz/C;

.field public final M:LB/k;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:LB0/b;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Lz/q;

.field public g:LW0/c;

.field public final h:Lz/t;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public final l:LW0/c;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final n:Lz/r;

.field public final o:Lz/r;

.field public final p:Lz/r;

.field public final q:Lz/r;

.field public final r:Lz/u;

.field public s:I

.field public t:Lz/o;

.field public u:Lcom/brisa/local/a;

.field public v:Lz/m;

.field public w:Lz/m;

.field public final x:Lz/v;

.field public final y:Ld1/m;

.field public z:LB/A;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz/A;->a:Ljava/util/ArrayList;

    new-instance v0, LB0/b;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LB0/b;-><init>(I)V

    iput-object v0, p0, Lz/A;->c:LB0/b;

    new-instance v0, Lz/q;

    invoke-direct {v0, p0}, Lz/q;-><init>(Lz/A;)V

    iput-object v0, p0, Lz/A;->f:Lz/q;

    new-instance v0, Lz/t;

    invoke-direct {v0, p0}, Lz/t;-><init>(Lz/A;)V

    iput-object v0, p0, Lz/A;->h:Lz/t;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lz/A;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lz/A;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lz/A;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, LW0/c;

    invoke-direct {v0, p0}, LW0/c;-><init>(Lz/A;)V

    iput-object v0, p0, Lz/A;->l:LW0/c;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lz/A;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lz/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz/r;-><init>(Lz/A;I)V

    iput-object v0, p0, Lz/A;->n:Lz/r;

    new-instance v0, Lz/r;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lz/r;-><init>(Lz/A;I)V

    iput-object v0, p0, Lz/A;->o:Lz/r;

    new-instance v0, Lz/r;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lz/r;-><init>(Lz/A;I)V

    iput-object v0, p0, Lz/A;->p:Lz/r;

    new-instance v0, Lz/r;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lz/r;-><init>(Lz/A;I)V

    iput-object v0, p0, Lz/A;->q:Lz/r;

    new-instance v0, Lz/u;

    invoke-direct {v0, p0}, Lz/u;-><init>(Lz/A;)V

    iput-object v0, p0, Lz/A;->r:Lz/u;

    const/4 v0, -0x1

    iput v0, p0, Lz/A;->s:I

    new-instance v0, Lz/v;

    invoke-direct {v0, p0}, Lz/v;-><init>(Lz/A;)V

    iput-object v0, p0, Lz/A;->x:Lz/v;

    new-instance v0, Ld1/m;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ld1/m;-><init>(I)V

    iput-object v0, p0, Lz/A;->y:Ld1/m;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lz/A;->C:Ljava/util/ArrayDeque;

    new-instance v0, LB/k;

    invoke-direct {v0, p0, v1}, LB/k;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lz/A;->M:LB/k;

    return-void
.end method

.method public static G(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static H(Lz/m;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lz/m;->t:Lz/A;

    iget-object p0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {p0}, LB0/b;->i()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/m;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lz/A;->H(Lz/m;)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static J(Lz/m;)Z
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lz/m;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz/m;->r:Lz/A;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lz/m;->u:Lz/m;

    invoke-static {p0}, Lz/A;->J(Lz/m;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static K(Lz/m;)Z
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz/m;->r:Lz/A;

    iget-object v1, v0, Lz/A;->w:Lz/m;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lz/A;->v:Lz/m;

    invoke-static {p0}, Lz/A;->K(Lz/m;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static Y(Lz/m;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lz/m;->y:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz/m;->y:Z

    iget-boolean v0, p0, Lz/m;->H:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lz/m;->H:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(I)Lz/m;
    .locals 5

    iget-object v0, p0, Lz/A;->c:LB0/b;

    iget-object v1, v0, LB0/b;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz/m;

    if-eqz v3, :cond_0

    iget v4, v3, Lz/m;->v:I

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, LB0/b;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/F;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lz/F;->c:Lz/m;

    iget v2, v1, Lz/m;->v:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final B(Ljava/lang/String;)Lz/m;
    .locals 5

    iget-object v0, p0, Lz/A;->c:LB0/b;

    iget-object v1, v0, LB0/b;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz/m;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lz/m;->x:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, LB0/b;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/F;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lz/F;->c:Lz/m;

    iget-object v2, v1, Lz/m;->x:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final C(Lz/m;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p1, Lz/m;->D:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Lz/m;->w:I

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz/A;->u:Lcom/brisa/local/a;

    invoke-virtual {v0}, Lcom/brisa/local/a;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz/A;->u:Lcom/brisa/local/a;

    iget p1, p1, Lz/m;->w:I

    invoke-virtual {v0, p1}, Lcom/brisa/local/a;->w(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final D()Lz/v;
    .locals 1

    iget-object v0, p0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lz/m;->r:Lz/A;

    invoke-virtual {v0}, Lz/A;->D()Lz/v;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz/A;->x:Lz/v;

    return-object v0
.end method

.method public final E()Ld1/m;
    .locals 1

    iget-object v0, p0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lz/m;->r:Lz/A;

    invoke-virtual {v0}, Lz/A;->E()Ld1/m;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz/A;->y:Ld1/m;

    return-object v0
.end method

.method public final F(Lz/m;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hide: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Lz/m;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lz/m;->y:Z

    iget-boolean v1, p1, Lz/m;->H:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lz/m;->H:Z

    invoke-virtual {p0, p1}, Lz/A;->X(Lz/m;)V

    :cond_1
    return-void
.end method

.method public final I()Z
    .locals 2

    iget-object v0, p0, Lz/A;->v:Lz/m;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lz/m;->s:Lz/o;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lz/m;->k:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    invoke-virtual {v0}, Lz/A;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final L(IZ)V
    .locals 3

    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Lz/A;->s:I

    if-ne p1, p2, :cond_2

    goto :goto_3

    :cond_2
    iput p1, p0, Lz/A;->s:I

    iget-object p1, p0, Lz/A;->c:LB0/b;

    iget-object p2, p1, LB0/b;->f:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    iget-object v0, p1, LB0/b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/m;

    iget-object v1, v1, Lz/m;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/F;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lz/F;->j()V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/F;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lz/F;->j()V

    iget-object v1, v0, Lz/F;->c:Lz/m;

    iget-boolean v2, v1, Lz/m;->l:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lz/m;->q()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, LB0/b;->n(Lz/F;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lz/A;->Z()V

    iget-boolean p1, p0, Lz/A;->D:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lz/A;->t:Lz/o;

    if-eqz p1, :cond_7

    iget p2, p0, Lz/A;->s:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    iget-object p1, p1, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz/A;->D:Z

    :cond_7
    :goto_3
    return-void
.end method

.method public final M()V
    .locals 2

    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lz/A;->E:Z

    iput-boolean v0, p0, Lz/A;->F:Z

    iget-object v1, p0, Lz/A;->L:Lz/C;

    iput-boolean v0, v1, Lz/C;->g:Z

    iget-object v0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v0}, LB0/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/m;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lz/m;->t:Lz/A;

    invoke-virtual {v1}, Lz/A;->M()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final N()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz/A;->y(Z)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lz/A;->x(Z)V

    iget-object v2, p0, Lz/A;->w:Lz/m;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lz/m;->k()Lz/A;

    move-result-object v2

    invoke-virtual {v2}, Lz/A;->N()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lz/A;->I:Ljava/util/ArrayList;

    iget-object v3, p0, Lz/A;->J:Ljava/util/ArrayList;

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v0}, Lz/A;->O(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lz/A;->b:Z

    :try_start_0
    iget-object v1, p0, Lz/A;->I:Ljava/util/ArrayList;

    iget-object v2, p0, Lz/A;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lz/A;->Q(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lz/A;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lz/A;->d()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lz/A;->b0()V

    invoke-virtual {p0}, Lz/A;->u()V

    iget-object v1, p0, Lz/A;->c:LB0/b;

    iget-object v1, v1, LB0/b;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v0
.end method

.method public final O(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 5

    const/4 v0, 0x1

    and-int/2addr p4, v0

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    iget-object v2, p0, Lz/A;->d:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_4

    :cond_1
    if-gez p3, :cond_3

    if-eqz p4, :cond_2

    move v3, v1

    goto :goto_4

    :cond_2
    iget-object p3, p0, Lz/A;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 v3, p3, -0x1

    goto :goto_4

    :cond_3
    iget-object v2, p0, Lz/A;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    if-ltz v2, :cond_5

    iget-object v4, p0, Lz/A;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz/a;

    if-ltz p3, :cond_4

    iget v4, v4, Lz/a;->r:I

    if-ne p3, v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-gez v2, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    if-eqz p4, :cond_7

    move v3, v2

    :goto_3
    if-lez v3, :cond_9

    iget-object p4, p0, Lz/A;->d:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lz/a;

    if-ltz p3, :cond_9

    iget p4, p4, Lz/a;->r:I

    if-ne p3, p4, :cond_9

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_7
    iget-object p3, p0, Lz/A;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne v2, p3, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v2, 0x1

    :cond_9
    :goto_4
    if-gez v3, :cond_a

    return v1

    :cond_a
    iget-object p3, p0, Lz/A;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_5
    if-lt p3, v3, :cond_b

    iget-object p4, p0, Lz/A;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lz/a;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_b
    return v0
.end method

.method public final P(Lz/m;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lz/m;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lz/m;->q()Z

    move-result v0

    iget-boolean v1, p1, Lz/m;->z:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lz/A;->c:LB0/b;

    iget-object v1, v0, LB0/b;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, LB0/b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lz/m;->k:Z

    invoke-static {p1}, Lz/A;->H(Lz/m;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lz/A;->D:Z

    :cond_3
    iput-boolean v1, p1, Lz/m;->l:Z

    invoke-virtual {p0, p1}, Lz/A;->X(Lz/m;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final Q(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz/a;

    iget-boolean v3, v3, Lz/a;->o:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Lz/A;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz/a;

    iget-boolean v3, v3, Lz/a;->o:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Lz/A;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Lz/A;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final R(Landroid/os/Parcelable;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "result_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v0, Lz/A;->t:Lz/o;

    iget-object v5, v5, Lz/o;->d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lz/A;->k:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "state"

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "fragment_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v6, v0, Lz/A;->t:Lz/o;

    iget-object v6, v6, Lz/o;->d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lz/E;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lz/A;->c:LB0/b;

    iget-object v4, v3, LB0/b;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    iget-object v6, v3, LB0/b;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz/E;

    iget-object v8, v7, Lz/E;->f:Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lz/B;

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lz/B;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v0, Lz/A;->l:LW0/c;

    const-string v7, "): "

    const/4 v8, 0x2

    const-string v9, "FragmentManager"

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v10, v3, LB0/b;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lz/E;

    if-eqz v15, :cond_6

    iget-object v4, v0, Lz/A;->L:Lz/C;

    iget-object v10, v15, Lz/E;->f:Ljava/lang/String;

    iget-object v4, v4, Lz/C;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz/m;

    if-eqz v4, :cond_8

    invoke-static {v8}, Lz/A;->G(I)Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "restoreSaveState: re-attaching retained "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v10, Lz/F;

    invoke-direct {v10, v5, v3, v4, v15}, Lz/F;-><init>(LW0/c;LB0/b;Lz/m;Lz/E;)V

    goto :goto_4

    :cond_8
    new-instance v10, Lz/F;

    iget-object v4, v0, Lz/A;->t:Lz/o;

    iget-object v4, v4, Lz/o;->d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v0}, Lz/A;->D()Lz/v;

    move-result-object v14

    iget-object v11, v0, Lz/A;->l:LW0/c;

    iget-object v12, v0, Lz/A;->c:LB0/b;

    invoke-direct/range {v10 .. v15}, Lz/F;-><init>(LW0/c;LB0/b;Ljava/lang/ClassLoader;Lz/v;Lz/E;)V

    :goto_4
    iget-object v4, v10, Lz/F;->c:Lz/m;

    iput-object v0, v4, Lz/m;->r:Lz/A;

    invoke-static {v8}, Lz/A;->G(I)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "restoreSaveState: active ("

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lz/m;->e:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v4, v0, Lz/A;->t:Lz/o;

    iget-object v4, v4, Lz/o;->d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v10, v4}, Lz/F;->l(Ljava/lang/ClassLoader;)V

    invoke-virtual {v3, v10}, LB0/b;->m(Lz/F;)V

    iget v4, v0, Lz/A;->s:I

    iput v4, v10, Lz/F;->e:I

    goto/16 :goto_3

    :cond_a
    iget-object v2, v0, Lz/A;->L:Lz/C;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v2, v2, Lz/C;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v10, 0x1

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz/m;

    iget-object v11, v4, Lz/m;->e:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v8}, Lz/A;->G(I)Z

    move-result v11

    if-eqz v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Discarding retained Fragment "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " that was not found in the set of active Fragments "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lz/B;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v11, v0, Lz/A;->L:Lz/C;

    invoke-virtual {v11, v4}, Lz/C;->e(Lz/m;)V

    iput-object v0, v4, Lz/m;->r:Lz/A;

    new-instance v11, Lz/F;

    invoke-direct {v11, v5, v3, v4}, Lz/F;-><init>(LW0/c;LB0/b;Lz/m;)V

    iput v10, v11, Lz/F;->e:I

    invoke-virtual {v11}, Lz/F;->j()V

    iput-boolean v10, v4, Lz/m;->l:Z

    invoke-virtual {v11}, Lz/F;->j()V

    goto :goto_5

    :cond_d
    iget-object v2, v1, Lz/B;->f:Ljava/util/ArrayList;

    iget-object v4, v3, LB0/b;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, LB0/b;->c(Ljava/lang/String;)Lz/m;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-static {v8}, Lz/A;->G(I)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "restoreSaveState: added ("

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v3, v5}, LB0/b;->a(Lz/m;)V

    goto :goto_6

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instantiated fragment for ("

    const-string v3, ")"

    invoke-static {v2, v4, v3}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    iget-object v2, v1, Lz/B;->g:[Lz/b;

    if-eqz v2, :cond_18

    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v1, Lz/B;->g:[Lz/b;

    array-length v5, v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lz/A;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_7
    iget-object v5, v1, Lz/B;->g:[Lz/b;

    array-length v6, v5

    if-ge v2, v6, :cond_17

    aget-object v5, v5, v2

    iget-object v6, v5, Lz/b;->f:Ljava/util/ArrayList;

    new-instance v11, Lz/a;

    invoke-direct {v11, v0}, Lz/a;-><init>(Lz/A;)V

    iget-object v12, v5, Lz/b;->e:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_8
    array-length v15, v12

    if-ge v13, v15, :cond_13

    new-instance v15, Lz/G;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v16, v13, 0x1

    move/from16 p1, v8

    aget v8, v12, v13

    iput v8, v15, Lz/G;->a:I

    invoke-static/range {p1 .. p1}, Lz/A;->G(I)Z

    move-result v8

    if-eqz v8, :cond_11

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v4, "Instantiate "

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " op #"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " base fragment #"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v12, v16

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-static {}, LB/e;->values()[LB/e;

    move-result-object v4

    iget-object v8, v5, Lz/b;->g:[I

    aget v8, v8, v14

    aget-object v4, v4, v8

    iput-object v4, v15, Lz/G;->h:LB/e;

    invoke-static {}, LB/e;->values()[LB/e;

    move-result-object v4

    iget-object v8, v5, Lz/b;->h:[I

    aget v8, v8, v14

    aget-object v4, v4, v8

    iput-object v4, v15, Lz/G;->i:LB/e;

    add-int/lit8 v4, v13, 0x2

    aget v8, v12, v16

    if-eqz v8, :cond_12

    move v8, v10

    goto :goto_9

    :cond_12
    const/4 v8, 0x0

    :goto_9
    iput-boolean v8, v15, Lz/G;->c:Z

    add-int/lit8 v8, v13, 0x3

    aget v4, v12, v4

    iput v4, v15, Lz/G;->d:I

    add-int/lit8 v16, v13, 0x4

    aget v8, v12, v8

    iput v8, v15, Lz/G;->e:I

    add-int/lit8 v17, v13, 0x5

    aget v10, v12, v16

    iput v10, v15, Lz/G;->f:I

    add-int/lit8 v13, v13, 0x6

    move-object/from16 v16, v12

    aget v12, v16, v17

    iput v12, v15, Lz/G;->g:I

    iput v4, v11, Lz/a;->b:I

    iput v8, v11, Lz/a;->c:I

    iput v10, v11, Lz/a;->d:I

    iput v12, v11, Lz/a;->e:I

    invoke-virtual {v11, v15}, Lz/a;->b(Lz/G;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v8, p1

    move-object/from16 v12, v16

    const/4 v10, 0x1

    goto/16 :goto_8

    :cond_13
    move/from16 p1, v8

    iget v4, v5, Lz/b;->i:I

    iput v4, v11, Lz/a;->f:I

    iget-object v4, v5, Lz/b;->j:Ljava/lang/String;

    iput-object v4, v11, Lz/a;->h:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, v11, Lz/a;->g:Z

    iget v4, v5, Lz/b;->l:I

    iput v4, v11, Lz/a;->i:I

    iget-object v4, v5, Lz/b;->m:Ljava/lang/CharSequence;

    iput-object v4, v11, Lz/a;->j:Ljava/lang/CharSequence;

    iget v4, v5, Lz/b;->n:I

    iput v4, v11, Lz/a;->k:I

    iget-object v4, v5, Lz/b;->o:Ljava/lang/CharSequence;

    iput-object v4, v11, Lz/a;->l:Ljava/lang/CharSequence;

    iget-object v4, v5, Lz/b;->p:Ljava/util/ArrayList;

    iput-object v4, v11, Lz/a;->m:Ljava/util/ArrayList;

    iget-object v4, v5, Lz/b;->q:Ljava/util/ArrayList;

    iput-object v4, v11, Lz/a;->n:Ljava/util/ArrayList;

    iget-boolean v4, v5, Lz/b;->r:Z

    iput-boolean v4, v11, Lz/a;->o:Z

    iget v4, v5, Lz/b;->k:I

    iput v4, v11, Lz/a;->r:I

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_15

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_14

    iget-object v8, v11, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz/G;

    invoke-virtual {v3, v5}, LB0/b;->c(Ljava/lang/String;)Lz/m;

    move-result-object v5

    iput-object v5, v8, Lz/G;->b:Lz/m;

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_15
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lz/a;->c(I)V

    invoke-static/range {p1 .. p1}, Lz/A;->G(I)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "restoreAllState: back stack #"

    const-string v6, " (index "

    invoke-static {v5, v6, v2}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Lz/a;->r:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lz/I;

    invoke-direct {v5}, Lz/I;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, "  "

    const/4 v8, 0x0

    invoke-virtual {v11, v5, v6, v8}, Lz/a;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    goto :goto_b

    :cond_16
    const/4 v8, 0x0

    :goto_b
    iget-object v5, v0, Lz/A;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move/from16 v8, p1

    move v10, v4

    goto/16 :goto_7

    :cond_17
    const/4 v8, 0x0

    goto :goto_c

    :cond_18
    const/4 v8, 0x0

    const/4 v2, 0x0

    iput-object v2, v0, Lz/A;->d:Ljava/util/ArrayList;

    :goto_c
    iget-object v2, v0, Lz/A;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, v1, Lz/B;->h:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Lz/B;->i:Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-virtual {v3, v2}, LB0/b;->c(Ljava/lang/String;)Lz/m;

    move-result-object v2

    iput-object v2, v0, Lz/A;->w:Lz/m;

    invoke-virtual {v0, v2}, Lz/A;->q(Lz/m;)V

    :cond_19
    iget-object v2, v1, Lz/B;->j:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    move v4, v8

    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_1a

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, v1, Lz/B;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz/c;

    iget-object v6, v0, Lz/A;->j:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1a
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Lz/B;->l:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lz/A;->C:Ljava/util/ArrayDeque;

    return-void
.end method

.method public final S()Landroid/os/Bundle;
    .locals 13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lz/A;->e()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/f;

    iget-boolean v5, v2, Lz/f;->e:Z

    if-eqz v5, :cond_0

    invoke-static {v4}, Lz/A;->G(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "FragmentManager"

    const-string v5, "SpecialEffectsController: Forcing postponed operations"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v3, v2, Lz/f;->e:Z

    invoke-virtual {v2}, Lz/f;->b()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lz/A;->e()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/f;

    invoke-virtual {v2}, Lz/f;->c()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lz/A;->y(Z)Z

    iput-boolean v1, p0, Lz/A;->E:Z

    iget-object v2, p0, Lz/A;->L:Lz/C;

    iput-boolean v1, v2, Lz/C;->g:Z

    iget-object v1, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, LB0/b;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz/F;

    if-eqz v5, :cond_4

    iget-object v7, v5, Lz/F;->c:Lz/m;

    new-instance v8, Lz/E;

    invoke-direct {v8, v7}, Lz/E;-><init>(Lz/m;)V

    iget v9, v7, Lz/m;->a:I

    const/4 v10, -0x1

    if-le v9, v10, :cond_d

    iget-object v9, v8, Lz/E;->q:Landroid/os/Bundle;

    if-nez v9, :cond_d

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v9}, Lz/m;->A(Landroid/os/Bundle;)V

    iget-object v10, v7, Lz/m;->N:LM0/l;

    invoke-virtual {v10, v9}, LM0/l;->e(Landroid/os/Bundle;)V

    iget-object v10, v7, Lz/m;->t:Lz/A;

    invoke-virtual {v10}, Lz/A;->S()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "android:support:fragments"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v10, v5, Lz/F;->a:LW0/c;

    invoke-virtual {v10, v3}, LW0/c;->o(Z)V

    invoke-virtual {v9}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v9

    :goto_3
    iget-object v9, v7, Lz/m;->c:Landroid/util/SparseArray;

    if-eqz v9, :cond_7

    if-nez v6, :cond_6

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_6
    const-string v9, "android:view_state"

    iget-object v10, v7, Lz/m;->c:Landroid/util/SparseArray;

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_7
    iget-object v9, v7, Lz/m;->d:Landroid/os/Bundle;

    if-eqz v9, :cond_9

    if-nez v6, :cond_8

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_8
    const-string v9, "android:view_registry_state"

    iget-object v10, v7, Lz/m;->d:Landroid/os/Bundle;

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    iget-boolean v9, v7, Lz/m;->F:Z

    if-nez v9, :cond_b

    if-nez v6, :cond_a

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_a
    const-string v9, "android:user_visible_hint"

    iget-boolean v10, v7, Lz/m;->F:Z

    invoke-virtual {v6, v9, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_b
    iput-object v6, v8, Lz/E;->q:Landroid/os/Bundle;

    iget-object v9, v7, Lz/m;->h:Ljava/lang/String;

    if-eqz v9, :cond_e

    if-nez v6, :cond_c

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v8, Lz/E;->q:Landroid/os/Bundle;

    :cond_c
    iget-object v6, v8, Lz/E;->q:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v7, Lz/m;->h:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v7, Lz/m;->i:I

    if-eqz v6, :cond_e

    iget-object v9, v8, Lz/E;->q:Landroid/os/Bundle;

    const-string v10, "android:target_req_state"

    invoke-virtual {v9, v10, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :cond_d
    iget-object v6, v7, Lz/m;->b:Landroid/os/Bundle;

    iput-object v6, v8, Lz/E;->q:Landroid/os/Bundle;

    :cond_e
    :goto_4
    iget-object v5, v5, Lz/F;->b:LB0/b;

    iget-object v6, v7, Lz/m;->e:Ljava/lang/String;

    iget-object v5, v5, LB0/b;->g:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz/E;

    iget-object v5, v7, Lz/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lz/A;->G(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Saved state of "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lz/m;->b:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    iget-object v1, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v1, v1, LB0/b;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v4}, Lz/A;->G(I)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "FragmentManager"

    const-string v2, "saveAllState: no fragments!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_10
    iget-object v1, p0, Lz/A;->c:LB0/b;

    iget-object v7, v1, LB0/b;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    iget-object v8, v1, LB0/b;->e:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_11

    monitor-exit v7

    move-object v8, v6

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_11
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v1, LB0/b;->e:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v1, LB0/b;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz/m;

    iget-object v10, v9, Lz/m;->e:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lz/A;->G(I)Z

    move-result v10

    if-eqz v10, :cond_12

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveAllState: adding fragment ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lz/m;->e:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_13
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    iget-object v1, p0, Lz/A;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15

    new-array v7, v1, [Lz/b;

    :goto_7
    if-ge v3, v1, :cond_16

    new-instance v9, Lz/b;

    iget-object v10, p0, Lz/A;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lz/a;

    invoke-direct {v9, v10}, Lz/b;-><init>(Lz/a;)V

    aput-object v9, v7, v3

    invoke-static {v4}, Lz/A;->G(I)Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, "FragmentManager"

    const-string v10, "saveAllState: adding back stack #"

    const-string v11, ": "

    invoke-static {v10, v11, v3}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lz/A;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    move-object v7, v6

    :cond_16
    new-instance v1, Lz/B;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v6, v1, Lz/B;->i:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lz/B;->j:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lz/B;->k:Ljava/util/ArrayList;

    iput-object v2, v1, Lz/B;->e:Ljava/util/ArrayList;

    iput-object v8, v1, Lz/B;->f:Ljava/util/ArrayList;

    iput-object v7, v1, Lz/B;->g:[Lz/b;

    iget-object v2, p0, Lz/A;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iput v2, v1, Lz/B;->h:I

    iget-object v2, p0, Lz/A;->w:Lz/m;

    if-eqz v2, :cond_17

    iget-object v2, v2, Lz/m;->e:Ljava/lang/String;

    iput-object v2, v1, Lz/B;->i:Ljava/lang/String;

    :cond_17
    iget-object v2, p0, Lz/A;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lz/A;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lz/A;->C:Ljava/util/ArrayDeque;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lz/B;->l:Ljava/util/ArrayList;

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lz/A;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "result_"

    invoke-static {v3, v2}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lz/A;->k:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/E;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "state"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fragment_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lz/E;->f:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9

    :cond_19
    return-object v0

    :goto_a
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final T()V
    .locals 3

    iget-object v0, p0, Lz/A;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz/A;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lz/A;->t:Lz/o;

    iget-object v1, v1, Lz/o;->e:Landroid/os/Handler;

    iget-object v2, p0, Lz/A;->M:LB/k;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lz/A;->t:Lz/o;

    iget-object v1, v1, Lz/o;->e:Landroid/os/Handler;

    iget-object v2, p0, Lz/A;->M:LB/k;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lz/A;->b0()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final U(Lz/m;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lz/A;->C(Lz/m;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lz/p;

    if-eqz v0, :cond_0

    check-cast p1, Lz/p;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lz/p;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public final V(Lz/m;LB/e;)V
    .locals 2

    iget-object v0, p1, Lz/m;->e:Ljava/lang/String;

    iget-object v1, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v1, v0}, LB0/b;->c(Ljava/lang/String;)Lz/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lz/m;->s:Lz/o;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lz/m;->r:Lz/A;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Lz/m;->K:LB/e;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final W(Lz/m;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Lz/m;->e:Ljava/lang/String;

    iget-object v1, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v1, v0}, LB0/b;->c(Ljava/lang/String;)Lz/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lz/m;->s:Lz/o;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lz/m;->r:Lz/A;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lz/A;->w:Lz/m;

    iput-object p1, p0, Lz/A;->w:Lz/m;

    invoke-virtual {p0, v0}, Lz/A;->q(Lz/m;)V

    iget-object p1, p0, Lz/A;->w:Lz/m;

    invoke-virtual {p0, p1}, Lz/A;->q(Lz/m;)V

    return-void
.end method

.method public final X(Lz/m;)V
    .locals 5

    invoke-virtual {p0, p1}, Lz/A;->C(Lz/m;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p1, Lz/m;->G:Lz/l;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget v3, v1, Lz/l;->b:I

    :goto_0
    if-nez v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    iget v4, v1, Lz/l;->c:I

    :goto_1
    add-int/2addr v4, v3

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    iget v3, v1, Lz/l;->d:I

    :goto_2
    add-int/2addr v3, v4

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    iget v1, v1, Lz/l;->e:I

    :goto_3
    add-int/2addr v1, v3

    if-lez v1, :cond_7

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/m;

    iget-object p1, p1, Lz/m;->G:Lz/l;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v2, p1, Lz/l;->a:Z

    :goto_4
    iget-object p1, v0, Lz/m;->G:Lz/l;

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Lz/m;->j()Lz/l;

    move-result-object p1

    iput-boolean v2, p1, Lz/l;->a:Z

    :cond_7
    :goto_5
    return-void
.end method

.method public final Z()V
    .locals 4

    iget-object v0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v0}, LB0/b;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/F;

    iget-object v2, v1, Lz/F;->c:Lz/m;

    iget-boolean v3, v2, Lz/m;->E:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lz/A;->b:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lz/A;->H:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v2, Lz/m;->E:Z

    invoke-virtual {v1}, Lz/F;->j()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lz/m;)Lz/F;
    .locals 3

    iget-object v0, p1, Lz/m;->J:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, LA/d;->c(Lz/m;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lz/A;->f(Lz/m;)Lz/F;

    move-result-object v0

    iput-object p0, p1, Lz/m;->r:Lz/A;

    iget-object v1, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v1, v0}, LB0/b;->m(Lz/F;)V

    iget-boolean v2, p1, Lz/m;->z:Z

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, LB0/b;->a(Lz/m;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Lz/m;->l:Z

    iput-boolean v1, p1, Lz/m;->H:Z

    invoke-static {p1}, Lz/A;->H(Lz/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz/A;->D:Z

    :cond_2
    return-object v0
.end method

.method public final a0(Ljava/lang/IllegalStateException;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lz/I;

    invoke-direct {v0}, Lz/I;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Lz/A;->t:Lz/o;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    iget-object v0, v0, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v0, v6, v5, v2, v4}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2, v0}, Lz/A;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    throw p1
.end method

.method public final b(Lz/o;Lcom/brisa/local/a;Lz/m;)V
    .locals 4

    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-nez v0, :cond_13

    iput-object p1, p0, Lz/A;->t:Lz/o;

    iput-object p2, p0, Lz/A;->u:Lcom/brisa/local/a;

    iput-object p3, p0, Lz/A;->v:Lz/m;

    iget-object p2, p0, Lz/A;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p3, :cond_0

    new-instance v0, Lz/w;

    invoke-direct {v0, p3}, Lz/w;-><init>(Lz/m;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p2, p0, Lz/A;->v:Lz/m;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lz/A;->b0()V

    :cond_2
    if-eqz p1, :cond_5

    iget-object p2, p1, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object p2, p2, Lb/h;->g:LW0/c;

    iput-object p2, p0, Lz/A;->g:LW0/c;

    if-eqz p3, :cond_3

    move-object v0, p3

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LB/g;->g()LB/i;

    move-result-object v0

    iget-object v1, v0, LB/i;->c:LB/e;

    sget-object v2, LB/e;->e:LB/e;

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Lb/j;

    iget-object v2, p0, Lz/A;->h:Lz/t;

    invoke-direct {v1, p2, v0, v2}, Lb/j;-><init>(LW0/c;LB/i;Lz/t;)V

    iget-object p2, v2, Lz/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    const/4 p2, 0x0

    if-eqz p3, :cond_7

    iget-object p1, p3, Lz/m;->r:Lz/A;

    iget-object p1, p1, Lz/A;->L:Lz/C;

    iget-object v0, p1, Lz/C;->c:Ljava/util/HashMap;

    iget-object v1, p3, Lz/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/C;

    if-nez v1, :cond_6

    new-instance v1, Lz/C;

    iget-boolean p1, p1, Lz/C;->e:Z

    invoke-direct {v1, p1}, Lz/C;-><init>(Z)V

    iget-object p1, p3, Lz/m;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iput-object v1, p0, Lz/A;->L:Lz/C;

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p1, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1}, Lb/h;->e()LB/D;

    move-result-object p1

    new-instance v0, LZ0/i;

    sget-object v1, Lz/C;->h:LE/c;

    invoke-direct {v0, p1, v1}, LZ0/i;-><init>(LB/D;LB/C;)V

    const-class p1, Lz/C;

    invoke-virtual {v0, p1}, LZ0/i;->r(Ljava/lang/Class;)LB/B;

    move-result-object p1

    check-cast p1, Lz/C;

    iput-object p1, p0, Lz/A;->L:Lz/C;

    goto :goto_3

    :cond_8
    new-instance p1, Lz/C;

    invoke-direct {p1, p2}, Lz/C;-><init>(Z)V

    iput-object p1, p0, Lz/A;->L:Lz/C;

    :goto_3
    iget-object p1, p0, Lz/A;->L:Lz/C;

    iget-boolean v0, p0, Lz/A;->E:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lz/A;->F:Z

    if-eqz v0, :cond_a

    :cond_9
    const/4 p2, 0x1

    :cond_a
    iput-boolean p2, p1, Lz/C;->g:Z

    iget-object p2, p0, Lz/A;->c:LB0/b;

    iput-object p1, p2, LB0/b;->h:Ljava/lang/Object;

    iget-object p1, p0, Lz/A;->t:Lz/o;

    if-eqz p1, :cond_b

    if-nez p3, :cond_b

    invoke-virtual {p1}, Lz/o;->a()LM0/m1;

    move-result-object p1

    new-instance p2, Lb/b;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lb/b;-><init>(Ljava/lang/Object;I)V

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0, p2}, LM0/m1;->f(Ljava/lang/String;LS0/d;)V

    invoke-virtual {p1, v0}, LM0/m1;->e(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Lz/A;->R(Landroid/os/Parcelable;)V

    :cond_b
    iget-object p1, p0, Lz/A;->t:Lz/o;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object p1, p1, Lb/h;->h:Lb/e;

    if-eqz p3, :cond_c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p3, Lz/m;->e:Ljava/lang/String;

    const-string v1, ":"

    invoke-static {p2, v0, v1}, LB1/e;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_c
    const-string p2, ""

    :goto_4
    const-string v0, "FragmentManager:"

    invoke-static {v0, p2}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "StartActivityForResult"

    invoke-static {p2, v0}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Le/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Le/a;-><init>(I)V

    new-instance v2, La1/g;

    invoke-direct {v2, p0}, La1/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1, v2}, Lb/e;->c(Ljava/lang/String;Le/a;Ld/b;)LB/A;

    move-result-object v0

    iput-object v0, p0, Lz/A;->z:LB/A;

    const-string v0, "StartIntentSenderForResult"

    invoke-static {p2, v0}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Le/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Le/a;-><init>(I)V

    new-instance v2, Lz/s;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lz/s;-><init>(Lz/A;I)V

    invoke-virtual {p1, v0, v1, v2}, Lb/e;->c(Ljava/lang/String;Le/a;Ld/b;)LB/A;

    move-result-object v0

    iput-object v0, p0, Lz/A;->A:LB/A;

    const-string v0, "RequestPermissions"

    invoke-static {p2, v0}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Le/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a;-><init>(I)V

    new-instance v1, Lz/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lz/s;-><init>(Lz/A;I)V

    invoke-virtual {p1, p2, v0, v1}, Lb/e;->c(Ljava/lang/String;Le/a;Ld/b;)LB/A;

    move-result-object p1

    iput-object p1, p0, Lz/A;->B:LB/A;

    :cond_d
    iget-object p1, p0, Lz/A;->t:Lz/o;

    if-eqz p1, :cond_e

    iget-object p2, p0, Lz/A;->n:Lz/r;

    iget-object p1, p1, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1, p2}, Lb/h;->d(Lr/a;)V

    :cond_e
    iget-object p1, p0, Lz/A;->t:Lz/o;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object p1, p1, Lb/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p2, p0, Lz/A;->o:Lz/r;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object p1, p0, Lz/A;->t:Lz/o;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object p1, p1, Lb/h;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p2, p0, Lz/A;->p:Lz/r;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object p1, p0, Lz/A;->t:Lz/o;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object p1, p1, Lb/h;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p2, p0, Lz/A;->q:Lz/r;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object p1, p0, Lz/A;->t:Lz/o;

    if-eqz p1, :cond_12

    if-nez p3, :cond_12

    iget-object p1, p1, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object p1, p1, Lb/h;->c:LB/A;

    iget-object p2, p1, LB/A;->g:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p3, p0, Lz/A;->r:Lz/u;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, LB/A;->f:Ljava/lang/Object;

    check-cast p1, LH/a;

    invoke-virtual {p1}, LH/a;->run()V

    :cond_12
    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b0()V
    .locals 4

    iget-object v0, p0, Lz/A;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz/A;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lz/A;->h:Lz/t;

    iput-boolean v2, v1, Lz/t;->a:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lz/A;->h:Lz/t;

    iget-object v1, p0, Lz/A;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-lez v1, :cond_2

    iget-object v1, p0, Lz/A;->v:Lz/m;

    invoke-static {v1}, Lz/A;->K(Lz/m;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lz/t;->a:Z

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final c(Lz/m;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "attach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Lz/m;->z:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Lz/m;->z:Z

    iget-boolean v1, p1, Lz/m;->k:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v1, p1}, LB0/b;->a(Lz/m;)V

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add from attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Lz/A;->H(Lz/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz/A;->D:Z

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz/A;->b:Z

    iget-object v0, p0, Lz/A;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lz/A;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final e()Ljava/util/HashSet;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v1}, LB0/b;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/F;

    iget-object v2, v2, Lz/F;->c:Lz/m;

    iget-object v2, v2, Lz/m;->D:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lz/A;->E()Ld1/m;

    move-result-object v3

    invoke-static {v2, v3}, Lz/f;->d(Landroid/view/ViewGroup;Ld1/m;)Lz/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final f(Lz/m;)Lz/F;
    .locals 3

    iget-object v0, p1, Lz/m;->e:Ljava/lang/String;

    iget-object v1, p0, Lz/A;->c:LB0/b;

    iget-object v2, v1, LB0/b;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/F;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lz/F;

    iget-object v2, p0, Lz/A;->l:LW0/c;

    invoke-direct {v0, v2, v1, p1}, Lz/F;-><init>(LW0/c;LB0/b;Lz/m;)V

    iget-object p1, p0, Lz/A;->t:Lz/o;

    iget-object p1, p1, Lz/o;->d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz/F;->l(Ljava/lang/ClassLoader;)V

    iget p1, p0, Lz/A;->s:I

    iput p1, v0, Lz/F;->e:I

    return-object v0
.end method

.method public final g(Lz/m;)V
    .locals 4

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v1}, Lz/A;->G(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detach: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p1, Lz/m;->z:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p1, Lz/m;->z:Z

    iget-boolean v3, p1, Lz/m;->k:Z

    if-eqz v3, :cond_3

    invoke-static {v1}, Lz/A;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lz/A;->c:LB0/b;

    iget-object v1, v0, LB0/b;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, LB0/b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lz/m;->k:Z

    invoke-static {p1}, Lz/A;->H(Lz/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lz/A;->D:Z

    :cond_2
    invoke-virtual {p0, p1}, Lz/A;->X(Lz/m;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final h(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lz/A;->a0(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v0}, LB0/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/m;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lz/m;->C:Z

    if-eqz p1, :cond_2

    iget-object v1, v1, Lz/m;->t:Lz/A;

    invoke-virtual {v1, v2}, Lz/A;->h(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final i()Z
    .locals 4

    iget v0, p0, Lz/A;->s:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v0}, LB0/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/m;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lz/m;->y:Z

    if-nez v3, :cond_2

    iget-object v2, v2, Lz/m;->t:Lz/A;

    invoke-virtual {v2}, Lz/A;->i()Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    return v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 7

    iget v0, p0, Lz/A;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v0}, LB0/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz/m;

    if-eqz v5, :cond_1

    invoke-static {v5}, Lz/A;->J(Lz/m;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Lz/m;->y:Z

    if-nez v6, :cond_2

    iget-object v6, v5, Lz/m;->t:Lz/A;

    invoke-virtual {v6}, Lz/A;->j()Z

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    if-eqz v6, :cond_1

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lz/A;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    :goto_2
    iget-object v0, p0, Lz/A;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lz/A;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/m;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iput-object v3, p0, Lz/A;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public final k()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/A;->G:Z

    invoke-virtual {p0, v0}, Lz/A;->y(Z)Z

    invoke-virtual {p0}, Lz/A;->e()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/f;

    invoke-virtual {v2}, Lz/f;->c()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz/A;->t:Lz/o;

    iget-object v2, p0, Lz/A;->c:LB0/b;

    if-eqz v1, :cond_1

    iget-object v0, v2, LB0/b;->h:Ljava/lang/Object;

    check-cast v0, Lz/C;

    iget-boolean v0, v0, Lz/C;->f:Z

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lz/o;->d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lz/A;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/c;

    iget-object v1, v1, Lz/c;->e:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, LB0/b;->h:Ljava/lang/Object;

    check-cast v4, Lz/C;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x3

    invoke-static {v5}, Lz/A;->G(I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Clearing non-config state for saved state of Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FragmentManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v4, v3}, Lz/C;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lz/A;->t(I)V

    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object v0, v0, Lb/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lz/A;->o:Lz/r;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object v0, v0, Lb/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lz/A;->n:Lz/r;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object v0, v0, Lb/h;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lz/A;->p:Lz/r;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object v0, v0, Lb/h;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lz/A;->q:Lz/r;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lz/A;->v:Lz/m;

    if-nez v1, :cond_b

    iget-object v0, v0, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object v0, v0, Lb/h;->c:LB/A;

    iget-object v1, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lz/A;->r:Lz/u;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    iget-object v0, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, LH/a;

    invoke-virtual {v0}, LH/a;->run()V

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_b
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lz/A;->t:Lz/o;

    iput-object v0, p0, Lz/A;->u:Lcom/brisa/local/a;

    iput-object v0, p0, Lz/A;->v:Lz/m;

    iget-object v1, p0, Lz/A;->g:LW0/c;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lz/A;->h:Lz/t;

    iget-object v1, v1, Lz/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a;

    invoke-interface {v2}, Lb/a;->cancel()V

    goto :goto_4

    :cond_c
    iput-object v0, p0, Lz/A;->g:LW0/c;

    :cond_d
    iget-object v0, p0, Lz/A;->z:LB/A;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, LB/A;->U()V

    iget-object v0, p0, Lz/A;->A:LB/A;

    invoke-virtual {v0}, LB/A;->U()V

    iget-object v0, p0, Lz/A;->B:LB/A;

    invoke-virtual {v0}, LB/A;->U()V

    :cond_e
    return-void
.end method

.method public final l(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lz/A;->a0(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v0}, LB0/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/m;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lz/m;->C:Z

    if-eqz p1, :cond_2

    iget-object v1, v1, Lz/m;->t:Lz/A;

    invoke-virtual {v1, v2}, Lz/A;->l(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final m(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lz/A;->a0(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v0}, LB0/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/m;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, v1, Lz/m;->t:Lz/A;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lz/A;->m(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v0}, LB0/b;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lz/m;->p()Z

    iget-object v1, v1, Lz/m;->t:Lz/A;

    invoke-virtual {v1}, Lz/A;->n()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o()Z
    .locals 5

    iget v0, p0, Lz/A;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v0}, LB0/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz/m;

    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lz/m;->y:Z

    if-nez v4, :cond_2

    iget-object v3, v3, Lz/m;->t:Lz/A;

    invoke-virtual {v3}, Lz/A;->o()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final p()V
    .locals 3

    iget v0, p0, Lz/A;->s:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v0}, LB0/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/m;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lz/m;->y:Z

    if-nez v2, :cond_1

    iget-object v1, v1, Lz/m;->t:Lz/A;

    invoke-virtual {v1}, Lz/A;->p()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final q(Lz/m;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lz/m;->e:Ljava/lang/String;

    iget-object v1, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v1, v0}, LB0/b;->c(Ljava/lang/String;)Lz/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lz/m;->r:Lz/A;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lz/A;->K(Lz/m;)Z

    move-result v0

    iget-object v1, p1, Lz/m;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lz/m;->j:Ljava/lang/Boolean;

    iget-object p1, p1, Lz/m;->t:Lz/A;

    invoke-virtual {p1}, Lz/A;->b0()V

    iget-object v0, p1, Lz/A;->w:Lz/m;

    invoke-virtual {p1, v0}, Lz/A;->q(Lz/m;)V

    :cond_1
    return-void
.end method

.method public final r(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lz/A;->a0(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v0}, LB0/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/m;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, v1, Lz/m;->t:Lz/A;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lz/A;->r(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final s()Z
    .locals 6

    iget v0, p0, Lz/A;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {v0}, LB0/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz/m;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lz/A;->J(Lz/m;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Lz/m;->y:Z

    if-nez v5, :cond_2

    iget-object v4, v4, Lz/m;->t:Lz/A;

    invoke-virtual {v4}, Lz/A;->s()Z

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final t(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lz/A;->b:Z

    iget-object v2, p0, Lz/A;->c:LB0/b;

    iget-object v2, v2, LB0/b;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz/F;

    if-eqz v3, :cond_0

    iput p1, v3, Lz/F;->e:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lz/A;->L(IZ)V

    invoke-virtual {p0}, Lz/A;->e()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/f;

    invoke-virtual {v2}, Lz/f;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lz/A;->b:Z

    invoke-virtual {p0, v0}, Lz/A;->y(Z)Z

    return-void

    :goto_2
    iput-boolean v1, p0, Lz/A;->b:Z

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz/A;->v:Lz/m;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz/A;->v:Lz/m;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz/A;->t:Lz/o;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz/A;->t:Lz/o;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 1

    iget-boolean v0, p0, Lz/A;->H:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz/A;->H:Z

    invoke-virtual {p0}, Lz/A;->Z()V

    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "    "

    invoke-static {p1, v0}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz/A;->c:LB0/b;

    iget-object v2, v1, LB0/b;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "    "

    invoke-static {p1, v3}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, LB0/b;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Active Fragments:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz/F;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    iget-object v4, v4, Lz/F;->c:Lz/m;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, p2, p3, p4}, Lz/m;->i(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Added Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz/m;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lz/m;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lz/A;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_2
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Lz/A;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/m;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lz/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lz/A;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_3
    if-ge v1, p2, :cond_4

    iget-object v2, p0, Lz/A;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lz/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p3, v3}, Lz/a;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Back Stack Index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lz/A;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lz/A;->a:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lz/A;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge p4, v0, :cond_5

    iget-object v1, p0, Lz/A;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/y;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lz/A;->t:Lz/o;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lz/A;->u:Lcom/brisa/local/a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Lz/A;->v:Lz/m;

    if-eqz p2, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lz/A;->v:Lz/m;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lz/A;->s:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lz/A;->E:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lz/A;->F:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lz/A;->G:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Lz/A;->D:Z

    if-eqz p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lz/A;->D:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    :goto_5
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final w(Lz/y;Z)V
    .locals 2

    if-nez p2, :cond_3

    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lz/A;->G:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean v0, p0, Lz/A;->E:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lz/A;->F:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lz/A;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz/A;->t:Lz/o;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p2, p0, Lz/A;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lz/A;->T()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final x(Z)V
    .locals 2

    iget-boolean v0, p0, Lz/A;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lz/A;->t:Lz/o;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lz/A;->G:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lz/A;->t:Lz/o;

    iget-object v1, v1, Lz/o;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lz/A;->E:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lz/A;->F:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object p1, p0, Lz/A;->I:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz/A;->I:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz/A;->J:Ljava/util/ArrayList;

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y(Z)Z
    .locals 8

    invoke-virtual {p0, p1}, Lz/A;->x(Z)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lz/A;->I:Ljava/util/ArrayList;

    iget-object v2, p0, Lz/A;->J:Ljava/util/ArrayList;

    iget-object v3, p0, Lz/A;->a:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lz/A;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :try_start_1
    iget-object v4, p0, Lz/A;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, p1

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v7, p0, Lz/A;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz/y;

    invoke-interface {v7, v1, v2}, Lz/y;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    :try_start_2
    iget-object v1, p0, Lz/A;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lz/A;->t:Lz/o;

    iget-object v1, v1, Lz/o;->e:Landroid/os/Handler;

    iget-object v2, p0, Lz/A;->M:LB/k;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v6, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/A;->b:Z

    :try_start_3
    iget-object v1, p0, Lz/A;->I:Ljava/util/ArrayList;

    iget-object v2, p0, Lz/A;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lz/A;->Q(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p0}, Lz/A;->d()V

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lz/A;->d()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lz/A;->b0()V

    invoke-virtual {p0}, Lz/A;->u()V

    iget-object p1, p0, Lz/A;->c:LB0/b;

    iget-object p1, p1, LB0/b;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v0

    :goto_3
    :try_start_4
    iget-object v0, p0, Lz/A;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lz/A;->t:Lz/o;

    iget-object v0, v0, Lz/o;->e:Landroid/os/Handler;

    iget-object v1, p0, Lz/A;->M:LB/k;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw p1

    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    iget-object v4, v1, Lz/A;->c:LB0/b;

    move/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz/a;

    iget-boolean v6, v6, Lz/a;->o:Z

    iget-object v7, v1, Lz/A;->K:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lz/A;->K:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v7, v1, Lz/A;->K:Ljava/util/ArrayList;

    invoke-virtual {v4}, LB0/b;->j()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v7, v1, Lz/A;->w:Lz/m;

    move v9, v5

    const/4 v10, 0x0

    :goto_1
    const/4 v12, 0x1

    if-ge v9, v3, :cond_13

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lz/a;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_d

    iget-object v14, v1, Lz/A;->K:Ljava/util/ArrayList;

    iget-object v11, v13, Lz/a;->a:Ljava/util/ArrayList;

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_c

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lz/G;

    iget v5, v15, Lz/G;->a:I

    if-eq v5, v12, :cond_b

    const/4 v12, 0x2

    move/from16 v17, v6

    const/16 v6, 0x9

    if-eq v5, v12, :cond_5

    const/4 v12, 0x3

    if-eq v5, v12, :cond_4

    const/4 v12, 0x6

    if-eq v5, v12, :cond_4

    const/4 v12, 0x7

    if-eq v5, v12, :cond_3

    const/16 v12, 0x8

    if-eq v5, v12, :cond_1

    goto :goto_3

    :cond_1
    new-instance v5, Lz/G;

    const/4 v12, 0x0

    invoke-direct {v5, v6, v7, v12}, Lz/G;-><init>(ILz/m;I)V

    invoke-virtual {v11, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, v15, Lz/G;->c:Z

    add-int/lit8 v8, v8, 0x1

    iget-object v5, v15, Lz/G;->b:Lz/m;

    move-object v7, v5

    :cond_2
    :goto_3
    move/from16 v20, v9

    move/from16 v19, v10

    const/4 v6, 0x1

    goto/16 :goto_9

    :cond_3
    const/4 v6, 0x1

    :goto_4
    move/from16 v20, v9

    move/from16 v19, v10

    goto/16 :goto_8

    :cond_4
    iget-object v5, v15, Lz/G;->b:Lz/m;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v15, Lz/G;->b:Lz/m;

    if-ne v5, v7, :cond_2

    new-instance v7, Lz/G;

    invoke-direct {v7, v6, v5}, Lz/G;-><init>(ILz/m;)V

    invoke-virtual {v11, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v20, v9

    move/from16 v19, v10

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_5
    iget-object v5, v15, Lz/G;->b:Lz/m;

    iget v12, v5, Lz/m;->w:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v16, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v6, v18

    const/16 v18, 0x0

    :goto_5
    if-ltz v6, :cond_9

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v6

    move-object/from16 v6, v20

    check-cast v6, Lz/m;

    move/from16 v20, v9

    iget v9, v6, Lz/m;->w:I

    if-ne v9, v12, :cond_8

    if-ne v6, v5, :cond_6

    move/from16 v19, v10

    const/4 v6, 0x1

    const/16 v18, 0x1

    goto :goto_7

    :cond_6
    if-ne v6, v7, :cond_7

    new-instance v7, Lz/G;

    move/from16 v19, v10

    const/4 v9, 0x0

    const/16 v10, 0x9

    invoke-direct {v7, v10, v6, v9}, Lz/G;-><init>(ILz/m;I)V

    invoke-virtual {v11, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_6

    :cond_7
    move/from16 v19, v10

    const/4 v9, 0x0

    const/16 v10, 0x9

    :goto_6
    new-instance v10, Lz/G;

    move-object/from16 v22, v7

    const/4 v7, 0x3

    invoke-direct {v10, v7, v6, v9}, Lz/G;-><init>(ILz/m;I)V

    iget v7, v15, Lz/G;->d:I

    iput v7, v10, Lz/G;->d:I

    iget v7, v15, Lz/G;->f:I

    iput v7, v10, Lz/G;->f:I

    iget v7, v15, Lz/G;->e:I

    iput v7, v10, Lz/G;->e:I

    iget v7, v15, Lz/G;->g:I

    iput v7, v10, Lz/G;->g:I

    invoke-virtual {v11, v8, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    add-int/2addr v8, v6

    move-object/from16 v7, v22

    goto :goto_7

    :cond_8
    move/from16 v19, v10

    const/4 v6, 0x1

    :goto_7
    add-int/lit8 v9, v21, -0x1

    move v6, v9

    move/from16 v10, v19

    move/from16 v9, v20

    goto :goto_5

    :cond_9
    move/from16 v20, v9

    move/from16 v19, v10

    const/4 v6, 0x1

    if-eqz v18, :cond_a

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    :cond_a
    iput v6, v15, Lz/G;->a:I

    iput-boolean v6, v15, Lz/G;->c:Z

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    move/from16 v17, v6

    move v6, v12

    goto/16 :goto_4

    :goto_8
    iget-object v5, v15, Lz/G;->b:Lz/m;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/2addr v8, v6

    move/from16 v5, p3

    move v12, v6

    move/from16 v6, v17

    move/from16 v10, v19

    move/from16 v9, v20

    goto/16 :goto_2

    :cond_c
    move/from16 v17, v6

    move/from16 v20, v9

    move/from16 v19, v10

    goto :goto_c

    :cond_d
    move/from16 v17, v6

    move/from16 v20, v9

    move/from16 v19, v10

    move v6, v12

    iget-object v5, v1, Lz/A;->K:Ljava/util/ArrayList;

    iget-object v8, v13, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v6

    :goto_a
    if-ltz v9, :cond_10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lz/G;

    iget v11, v10, Lz/G;->a:I

    const/4 v12, 0x3

    if-eq v11, v6, :cond_f

    if-eq v11, v12, :cond_e

    packed-switch v11, :pswitch_data_0

    goto :goto_b

    :pswitch_0
    iget-object v6, v10, Lz/G;->h:LB/e;

    iput-object v6, v10, Lz/G;->i:LB/e;

    goto :goto_b

    :pswitch_1
    iget-object v6, v10, Lz/G;->b:Lz/m;

    move-object v7, v6

    goto :goto_b

    :pswitch_2
    const/4 v7, 0x0

    goto :goto_b

    :cond_e
    :pswitch_3
    iget-object v6, v10, Lz/G;->b:Lz/m;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    :pswitch_4
    iget-object v6, v10, Lz/G;->b:Lz/m;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v9, v9, -0x1

    const/4 v6, 0x1

    goto :goto_a

    :cond_10
    :goto_c
    if-nez v19, :cond_12

    iget-boolean v5, v13, Lz/a;->g:Z

    if-eqz v5, :cond_11

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v10, 0x1

    :goto_e
    add-int/lit8 v9, v20, 0x1

    move/from16 v5, p3

    move/from16 v6, v17

    goto/16 :goto_1

    :cond_13
    move/from16 v17, v6

    iget-object v5, v1, Lz/A;->K:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-nez v17, :cond_16

    iget v5, v1, Lz/A;->s:I

    const/4 v6, 0x1

    if-lt v5, v6, :cond_16

    move/from16 v5, p3

    :goto_f
    if-ge v5, v3, :cond_16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz/a;

    iget-object v6, v6, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_14
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz/G;

    iget-object v7, v7, Lz/G;->b:Lz/m;

    if-eqz v7, :cond_14

    iget-object v8, v7, Lz/m;->r:Lz/A;

    if-eqz v8, :cond_14

    invoke-virtual {v1, v7}, Lz/A;->f(Lz/m;)Lz/F;

    move-result-object v7

    invoke-virtual {v4, v7}, LB0/b;->m(Lz/F;)V

    goto :goto_10

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_16
    const-string v4, "Unknown cmd: "

    move/from16 v5, p3

    :goto_11
    const/4 v6, -0x1

    if-ge v5, v3, :cond_22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz/a;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {v7, v6}, Lz/a;->c(I)V

    iget-object v6, v7, Lz/a;->p:Lz/A;

    iget-object v8, v7, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    :goto_12
    if-ltz v9, :cond_1d

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lz/G;

    iget-object v12, v11, Lz/G;->b:Lz/m;

    if-eqz v12, :cond_1c

    iget-object v13, v12, Lz/m;->G:Lz/l;

    if-nez v13, :cond_17

    goto :goto_13

    :cond_17
    invoke-virtual {v12}, Lz/m;->j()Lz/l;

    move-result-object v13

    iput-boolean v10, v13, Lz/l;->a:Z

    :goto_13
    iget v10, v7, Lz/a;->f:I

    const/16 v13, 0x2002

    const/16 v14, 0x1001

    if-eq v10, v14, :cond_1a

    if-eq v10, v13, :cond_18

    const/16 v13, 0x1004

    const/16 v14, 0x2005

    if-eq v10, v14, :cond_1a

    const/16 v15, 0x1003

    if-eq v10, v15, :cond_19

    if-eq v10, v13, :cond_18

    const/4 v13, 0x0

    goto :goto_14

    :cond_18
    move v13, v14

    goto :goto_14

    :cond_19
    move v13, v15

    :cond_1a
    :goto_14
    iget-object v10, v12, Lz/m;->G:Lz/l;

    if-nez v10, :cond_1b

    if-nez v13, :cond_1b

    goto :goto_15

    :cond_1b
    invoke-virtual {v12}, Lz/m;->j()Lz/l;

    iget-object v10, v12, Lz/m;->G:Lz/l;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_15
    invoke-virtual {v12}, Lz/m;->j()Lz/l;

    iget-object v10, v12, Lz/m;->G:Lz/l;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1c
    iget v10, v11, Lz/G;->a:I

    packed-switch v10, :pswitch_data_1

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lz/G;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    iget-object v10, v11, Lz/G;->h:LB/e;

    invoke-virtual {v6, v12, v10}, Lz/A;->V(Lz/m;LB/e;)V

    :goto_16
    const/4 v10, 0x1

    goto/16 :goto_17

    :pswitch_7
    invoke-virtual {v6, v12}, Lz/A;->W(Lz/m;)V

    goto :goto_16

    :pswitch_8
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lz/A;->W(Lz/m;)V

    goto :goto_16

    :pswitch_9
    iget v10, v11, Lz/G;->d:I

    iget v13, v11, Lz/G;->e:I

    iget v14, v11, Lz/G;->f:I

    iget v11, v11, Lz/G;->g:I

    invoke-virtual {v12, v10, v13, v14, v11}, Lz/m;->F(IIII)V

    const/4 v10, 0x1

    invoke-virtual {v6, v12, v10}, Lz/A;->U(Lz/m;Z)V

    invoke-virtual {v6, v12}, Lz/A;->g(Lz/m;)V

    goto :goto_16

    :pswitch_a
    iget v10, v11, Lz/G;->d:I

    iget v13, v11, Lz/G;->e:I

    iget v14, v11, Lz/G;->f:I

    iget v11, v11, Lz/G;->g:I

    invoke-virtual {v12, v10, v13, v14, v11}, Lz/m;->F(IIII)V

    invoke-virtual {v6, v12}, Lz/A;->c(Lz/m;)V

    goto :goto_16

    :pswitch_b
    iget v10, v11, Lz/G;->d:I

    iget v13, v11, Lz/G;->e:I

    iget v14, v11, Lz/G;->f:I

    iget v11, v11, Lz/G;->g:I

    invoke-virtual {v12, v10, v13, v14, v11}, Lz/m;->F(IIII)V

    const/4 v10, 0x1

    invoke-virtual {v6, v12, v10}, Lz/A;->U(Lz/m;Z)V

    invoke-virtual {v6, v12}, Lz/A;->F(Lz/m;)V

    goto :goto_16

    :pswitch_c
    iget v10, v11, Lz/G;->d:I

    iget v13, v11, Lz/G;->e:I

    iget v14, v11, Lz/G;->f:I

    iget v11, v11, Lz/G;->g:I

    invoke-virtual {v12, v10, v13, v14, v11}, Lz/m;->F(IIII)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lz/A;->Y(Lz/m;)V

    goto :goto_16

    :pswitch_d
    iget v10, v11, Lz/G;->d:I

    iget v13, v11, Lz/G;->e:I

    iget v14, v11, Lz/G;->f:I

    iget v11, v11, Lz/G;->g:I

    invoke-virtual {v12, v10, v13, v14, v11}, Lz/m;->F(IIII)V

    invoke-virtual {v6, v12}, Lz/A;->a(Lz/m;)Lz/F;

    goto :goto_16

    :pswitch_e
    iget v10, v11, Lz/G;->d:I

    iget v13, v11, Lz/G;->e:I

    iget v14, v11, Lz/G;->f:I

    iget v11, v11, Lz/G;->g:I

    invoke-virtual {v12, v10, v13, v14, v11}, Lz/m;->F(IIII)V

    const/4 v10, 0x1

    invoke-virtual {v6, v12, v10}, Lz/A;->U(Lz/m;Z)V

    invoke-virtual {v6, v12}, Lz/A;->P(Lz/m;)V

    :goto_17
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_12

    :cond_1d
    const/4 v14, 0x0

    goto/16 :goto_1d

    :cond_1e
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lz/a;->c(I)V

    iget-object v6, v7, Lz/a;->p:Lz/A;

    iget-object v8, v7, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_18
    if-ge v12, v9, :cond_1d

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lz/G;

    iget-object v11, v10, Lz/G;->b:Lz/m;

    if-eqz v11, :cond_21

    iget-object v13, v11, Lz/m;->G:Lz/l;

    if-nez v13, :cond_1f

    goto :goto_19

    :cond_1f
    invoke-virtual {v11}, Lz/m;->j()Lz/l;

    move-result-object v13

    const/4 v14, 0x0

    iput-boolean v14, v13, Lz/l;->a:Z

    :goto_19
    iget v13, v7, Lz/a;->f:I

    iget-object v14, v11, Lz/m;->G:Lz/l;

    if-nez v14, :cond_20

    if-nez v13, :cond_20

    goto :goto_1a

    :cond_20
    invoke-virtual {v11}, Lz/m;->j()Lz/l;

    iget-object v13, v11, Lz/m;->G:Lz/l;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1a
    invoke-virtual {v11}, Lz/m;->j()Lz/l;

    iget-object v13, v11, Lz/m;->G:Lz/l;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_21
    iget v13, v10, Lz/G;->a:I

    packed-switch v13, :pswitch_data_2

    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v10, Lz/G;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    iget-object v10, v10, Lz/G;->i:LB/e;

    invoke-virtual {v6, v11, v10}, Lz/A;->V(Lz/m;LB/e;)V

    :goto_1b
    const/4 v14, 0x0

    goto/16 :goto_1c

    :pswitch_11
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lz/A;->W(Lz/m;)V

    goto :goto_1b

    :pswitch_12
    const/4 v13, 0x0

    invoke-virtual {v6, v11}, Lz/A;->W(Lz/m;)V

    goto :goto_1b

    :pswitch_13
    const/4 v13, 0x0

    iget v14, v10, Lz/G;->d:I

    iget v15, v10, Lz/G;->e:I

    iget v13, v10, Lz/G;->f:I

    iget v10, v10, Lz/G;->g:I

    invoke-virtual {v11, v14, v15, v13, v10}, Lz/m;->F(IIII)V

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v14}, Lz/A;->U(Lz/m;Z)V

    invoke-virtual {v6, v11}, Lz/A;->c(Lz/m;)V

    goto :goto_1b

    :pswitch_14
    iget v13, v10, Lz/G;->d:I

    iget v14, v10, Lz/G;->e:I

    iget v15, v10, Lz/G;->f:I

    iget v10, v10, Lz/G;->g:I

    invoke-virtual {v11, v13, v14, v15, v10}, Lz/m;->F(IIII)V

    invoke-virtual {v6, v11}, Lz/A;->g(Lz/m;)V

    goto :goto_1b

    :pswitch_15
    iget v13, v10, Lz/G;->d:I

    iget v14, v10, Lz/G;->e:I

    iget v15, v10, Lz/G;->f:I

    iget v10, v10, Lz/G;->g:I

    invoke-virtual {v11, v13, v14, v15, v10}, Lz/m;->F(IIII)V

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v14}, Lz/A;->U(Lz/m;Z)V

    invoke-static {v11}, Lz/A;->Y(Lz/m;)V

    goto :goto_1b

    :pswitch_16
    iget v13, v10, Lz/G;->d:I

    iget v14, v10, Lz/G;->e:I

    iget v15, v10, Lz/G;->f:I

    iget v10, v10, Lz/G;->g:I

    invoke-virtual {v11, v13, v14, v15, v10}, Lz/m;->F(IIII)V

    invoke-virtual {v6, v11}, Lz/A;->F(Lz/m;)V

    goto :goto_1b

    :pswitch_17
    iget v13, v10, Lz/G;->d:I

    iget v14, v10, Lz/G;->e:I

    iget v15, v10, Lz/G;->f:I

    iget v10, v10, Lz/G;->g:I

    invoke-virtual {v11, v13, v14, v15, v10}, Lz/m;->F(IIII)V

    invoke-virtual {v6, v11}, Lz/A;->P(Lz/m;)V

    goto :goto_1b

    :pswitch_18
    iget v13, v10, Lz/G;->d:I

    iget v14, v10, Lz/G;->e:I

    iget v15, v10, Lz/G;->f:I

    iget v10, v10, Lz/G;->g:I

    invoke-virtual {v11, v13, v14, v15, v10}, Lz/m;->F(IIII)V

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v14}, Lz/A;->U(Lz/m;Z)V

    invoke-virtual {v6, v11}, Lz/A;->a(Lz/m;)Lz/F;

    :goto_1c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_18

    :goto_1d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11

    :cond_22
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v5, p3

    :goto_1e
    if-ge v5, v3, :cond_27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz/a;

    if-eqz v4, :cond_24

    iget-object v8, v7, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_1f
    if-ltz v8, :cond_26

    iget-object v9, v7, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz/G;

    iget-object v9, v9, Lz/G;->b:Lz/m;

    if-eqz v9, :cond_23

    invoke-virtual {v1, v9}, Lz/A;->f(Lz/m;)Lz/F;

    move-result-object v9

    invoke-virtual {v9}, Lz/F;->j()V

    :cond_23
    add-int/lit8 v8, v8, -0x1

    goto :goto_1f

    :cond_24
    iget-object v7, v7, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_25
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz/G;

    iget-object v8, v8, Lz/G;->b:Lz/m;

    if-eqz v8, :cond_25

    invoke-virtual {v1, v8}, Lz/A;->f(Lz/m;)Lz/F;

    move-result-object v8

    invoke-virtual {v8}, Lz/F;->j()V

    goto :goto_20

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_27
    iget v5, v1, Lz/A;->s:I

    const/4 v10, 0x1

    invoke-virtual {v1, v5, v10}, Lz/A;->L(IZ)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move/from16 v7, p3

    :goto_21
    if-ge v7, v3, :cond_2a

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz/a;

    iget-object v8, v8, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_28
    :goto_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz/G;

    iget-object v9, v9, Lz/G;->b:Lz/m;

    if-eqz v9, :cond_28

    iget-object v9, v9, Lz/m;->D:Landroid/view/ViewGroup;

    if-eqz v9, :cond_28

    invoke-virtual {v1}, Lz/A;->E()Ld1/m;

    move-result-object v10

    invoke-static {v9, v10}, Lz/f;->d(Landroid/view/ViewGroup;Ld1/m;)Lz/f;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_29
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_2a
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz/f;

    iput-boolean v4, v7, Lz/f;->d:Z

    iget-object v8, v7, Lz/f;->b:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    invoke-virtual {v7}, Lz/f;->e()V

    const/4 v9, 0x0

    iput-boolean v9, v7, Lz/f;->e:Z

    iget-object v9, v7, Lz/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_2b

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Lz/f;->b()V

    goto :goto_23

    :catchall_0
    move-exception v0

    goto :goto_24

    :cond_2b
    :try_start_1
    iget-object v0, v7, Lz/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0

    :goto_24
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2c
    move/from16 v4, p3

    :goto_25
    if-ge v4, v3, :cond_2e

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz/a;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2d

    iget v7, v5, Lz/a;->r:I

    if-ltz v7, :cond_2d

    iput v6, v5, Lz/a;->r:I

    :cond_2d
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_2e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
