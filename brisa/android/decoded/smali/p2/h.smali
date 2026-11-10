.class public final enum Lp2/h;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InCell"

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 7

    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result v0

    const-string v1, "th"

    const-string v2, "td"

    sget-object v3, Lp2/A;->j:Lp2/w;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lp2/b;->D:[Ljava/lang/String;

    invoke-static {v0, v6}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2, v4, v0}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result p1

    sget-object v1, Lp2/A;->q:Lp2/g;

    if-nez p1, :cond_0

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    iput-object v1, p2, Lp2/c;->m:Lp2/A;

    return v5

    :cond_0
    invoke-virtual {p2, v5}, Lp2/c;->o(Z)V

    const-string p1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p2, v0, p1}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    :cond_1
    invoke-virtual {p2, v0}, Lp2/c;->F(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->c()V

    iput-object v1, p2, Lp2/c;->m:Lp2/A;

    const/4 p1, 0x1

    return p1

    :cond_2
    sget-object v6, Lp2/b;->E:[Ljava/lang/String;

    invoke-static {v0, v6}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v5

    :cond_3
    sget-object v6, Lp2/b;->F:[Ljava/lang/String;

    invoke-static {v0, v6}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p2, v4, v0}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v5

    :cond_4
    invoke-virtual {p2, v4, v2}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v2}, Lp2/c;->I(Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v1}, Lp2/c;->I(Ljava/lang/String;)Z

    :goto_0
    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_6
    invoke-virtual {v3, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_7
    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lp2/b;->G:[Ljava/lang/String;

    invoke-static {v0, v6}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2, v4, v2}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2, v4, v1}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v5

    :cond_8
    invoke-virtual {p2, v4, v2}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2, v2}, Lp2/c;->I(Ljava/lang/String;)Z

    goto :goto_1

    :cond_9
    invoke-virtual {p2, v1}, Lp2/c;->I(Ljava/lang/String;)Z

    :goto_1
    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_a
    invoke-virtual {v3, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1
.end method
