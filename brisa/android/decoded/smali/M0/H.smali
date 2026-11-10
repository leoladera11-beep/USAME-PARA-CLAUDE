.class public final synthetic LM0/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;
.implements LM0/x0;
.implements LM0/W0;
.implements LJ/k;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    iput p3, p0, LM0/H;->e:I

    iput p1, p0, LM0/H;->f:I

    iput p2, p0, LM0/H;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LM0/H;->e:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LM0/H;->g:I

    check-cast p1, LM0/d2;

    iget v1, p0, LM0/H;->f:I

    invoke-virtual {p1, v1, v0}, LM0/d2;->j0(II)V

    return-void

    :pswitch_0
    iget v0, p0, LM0/H;->g:I

    check-cast p1, LM0/d2;

    iget v1, p0, LM0/H;->f:I

    invoke-virtual {p1, v1, v0}, LM0/d2;->c0(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public b(LM0/l0;)V
    .locals 2

    iget v0, p0, LM0/H;->f:I

    iget v1, p0, LM0/H;->g:I

    invoke-virtual {p1, v0, v1}, LM0/l0;->r1(II)V

    return-void
.end method

.method public e(LM0/M0;I)V
    .locals 2

    iget v0, p0, LM0/H;->f:I

    iget v1, p0, LM0/H;->g:I

    invoke-interface {p1, p2, v0, v1}, LM0/M0;->g(III)V

    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LM0/H;->e:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LM0/H;->g:I

    check-cast p1, LG/e0;

    iget v1, p0, LM0/H;->f:I

    invoke-interface {p1, v1, v0}, LG/e0;->K(II)V

    return-void

    :pswitch_0
    iget v0, p0, LM0/H;->g:I

    check-cast p1, LG/e0;

    iget v1, p0, LM0/H;->f:I

    invoke-interface {p1, v1, v0}, LG/e0;->K(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
