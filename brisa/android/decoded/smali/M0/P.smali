.class public final synthetic LM0/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/b2;


# direct methods
.method public synthetic constructor <init>(LM0/b2;I)V
    .locals 0

    iput p2, p0, LM0/P;->e:I

    iput-object p1, p0, LM0/P;->f:LM0/b2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LM0/P;->e:I

    check-cast p1, LG/e0;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget v0, v0, LM0/b2;->A:I

    invoke-interface {p1, v0}, LG/e0;->E(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->y:Z

    invoke-interface {p1, v0}, LG/e0;->p(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-object v0, v0, LM0/b2;->B:LG/T;

    invoke-interface {p1, v0}, LG/e0;->N(LG/T;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-object v0, v0, LM0/b2;->F:LG/y0;

    invoke-interface {p1, v0}, LG/e0;->k(LG/y0;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-object v0, v0, LM0/b2;->G:LG/w0;

    invoke-interface {p1, v0}, LG/e0;->n(LG/w0;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-wide v0, v0, LM0/b2;->E:J

    invoke-interface {p1, v0, v1}, LG/e0;->F(J)V

    return-void

    :pswitch_5
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-wide v0, v0, LM0/b2;->D:J

    invoke-interface {p1, v0, v1}, LG/e0;->m(J)V

    return-void

    :pswitch_6
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-wide v0, v0, LM0/b2;->C:J

    invoke-interface {p1, v0, v1}, LG/e0;->f(J)V

    return-void

    :pswitch_7
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-object v0, v0, LM0/b2;->l:LG/C0;

    invoke-interface {p1, v0}, LG/e0;->a(LG/C0;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget v1, v0, LM0/b2;->t:I

    iget-boolean v0, v0, LM0/b2;->u:Z

    invoke-interface {p1, v1, v0}, LG/e0;->T(IZ)V

    return-void

    :pswitch_9
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-object v0, v0, LM0/b2;->s:LG/p;

    invoke-interface {p1, v0}, LG/e0;->y(LG/p;)V

    return-void

    :pswitch_a
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-object v0, v0, LM0/b2;->r:LI/c;

    invoke-interface {p1, v0}, LG/e0;->M(LI/c;)V

    return-void

    :pswitch_b
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-object v0, v0, LM0/b2;->r:LI/c;

    iget-object v0, v0, LI/c;->a:Lu1/C0;

    invoke-interface {p1, v0}, LG/e0;->t(Ljava/util/List;)V

    return-void

    :pswitch_c
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget v0, v0, LM0/b2;->p:I

    invoke-interface {p1, v0}, LG/e0;->z(I)V

    return-void

    :pswitch_d
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-object v0, v0, LM0/b2;->q:LG/e;

    invoke-interface {p1, v0}, LG/e0;->o(LG/e;)V

    return-void

    :pswitch_e
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget v0, v0, LM0/b2;->n:F

    invoke-interface {p1, v0}, LG/e0;->x(F)V

    return-void

    :pswitch_f
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-object v0, v0, LM0/b2;->m:LG/T;

    invoke-interface {p1, v0}, LG/e0;->O(LG/T;)V

    return-void

    :pswitch_10
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->i:Z

    invoke-interface {p1, v0}, LG/e0;->I(Z)V

    return-void

    :pswitch_11
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget v0, v0, LM0/b2;->h:I

    invoke-interface {p1, v0}, LG/e0;->d(I)V

    return-void

    :pswitch_12
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-object v0, v0, LM0/b2;->g:LG/a0;

    invoke-interface {p1, v0}, LG/e0;->C(LG/a0;)V

    return-void

    :pswitch_13
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->x:Z

    invoke-interface {p1, v0}, LG/e0;->U(Z)V

    return-void

    :pswitch_14
    iget-object v0, p0, LM0/P;->f:LM0/b2;

    iget v0, v0, LM0/b2;->z:I

    invoke-interface {p1, v0}, LG/e0;->e(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_0
    .end packed-switch
.end method
