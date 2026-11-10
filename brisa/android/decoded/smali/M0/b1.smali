.class public final synthetic LM0/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/s1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LM0/t1;


# direct methods
.method public synthetic constructor <init>(LM0/t1;I)V
    .locals 0

    .line 1
    iput p2, p0, LM0/b1;->a:I

    iput-object p1, p0, LM0/b1;->b:LM0/t1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LM0/t1;LG/h0;)V
    .locals 0

    .line 2
    const/4 p2, 0x2

    iput p2, p0, LM0/b1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/b1;->b:LM0/t1;

    return-void
.end method

.method public synthetic constructor <init>(LM0/t1;LM0/i2;Landroid/os/Bundle;)V
    .locals 0

    .line 3
    const/4 p2, 0x1

    iput p2, p0, LM0/b1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/b1;->b:LM0/t1;

    return-void
.end method


# virtual methods
.method public final a(LM0/N0;)V
    .locals 3

    iget v0, p0, LM0/b1;->a:I

    const/4 v1, 0x1

    iget-object v2, p0, LM0/b1;->b:LM0/t1;

    packed-switch v0, :pswitch_data_0

    iget-object p1, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LM0/d2;->h0()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1}, LM0/d2;->E0()V

    return-void

    :pswitch_1
    iget-object p1, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1}, LM0/d2;->C()V

    return-void

    :pswitch_2
    iget-object p1, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1}, LM0/d2;->u()V

    return-void

    :pswitch_3
    iget-object p1, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1}, LM0/d2;->e()V

    return-void

    :pswitch_4
    iget-object v0, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0, p1, v1}, LM0/X0;->i(LM0/N0;Z)V

    return-void

    :pswitch_5
    iget-object p1, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1}, LM0/d2;->H0()V

    return-void

    :pswitch_6
    iget-object p1, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1}, LM0/d2;->C0()V

    return-void

    :pswitch_7
    iget-object p1, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1}, LM0/d2;->P()V

    return-void

    :pswitch_8
    iget-object p1, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1}, LM0/d2;->M0()V

    return-void

    :pswitch_9
    iget-object v0, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {v1}, LM0/d2;->W0()LG/P;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {v0, p1}, LM0/X0;->u(LM0/N0;)LM0/N0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LM0/m2;

    const/4 v0, -0x6

    invoke-direct {p1, v0}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    :goto_0
    return-void

    :pswitch_a
    iget-object v0, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0, p1}, LM0/X0;->p(LM0/N0;)Lz1/x;

    return-void

    :pswitch_b
    iget-object p1, v2, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object v0, p1, LM0/X0;->t:LM0/d2;

    iget-boolean p1, p1, LM0/X0;->p:Z

    invoke-static {v0, p1}, LJ/W;->Q(LG/g0;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, LJ/W;->z(LG/g0;)Z

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, LM0/d2;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, LM0/d2;->h0()V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
