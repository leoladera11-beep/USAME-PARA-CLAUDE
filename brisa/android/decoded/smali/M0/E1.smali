.class public final synthetic LM0/E1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/k;
.implements LM0/T1;
.implements LM0/R1;
.implements Lt1/j;
.implements LJ/q;
.implements LJ/r;


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LM0/E1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, LM0/E1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;LG/h0;)V
    .locals 0

    .line 3
    const/4 p1, 0x5

    iput p1, p0, LM0/E1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLM0/i2;Landroid/os/Bundle;)V
    .locals 0

    .line 4
    const/4 p1, 0x1

    iput p1, p0, LM0/E1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM0/d2;LM0/N0;Ljava/util/List;)V
    .locals 0

    iget p2, p0, LM0/E1;->e:I

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1, p3}, LM0/d2;->m0(Ljava/util/List;)V

    return-void

    :pswitch_0
    invoke-virtual {p1, p3}, LM0/d2;->m0(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LM0/E1;->e:I

    check-cast p1, LM0/d2;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, LM0/d2;->u()V

    return-void

    :pswitch_1
    invoke-virtual {p1}, LM0/d2;->C0()V

    return-void

    :pswitch_2
    invoke-virtual {p1}, LM0/d2;->E0()V

    return-void

    :pswitch_3
    invoke-virtual {p1}, LM0/d2;->M0()V

    return-void

    :pswitch_4
    invoke-virtual {p1}, LM0/d2;->H0()V

    return-void

    :pswitch_5
    invoke-virtual {p1}, LM0/d2;->h0()V

    return-void

    :pswitch_6
    invoke-virtual {p1}, LM0/d2;->A()V

    return-void

    :pswitch_7
    invoke-virtual {p1}, LM0/d2;->e()V

    return-void

    :pswitch_8
    invoke-virtual {p1}, LM0/d2;->S()V

    return-void

    :pswitch_9
    invoke-virtual {p1}, LM0/d2;->x()V

    return-void

    :pswitch_a
    invoke-virtual {p1}, LM0/d2;->a0()V

    return-void

    :pswitch_b
    invoke-virtual {p1}, LM0/d2;->P()V

    return-void

    :pswitch_c
    invoke-virtual {p1}, LM0/d2;->v0()V

    return-void

    :pswitch_d
    invoke-virtual {p1}, LM0/d2;->C()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, LO/d;

    check-cast p1, LJ/M;

    invoke-direct {v0, p1}, LO/d;-><init>(LJ/M;)V

    return-object v0
.end method

.method public c(Ljava/lang/Object;LG/u;)V
    .locals 1

    check-cast p1, LG/e0;

    new-instance v0, LG/d0;

    invoke-direct {v0, p2}, LG/d0;-><init>(LG/u;)V

    invoke-interface {p1, v0}, LG/e0;->S(LG/d0;)V

    return-void
.end method

.method public i(LM0/X0;LM0/N0;I)Ljava/lang/Object;
    .locals 0

    iget p3, p0, LM0/E1;->e:I

    sparse-switch p3, :sswitch_data_0

    iget-object p3, p1, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {p1, p2}, LM0/X0;->u(LM0/N0;)LM0/N0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LM0/m2;

    const/4 p2, -0x6

    invoke-direct {p1, p2}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1

    :sswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :sswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :sswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :sswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :sswitch_4
    iget-object p3, p1, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {p1, p2}, LM0/X0;->u(LM0/N0;)LM0/N0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LM0/m2;

    const/4 p2, -0x6

    invoke-direct {p1, p2}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1

    :sswitch_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :sswitch_6
    invoke-virtual {p1, p2}, LM0/X0;->p(LM0/N0;)Lz1/x;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x9 -> :sswitch_3
        0xb -> :sswitch_2
        0xe -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public k(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, LM0/E1;->e:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p1, LO/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    check-cast p1, LG/e0;

    invoke-interface {p1}, LG/e0;->q()V

    return-void

    :pswitch_2
    check-cast p1, LG/e0;

    new-instance v0, LC1/i;

    const-string v1, "Player release timed out."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-instance v1, LN/k;

    const/4 v2, 0x2

    const/16 v3, 0x3eb

    invoke-direct {v1, v2, v0, v3}, LN/k;-><init>(ILjava/lang/Exception;I)V

    invoke-interface {p1, v1}, LG/e0;->G(LG/Z;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
