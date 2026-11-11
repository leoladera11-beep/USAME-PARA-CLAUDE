.class public final enum Lp2/k;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InTemplate"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 6

    iget v0, p1, Lp2/Q;->a:I

    invoke-static {v0}, Lz/K;->b(I)I

    move-result v0

    sget-object v1, Lp2/A;->j:Lp2/w;

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    sget-object v3, Lp2/A;->h:Lp2/u;

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    const-string v5, "template"

    if-eq v0, v4, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_b

    const/4 v3, 0x4

    if-eq v0, v3, :cond_b

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p2, v5}, Lp2/c;->p(Ljava/lang/String;)Lo2/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {p2, v5}, Lp2/c;->F(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->c()V

    invoke-virtual {p2}, Lp2/c;->G()V

    invoke-virtual {p2}, Lp2/c;->Q()Z

    iget-object v0, p2, Lp2/c;->m:Lp2/A;

    sget-object v1, Lp2/A;->u:Lp2/k;

    if-eq v0, v1, :cond_0

    iget-object v0, p2, Lp2/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_0
    return v2

    :cond_1
    iget p1, p1, Lp2/Q;->a:I

    invoke-static {p1}, LB1/e;->t(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected state: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, p1, p2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    return v2

    :cond_3
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    const/4 p1, 0x0

    return p1

    :cond_4
    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lp2/b;->R:[Ljava/lang/String;

    invoke-static {v0, v4}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, p1, p2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    return v2

    :cond_5
    sget-object v2, Lp2/b;->S:[Ljava/lang/String;

    invoke-static {v0, v2}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lp2/c;->G()V

    sget-object v0, Lp2/A;->l:Lp2/y;

    invoke-virtual {p2, v0}, Lp2/c;->K(Lp2/A;)V

    iput-object v0, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_6
    const-string v2, "col"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Lp2/c;->G()V

    sget-object v0, Lp2/A;->o:Lp2/e;

    invoke-virtual {p2, v0}, Lp2/c;->K(Lp2/A;)V

    iput-object v0, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_7
    const-string v2, "tr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lp2/c;->G()V

    sget-object v0, Lp2/A;->p:Lp2/f;

    invoke-virtual {p2, v0}, Lp2/c;->K(Lp2/A;)V

    iput-object v0, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_8
    const-string v2, "td"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "th"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p2}, Lp2/c;->G()V

    invoke-virtual {p2, v1}, Lp2/c;->K(Lp2/A;)V

    iput-object v1, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_a
    :goto_0
    invoke-virtual {p2}, Lp2/c;->G()V

    sget-object v0, Lp2/A;->q:Lp2/g;

    invoke-virtual {p2, v0}, Lp2/c;->K(Lp2/A;)V

    iput-object v0, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_b
    invoke-virtual {v1, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    return v2
.end method
