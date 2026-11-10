.class public final enum Lp2/D0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "SelfClosingStartTag"

    const/16 v1, 0x29

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 3

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result v0

    const/16 v1, 0x3e

    sget-object v2, Lp2/l1;->e:Lp2/e0;

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lp2/a;->I()V

    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    sget-object p2, Lp2/l1;->L:Lp2/u0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    invoke-virtual {p1, v2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_1
    iget-object p2, p1, Lp2/T;->k:Lp2/O;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lp2/O;->f:Z

    invoke-virtual {p1}, Lp2/T;->j()V

    invoke-virtual {p1, v2}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
