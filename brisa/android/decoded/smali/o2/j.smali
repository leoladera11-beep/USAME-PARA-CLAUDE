.class public Lo2/j;
.super Lo2/p;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final k:Ljava/util/List;

.field public static final l:Lo2/i;

.field public static final m:Ljava/lang/String;


# instance fields
.field public final h:Lp2/E;

.field public i:Lo2/i;

.field public j:Lo2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lo2/j;->k:Ljava/util/List;

    new-instance v0, Lo2/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo2/i;-><init>(I)V

    sput-object v0, Lo2/j;->l:Lo2/i;

    const-string v0, "baseUri"

    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo2/j;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lp2/E;Ljava/lang/String;Lo2/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    sget-object v0, Lo2/j;->l:Lo2/i;

    iput-object v0, p0, Lo2/j;->i:Lo2/i;

    iput-object p3, p0, Lo2/j;->j:Lo2/b;

    iput-object p1, p0, Lo2/j;->h:Lp2/E;

    invoke-static {p2}, Ln2/e;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, LS1/e;->r(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lo2/j;->L(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static H(Ljava/lang/StringBuilder;Lo2/x;)V
    .locals 4

    invoke-virtual {p1}, Lo2/o;->F()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lo2/p;->e:Lo2/j;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_0
    iget-object v3, v1, Lo2/j;->h:Lp2/E;

    iget v3, v3, Lp2/E;->h:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lo2/p;->e:Lo2/j;

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    if-nez v1, :cond_0

    :cond_2
    instance-of p1, p1, Lo2/c;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_3
    invoke-static {p0}, Lo2/x;->I(Ljava/lang/StringBuilder;)Z

    move-result p1

    invoke-static {p0, v0, p1}, Ln2/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final F(Lo2/p;)V
    .locals 1

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lo2/p;->E(Lo2/p;)V

    iget-object v0, p1, Lo2/p;->e:Lo2/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo2/p;->A(Lo2/p;)V

    :cond_0
    iput-object p0, p1, Lo2/p;->e:Lo2/j;

    invoke-virtual {p0}, Lo2/j;->k()Ljava/util/List;

    iget-object v0, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lo2/p;->f:I

    return-void
.end method

.method public final G(Ljava/lang/String;)Lo2/j;
    .locals 5

    iget-object v0, p0, Lo2/j;->h:Lp2/E;

    iget-object v0, v0, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lo2/p;->w()Lo2/g;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo2/g;->o:Lp2/D;

    goto :goto_0

    :cond_0
    new-instance v1, Lp2/D;

    new-instance v2, Lp2/c;

    invoke-direct {v2}, Lp2/c;-><init>()V

    invoke-direct {v1, v2}, Lp2/D;-><init>(Lp2/c;)V

    :goto_0
    new-instance v2, Lo2/j;

    invoke-virtual {v1}, Lp2/D;->a()Lp2/G;

    move-result-object v3

    iget-object v1, v1, Lp2/D;->g:Lp2/C;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v1, Lp2/C;->a:Z

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v0, v1}, Lp2/G;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lp2/E;

    move-result-object p1

    invoke-virtual {p0}, Lo2/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0, v4}, Lo2/j;-><init>(Lp2/E;Ljava/lang/String;Lo2/b;)V

    invoke-virtual {p0, v2}, Lo2/j;->F(Lo2/p;)V

    return-object v2
.end method

.method public final I()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lo2/j;->j:Lo2/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "/jsoup.userdata"

    invoke-virtual {v0, v2}, Lo2/b;->h(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lo2/j;->j:Lo2/b;

    invoke-virtual {v0}, Lo2/b;->n()Ljava/util/Map;

    move-result-object v0

    const-string v2, "jsoup.childEls"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    const-string v3, "jsoup.childElsMod"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v3}, Lo2/i;->b()I

    move-result v3

    if-ne v0, v3, :cond_0

    return-object v2

    :cond_0
    return-object v1
.end method

.method public final J()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo2/j;->k:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v0, p0, Lo2/j;->i:Lo2/i;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lo2/j;->I()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const-class v1, Lo2/j;

    invoke-virtual {p0, v1}, Lo2/j;->N(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lo2/j;->e()Lo2/b;

    move-result-object v2

    invoke-virtual {v2}, Lo2/b;->n()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v4, "jsoup.childEls"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "jsoup.childElsMod"

    iget-object v4, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v4}, Lo2/i;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public K()Lo2/j;
    .locals 1

    invoke-super {p0}, Lo2/p;->i()Lo2/p;

    move-result-object v0

    check-cast v0, Lo2/j;

    return-object v0
.end method

.method public final L(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lo2/j;->e()Lo2/b;

    move-result-object v0

    sget-object v1, Lo2/j;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lo2/b;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final M()I
    .locals 5

    iget-object v0, p0, Lo2/p;->e:Lo2/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lo2/j;->J()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final N(Ljava/lang/Class;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lo2/j;->i:Lo2/i;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC2/l;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, LC2/l;-><init>(ILjava/io/Serializable;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LD2/e;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, LD2/e;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    new-instance v1, LJ2/c;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LJ2/c;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final O()Lo2/j;
    .locals 4

    iget-object v0, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo2/p;

    instance-of v3, v2, Lo2/j;

    if-eqz v3, :cond_0

    check-cast v2, Lo2/j;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final P()Z
    .locals 1

    iget-object v0, p0, Lo2/j;->h:Lp2/E;

    iget v0, v0, Lp2/E;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Q(Ln2/b;Lo2/f;)V
    .locals 2

    iget-object v0, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "</"

    invoke-virtual {p1, v0}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p1

    iget p2, p2, Lo2/f;->j:I

    iget-object v0, p0, Lo2/j;->h:Lp2/E;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    iget-object p2, v0, Lp2/E;->f:Ljava/lang/String;

    invoke-static {v1, p2}, Lo2/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, v0, Lp2/E;->f:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ln2/b;->a(C)Ln2/b;

    :cond_1
    return-void
.end method

.method public final R()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo2/p;

    instance-of v3, v2, Lo2/x;

    if-eqz v3, :cond_0

    check-cast v2, Lo2/x;

    invoke-static {v0, v2}, Lo2/j;->H(Ljava/lang/StringBuilder;Lo2/x;)V

    goto :goto_1

    :cond_0
    const-string v3, "br"

    invoke-virtual {v2, v3}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lo2/x;->I(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final S()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, La1/g;

    invoke-direct {v1, v0}, La1/g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0}, Lq2/t;->s(Lo2/p;)V

    invoke-static {v0}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo2/j;->K()Lo2/j;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lo2/b;
    .locals 1

    iget-object v0, p0, Lo2/j;->j:Lo2/b;

    if-nez v0, :cond_0

    new-instance v0, Lo2/b;

    invoke-direct {v0}, Lo2/b;-><init>()V

    iput-object v0, p0, Lo2/j;->j:Lo2/b;

    :cond_0
    iget-object v0, p0, Lo2/j;->j:Lo2/b;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lo2/j;->j:Lo2/b;

    if-eqz v1, :cond_0

    sget-object v2, Lo2/j;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo2/b;->h(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v0, v0, Lo2/j;->j:Lo2/b;

    invoke-virtual {v0, v2}, Lo2/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lo2/p;->e:Lo2/j;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    const-class v0, Lo2/j;

    invoke-static {p0, v0}, Lj1/a;->g(Lo2/j;Ljava/lang/Class;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Lo2/p;
    .locals 1

    invoke-virtual {p0}, Lo2/j;->K()Lo2/j;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lo2/q;

    const-class v1, Lo2/j;

    invoke-direct {v0, p0, v1}, Lo2/q;-><init>(Lo2/p;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final j(Lo2/p;)Lo2/p;
    .locals 3

    invoke-super {p0, p1}, Lo2/p;->j(Lo2/p;)Lo2/p;

    move-result-object p1

    check-cast p1, Lo2/j;

    new-instance v0, Lo2/i;

    iget-object v1, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lo2/i;-><init>(I)V

    iput-object v0, p1, Lo2/j;->i:Lo2/i;

    iget-object v1, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lo2/j;->j:Lo2/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo2/b;->d()Lo2/b;

    move-result-object v0

    iput-object v0, p1, Lo2/j;->j:Lo2/b;

    const-string v1, "/jsoup.userdata"

    invoke-virtual {v0, v1}, Lo2/b;->h(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lo2/b;->n()Ljava/util/Map;

    move-result-object v0

    const-string v1, "jsoup.childEls"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final k()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lo2/j;->i:Lo2/i;

    sget-object v1, Lo2/j;->l:Lo2/i;

    if-ne v0, v1, :cond_0

    new-instance v0, Lo2/i;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lo2/i;-><init>(I)V

    iput-object v0, p0, Lo2/j;->i:Lo2/i;

    :cond_0
    iget-object v0, p0, Lo2/j;->i:Lo2/i;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lo2/j;->j:Lo2/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo2/j;->h:Lp2/E;

    iget-object v0, v0, Lp2/E;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lo2/j;->i:Lo2/i;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LJ2/c;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LJ2/c;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Ln2/e;->k(Ljava/lang/String;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo2/j;->h:Lp2/E;

    iget-object v0, v0, Lp2/E;->g:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ln2/b;Lo2/f;)V
    .locals 5

    iget v0, p2, Lo2/f;->j:I

    iget-object v1, p0, Lo2/j;->h:Lp2/E;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lp2/E;->f:Ljava/lang/String;

    invoke-static {v2, v0}, Lo2/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lp2/E;->f:Ljava/lang/String;

    :goto_0
    const/16 v3, 0x3c

    invoke-virtual {p1, v3}, Ln2/b;->a(C)Ln2/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    iget-object v3, p0, Lo2/j;->j:Lo2/b;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, p2}, Lo2/b;->g(Ln2/b;Lo2/f;)V

    :cond_1
    iget-object v3, p0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    const/16 v4, 0x3e

    if-eqz v3, :cond_7

    iget p2, p2, Lo2/f;->j:I

    const/4 v3, 0x1

    if-eq p2, v2, :cond_3

    iget-object p2, v1, Lp2/E;->e:Ljava/lang/String;

    const-string v2, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v3

    :goto_2
    if-eqz p2, :cond_5

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lp2/E;->c(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, v1, Lp2/E;->h:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lp2/E;->d()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lp2/E;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string p2, " />"

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    return-void

    :cond_5
    if-nez p2, :cond_6

    invoke-virtual {v1}, Lp2/E;->d()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1, v4}, Ln2/b;->a(C)Ln2/b;

    return-void

    :cond_6
    const-string p2, "></"

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p1

    invoke-virtual {p1, v4}, Ln2/b;->a(C)Ln2/b;

    return-void

    :cond_7
    invoke-virtual {p1, v4}, Ln2/b;->a(C)Ln2/b;

    return-void
.end method

.method public final x()Lo2/j;
    .locals 1

    iget-object v0, p0, Lo2/p;->e:Lo2/j;

    return-object v0
.end method
