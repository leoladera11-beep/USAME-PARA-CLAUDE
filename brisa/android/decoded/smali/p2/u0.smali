.class public final enum Lp2/u0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "BeforeAttributeName"

    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 4

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result v0

    sget-object v1, Lp2/l1;->M:Lp2/v0;

    if-eqz v0, :cond_5

    const/16 v2, 0x20

    if-eq v0, v2, :cond_4

    const/16 v2, 0x22

    if-eq v0, v2, :cond_3

    const/16 v2, 0x27

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_2

    const v2, 0xffff

    sget-object v3, Lp2/l1;->e:Lp2/e0;

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_4

    const/16 v2, 0xa

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-eq v0, v2, :cond_4

    const/16 v2, 0xd

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Lp2/T;->k:Lp2/O;

    instance-of v0, v0, Lp2/P;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {v0}, Lp2/O;->l()V

    invoke-virtual {p2}, Lp2/a;->I()V

    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lp2/T;->j()V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_2
    sget-object p2, Lp2/l1;->T:Lp2/D0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_3
    :pswitch_2
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object v2, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {v2}, Lp2/O;->l()V

    iget-object v2, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    invoke-virtual {p2}, Lp2/a;->F()I

    iget-object p2, v2, Lp2/O;->h:LW0/c;

    invoke-virtual {p2, v0}, LW0/c;->c(C)V

    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual {p2}, Lp2/a;->I()V

    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object p2, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/O;->l()V

    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
