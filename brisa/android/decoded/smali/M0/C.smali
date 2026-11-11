.class public final synthetic LM0/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;
.implements LJ/q;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/l0;


# direct methods
.method public synthetic constructor <init>(LM0/l0;I)V
    .locals 0

    iput p2, p0, LM0/C;->e:I

    iput-object p1, p0, LM0/C;->f:LM0/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM0/q;I)V
    .locals 3

    iget v0, p0, LM0/C;->e:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->A(LM0/o;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->K(LM0/o;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->h(LM0/o;I)V

    return-void

    :pswitch_3
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->N(LM0/o;I)V

    return-void

    :pswitch_4
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v1, v0, LM0/l0;->c:LM0/y0;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    invoke-interface {p1, v1, p2}, LM0/q;->t(LM0/o;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v1, p2, v0}, LM0/q;->x0(LM0/o;IF)V

    :goto_0
    return-void

    :pswitch_5
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->g0(LM0/o;I)V

    return-void

    :pswitch_6
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->x(LM0/o;I)V

    return-void

    :pswitch_7
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->y(LM0/o;I)V

    return-void

    :pswitch_8
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->X(LM0/o;I)V

    return-void

    :pswitch_9
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->D0(LM0/o;I)V

    return-void

    :pswitch_a
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->w0(LM0/o;I)V

    return-void

    :pswitch_b
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->U(LM0/o;I)V

    return-void

    :pswitch_c
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->z0(LM0/o;I)V

    return-void

    :pswitch_d
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->s(LM0/o;I)V

    return-void

    :pswitch_e
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2}, LM0/q;->B(LM0/o;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
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
    .end packed-switch
.end method

.method public k(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LM0/C;->e:I

    check-cast p1, LG/e0;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->z:LG/c0;

    invoke-interface {p1, v0}, LG/e0;->D(LG/c0;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/C;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->z:LG/c0;

    invoke-interface {p1, v0}, LG/e0;->D(LG/c0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
