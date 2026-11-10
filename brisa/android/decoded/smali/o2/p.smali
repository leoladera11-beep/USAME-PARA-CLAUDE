.class public abstract Lo2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final g:Ljava/util/List;


# instance fields
.field public e:Lo2/j;

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lo2/p;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public A(Lo2/p;)V
    .locals 4

    iget-object v0, p1, Lo2/p;->e:Lo2/j;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LS1/e;->m(Z)V

    move-object v0, p0

    check-cast v0, Lo2/j;

    iget-object v2, v0, Lo2/j;->i:Lo2/i;

    iget-boolean v2, v2, Lo2/i;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lo2/p;->k()Ljava/util/List;

    move-result-object v2

    iget v3, p1, Lo2/p;->f:I

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lo2/p;->k()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, v0, Lo2/j;->i:Lo2/i;

    iput-boolean v1, v0, Lo2/i;->e:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lo2/p;->e:Lo2/j;

    return-void
.end method

.method public final B(Lo2/j;)V
    .locals 3

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    iget-object v0, p0, Lo2/p;->e:Lo2/j;

    if-nez v0, :cond_0

    iget-object v0, p1, Lo2/p;->e:Lo2/j;

    iput-object v0, p0, Lo2/p;->e:Lo2/j;

    :cond_0
    iget-object v0, p0, Lo2/p;->e:Lo2/j;

    invoke-static {v0}, LS1/e;->r(Ljava/lang/Object;)V

    iget-object v0, p0, Lo2/p;->e:Lo2/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lo2/p;->e:Lo2/j;

    if-ne v1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LS1/e;->m(Z)V

    if-ne p0, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lo2/p;->E(Lo2/p;)V

    iget-object v1, p1, Lo2/p;->e:Lo2/j;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lo2/p;->A(Lo2/p;)V

    :cond_3
    iput-object v0, p1, Lo2/p;->e:Lo2/j;

    invoke-virtual {p0}, Lo2/p;->C()I

    move-result v1

    invoke-virtual {v0}, Lo2/j;->k()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput v1, p1, Lo2/p;->f:I

    const/4 p1, 0x0

    iput-object p1, p0, Lo2/p;->e:Lo2/j;

    iget-object p1, v0, Lo2/j;->i:Lo2/i;

    invoke-virtual {p1}, Lo2/i;->a()V

    return-void
.end method

.method public final C()I
    .locals 4

    iget-object v0, p0, Lo2/p;->e:Lo2/j;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lo2/j;->i:Lo2/i;

    iget-boolean v2, v1, Lo2/i;->e:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/p;

    iput v2, v3, Lo2/p;->f:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lo2/j;->i:Lo2/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo2/i;->e:Z

    :cond_1
    iget v0, p0, Lo2/p;->f:I

    return v0
.end method

.method public D()Lo2/v;
    .locals 1

    invoke-virtual {p0}, Lo2/p;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo2/p;->e()Lo2/b;

    move-result-object v0

    invoke-virtual {v0}, Lo2/b;->m()Lo2/v;

    move-result-object v0

    return-object v0
.end method

.method public final E(Lo2/p;)V
    .locals 2

    const-string v0, "Cannot add a node here because it would create a cycle."

    if-eq p1, p0, :cond_3

    invoke-virtual {p1}, Lo2/p;->h()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lo2/p;->e:Lo2/j;

    :goto_0
    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_1

    iget-object v1, v1, Lo2/p;->e:Lo2/j;

    goto :goto_0

    :cond_1
    new-instance p1, Lm2/g;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p1, Lm2/g;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "https"

    const-string v1, "http"

    invoke-static {p1}, LS1/e;->p(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo2/p;->n()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lo2/p;->e()Lo2/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lo2/b;->i(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    invoke-virtual {p0}, Lo2/p;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lo2/p;->e()Lo2/b;

    move-result-object v4

    invoke-virtual {v4, p1}, Lo2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v4, Ln2/e;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p1}, Ln2/e;->m(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/net/MalformedURLException;

    const-string v4, "Invalid URL: host is missing"

    invoke-direct {v2, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sget-object v2, Ln2/e;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, p1

    :cond_4
    :goto_0
    move-object p1, v3

    :goto_1
    return-object p1

    :cond_5
    return-object v3
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lo2/p;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo2/p;->e()Lo2/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo2/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo2/p;->i()Lo2/p;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lo2/p;->w()Lo2/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo2/g;->o:Lp2/D;

    iget-object v0, v0, Lp2/D;->g:Lp2/C;

    goto :goto_0

    :cond_0
    sget-object v0, Lp2/C;->c:Lp2/C;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, v0, Lp2/C;->b:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0}, Lo2/p;->e()Lo2/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo2/b;->i(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v2, v0, Lo2/b;->g:[Ljava/lang/Object;

    aput-object p2, v2, v1

    iget-object p2, v0, Lo2/b;->f:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, v0, Lo2/b;->f:[Ljava/lang/String;

    aput-object p1, p2, v1

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0, p2, p1}, Lo2/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract e()Lo2/b;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public final g(I)Lo2/p;
    .locals 1

    invoke-virtual {p0}, Lo2/p;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo2/p;

    return-object p1
.end method

.method public abstract h()I
.end method

.method public i()Lo2/p;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo2/p;->j(Lo2/p;)Lo2/p;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo2/p;

    invoke-virtual {v2}, Lo2/p;->h()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2}, Lo2/p;->k()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo2/p;

    invoke-virtual {v6, v2}, Lo2/p;->j(Lo2/p;)Lo2/p;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public j(Lo2/p;)Lo2/p;
    .locals 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/p;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    check-cast v1, Lo2/j;

    iput-object v1, v0, Lo2/p;->e:Lo2/j;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo2/p;->C()I

    move-result v1

    :goto_0
    iput v1, v0, Lo2/p;->f:I

    if-nez p1, :cond_2

    instance-of p1, p0, Lo2/g;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lo2/p;->w()Lo2/g;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Lo2/g;

    iget-object v2, p1, Lo2/j;->h:Lp2/E;

    iget-object v2, v2, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lo2/j;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lo2/g;->o:Lp2/D;

    invoke-direct {v1, v2, v3, v4}, Lo2/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lp2/D;)V

    iget-object v2, p1, Lo2/j;->j:Lo2/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo2/b;->d()Lo2/b;

    move-result-object v2

    iput-object v2, v1, Lo2/j;->j:Lo2/b;

    :cond_1
    iget-object p1, p1, Lo2/g;->n:Lo2/f;

    invoke-virtual {p1}, Lo2/f;->a()Lo2/f;

    move-result-object p1

    iput-object p1, v1, Lo2/g;->n:Lo2/f;

    iput-object v1, v0, Lo2/p;->e:Lo2/j;

    invoke-virtual {v1}, Lo2/j;->k()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract k()Ljava/util/List;
.end method

.method public final l()Lo2/p;
    .locals 2

    invoke-virtual {p0}, Lo2/p;->h()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo2/p;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/p;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lo2/p;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo2/p;->e()Lo2/b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lo2/b;->i(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {p0, v0}, Lo2/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lo2/p;->e()Lo2/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo2/b;->i(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public abstract n()Z
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lo2/p;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final p()Lo2/j;
    .locals 2

    move-object v0, p0

    :cond_0
    invoke-virtual {v0}, Lo2/p;->q()Lo2/p;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lo2/j;

    if-eqz v1, :cond_0

    check-cast v0, Lo2/j;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Lo2/p;
    .locals 4

    iget-object v0, p0, Lo2/p;->e:Lo2/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lo2/j;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lo2/p;->C()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/p;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public abstract s()Ljava/lang/String;
.end method

.method public t()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lo2/p;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0}, Ln2/b;->e(Ljava/lang/StringBuilder;)Ln2/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo2/p;->u(Ln2/b;)V

    invoke-static {v0}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ln2/b;)V
    .locals 0

    invoke-static {p0, p1}, LB/A;->O(Lo2/p;Ln2/b;)LB/A;

    move-result-object p1

    invoke-interface {p1, p0}, Lq2/t;->s(Lo2/p;)V

    return-void
.end method

.method public abstract v(Ln2/b;Lo2/f;)V
.end method

.method public final w()Lo2/g;
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lo2/g;

    if-eqz v1, :cond_0

    check-cast v0, Lo2/g;

    return-object v0

    :cond_0
    iget-object v0, v0, Lo2/p;->e:Lo2/j;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract x()Lo2/j;
.end method

.method public final y()Lo2/p;
    .locals 2

    iget-object v0, p0, Lo2/p;->e:Lo2/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lo2/p;->C()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lo2/p;->e:Lo2/j;

    invoke-virtual {v0}, Lo2/j;->k()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lo2/p;->f:I

    add-int/lit8 v1, v1, -0x1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/p;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lo2/p;->e:Lo2/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lo2/p;->A(Lo2/p;)V

    :cond_0
    return-void
.end method
