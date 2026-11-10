.class public final enum Lp2/j;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InSelectInTable"

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 4

    sget-object v0, Lp2/b;->O:[Ljava/lang/String;

    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v1

    const-string v2, "select"

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lp2/N;

    invoke-virtual {v1}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {p2, v2}, Lp2/c;->F(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->Q()Z

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lp2/M;

    invoke-virtual {v1}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {v1}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p2, v1, v0}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Lp2/c;->F(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->Q()Z

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    sget-object v0, Lp2/A;->s:Lp2/i;

    invoke-virtual {v0, p1, p2}, Lp2/i;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1
.end method
