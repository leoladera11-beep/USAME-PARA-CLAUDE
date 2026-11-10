.class public final enum Lp2/q;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AfterAfterFrameset"

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 2

    invoke-virtual {p1}, Lp2/Q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lp2/J;

    iget-object v0, p2, Lp2/c;->d:Lo2/g;

    invoke-virtual {p2, p1, v0}, Lp2/c;->w(Lp2/J;Lo2/j;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lp2/Q;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lp2/A;->a(Lp2/Q;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lp2/Q;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noframes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lp2/A;->h:Lp2/u;

    invoke-virtual {v0, p1, p2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_1
    sget-object v0, Lp2/A;->j:Lp2/w;

    invoke-virtual {v0, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1
.end method
