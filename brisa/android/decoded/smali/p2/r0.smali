.class public final enum Lp2/r0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ScriptDataDoubleEscapedDashDash"

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 2

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result p2

    sget-object v0, Lp2/l1;->G:Lp2/o0;

    if-eqz p2, :cond_4

    const/16 v1, 0x2d

    if-eq p2, v1, :cond_3

    const/16 v1, 0x3c

    if-eq p2, v1, :cond_2

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_1

    const v1, 0xffff

    if-eq p2, v1, :cond_0

    invoke-virtual {p1, p2}, Lp2/T;->e(C)V

    invoke-virtual {p1, v0}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    sget-object p2, Lp2/l1;->e:Lp2/e0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lp2/T;->e(C)V

    sget-object p2, Lp2/l1;->j:Lp2/h1;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_2
    invoke-virtual {p1, p2}, Lp2/T;->e(C)V

    sget-object p2, Lp2/l1;->J:Lp2/s0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Lp2/T;->e(C)V

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lp2/T;->e(C)V

    invoke-virtual {p1, v0}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
