.class public final synthetic LM0/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;
.implements LM0/h0;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/l0;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(LM0/l0;ZI)V
    .locals 0

    iput p3, p0, LM0/X;->e:I

    iput-object p1, p0, LM0/X;->f:LM0/l0;

    iput-boolean p2, p0, LM0/X;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM0/q;I)V
    .locals 2

    iget v0, p0, LM0/X;->e:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LM0/X;->g:Z

    iget-object v1, p0, LM0/X;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v1, p2, v0}, LM0/q;->l(LM0/o;IZ)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, LM0/X;->g:Z

    iget-object v1, p0, LM0/X;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v1, p2, v0}, LM0/q;->V(LM0/o;IZ)V

    return-void

    :pswitch_1
    iget-boolean v0, p0, LM0/X;->g:Z

    iget-object v1, p0, LM0/X;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v1, p2, v0}, LM0/q;->a(LM0/o;IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LM0/X;->e:I

    check-cast p1, LG/e0;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/X;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->q:LM0/b2;

    iget v0, v0, LM0/b2;->t:I

    iget-boolean v1, p0, LM0/X;->g:Z

    invoke-interface {p1, v0, v1}, LG/e0;->T(IZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/X;->f:LM0/l0;

    iget-object v0, v0, LM0/l0;->q:LM0/b2;

    iget v0, v0, LM0/b2;->t:I

    iget-boolean v1, p0, LM0/X;->g:Z

    invoke-interface {p1, v0, v1}, LG/e0;->T(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
