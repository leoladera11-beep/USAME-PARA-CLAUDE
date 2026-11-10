.class public final enum Lp2/v;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AfterHead"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 8

    invoke-static {p1}, Lp2/A;->a(Lp2/Q;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lp2/I;

    invoke-virtual {p2, p1, v2}, Lp2/c;->t(Lp2/I;Z)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lp2/Q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lp2/J;

    invoke-virtual {p2, p1}, Lp2/c;->v(Lp2/J;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lp2/Q;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v0

    const-string v3, "body"

    sget-object v4, Lp2/A;->h:Lp2/u;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v5

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v7, Lp2/A;->j:Lp2/w;

    if-eqz v6, :cond_3

    invoke-virtual {v7, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    iput-boolean v2, p2, Lp2/c;->w:Z

    iput-object v7, p2, Lp2/c;->m:Lp2/A;

    goto/16 :goto_0

    :cond_4
    const-string v6, "frameset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    sget-object p1, Lp2/A;->w:Lp2/m;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    goto :goto_0

    :cond_5
    sget-object v0, Lp2/b;->p:[Ljava/lang/String;

    invoke-static {v5, v0}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    iget-object v0, p2, Lp2/c;->p:Lo2/j;

    iget-object v2, p2, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, p1, p2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    invoke-virtual {p2, v0}, Lp2/c;->O(Lo2/j;)V

    goto :goto_0

    :cond_6
    const-string v0, "head"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    :cond_7
    invoke-virtual {p2, v3}, Lp2/c;->J(Ljava/lang/String;)V

    iput-boolean v1, p2, Lp2/c;->w:Z

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lp2/b;->n:[Ljava/lang/String;

    invoke-static {v0, v5}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p2, v3}, Lp2/c;->J(Ljava/lang/String;)V

    iput-boolean v1, p2, Lp2/c;->w:Z

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    goto :goto_0

    :cond_9
    const-string v3, "template"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4, p1, p2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    goto :goto_0

    :cond_a
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    :cond_b
    invoke-virtual {p2, v3}, Lp2/c;->J(Ljava/lang/String;)V

    iput-boolean v1, p2, Lp2/c;->w:Z

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    :goto_0
    return v1
.end method
