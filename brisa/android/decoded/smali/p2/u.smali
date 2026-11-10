.class public final enum Lp2/u;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InHead"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 7

    invoke-static {p1}, Lp2/A;->a(Lp2/Q;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lp2/I;

    invoke-virtual {p2, p1, v2}, Lp2/c;->t(Lp2/I;Z)V

    return v1

    :cond_0
    iget v0, p1, Lp2/Q;->a:I

    invoke-static {v0}, Lz/K;->b(I)I

    move-result v0

    if-eqz v0, :cond_14

    const-string v3, "template"

    const-string v4, "head"

    if-eq v0, v1, :cond_8

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    invoke-virtual {p2, v4}, Lp2/c;->I(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lp2/J;

    invoke-virtual {p2, p1}, Lp2/c;->v(Lp2/J;)V

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    sget-object p1, Lp2/A;->i:Lp2/v;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    return v1

    :cond_3
    sget-object v5, Lp2/b;->m:[Ljava/lang/String;

    invoke-static {v0, v5}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2, v4}, Lp2/c;->I(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2, v0}, Lp2/c;->p(Ljava/lang/String;)Lo2/j;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2, v1}, Lp2/c;->o(Z)V

    const-string p1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p2, v0, p1}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    :cond_5
    invoke-virtual {p2, v0}, Lp2/c;->F(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->c()V

    invoke-virtual {p2}, Lp2/c;->G()V

    invoke-virtual {p2}, Lp2/c;->Q()Z

    return v1

    :cond_6
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v1

    :cond_7
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    :cond_8
    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v5

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v0, Lp2/A;->j:Lp2/w;

    invoke-virtual {v0, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_9
    sget-object v6, Lp2/b;->k:[Ljava/lang/String;

    invoke-static {v5, v6}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p2, v0}, Lp2/c;->y(Lp2/N;)Lo2/j;

    move-result-object p1

    const-string v0, "base"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "href"

    invoke-virtual {p1, v0}, Lo2/p;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p2, Lp2/c;->o:Z

    if-eqz v2, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {p1, v0}, Lo2/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v1, p2, Lp2/c;->o:Z

    iget-object p2, p2, Lp2/c;->d:Lo2/g;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p1}, Lo2/j;->L(Ljava/lang/String;)V

    :cond_b
    :goto_0
    return v1

    :cond_c
    const-string v6, "meta"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p2, v0}, Lp2/c;->y(Lp2/N;)Lo2/j;

    return v1

    :cond_d
    const-string v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p2, v0}, Lp2/c;->T(Lp2/N;)Lp2/E;

    move-result-object p1

    invoke-virtual {p1}, Lp2/E;->h()Lp2/l1;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lp2/A;->b(Lp2/N;Lp2/c;Lp2/l1;)V

    return v1

    :cond_e
    sget-object v6, Lp2/b;->l:[Ljava/lang/String;

    invoke-static {v5, v6}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p2, v0}, Lp2/c;->T(Lp2/N;)Lp2/E;

    move-result-object p1

    invoke-virtual {p1}, Lp2/E;->h()Lp2/l1;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lp2/A;->b(Lp2/N;Lp2/c;Lp2/l1;)V

    return v1

    :cond_f
    const-string v6, "noscript"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {p2, v0}, Lp2/c;->S(Lp2/N;)V

    return v1

    :cond_10
    const-string v6, "script"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    sget-object p1, Lp2/l1;->j:Lp2/h1;

    invoke-static {v0, p2, p1}, Lp2/A;->b(Lp2/N;Lp2/c;Lp2/l1;)V

    return v1

    :cond_11
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    :cond_12
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    iget-object p1, p2, Lp2/c;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p2, Lp2/c;->w:Z

    sget-object p1, Lp2/A;->u:Lp2/k;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->K(Lp2/A;)V

    return v1

    :cond_13
    invoke-virtual {p2, v4}, Lp2/c;->I(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_14
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2
.end method
