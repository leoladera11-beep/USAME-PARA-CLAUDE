.class public final enum Lp2/o0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ScriptDataDoubleEscaped"

    const/16 v1, 0x1c

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 4

    invoke-virtual {p2}, Lp2/a;->x()C

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_1

    const v3, 0xffff

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v2, v0}, Lp2/a;->v(CCC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lp2/T;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    sget-object p2, Lp2/l1;->e:Lp2/e0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Lp2/T;->e(C)V

    sget-object p2, Lp2/l1;->J:Lp2/s0;

    invoke-virtual {p1, p2}, Lp2/T;->a(Lp2/l1;)V

    return-void

    :cond_2
    invoke-virtual {p1, v0}, Lp2/T;->e(C)V

    sget-object p2, Lp2/l1;->H:Lp2/q0;

    invoke-virtual {p1, p2}, Lp2/T;->a(Lp2/l1;)V

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    invoke-virtual {p2}, Lp2/a;->c()V

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lp2/T;->e(C)V

    return-void
.end method
