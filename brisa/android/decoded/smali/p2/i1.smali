.class public final enum Lp2/i1;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "PLAINTEXT"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 2

    invoke-virtual {p2}, Lp2/a;->x()C

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lp2/a;->u(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lp2/T;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p2, Lp2/L;

    invoke-direct {p2}, Lp2/L;-><init>()V

    invoke-virtual {p1, p2}, Lp2/T;->g(Lp2/Q;)V

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    invoke-virtual {p2}, Lp2/a;->c()V

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lp2/T;->e(C)V

    return-void
.end method
