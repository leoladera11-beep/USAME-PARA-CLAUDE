.class public final synthetic LM0/D1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/S1;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/W1;


# direct methods
.method public synthetic constructor <init>(LM0/W1;I)V
    .locals 0

    iput p2, p0, LM0/D1;->e:I

    iput-object p1, p0, LM0/D1;->f:LM0/W1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(LM0/N0;I)V
    .locals 3

    iget v0, p0, LM0/D1;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LM0/E1;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    iget-object v1, p0, LM0/D1;->f:LM0/W1;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, p2, v2, v0}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_0
    new-instance v0, LM0/E1;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    iget-object v1, p0, LM0/D1;->f:LM0/W1;

    const/16 v2, 0x9

    invoke-virtual {v1, p1, p2, v2, v0}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_1
    new-instance v0, LM0/E1;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    iget-object v1, p0, LM0/D1;->f:LM0/W1;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2, v0}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_2
    new-instance v0, LM0/E1;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    iget-object v1, p0, LM0/D1;->f:LM0/W1;

    const/16 v2, 0xc

    invoke-virtual {v1, p1, p2, v2, v0}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_3
    new-instance v0, LM0/E1;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    iget-object v1, p0, LM0/D1;->f:LM0/W1;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, p2, v2, v0}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LM0/D1;->f:LM0/W1;

    invoke-virtual {v0, p1, p2}, LM0/W1;->K0(LM0/N0;I)V

    return-void

    :pswitch_5
    new-instance v0, LM0/E1;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    iget-object v1, p0, LM0/D1;->f:LM0/W1;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, p2, v2, v0}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
