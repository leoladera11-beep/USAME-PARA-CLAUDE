.class public final enum Lp2/d;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InCaption"

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 7

    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result v0

    sget-object v1, Lp2/A;->l:Lp2/y;

    const-string v2, "http://www.w3.org/1999/xhtml"

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "caption"

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v3, v5}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v4

    :cond_0
    invoke-virtual {p2, v4}, Lp2/c;->o(Z)V

    invoke-virtual {p2, v5, v2}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    :cond_1
    invoke-virtual {p2, v5}, Lp2/c;->F(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->c()V

    iput-object v1, p2, Lp2/c;->m:Lp2/A;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lp2/b;->G:[Ljava/lang/String;

    invoke-static {v0, v6}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    const-string v6, "table"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    invoke-virtual {p2, v3, v5}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v4

    :cond_5
    invoke-virtual {p2, v4}, Lp2/c;->o(Z)V

    invoke-virtual {p2, v5, v2}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    :cond_6
    invoke-virtual {p2, v5}, Lp2/c;->F(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->c()V

    iput-object v1, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {v1, p1, p2}, Lp2/y;->d(Lp2/Q;Lp2/c;)Z

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_7
    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lp2/b;->Q:[Ljava/lang/String;

    invoke-static {v0, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v4

    :cond_8
    sget-object v0, Lp2/A;->j:Lp2/w;

    invoke-virtual {v0, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1
.end method
