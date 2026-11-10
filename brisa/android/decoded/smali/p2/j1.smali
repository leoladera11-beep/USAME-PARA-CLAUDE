.class public final enum Lp2/j1;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "TagOpen"

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 2

    invoke-virtual {p2}, Lp2/a;->x()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lp2/a;->D()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lp2/T;->d(Z)V

    sget-object p2, Lp2/l1;->n:Lp2/U;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Lp2/T;->e(C)V

    sget-object p2, Lp2/l1;->e:Lp2/e0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_1
    iget p2, p1, Lp2/T;->h:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    sget-object p2, Lp2/l1;->W:Lp2/G0;

    invoke-virtual {p1, p2}, Lp2/T;->a(Lp2/l1;)V

    return-void

    :cond_2
    iget-object p2, p1, Lp2/T;->n:Lp2/J;

    invoke-virtual {p2}, Lp2/J;->f()V

    sget-object p2, Lp2/l1;->U:Lp2/E0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_3
    sget-object p2, Lp2/l1;->m:Lp2/k1;

    invoke-virtual {p1, p2}, Lp2/T;->a(Lp2/l1;)V

    return-void

    :cond_4
    sget-object p2, Lp2/l1;->V:Lp2/F0;

    invoke-virtual {p1, p2}, Lp2/T;->a(Lp2/l1;)V

    return-void
.end method
