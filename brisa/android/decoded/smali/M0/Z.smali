.class public final synthetic LM0/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;
.implements LJ/k;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, LM0/Z;->e:I

    iput-boolean p2, p0, LM0/Z;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LM0/Z;->e:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LM0/Z;->f:Z

    check-cast p1, LM0/d2;

    invoke-virtual {p1, v0}, LM0/d2;->B(Z)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, LM0/Z;->f:Z

    check-cast p1, LM0/d2;

    invoke-virtual {p1, v0}, LM0/d2;->d0(Z)V

    return-void

    :pswitch_1
    iget-boolean v0, p0, LM0/Z;->f:Z

    check-cast p1, LM0/d2;

    invoke-virtual {p1, v0}, LM0/d2;->l(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LM0/Z;->e:I

    sparse-switch v0, :sswitch_data_0

    iget-boolean v0, p0, LM0/Z;->f:Z

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->r(Z)V

    return-void

    :sswitch_0
    iget-boolean v0, p0, LM0/Z;->f:Z

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->I(Z)V

    return-void

    :sswitch_1
    iget-boolean v0, p0, LM0/Z;->f:Z

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->I(Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method
