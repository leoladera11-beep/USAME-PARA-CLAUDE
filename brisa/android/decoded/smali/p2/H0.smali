.class public final enum Lp2/H0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "CommentStart"

    const/16 v1, 0x2d

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 4

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result v0

    sget-object v1, Lp2/l1;->Z:Lp2/J0;

    if-eqz v0, :cond_3

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3e

    sget-object v3, Lp2/l1;->e:Lp2/e0;

    if-eq v0, v2, :cond_1

    const v2, 0xffff

    if-eq v0, v2, :cond_0

    invoke-virtual {p2}, Lp2/a;->I()V

    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    invoke-virtual {p1}, Lp2/T;->h()V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    invoke-virtual {p1}, Lp2/T;->h()V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_2
    sget-object p2, Lp2/l1;->Y:Lp2/I0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object p2, p1, Lp2/T;->n:Lp2/J;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lp2/J;->g(C)V

    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
