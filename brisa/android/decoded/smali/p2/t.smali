.class public final enum Lp2/t;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "BeforeHead"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 4

    invoke-static {p1}, Lp2/A;->a(Lp2/Q;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lp2/I;

    invoke-virtual {p2, p1, v1}, Lp2/c;->t(Lp2/I;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lp2/Q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lp2/J;

    invoke-virtual {p2, p1}, Lp2/c;->v(Lp2/J;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lp2/Q;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v1

    :cond_2
    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lp2/A;->j:Lp2/w;

    invoke-virtual {v0, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v0

    const-string v2, "head"

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    move-result-object p1

    iput-object p1, p2, Lp2/c;->p:Lo2/j;

    sget-object p1, Lp2/A;->h:Lp2/u;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lp2/b;->o:[Ljava/lang/String;

    invoke-static {v0, v3}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v2}, Lp2/c;->J(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v1

    :cond_6
    invoke-virtual {p2, v2}, Lp2/c;->J(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1
.end method
