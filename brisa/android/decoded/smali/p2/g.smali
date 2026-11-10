.class public final enum Lp2/g;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InRow"

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 8

    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v0

    sget-object v1, Lp2/A;->l:Lp2/y;

    sget-object v2, Lp2/A;->p:Lp2/f;

    const-string v3, "tr"

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lp2/b;->D:[Ljava/lang/String;

    invoke-static {v6, v7}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Lp2/c;->f()V

    invoke-virtual {p2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    sget-object p1, Lp2/A;->r:Lp2/h;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    iget-object p1, p2, Lp2/c;->r:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lp2/b;->L:[Ljava/lang/String;

    invoke-static {v6, v0}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v4, v3}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v5

    :cond_1
    invoke-virtual {p2}, Lp2/c;->f()V

    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    iput-object v2, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {v1, p1, p2}, Lp2/y;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2, v4, v0}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v5

    :cond_4
    invoke-virtual {p2}, Lp2/c;->f()V

    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    iput-object v2, p2, Lp2/c;->m:Lp2/A;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_5
    const-string v6, "table"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p2, v4, v3}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v5

    :cond_6
    invoke-virtual {p2}, Lp2/c;->f()V

    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    iput-object v2, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_7
    sget-object v6, Lp2/b;->A:[Ljava/lang/String;

    invoke-static {v0, v6}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p2, v4, v0}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v5

    :cond_8
    invoke-virtual {p2, v4, v3}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return v5

    :cond_9
    invoke-virtual {p2}, Lp2/c;->f()V

    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    iput-object v2, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_a
    sget-object v2, Lp2/b;->M:[Ljava/lang/String;

    invoke-static {v0, v2}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v5

    :cond_b
    invoke-virtual {v1, p1, p2}, Lp2/y;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_c
    invoke-virtual {v1, p1, p2}, Lp2/y;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1
.end method
