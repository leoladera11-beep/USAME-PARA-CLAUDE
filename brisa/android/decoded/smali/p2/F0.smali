.class public final enum Lp2/F0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "MarkupDeclarationOpen"

    const/16 v1, 0x2b

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 5

    const-string v0, "--"

    invoke-virtual {p2, v0}, Lp2/a;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p1, Lp2/T;->n:Lp2/J;

    invoke-virtual {p2}, Lp2/J;->f()V

    sget-object p2, Lp2/l1;->X:Lp2/H0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_0
    const-string v0, "DOCTYPE"

    invoke-virtual {p2, v0}, Lp2/a;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lp2/l1;->d0:Lp2/O0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_1
    const-string v0, "[CDATA["

    invoke-virtual {p2, v0}, Lp2/a;->z(Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lp2/l1;->U:Lp2/E0;

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    iget-object p2, p1, Lp2/T;->c:Lp2/c;

    iget-object v1, p1, Lp2/T;->n:Lp2/J;

    iget v4, p1, Lp2/T;->h:I

    if-eq v4, v3, :cond_3

    invoke-virtual {p2}, Lp2/c;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lp2/c;->h()Lo2/j;

    move-result-object p2

    iget-object p2, p2, Lo2/j;->h:Lp2/E;

    iget-object p2, p2, Lp2/E;->e:Ljava/lang/String;

    const-string v3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    invoke-virtual {v1}, Lp2/J;->f()V

    iget-object p2, v1, Lp2/J;->d:LW0/c;

    invoke-virtual {p2, v0}, LW0/c;->d(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_3
    :goto_0
    iget-object p2, p1, Lp2/T;->g:LW0/c;

    invoke-virtual {p2}, LW0/c;->y()V

    sget-object p2, Lp2/l1;->u0:Lp2/g1;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_4
    iget v0, p1, Lp2/T;->h:I

    if-ne v0, v3, :cond_5

    invoke-virtual {p2}, Lp2/a;->D()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p1, Lp2/T;->o:Lp2/P;

    invoke-virtual {p2}, Lp2/P;->p()V

    const/4 v0, 0x1

    iput-boolean v0, p2, Lp2/P;->m:Z

    iput-object p2, p1, Lp2/T;->k:Lp2/O;

    sget-object p2, Lp2/l1;->n:Lp2/U;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_5
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object p2, p1, Lp2/T;->n:Lp2/J;

    invoke-virtual {p2}, Lp2/J;->f()V

    invoke-virtual {p1, v2}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
