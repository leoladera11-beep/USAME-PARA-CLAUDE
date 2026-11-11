.class public final synthetic LN/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LN/X;


# direct methods
.method public synthetic constructor <init>(LN/X;I)V
    .locals 0

    iput p2, p0, LN/o;->e:I

    iput-object p1, p0, LN/o;->f:LN/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LN/o;->e:I

    check-cast p1, LG/e0;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN/o;->f:LN/X;

    iget-object v0, v0, LN/X;->i:LW/t;

    iget-object v0, v0, LW/t;->d:LG/y0;

    invoke-interface {p1, v0}, LG/e0;->k(LG/y0;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LN/o;->f:LN/X;

    iget-object v0, v0, LN/X;->f:LN/k;

    invoke-interface {p1, v0}, LG/e0;->G(LG/Z;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LN/o;->f:LN/X;

    iget-object v0, v0, LN/X;->f:LN/k;

    invoke-interface {p1, v0}, LG/e0;->w(LG/Z;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LN/o;->f:LN/X;

    iget-object v0, v0, LN/X;->o:LG/a0;

    invoke-interface {p1, v0}, LG/e0;->C(LG/a0;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LN/o;->f:LN/X;

    invoke-virtual {v0}, LN/X;->m()Z

    move-result v0

    invoke-interface {p1, v0}, LG/e0;->U(Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, LN/o;->f:LN/X;

    iget v0, v0, LN/X;->n:I

    invoke-interface {p1, v0}, LG/e0;->e(I)V

    return-void

    :pswitch_5
    iget-object v0, p0, LN/o;->f:LN/X;

    iget-boolean v1, v0, LN/X;->l:Z

    iget v0, v0, LN/X;->m:I

    invoke-interface {p1, v0, v1}, LG/e0;->v(IZ)V

    return-void

    :pswitch_6
    iget-object v0, p0, LN/o;->f:LN/X;

    iget v0, v0, LN/X;->e:I

    invoke-interface {p1, v0}, LG/e0;->E(I)V

    return-void

    :pswitch_7
    iget-object v0, p0, LN/o;->f:LN/X;

    iget-boolean v1, v0, LN/X;->l:Z

    iget v0, v0, LN/X;->e:I

    invoke-interface {p1, v0, v1}, LG/e0;->u(IZ)V

    return-void

    :pswitch_8
    iget-object v0, p0, LN/o;->f:LN/X;

    iget-boolean v1, v0, LN/X;->g:Z

    invoke-interface {p1, v1}, LG/e0;->h(Z)V

    iget-boolean v0, v0, LN/X;->g:Z

    invoke-interface {p1, v0}, LG/e0;->p(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
