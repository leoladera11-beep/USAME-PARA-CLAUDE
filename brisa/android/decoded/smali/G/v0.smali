.class public LG/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Lu1/P;

.field public C:I

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Ljava/util/HashMap;

.field public I:Ljava/util/HashSet;

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Lu1/P;

.field public n:Lu1/P;

.field public o:Lu1/P;

.field public p:I

.field public q:Lu1/P;

.field public r:Lu1/P;

.field public s:I

.field public t:I

.field public u:I

.field public v:Lu1/P;

.field public w:LG/u0;

.field public x:Z

.field public y:Lu1/P;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, LG/v0;->a:I

    iput v0, p0, LG/v0;->b:I

    iput v0, p0, LG/v0;->c:I

    iput v0, p0, LG/v0;->d:I

    iput v0, p0, LG/v0;->i:I

    iput v0, p0, LG/v0;->j:I

    const/4 v1, 0x1

    iput-boolean v1, p0, LG/v0;->k:Z

    iput-boolean v1, p0, LG/v0;->l:Z

    sget-object v2, Lu1/P;->f:Lu1/N;

    sget-object v2, Lu1/C0;->i:Lu1/C0;

    iput-object v2, p0, LG/v0;->m:Lu1/P;

    iput-object v2, p0, LG/v0;->n:Lu1/P;

    iput-object v2, p0, LG/v0;->o:Lu1/P;

    const/4 v3, 0x0

    iput v3, p0, LG/v0;->p:I

    iput-object v2, p0, LG/v0;->q:Lu1/P;

    iput-object v2, p0, LG/v0;->r:Lu1/P;

    iput v3, p0, LG/v0;->s:I

    iput v0, p0, LG/v0;->t:I

    iput v0, p0, LG/v0;->u:I

    iput-object v2, p0, LG/v0;->v:Lu1/P;

    sget-object v0, LG/u0;->d:LG/u0;

    iput-object v0, p0, LG/v0;->w:LG/u0;

    iput-boolean v3, p0, LG/v0;->x:Z

    iput-object v2, p0, LG/v0;->y:Lu1/P;

    iput v3, p0, LG/v0;->z:I

    iput-boolean v1, p0, LG/v0;->A:Z

    iput-object v2, p0, LG/v0;->B:Lu1/P;

    iput v3, p0, LG/v0;->C:I

    iput-boolean v3, p0, LG/v0;->D:Z

    iput-boolean v3, p0, LG/v0;->E:Z

    iput-boolean v3, p0, LG/v0;->F:Z

    iput-boolean v3, p0, LG/v0;->G:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LG/v0;->H:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LG/v0;->I:Ljava/util/HashSet;

    return-void
.end method

.method public static f([Ljava/lang/String;)Lu1/C0;
    .locals 4

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, LJ/W;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(LG/s0;)V
    .locals 2

    iget-object v0, p0, LG/v0;->H:Ljava/util/HashMap;

    iget-object v1, p1, LG/s0;->a:LG/r0;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()LG/w0;
    .locals 1

    new-instance v0, LG/w0;

    invoke-direct {v0, p0}, LG/w0;-><init>(LG/v0;)V

    return-object v0
.end method

.method public c()LG/v0;
    .locals 1

    iget-object v0, p0, LG/v0;->H:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-object p0
.end method

.method public d(I)LG/v0;
    .locals 2

    iget-object v0, p0, LG/v0;->H:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/s0;

    iget-object v1, v1, LG/s0;->a:LG/r0;

    iget v1, v1, LG/r0;->c:I

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final e(LG/w0;)V
    .locals 2

    iget v0, p1, LG/w0;->a:I

    iput v0, p0, LG/v0;->a:I

    iget v0, p1, LG/w0;->b:I

    iput v0, p0, LG/v0;->b:I

    iget v0, p1, LG/w0;->c:I

    iput v0, p0, LG/v0;->c:I

    iget v0, p1, LG/w0;->d:I

    iput v0, p0, LG/v0;->d:I

    iget v0, p1, LG/w0;->e:I

    iput v0, p0, LG/v0;->e:I

    iget v0, p1, LG/w0;->f:I

    iput v0, p0, LG/v0;->f:I

    iget v0, p1, LG/w0;->g:I

    iput v0, p0, LG/v0;->g:I

    iget v0, p1, LG/w0;->h:I

    iput v0, p0, LG/v0;->h:I

    iget v0, p1, LG/w0;->i:I

    iput v0, p0, LG/v0;->i:I

    iget v0, p1, LG/w0;->j:I

    iput v0, p0, LG/v0;->j:I

    iget-boolean v0, p1, LG/w0;->k:Z

    iput-boolean v0, p0, LG/v0;->k:Z

    iget-boolean v0, p1, LG/w0;->l:Z

    iput-boolean v0, p0, LG/v0;->l:Z

    iget-object v0, p1, LG/w0;->n:Lu1/P;

    iput-object v0, p0, LG/v0;->n:Lu1/P;

    iget-object v0, p1, LG/w0;->m:Lu1/P;

    iput-object v0, p0, LG/v0;->m:Lu1/P;

    iget-object v0, p1, LG/w0;->o:Lu1/P;

    iput-object v0, p0, LG/v0;->o:Lu1/P;

    iget v0, p1, LG/w0;->p:I

    iput v0, p0, LG/v0;->p:I

    iget-object v0, p1, LG/w0;->q:Lu1/P;

    iput-object v0, p0, LG/v0;->q:Lu1/P;

    iget v0, p1, LG/w0;->s:I

    iput v0, p0, LG/v0;->s:I

    iget-object v0, p1, LG/w0;->r:Lu1/P;

    iput-object v0, p0, LG/v0;->r:Lu1/P;

    iget v0, p1, LG/w0;->t:I

    iput v0, p0, LG/v0;->t:I

    iget v0, p1, LG/w0;->u:I

    iput v0, p0, LG/v0;->u:I

    iget-object v0, p1, LG/w0;->v:Lu1/P;

    iput-object v0, p0, LG/v0;->v:Lu1/P;

    iget-object v0, p1, LG/w0;->w:LG/u0;

    iput-object v0, p0, LG/v0;->w:LG/u0;

    iget-boolean v0, p1, LG/w0;->x:Z

    iput-boolean v0, p0, LG/v0;->x:Z

    iget-object v0, p1, LG/w0;->y:Lu1/P;

    iput-object v0, p0, LG/v0;->y:Lu1/P;

    iget v0, p1, LG/w0;->A:I

    iput v0, p0, LG/v0;->z:I

    iget-boolean v0, p1, LG/w0;->B:Z

    iput-boolean v0, p0, LG/v0;->A:Z

    iget-object v0, p1, LG/w0;->z:Lu1/P;

    iput-object v0, p0, LG/v0;->B:Lu1/P;

    iget v0, p1, LG/w0;->C:I

    iput v0, p0, LG/v0;->C:I

    iget-boolean v0, p1, LG/w0;->D:Z

    iput-boolean v0, p0, LG/v0;->D:Z

    iget-boolean v0, p1, LG/w0;->E:Z

    iput-boolean v0, p0, LG/v0;->E:Z

    iget-boolean v0, p1, LG/w0;->F:Z

    iput-boolean v0, p0, LG/v0;->F:Z

    iget-boolean v0, p1, LG/w0;->G:Z

    iput-boolean v0, p0, LG/v0;->G:Z

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, LG/w0;->I:Lu1/b0;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LG/v0;->I:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, LG/w0;->H:Lu1/T;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, LG/v0;->H:Ljava/util/HashMap;

    return-void
.end method

.method public g()LG/v0;
    .locals 1

    const/4 v0, -0x3

    iput v0, p0, LG/v0;->C:I

    return-object p0
.end method

.method public h(LG/s0;)LG/v0;
    .locals 2

    iget-object v0, p1, LG/s0;->a:LG/r0;

    iget v1, v0, LG/r0;->c:I

    invoke-virtual {p0, v1}, LG/v0;->d(I)LG/v0;

    iget-object v1, p0, LG/v0;->H:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public i()LG/v0;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, LG/v0;->j([Ljava/lang/String;)LG/v0;

    move-result-object v0

    return-object v0
.end method

.method public varargs j([Ljava/lang/String;)LG/v0;
    .locals 0

    invoke-static {p1}, LG/v0;->f([Ljava/lang/String;)Lu1/C0;

    move-result-object p1

    iput-object p1, p0, LG/v0;->y:Lu1/P;

    const/4 p1, 0x0

    iput-boolean p1, p0, LG/v0;->A:Z

    return-object p0
.end method

.method public k()LG/v0;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LG/v0;->z:I

    iput-boolean v0, p0, LG/v0;->A:Z

    return-object p0
.end method

.method public l(IZ)LG/v0;
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, LG/v0;->I:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    iget-object p2, p0, LG/v0;->I:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method
