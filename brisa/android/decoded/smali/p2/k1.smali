.class public final enum Lp2/k1;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "EndTagOpen"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 2

    invoke-virtual {p2}, Lp2/a;->y()Z

    move-result v0

    sget-object v1, Lp2/l1;->e:Lp2/e0;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    const-string p2, "</"

    invoke-virtual {p1, p2}, Lp2/T;->f(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lp2/a;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lp2/T;->d(Z)V

    sget-object p2, Lp2/l1;->n:Lp2/U;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lp2/a;->B(C)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    invoke-virtual {p1, v1}, Lp2/T;->a(Lp2/l1;)V

    return-void

    :cond_2
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object p2, p1, Lp2/T;->n:Lp2/J;

    invoke-virtual {p2}, Lp2/J;->f()V

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lp2/J;->g(C)V

    sget-object p2, Lp2/l1;->U:Lp2/E0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
