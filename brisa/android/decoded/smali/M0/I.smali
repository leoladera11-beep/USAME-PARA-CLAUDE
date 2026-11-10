.class public final synthetic LM0/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;
.implements LJ/q;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/l0;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(LM0/l0;II)V
    .locals 0

    iput p3, p0, LM0/I;->e:I

    iput-object p1, p0, LM0/I;->f:LM0/l0;

    iput p2, p0, LM0/I;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM0/q;I)V
    .locals 2

    iget v0, p0, LM0/I;->e:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, LM0/I;->g:I

    iget-object v1, p0, LM0/I;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v1, p2, v0}, LM0/q;->C0(LM0/o;II)V

    return-void

    :pswitch_1
    iget v0, p0, LM0/I;->g:I

    iget-object v1, p0, LM0/I;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v1, p2, v0}, LM0/q;->n(LM0/o;II)V

    return-void

    :pswitch_2
    iget v0, p0, LM0/I;->g:I

    iget-object v1, p0, LM0/I;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v1, p2, v0}, LM0/q;->i0(LM0/o;II)V

    return-void

    :pswitch_3
    iget v0, p0, LM0/I;->g:I

    iget-object v1, p0, LM0/I;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v1, p2, v0}, LM0/q;->u(LM0/o;II)V

    return-void

    :pswitch_4
    iget v0, p0, LM0/I;->g:I

    iget-object v1, p0, LM0/I;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v1, p2, v0}, LM0/q;->Y(LM0/o;II)V

    return-void

    :pswitch_5
    iget v0, p0, LM0/I;->g:I

    iget-object v1, p0, LM0/I;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v1, p2, v0}, LM0/q;->b0(LM0/o;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public k(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LM0/I;->e:I

    check-cast p1, LG/e0;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, LM0/I;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->q:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->u:Z

    iget v1, p0, LM0/I;->g:I

    invoke-interface {p1, v1, v0}, LG/e0;->T(IZ)V

    return-void

    :pswitch_1
    iget-object v0, p0, LM0/I;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->q:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->u:Z

    iget v1, p0, LM0/I;->g:I

    invoke-interface {p1, v1, v0}, LG/e0;->T(IZ)V

    return-void

    :pswitch_2
    iget-object v0, p0, LM0/I;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->q:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->u:Z

    iget v1, p0, LM0/I;->g:I

    invoke-interface {p1, v1, v0}, LG/e0;->T(IZ)V

    return-void

    :pswitch_3
    iget-object v0, p0, LM0/I;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->q:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->u:Z

    iget v1, p0, LM0/I;->g:I

    invoke-interface {p1, v1, v0}, LG/e0;->T(IZ)V

    return-void

    :pswitch_4
    iget-object v0, p0, LM0/I;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->q:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->u:Z

    iget v1, p0, LM0/I;->g:I

    invoke-interface {p1, v1, v0}, LG/e0;->T(IZ)V

    return-void

    :pswitch_5
    iget-object v0, p0, LM0/I;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->q:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->u:Z

    iget v1, p0, LM0/I;->g:I

    invoke-interface {p1, v1, v0}, LG/e0;->T(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
