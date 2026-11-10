.class public final enum Lp2/x0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "BeforeAttributeValue"

    const/16 v1, 0x24

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 4

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result v0

    sget-object v1, Lp2/l1;->R:Lp2/B0;

    if-eqz v0, :cond_6

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    const/16 v2, 0x22

    if-eq v0, v2, :cond_4

    const/16 v2, 0x60

    if-eq v0, v2, :cond_3

    const v2, 0xffff

    sget-object v3, Lp2/l1;->e:Lp2/e0;

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    const/16 v2, 0xa

    if-eq v0, v2, :cond_5

    const/16 v2, 0xc

    if-eq v0, v2, :cond_5

    const/16 v2, 0xd

    if-eq v0, v2, :cond_5

    const/16 v2, 0x26

    if-eq v0, v2, :cond_1

    const/16 v2, 0x27

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lp2/a;->I()V

    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :pswitch_0
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    invoke-virtual {p1}, Lp2/T;->j()V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_0
    sget-object p2, Lp2/l1;->Q:Lp2/z0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lp2/a;->I()V

    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_2
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    invoke-virtual {p1}, Lp2/T;->j()V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_3
    :pswitch_1
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object v2, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result p2

    invoke-virtual {v2, v0, v3, p2}, Lp2/O;->g(CII)V

    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_4
    sget-object p2, Lp2/l1;->P:Lp2/y0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object v0, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result p2

    const v3, 0xfffd

    invoke-virtual {v0, v3, v2, p2}, Lp2/O;->g(CII)V

    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
