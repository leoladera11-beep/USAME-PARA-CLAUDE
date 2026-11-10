.class public final enum Lp2/f;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InTableBody"

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 10

    iget v0, p1, Lp2/Q;->a:I

    invoke-static {v0}, Lz/K;->b(I)I

    move-result v0

    const-string v1, "template"

    const-string v2, "thead"

    const-string v3, "tfoot"

    const-string v4, "tbody"

    sget-object v5, Lp2/A;->l:Lp2/y;

    const/4 v6, 0x1

    if-eq v0, v6, :cond_5

    const/4 v7, 0x2

    if-eq v0, v7, :cond_0

    invoke-virtual {v5, p1, p2}, Lp2/y;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_0
    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lp2/b;->P:[Ljava/lang/String;

    invoke-static {v0, v7}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    const/16 p1, 0x8

    invoke-virtual {p2, p1, v0}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v8

    :cond_1
    filled-new-array {v4, v3, v2, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lp2/c;->d([Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    iput-object v5, p2, Lp2/c;->m:Lp2/A;

    return v6

    :cond_2
    const-string v1, "table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lp2/f;->e(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_3
    sget-object v1, Lp2/b;->K:[Ljava/lang/String;

    invoke-static {v0, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v8

    :cond_4
    invoke-virtual {v5, p1, p2}, Lp2/y;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_5
    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v7

    const-string v8, "tr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    filled-new-array {v4, v3, v2, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lp2/c;->d([Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    sget-object p1, Lp2/A;->q:Lp2/g;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    return v6

    :cond_6
    sget-object v1, Lp2/b;->D:[Ljava/lang/String;

    invoke-static {v7, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {p2, v8}, Lp2/c;->J(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_7
    sget-object v0, Lp2/b;->J:[Ljava/lang/String;

    invoke-static {v7, v0}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lp2/f;->e(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_8
    invoke-virtual {v5, p1, p2}, Lp2/y;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1
.end method

.method public final e(Lp2/Q;Lp2/c;)Z
    .locals 5

    const/16 v0, 0x8

    const-string v1, "tbody"

    invoke-virtual {p2, v0, v1}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v2

    const-string v3, "tfoot"

    const-string v4, "thead"

    if-nez v2, :cond_0

    invoke-virtual {p2, v0, v4}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v0, v3}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "template"

    filled-new-array {v1, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lp2/c;->d([Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->h()Lo2/j;

    move-result-object v0

    iget-object v0, v0, Lo2/j;->h:Lp2/E;

    iget-object v0, v0, Lp2/E;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lp2/c;->I(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1
.end method
