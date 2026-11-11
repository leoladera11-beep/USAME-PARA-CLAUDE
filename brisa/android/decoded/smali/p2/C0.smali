.class public final enum Lp2/C0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AfterAttributeValue_quoted"

    const/16 v1, 0x28

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 4

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result v0

    const/16 v1, 0x9

    sget-object v2, Lp2/l1;->L:Lp2/u0;

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4

    const v1, 0xffff

    sget-object v3, Lp2/l1;->e:Lp2/e0;

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lp2/T;->k:Lp2/O;

    instance-of v0, v0, Lp2/P;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lp2/a;->I()V

    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    invoke-virtual {p1, v2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lp2/T;->j()V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_4
    sget-object p2, Lp2/l1;->T:Lp2/D0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_5
    invoke-virtual {p1, v2}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
