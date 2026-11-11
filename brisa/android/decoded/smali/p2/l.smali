.class public final enum Lp2/l;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AfterBody"

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 4

    const-string v0, "html"

    invoke-virtual {p2, v0}, Lp2/c;->p(Ljava/lang/String;)Lo2/j;

    move-result-object v1

    invoke-static {p1}, Lp2/A;->a(Lp2/Q;)Z

    move-result v2

    sget-object v3, Lp2/A;->j:Lp2/w;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    check-cast p1, Lp2/I;

    invoke-virtual {p2, p1, v1}, Lp2/c;->u(Lp2/I;Lo2/j;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lp2/Q;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    check-cast p1, Lp2/J;

    invoke-virtual {p2, p1, v1}, Lp2/c;->w(Lp2/J;Lo2/j;)V

    goto :goto_0

    :cond_2
    check-cast p1, Lp2/J;

    invoke-virtual {p2, p1}, Lp2/c;->v(Lp2/J;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lp2/Q;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lp2/N;

    invoke-virtual {v1}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lp2/M;

    invoke-virtual {v1}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p1, Lp2/A;->y:Lp2/p;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lp2/Q;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_7
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {p2}, Lp2/c;->P()V

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1
.end method
