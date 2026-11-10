.class public final synthetic LM0/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;
.implements LJ/k;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LG/a0;


# direct methods
.method public synthetic constructor <init>(LG/a0;I)V
    .locals 0

    iput p2, p0, LM0/Q;->e:I

    iput-object p1, p0, LM0/Q;->f:LG/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LM0/Q;->f:LG/a0;

    check-cast p1, LM0/d2;

    invoke-virtual {p1, v0}, LM0/d2;->d(LG/a0;)V

    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LM0/Q;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/Q;->f:LG/a0;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->C(LG/a0;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/Q;->f:LG/a0;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->C(LG/a0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
