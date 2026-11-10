.class public final enum Lp2/y;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InTable"

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 10

    iget v0, p1, Lp2/Q;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lp2/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lp2/c;->h()Lo2/j;

    move-result-object v0

    iget-object v0, v0, Lo2/j;->h:Lp2/E;

    iget-object v0, v0, Lp2/E;->g:Ljava/lang/String;

    sget-object v1, Lp2/b;->I:[Ljava/lang/String;

    invoke-static {v0, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lp2/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p2, Lp2/c;->m:Lp2/A;

    iput-object v0, p2, Lp2/c;->n:Lp2/A;

    sget-object v0, Lp2/A;->m:Lp2/z;

    iput-object v0, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lp2/Q;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lp2/J;

    invoke-virtual {p2, p1}, Lp2/c;->v(Lp2/J;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Lp2/Q;->b()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    :cond_2
    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v0

    const-string v3, "template"

    sget-object v4, Lp2/A;->h:Lp2/u;

    const/16 v5, 0x8

    const-string v6, "table"

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v7

    const-string v8, "caption"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Lp2/c;->e()V

    iget-object p1, p2, Lp2/c;->r:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    sget-object p1, Lp2/A;->n:Lp2/d;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    return v1

    :cond_3
    const-string v8, "colgroup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p2}, Lp2/c;->e()V

    invoke-virtual {p2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    sget-object p1, Lp2/A;->o:Lp2/e;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    return v1

    :cond_4
    const-string v9, "col"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p2}, Lp2/c;->e()V

    invoke-virtual {p2, v8}, Lp2/c;->J(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_5
    sget-object v8, Lp2/b;->A:[Ljava/lang/String;

    invoke-static {v7, v8}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p2}, Lp2/c;->e()V

    invoke-virtual {p2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    sget-object p1, Lp2/A;->p:Lp2/f;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    return v1

    :cond_6
    sget-object v8, Lp2/b;->B:[Ljava/lang/String;

    invoke-static {v7, v8}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p2}, Lp2/c;->e()V

    const-string v0, "tbody"

    invoke-virtual {p2, v0}, Lp2/c;->J(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_7
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {p2, v5, v7}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p2, v7}, Lp2/c;->F(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->Q()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    return v1

    :cond_9
    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_a
    sget-object v5, Lp2/b;->C:[Ljava/lang/String;

    invoke-static {v7, v5}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4, p1, p2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_b
    const-string v4, "noscript"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p2, v0}, Lp2/c;->S(Lp2/N;)V

    return v1

    :cond_c
    const-string v4, "input"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v2, v0, Lp2/O;->g:Lo2/b;

    if-eqz v2, :cond_e

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lo2/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_d
    invoke-virtual {p2, v0}, Lp2/c;->y(Lp2/N;)Lo2/j;

    return v1

    :cond_e
    :goto_0
    invoke-virtual {p0, p1, p2}, Lp2/y;->e(Lp2/Q;Lp2/c;)V

    return v1

    :cond_f
    const-string v4, "form"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    iget-object p1, p2, Lp2/c;->q:Lo2/m;

    if-nez p1, :cond_11

    invoke-virtual {p2, v3}, Lp2/c;->C(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {p2, v0, v2, v2}, Lp2/c;->A(Lp2/N;ZZ)V

    return v1

    :cond_11
    :goto_1
    return v2

    :cond_12
    invoke-virtual {p0, p1, p2}, Lp2/y;->e(Lp2/Q;Lp2/c;)V

    return v1

    :cond_13
    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {p2, v5, v0}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    :cond_14
    invoke-virtual {p2, v6}, Lp2/c;->F(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->Q()Z

    return v1

    :cond_15
    sget-object v5, Lp2/b;->H:[Ljava/lang/String;

    invoke-static {v0, v5}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    :cond_16
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v4, p1, p2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    return v1

    :cond_17
    invoke-virtual {p0, p1, p2}, Lp2/y;->e(Lp2/Q;Lp2/c;)V

    return v1

    :cond_18
    invoke-virtual {p1}, Lp2/Q;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p1, "html"

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p2, p1, v0}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    :cond_19
    return v1

    :cond_1a
    invoke-virtual {p0, p1, p2}, Lp2/y;->e(Lp2/Q;Lp2/c;)V

    return v1
.end method

.method public final e(Lp2/Q;Lp2/c;)V
    .locals 1

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    const/4 v0, 0x1

    iput-boolean v0, p2, Lp2/c;->x:Z

    sget-object v0, Lp2/A;->j:Lp2/w;

    invoke-virtual {v0, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    const/4 p1, 0x0

    iput-boolean p1, p2, Lp2/c;->x:Z

    return-void
.end method
