.class public final Lz/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LW0/c;

.field public final b:LB0/b;

.field public final c:Lz/m;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(LW0/c;LB0/b;Ljava/lang/ClassLoader;Lz/v;Lz/E;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lz/F;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lz/F;->e:I

    .line 10
    iput-object p1, p0, Lz/F;->a:LW0/c;

    .line 11
    iput-object p2, p0, Lz/F;->b:LB0/b;

    .line 12
    iget-object p1, p5, Lz/E;->e:Ljava/lang/String;

    invoke-virtual {p4, p1}, Lz/v;->a(Ljava/lang/String;)Lz/m;

    move-result-object p1

    .line 13
    iget-object p2, p5, Lz/E;->n:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 15
    :cond_0
    iget-object p3, p1, Lz/m;->r:Lz/A;

    if-eqz p3, :cond_2

    .line 16
    iget-boolean p4, p3, Lz/A;->E:Z

    if-nez p4, :cond_1

    iget-boolean p3, p3, Lz/A;->F:Z

    if-nez p3, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment already added and state has been saved"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    :goto_0
    iput-object p2, p1, Lz/m;->f:Landroid/os/Bundle;

    .line 19
    iget-object p2, p5, Lz/E;->f:Ljava/lang/String;

    iput-object p2, p1, Lz/m;->e:Ljava/lang/String;

    .line 20
    iget-boolean p2, p5, Lz/E;->g:Z

    iput-boolean p2, p1, Lz/m;->m:Z

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p1, Lz/m;->o:Z

    .line 22
    iget p2, p5, Lz/E;->h:I

    iput p2, p1, Lz/m;->v:I

    .line 23
    iget p2, p5, Lz/E;->i:I

    iput p2, p1, Lz/m;->w:I

    .line 24
    iget-object p2, p5, Lz/E;->j:Ljava/lang/String;

    iput-object p2, p1, Lz/m;->x:Ljava/lang/String;

    .line 25
    iget-boolean p2, p5, Lz/E;->k:Z

    iput-boolean p2, p1, Lz/m;->A:Z

    .line 26
    iget-boolean p2, p5, Lz/E;->l:Z

    iput-boolean p2, p1, Lz/m;->l:Z

    .line 27
    iget-boolean p2, p5, Lz/E;->m:Z

    iput-boolean p2, p1, Lz/m;->z:Z

    .line 28
    iget-boolean p2, p5, Lz/E;->o:Z

    iput-boolean p2, p1, Lz/m;->y:Z

    .line 29
    invoke-static {}, LB/e;->values()[LB/e;

    move-result-object p2

    iget p3, p5, Lz/E;->p:I

    aget-object p2, p2, p3

    iput-object p2, p1, Lz/m;->K:LB/e;

    .line 30
    iget-object p2, p5, Lz/E;->q:Landroid/os/Bundle;

    if-eqz p2, :cond_3

    .line 31
    iput-object p2, p1, Lz/m;->b:Landroid/os/Bundle;

    goto :goto_1

    .line 32
    :cond_3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Lz/m;->b:Landroid/os/Bundle;

    .line 33
    :goto_1
    iput-object p1, p0, Lz/F;->c:Lz/m;

    const/4 p2, 0x2

    .line 34
    invoke-static {p2}, Lz/A;->G(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Instantiated fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public constructor <init>(LW0/c;LB0/b;Lz/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lz/F;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lz/F;->e:I

    .line 4
    iput-object p1, p0, Lz/F;->a:LW0/c;

    .line 5
    iput-object p2, p0, Lz/F;->b:LB0/b;

    .line 6
    iput-object p3, p0, Lz/F;->c:Lz/m;

    return-void
.end method

.method public constructor <init>(LW0/c;LB0/b;Lz/m;Lz/E;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lz/F;->d:Z

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lz/F;->e:I

    .line 39
    iput-object p1, p0, Lz/F;->a:LW0/c;

    .line 40
    iput-object p2, p0, Lz/F;->b:LB0/b;

    .line 41
    iput-object p3, p0, Lz/F;->c:Lz/m;

    const/4 p1, 0x0

    .line 42
    iput-object p1, p3, Lz/m;->c:Landroid/util/SparseArray;

    .line 43
    iput-object p1, p3, Lz/m;->d:Landroid/os/Bundle;

    .line 44
    iput v0, p3, Lz/m;->q:I

    .line 45
    iput-boolean v0, p3, Lz/m;->n:Z

    .line 46
    iput-boolean v0, p3, Lz/m;->k:Z

    .line 47
    iget-object p2, p3, Lz/m;->g:Lz/m;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lz/m;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Lz/m;->h:Ljava/lang/String;

    .line 48
    iput-object p1, p3, Lz/m;->g:Lz/m;

    .line 49
    iget-object p1, p4, Lz/E;->q:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 50
    iput-object p1, p3, Lz/m;->b:Landroid/os/Bundle;

    return-void

    .line 51
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Lz/m;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Lz/F;->c:Lz/m;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "moveto ACTIVITY_CREATED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v3, Lz/m;->b:Landroid/os/Bundle;

    iget-object v1, v3, Lz/m;->t:Lz/A;

    invoke-virtual {v1}, Lz/A;->M()V

    iput v0, v3, Lz/m;->a:I

    const/4 v1, 0x0

    iput-boolean v1, v3, Lz/m;->C:Z

    invoke-virtual {v3}, Lz/m;->r()V

    iget-boolean v4, v3, Lz/m;->C:Z

    if-eqz v4, :cond_2

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "moveto RESTORE_VIEW_STATE: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, v3, Lz/m;->b:Landroid/os/Bundle;

    iget-object v0, v3, Lz/m;->t:Lz/A;

    iput-boolean v1, v0, Lz/A;->E:Z

    iput-boolean v1, v0, Lz/A;->F:Z

    iget-object v2, v0, Lz/A;->L:Lz/C;

    iput-boolean v1, v2, Lz/C;->g:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lz/A;->t(I)V

    iget-object v0, p0, Lz/F;->a:LW0/c;

    invoke-virtual {v0, v1}, LW0/c;->f(Z)V

    return-void

    :cond_2
    new-instance v0, Lz/L;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 8

    const/4 v0, 0x3

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    iget-object v1, p0, Lz/F;->c:Lz/m;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto ATTACHED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Lz/m;->g:Lz/m;

    const/4 v2, 0x0

    const-string v3, " that does not belong to this FragmentManager!"

    const-string v4, " declared target fragment "

    iget-object v5, p0, Lz/F;->b:LB0/b;

    const-string v6, "Fragment "

    if-eqz v0, :cond_2

    iget-object v0, v0, Lz/m;->e:Ljava/lang/String;

    iget-object v5, v5, LB0/b;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/F;

    if-eqz v0, :cond_1

    iget-object v3, v1, Lz/m;->g:Lz/m;

    iget-object v3, v3, Lz/m;->e:Ljava/lang/String;

    iput-object v3, v1, Lz/m;->h:Ljava/lang/String;

    iput-object v2, v1, Lz/m;->g:Lz/m;

    move-object v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lz/m;->g:Lz/m;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v1, Lz/m;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v2, v5, LB0/b;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lz/F;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lz/m;->h:Ljava/lang/String;

    invoke-static {v2, v1, v3}, LB1/e;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lz/F;->j()V

    :cond_5
    iget-object v0, v1, Lz/m;->r:Lz/A;

    iget-object v2, v0, Lz/A;->t:Lz/o;

    iput-object v2, v1, Lz/m;->s:Lz/o;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    iput-object v0, v1, Lz/m;->u:Lz/m;

    iget-object v0, p0, Lz/F;->a:LW0/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LW0/c;->l(Z)V

    iget-object v3, v1, Lz/m;->O:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz/k;

    iget-object v5, v5, Lz/k;->a:Lz/m;

    iget-object v7, v5, Lz/m;->N:LM0/l;

    invoke-virtual {v7}, LM0/l;->b()V

    invoke-static {v5}, LB/v;->c(LS0/e;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v1, Lz/m;->t:Lz/A;

    iget-object v4, v1, Lz/m;->s:Lz/o;

    invoke-virtual {v1}, Lz/m;->h()Lcom/brisa/local/a;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lz/A;->b(Lz/o;Lcom/brisa/local/a;Lz/m;)V

    iput v2, v1, Lz/m;->a:I

    iput-boolean v2, v1, Lz/m;->C:Z

    iget-object v3, v1, Lz/m;->s:Lz/o;

    iget-object v3, v3, Lz/o;->d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v1, v3}, Lz/m;->t(Landroid/content/Context;)V

    iget-boolean v3, v1, Lz/m;->C:Z

    if-eqz v3, :cond_8

    iget-object v3, v1, Lz/m;->r:Lz/A;

    iget-object v3, v3, Lz/A;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz/D;

    invoke-interface {v4}, Lz/D;->b()V

    goto :goto_2

    :cond_7
    iget-object v1, v1, Lz/m;->t:Lz/A;

    iput-boolean v2, v1, Lz/A;->E:Z

    iput-boolean v2, v1, Lz/A;->F:Z

    iget-object v3, v1, Lz/A;->L:Lz/C;

    iput-boolean v2, v3, Lz/C;->g:Z

    invoke-virtual {v1, v2}, Lz/A;->t(I)V

    invoke-virtual {v0, v2}, LW0/c;->g(Z)V

    return-void

    :cond_8
    new-instance v0, Lz/L;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onAttach()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .locals 11

    iget-object v0, p0, Lz/F;->c:Lz/m;

    iget-object v1, v0, Lz/m;->r:Lz/A;

    if-nez v1, :cond_0

    iget v0, v0, Lz/m;->a:I

    return v0

    :cond_0
    iget v1, p0, Lz/F;->e:I

    iget-object v2, v0, Lz/m;->K:LB/e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    const/4 v8, 0x3

    if-eq v2, v8, :cond_1

    if-eq v2, v5, :cond_4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    iget-boolean v2, v0, Lz/m;->m:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lz/m;->n:Z

    if-eqz v2, :cond_5

    iget v1, p0, Lz/F;->e:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_5
    iget v2, p0, Lz/F;->e:I

    if-ge v2, v5, :cond_6

    iget v2, v0, Lz/m;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_1
    iget-boolean v2, v0, Lz/m;->k:Z

    if-nez v2, :cond_8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    iget-object v2, v0, Lz/m;->D:Landroid/view/ViewGroup;

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v8

    invoke-virtual {v8}, Lz/A;->E()Ld1/m;

    move-result-object v8

    invoke-static {v2, v8}, Lz/f;->d(Landroid/view/ViewGroup;Ld1/m;)Lz/f;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v2, Lz/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_a

    iget-object v2, v2, Lz/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v10

    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v10

    :cond_b
    :goto_2
    iget-boolean v2, v0, Lz/m;->l:Z

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lz/m;->q()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_c
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_d
    :goto_3
    iget-boolean v2, v0, Lz/m;->E:Z

    if-eqz v2, :cond_e

    iget v2, v0, Lz/m;->a:I

    if-ge v2, v3, :cond_e

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_e
    invoke-static {v6}, Lz/A;->G(I)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "computeExpectedState() of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v1
.end method

.method public final d()V
    .locals 8

    const/4 v0, 0x3

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    iget-object v1, p0, Lz/F;->c:Lz/m;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v1, Lz/m;->I:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lz/F;->a:LW0/c;

    invoke-virtual {v0, v3}, LW0/c;->m(Z)V

    iget-object v4, v1, Lz/m;->b:Landroid/os/Bundle;

    iget-object v5, v1, Lz/m;->t:Lz/A;

    invoke-virtual {v5}, Lz/A;->M()V

    iput v2, v1, Lz/m;->a:I

    iput-boolean v3, v1, Lz/m;->C:Z

    iget-object v5, v1, Lz/m;->L:LB/i;

    new-instance v6, LS0/a;

    const/4 v7, 0x2

    invoke-direct {v6, v1, v7}, LS0/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, LB/i;->a(LB/f;)V

    iget-object v5, v1, Lz/m;->N:LM0/l;

    invoke-virtual {v5, v4}, LM0/l;->c(Landroid/os/Bundle;)V

    invoke-virtual {v1, v4}, Lz/m;->u(Landroid/os/Bundle;)V

    iput-boolean v2, v1, Lz/m;->I:Z

    iget-boolean v2, v1, Lz/m;->C:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Lz/m;->L:LB/i;

    sget-object v2, LB/d;->ON_CREATE:LB/d;

    invoke-virtual {v1, v2}, LB/i;->d(LB/d;)V

    invoke-virtual {v0, v3}, LW0/c;->h(Z)V

    return-void

    :cond_1
    new-instance v0, Lz/L;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v1, Lz/m;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v4, "android:support:fragments"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, v1, Lz/m;->t:Lz/A;

    invoke-virtual {v4, v0}, Lz/A;->R(Landroid/os/Parcelable;)V

    iget-object v0, v1, Lz/m;->t:Lz/A;

    iput-boolean v3, v0, Lz/A;->E:Z

    iput-boolean v3, v0, Lz/A;->F:Z

    iget-object v4, v0, Lz/A;->L:Lz/C;

    iput-boolean v3, v4, Lz/C;->g:Z

    invoke-virtual {v0, v2}, Lz/A;->t(I)V

    :cond_3
    iput v2, v1, Lz/m;->a:I

    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lz/F;->c:Lz/m;

    iget-boolean v1, v0, Lz/m;->m:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Lz/A;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATE_VIEW: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v0, Lz/m;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lz/m;->y(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, v0, Lz/m;->D:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v2, v0, Lz/m;->w:I

    if-eqz v2, :cond_6

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget-object v3, v0, Lz/m;->r:Lz/A;

    iget-object v3, v3, Lz/A;->u:Lcom/brisa/local/a;

    invoke-virtual {v3, v2}, Lcom/brisa/local/a;->w(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    iget-boolean v3, v0, Lz/m;->o:Z

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lz/m;->E()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Lz/m;->w:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "unknown"

    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No view found for id 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lz/m;->w:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for fragment "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    instance-of v3, v2, Lz/p;

    if-nez v3, :cond_7

    sget-object v3, LA/d;->a:LA/c;

    new-instance v3, LA/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempting to add fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " which is not a FragmentContainerView"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, LA/a;-><init>(Lz/m;Ljava/lang/String;)V

    invoke-static {v3}, LA/d;->b(LA/a;)V

    invoke-static {v0}, LA/d;->a(Lz/m;)LA/c;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for a container view with no id"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_1
    iput-object v2, v0, Lz/m;->D:Landroid/view/ViewGroup;

    iget-object v3, v0, Lz/m;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lz/m;->D(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    iput v1, v0, Lz/m;->a:I

    return-void
.end method

.method public final f()V
    .locals 8

    const/4 v0, 0x3

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    iget-object v1, p0, Lz/F;->c:Lz/m;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v1, Lz/m;->l:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lz/m;->q()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v4, p0, Lz/F;->b:LB0/b;

    if-eqz v0, :cond_2

    iget-object v5, v1, Lz/m;->e:Ljava/lang/String;

    iget-object v6, v4, LB0/b;->g:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz/E;

    :cond_2
    if-nez v0, :cond_7

    iget-object v5, v4, LB0/b;->h:Ljava/lang/Object;

    check-cast v5, Lz/C;

    iget-object v6, v5, Lz/C;->b:Ljava/util/HashMap;

    iget-object v7, v1, Lz/m;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v6, v5, Lz/C;->e:Z

    if-eqz v6, :cond_4

    iget-boolean v5, v5, Lz/C;->f:Z

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v2

    :goto_2
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v1, Lz/m;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v4, v0}, LB0/b;->c(Ljava/lang/String;)Lz/m;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v2, v0, Lz/m;->A:Z

    if-eqz v2, :cond_6

    iput-object v0, v1, Lz/m;->g:Lz/m;

    :cond_6
    iput v3, v1, Lz/m;->a:I

    return-void

    :cond_7
    :goto_3
    iget-object v5, v1, Lz/m;->s:Lz/o;

    if-eqz v5, :cond_8

    iget-object v2, v4, LB0/b;->h:Ljava/lang/Object;

    check-cast v2, Lz/C;

    iget-boolean v2, v2, Lz/C;->f:Z

    goto :goto_4

    :cond_8
    iget-object v5, v5, Lz/o;->d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v5

    xor-int/2addr v2, v5

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v2, :cond_b

    :goto_5
    iget-object v0, v4, LB0/b;->h:Ljava/lang/Object;

    check-cast v0, Lz/C;

    invoke-virtual {v0, v1}, Lz/C;->c(Lz/m;)V

    :cond_b
    iget-object v0, v1, Lz/m;->t:Lz/A;

    invoke-virtual {v0}, Lz/A;->k()V

    iget-object v0, v1, Lz/m;->L:LB/i;

    sget-object v2, LB/d;->ON_DESTROY:LB/d;

    invoke-virtual {v0, v2}, LB/i;->d(LB/d;)V

    iput v3, v1, Lz/m;->a:I

    iput-boolean v3, v1, Lz/m;->C:Z

    iput-boolean v3, v1, Lz/m;->I:Z

    invoke-virtual {v1}, Lz/m;->v()V

    iget-boolean v0, v1, Lz/m;->C:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lz/F;->a:LW0/c;

    invoke-virtual {v0, v3}, LW0/c;->i(Z)V

    invoke-virtual {v4}, LB0/b;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/F;

    if-eqz v2, :cond_c

    iget-object v2, v2, Lz/F;->c:Lz/m;

    iget-object v3, v1, Lz/m;->e:Ljava/lang/String;

    iget-object v5, v2, Lz/m;->h:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iput-object v1, v2, Lz/m;->g:Lz/m;

    const/4 v3, 0x0

    iput-object v3, v2, Lz/m;->h:Ljava/lang/String;

    goto :goto_6

    :cond_d
    iget-object v0, v1, Lz/m;->h:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v4, v0}, LB0/b;->c(Ljava/lang/String;)Lz/m;

    move-result-object v0

    iput-object v0, v1, Lz/m;->g:Lz/m;

    :cond_e
    invoke-virtual {v4, p0}, LB0/b;->n(Lz/F;)V

    return-void

    :cond_f
    new-instance v0, Lz/L;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDestroy()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    iget-object v1, p0, Lz/F;->c:Lz/m;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATE_VIEW: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Lz/m;->D:Landroid/view/ViewGroup;

    iget-object v0, v1, Lz/m;->t:Lz/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lz/A;->t(I)V

    iput v2, v1, Lz/m;->a:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lz/m;->C:Z

    invoke-virtual {v1}, Lz/m;->w()V

    iget-boolean v2, v1, Lz/m;->C:Z

    if-eqz v2, :cond_2

    invoke-interface {v1}, LB/E;->e()LB/D;

    move-result-object v2

    new-instance v3, LZ0/i;

    sget-object v4, LE/d;->d:LE/c;

    invoke-direct {v3, v2, v4}, LZ0/i;-><init>(LB/D;LB/C;)V

    const-class v2, LE/d;

    invoke-virtual {v3, v2}, LZ0/i;->r(Ljava/lang/Class;)LB/B;

    move-result-object v2

    check-cast v2, LE/d;

    iget-object v2, v2, LE/d;->b:Lh/k;

    iget v3, v2, Lh/k;->g:I

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, v2, Lh/k;->f:[Ljava/lang/Object;

    aget-object v5, v5, v4

    check-cast v5, LE/a;

    invoke-virtual {v5}, LE/a;->i()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, v1, Lz/m;->p:Z

    iget-object v2, p0, Lz/F;->a:LW0/c;

    invoke-virtual {v2, v0}, LW0/c;->r(Z)V

    const/4 v2, 0x0

    iput-object v2, v1, Lz/m;->D:Landroid/view/ViewGroup;

    iget-object v3, v1, Lz/m;->M:LB/o;

    invoke-virtual {v3, v2}, LB/o;->h(Ljava/lang/Object;)V

    iput-boolean v0, v1, Lz/m;->n:Z

    return-void

    :cond_2
    new-instance v0, Lz/L;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDestroyView()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Lz/F;->c:Lz/m;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "movefrom ATTACHED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    iput v1, v3, Lz/m;->a:I

    const/4 v4, 0x0

    iput-boolean v4, v3, Lz/m;->C:Z

    invoke-virtual {v3}, Lz/m;->x()V

    iget-boolean v5, v3, Lz/m;->C:Z

    if-eqz v5, :cond_7

    iget-object v5, v3, Lz/m;->t:Lz/A;

    iget-boolean v6, v5, Lz/A;->G:Z

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lz/A;->k()V

    new-instance v5, Lz/A;

    invoke-direct {v5}, Lz/A;-><init>()V

    iput-object v5, v3, Lz/m;->t:Lz/A;

    :cond_1
    iget-object v5, p0, Lz/F;->a:LW0/c;

    invoke-virtual {v5, v4}, LW0/c;->j(Z)V

    iput v1, v3, Lz/m;->a:I

    const/4 v1, 0x0

    iput-object v1, v3, Lz/m;->s:Lz/o;

    iput-object v1, v3, Lz/m;->u:Lz/m;

    iput-object v1, v3, Lz/m;->r:Lz/A;

    iget-boolean v1, v3, Lz/m;->l:Z

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lz/m;->q()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lz/F;->b:LB0/b;

    iget-object v1, v1, LB0/b;->h:Ljava/lang/Object;

    check-cast v1, Lz/C;

    iget-object v4, v1, Lz/C;->b:Ljava/util/HashMap;

    iget-object v5, v3, Lz/m;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v4, v1, Lz/C;->e:Z

    if-eqz v4, :cond_4

    iget-boolean v1, v1, Lz/C;->f:Z

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_6

    :goto_2
    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initState called for fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v3}, Lz/m;->o()V

    :cond_6
    return-void

    :cond_7
    new-instance v0, Lz/L;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lz/F;->c:Lz/m;

    iget-boolean v1, v0, Lz/m;->m:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lz/m;->n:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lz/m;->p:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-static {v1}, Lz/A;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATE_VIEW: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Lz/m;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lz/m;->y(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Lz/m;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lz/m;->D(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 10

    iget-object v0, p0, Lz/F;->b:LB0/b;

    iget-boolean v1, p0, Lz/F;->d:Z

    const/4 v2, 0x2

    const-string v3, "FragmentManager"

    iget-object v4, p0, Lz/F;->c:Lz/m;

    if-eqz v1, :cond_1

    invoke-static {v2}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lz/F;->d:Z

    move v6, v1

    :goto_0
    invoke-virtual {p0}, Lz/F;->c()I

    move-result v7

    iget v8, v4, Lz/m;->a:I

    const/4 v9, 0x3

    if-eq v7, v8, :cond_4

    if-le v7, v8, :cond_2

    add-int/lit8 v8, v8, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lz/F;->m()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :pswitch_1
    const/4 v6, 0x6

    iput v6, v4, Lz/m;->a:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lz/F;->n()V

    goto :goto_1

    :pswitch_3
    const/4 v6, 0x4

    iput v6, v4, Lz/m;->a:I

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lz/F;->a()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lz/F;->i()V

    invoke-virtual {p0}, Lz/F;->e()V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lz/F;->d()V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lz/F;->b()V

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, -0x1

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lz/F;->k()V

    goto :goto_1

    :pswitch_9
    const/4 v6, 0x5

    iput v6, v4, Lz/m;->a:I

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0}, Lz/F;->o()V

    goto :goto_1

    :pswitch_b
    invoke-static {v9}, Lz/A;->G(I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput v9, v4, Lz/m;->a:I

    goto :goto_1

    :pswitch_c
    iput-boolean v1, v4, Lz/m;->n:Z

    iput v2, v4, Lz/m;->a:I

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0}, Lz/F;->g()V

    iput v5, v4, Lz/m;->a:I

    goto :goto_1

    :pswitch_e
    invoke-virtual {p0}, Lz/F;->f()V

    goto :goto_1

    :pswitch_f
    invoke-virtual {p0}, Lz/F;->h()V

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_4
    if-nez v6, :cond_7

    const/4 v2, -0x1

    if-ne v8, v2, :cond_7

    iget-boolean v2, v4, Lz/m;->l:Z

    if-eqz v2, :cond_7

    invoke-virtual {v4}, Lz/m;->q()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v9}, Lz/A;->G(I)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning up state of never attached fragment: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, v0, LB0/b;->h:Ljava/lang/Object;

    check-cast v2, Lz/C;

    invoke-virtual {v2, v4}, Lz/C;->c(Lz/m;)V

    invoke-virtual {v0, p0}, LB0/b;->n(Lz/F;)V

    invoke-static {v9}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initState called for fragment: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v4}, Lz/m;->o()V

    :cond_7
    iget-boolean v0, v4, Lz/m;->H:Z

    if-eqz v0, :cond_9

    iget-object v0, v4, Lz/m;->r:Lz/A;

    if-eqz v0, :cond_8

    iget-boolean v2, v4, Lz/m;->k:Z

    if-eqz v2, :cond_8

    invoke-static {v4}, Lz/A;->H(Lz/m;)Z

    move-result v2

    if-eqz v2, :cond_8

    iput-boolean v5, v0, Lz/A;->D:Z

    :cond_8
    iput-boolean v1, v4, Lz/m;->H:Z

    iget-object v0, v4, Lz/m;->t:Lz/A;

    invoke-virtual {v0}, Lz/A;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    iput-boolean v1, p0, Lz/F;->d:Z

    return-void

    :goto_2
    iput-boolean v1, p0, Lz/F;->d:Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final k()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    iget-object v1, p0, Lz/F;->c:Lz/m;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom RESUMED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Lz/m;->t:Lz/A;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lz/A;->t(I)V

    iget-object v0, v1, Lz/m;->L:LB/i;

    sget-object v2, LB/d;->ON_PAUSE:LB/d;

    invoke-virtual {v0, v2}, LB/i;->d(LB/d;)V

    const/4 v0, 0x6

    iput v0, v1, Lz/m;->a:I

    const/4 v0, 0x1

    iput-boolean v0, v1, Lz/m;->C:Z

    iget-object v0, p0, Lz/F;->a:LW0/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LW0/c;->k(Z)V

    return-void
.end method

.method public final l(Ljava/lang/ClassLoader;)V
    .locals 3

    iget-object v0, p0, Lz/F;->c:Lz/m;

    iget-object v1, v0, Lz/m;->b:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, v0, Lz/m;->b:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, v0, Lz/m;->c:Landroid/util/SparseArray;

    iget-object p1, v0, Lz/m;->b:Landroid/os/Bundle;

    const-string v1, "android:view_registry_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v0, Lz/m;->d:Landroid/os/Bundle;

    iget-object p1, v0, Lz/m;->b:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lz/m;->h:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, v0, Lz/m;->b:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lz/m;->i:I

    :cond_1
    iget-object p1, v0, Lz/m;->b:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lz/m;->F:Z

    if-nez p1, :cond_2

    iput-boolean v2, v0, Lz/m;->E:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    iget-object v1, p0, Lz/F;->c:Lz/m;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto RESUMED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Lz/m;->G:Lz/l;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lz/l;->i:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lz/m;->j()Lz/l;

    move-result-object v0

    iput-object v2, v0, Lz/l;->i:Landroid/view/View;

    iget-object v0, v1, Lz/m;->t:Lz/A;

    invoke-virtual {v0}, Lz/A;->M()V

    iget-object v0, v1, Lz/m;->t:Lz/A;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lz/A;->y(Z)Z

    const/4 v0, 0x7

    iput v0, v1, Lz/m;->a:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Lz/m;->C:Z

    invoke-virtual {v1}, Lz/m;->z()V

    iget-boolean v4, v1, Lz/m;->C:Z

    if-eqz v4, :cond_3

    iget-object v4, v1, Lz/m;->L:LB/i;

    sget-object v5, LB/d;->ON_RESUME:LB/d;

    invoke-virtual {v4, v5}, LB/i;->d(LB/d;)V

    iget-object v4, v1, Lz/m;->t:Lz/A;

    iput-boolean v3, v4, Lz/A;->E:Z

    iput-boolean v3, v4, Lz/A;->F:Z

    iget-object v5, v4, Lz/A;->L:Lz/C;

    iput-boolean v3, v5, Lz/C;->g:Z

    invoke-virtual {v4, v0}, Lz/A;->t(I)V

    iget-object v0, p0, Lz/F;->a:LW0/c;

    invoke-virtual {v0, v3}, LW0/c;->n(Z)V

    iput-object v2, v1, Lz/m;->b:Landroid/os/Bundle;

    iput-object v2, v1, Lz/m;->c:Landroid/util/SparseArray;

    iput-object v2, v1, Lz/m;->d:Landroid/os/Bundle;

    return-void

    :cond_3
    new-instance v0, Lz/L;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onResume()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    iget-object v1, p0, Lz/F;->c:Lz/m;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto STARTED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Lz/m;->t:Lz/A;

    invoke-virtual {v0}, Lz/A;->M()V

    iget-object v0, v1, Lz/m;->t:Lz/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lz/A;->y(Z)Z

    const/4 v0, 0x5

    iput v0, v1, Lz/m;->a:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lz/m;->C:Z

    invoke-virtual {v1}, Lz/m;->B()V

    iget-boolean v3, v1, Lz/m;->C:Z

    if-eqz v3, :cond_1

    iget-object v3, v1, Lz/m;->L:LB/i;

    sget-object v4, LB/d;->ON_START:LB/d;

    invoke-virtual {v3, v4}, LB/i;->d(LB/d;)V

    iget-object v1, v1, Lz/m;->t:Lz/A;

    iput-boolean v2, v1, Lz/A;->E:Z

    iput-boolean v2, v1, Lz/A;->F:Z

    iget-object v3, v1, Lz/A;->L:Lz/C;

    iput-boolean v2, v3, Lz/C;->g:Z

    invoke-virtual {v1, v0}, Lz/A;->t(I)V

    iget-object v0, p0, Lz/F;->a:LW0/c;

    invoke-virtual {v0, v2}, LW0/c;->p(Z)V

    return-void

    :cond_1
    new-instance v0, Lz/L;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStart()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    iget-object v1, p0, Lz/F;->c:Lz/m;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STARTED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Lz/m;->t:Lz/A;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lz/A;->F:Z

    iget-object v3, v0, Lz/A;->L:Lz/C;

    iput-boolean v2, v3, Lz/C;->g:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lz/A;->t(I)V

    iget-object v0, v1, Lz/m;->L:LB/i;

    sget-object v3, LB/d;->ON_STOP:LB/d;

    invoke-virtual {v0, v3}, LB/i;->d(LB/d;)V

    iput v2, v1, Lz/m;->a:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lz/m;->C:Z

    invoke-virtual {v1}, Lz/m;->C()V

    iget-boolean v2, v1, Lz/m;->C:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lz/F;->a:LW0/c;

    invoke-virtual {v1, v0}, LW0/c;->q(Z)V

    return-void

    :cond_1
    new-instance v0, Lz/L;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStop()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
