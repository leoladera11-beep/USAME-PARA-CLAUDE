.class public final enum Lp2/N0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "CommentEndBang"

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 4

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result p2

    sget-object v0, Lp2/l1;->Z:Lp2/J0;

    const-string v1, "--!"

    if-eqz p2, :cond_3

    const/16 v2, 0x2d

    if-eq p2, v2, :cond_2

    const/16 v2, 0x3e

    sget-object v3, Lp2/l1;->e:Lp2/e0;

    if-eq p2, v2, :cond_1

    const v2, 0xffff

    if-eq p2, v2, :cond_0

    iget-object v2, p1, Lp2/T;->n:Lp2/J;

    iget-object v3, v2, Lp2/J;->d:LW0/c;

    invoke-virtual {v3, v1}, LW0/c;->d(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lp2/J;->g(C)V

    invoke-virtual {p1, v0}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    invoke-virtual {p1}, Lp2/T;->h()V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lp2/T;->h()V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_2
    iget-object p2, p1, Lp2/T;->n:Lp2/J;

    iget-object p2, p2, Lp2/J;->d:LW0/c;

    invoke-virtual {p2, v1}, LW0/c;->d(Ljava/lang/String;)V

    sget-object p2, Lp2/l1;->a0:Lp2/K0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object p2, p1, Lp2/T;->n:Lp2/J;

    iget-object v2, p2, Lp2/J;->d:LW0/c;

    invoke-virtual {v2, v1}, LW0/c;->d(Ljava/lang/String;)V

    const v1, 0xfffd

    invoke-virtual {p2, v1}, Lp2/J;->g(C)V

    invoke-virtual {p1, v0}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
