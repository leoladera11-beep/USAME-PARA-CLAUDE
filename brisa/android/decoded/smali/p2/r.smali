.class public final enum Lp2/r;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ForeignContent"

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static e(Lp2/Q;Lp2/c;)Z
    .locals 3

    :goto_0
    iget-object v0, p1, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lp2/c;->h()Lo2/j;

    move-result-object v0

    iget-object v1, v0, Lo2/j;->h:Lp2/E;

    iget-object v1, v1, Lp2/E;->e:Ljava/lang/String;

    const-string v2, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lo2/j;->h:Lp2/E;

    iget-object v1, v1, Lp2/E;->e:Ljava/lang/String;

    const-string v2, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo2/j;->h:Lp2/E;

    iget-object v1, v1, Lp2/E;->g:Ljava/lang/String;

    sget-object v2, Lp2/c;->y:[Ljava/lang/String;

    invoke-static {v1, v2}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lp2/c;->B(Lo2/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lp2/c;->E()Lo2/j;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p1, Lp2/c;->m:Lp2/A;

    invoke-virtual {v0, p0, p1}, Lp2/A;->d(Lp2/Q;Lp2/c;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 7

    iget-object v0, p2, Lp2/c;->e:Ljava/util/ArrayList;

    iget v1, p1, Lp2/Q;->a:I

    invoke-static {v1}, Lz/K;->b(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    const-string v3, "script"

    if-eq v1, v2, :cond_c

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 p2, 0x6

    if-ne v1, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget p1, p1, Lp2/Q;->a:I

    invoke-static {p1}, LB1/e;->t(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected state: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    check-cast p1, Lp2/I;

    invoke-static {p1}, Lp2/A;->a(Lp2/Q;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1, v1}, Lp2/c;->t(Lp2/I;Z)V

    return v2

    :cond_2
    invoke-virtual {p2, p1, v2}, Lp2/c;->t(Lp2/I;Z)V

    iput-boolean v1, p2, Lp2/c;->w:Z

    return v2

    :cond_3
    check-cast p1, Lp2/J;

    invoke-virtual {p2, p1}, Lp2/c;->v(Lp2/J;)V

    return v2

    :cond_4
    move-object v1, p1

    check-cast v1, Lp2/M;

    iget-object v4, v1, Lp2/O;->e:Ljava/lang/String;

    const-string v5, "br"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v1, Lp2/O;->e:Ljava/lang/String;

    const-string v5, "p"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_1

    :cond_5
    iget-object v4, v1, Lp2/O;->e:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "http://www.w3.org/2000/svg"

    invoke-virtual {p2, v3, v4}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    return v2

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo2/j;

    iget-object v5, v1, Lp2/O;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    :cond_7
    if-eqz v3, :cond_12

    iget-object v5, v1, Lp2/O;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object p1, v4, Lo2/j;->h:Lp2/E;

    iget-object p1, p1, Lp2/E;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_12

    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_9
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo2/j;

    iget-object v5, v4, Lo2/j;->h:Lp2/E;

    iget-object v5, v5, Lp2/E;->e:Ljava/lang/String;

    const-string v6, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v0, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {v0, p1, p2}, Lp2/A;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Stack unexpectedly empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_1
    invoke-static {p1, p2}, Lp2/r;->e(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_c
    move-object v0, p1

    check-cast v0, Lp2/N;

    iget-object v1, v0, Lp2/O;->e:Ljava/lang/String;

    sget-object v4, Lp2/b;->T:[Ljava/lang/String;

    invoke-static {v1, v4}, Ln2/e;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p1, p2}, Lp2/r;->e(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_d
    iget-object v1, v0, Lp2/O;->e:Ljava/lang/String;

    const-string v4, "font"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lp2/O;->g:Lo2/b;

    const/4 v4, -0x1

    if-eqz v1, :cond_e

    const-string v5, "color"

    invoke-virtual {v1, v5}, Lo2/b;->i(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_e

    goto :goto_2

    :cond_e
    iget-object v1, v0, Lp2/O;->g:Lo2/b;

    if-eqz v1, :cond_f

    const-string v5, "face"

    invoke-virtual {v1, v5}, Lo2/b;->i(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_f

    goto :goto_2

    :cond_f
    iget-object v1, v0, Lp2/O;->g:Lo2/b;

    if-eqz v1, :cond_10

    const-string v5, "size"

    invoke-virtual {v1, v5}, Lo2/b;->i(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_10

    :goto_2
    invoke-static {p1, p2}, Lp2/r;->e(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_10
    invoke-virtual {p2}, Lp2/c;->h()Lo2/j;

    move-result-object p1

    iget-object p1, p1, Lo2/j;->h:Lp2/E;

    iget-object p1, p1, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lp2/c;->z(Lp2/N;Ljava/lang/String;)V

    iget-object v1, v0, Lp2/O;->d:LW0/c;

    invoke-virtual {v1}, LW0/c;->B()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lp2/O;->e:Ljava/lang/String;

    iget-object v5, p2, Lp2/c;->g:Lp2/C;

    iget-object v6, p2, Lp2/c;->h:Lp2/G;

    iget-boolean v5, v5, Lp2/C;->a:Z

    invoke-virtual {v6, v1, v4, p1, v5}, Lp2/G;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lp2/E;

    move-result-object p1

    invoke-virtual {p1}, Lp2/E;->h()Lp2/l1;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object v0, v0, Lp2/O;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p2, Lp2/c;->c:Lp2/T;

    sget-object p2, Lp2/l1;->j:Lp2/h1;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return v2

    :cond_11
    iget-object p2, p2, Lp2/c;->c:Lp2/T;

    invoke-virtual {p2, p1}, Lp2/T;->m(Lp2/l1;)V

    :cond_12
    :goto_3
    return v2

    :cond_13
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2
.end method
