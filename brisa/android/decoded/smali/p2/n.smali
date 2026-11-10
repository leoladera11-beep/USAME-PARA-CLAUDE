.class public final enum Lp2/n;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Initial"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 9

    invoke-static {p1}, Lp2/A;->a(Lp2/Q;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lp2/Q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lp2/J;

    invoke-virtual {p2, p1}, Lp2/c;->v(Lp2/J;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Lp2/Q;->b()Z

    move-result v0

    sget-object v2, Lp2/A;->f:Lp2/s;

    const/4 v3, 0x2

    if-eqz v0, :cond_8

    check-cast p1, Lp2/K;

    new-instance v0, Lo2/h;

    iget-object v4, p2, Lp2/c;->g:Lp2/C;

    iget-object v5, p1, Lp2/K;->d:LW0/c;

    invoke-virtual {v5}, LW0/c;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-boolean v4, v4, Lp2/C;->a:Z

    if-nez v4, :cond_2

    invoke-static {v5}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    iget-object v4, p1, Lp2/K;->f:LW0/c;

    invoke-virtual {v4}, LW0/c;->B()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Lp2/K;->g:LW0/c;

    invoke-virtual {v6}, LW0/c;->B()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5}, Lo2/o;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, LS1/e;->r(Ljava/lang/Object;)V

    invoke-static {v6}, LS1/e;->r(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lo2/o;->e()Lo2/b;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v5, v8}, Lo2/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "publicId"

    invoke-virtual {v7, v4, v5}, Lo2/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "systemId"

    invoke-virtual {v7, v6, v4}, Lo2/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lo2/h;->H(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "pubSysKey"

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lo2/o;->e()Lo2/b;

    move-result-object v4

    const-string v6, "PUBLIC"

    invoke-virtual {v4, v6, v7}, Lo2/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Lo2/h;->H(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lo2/o;->e()Lo2/b;

    move-result-object v4

    const-string v6, "SYSTEM"

    invoke-virtual {v4, v6, v7}, Lo2/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object v4, p1, Lp2/K;->e:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-virtual {v0, v7, v4}, Lo2/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v4, p2, Lp2/c;->d:Lo2/g;

    invoke-virtual {v4, v0}, Lo2/j;->F(Lo2/p;)V

    iget-boolean p1, p1, Lp2/K;->i:Z

    if-nez p1, :cond_6

    invoke-virtual {v0, v8}, Lo2/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "html"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0, v5}, Lo2/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "HTML"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p2, Lp2/c;->d:Lo2/g;

    iput v3, p1, Lo2/g;->p:I

    :cond_7
    iput-object v2, p2, Lp2/c;->m:Lp2/A;

    return v1

    :cond_8
    iget-object v0, p2, Lp2/c;->d:Lo2/g;

    iput v3, v0, Lo2/g;->p:I

    iput-object v2, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1
.end method
