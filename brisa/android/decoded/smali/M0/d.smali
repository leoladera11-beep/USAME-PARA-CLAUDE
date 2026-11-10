.class public final synthetic LM0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/X0;

.field public final synthetic g:LM0/N0;


# direct methods
.method public synthetic constructor <init>(LM0/X0;LM0/N0;I)V
    .locals 0

    iput p3, p0, LM0/d;->e:I

    iput-object p1, p0, LM0/d;->f:LM0/X0;

    iput-object p2, p0, LM0/d;->g:LM0/N0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LM0/d;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/d;->f:LM0/X0;

    iget-object v0, v0, LM0/X0;->g:LM0/W1;

    new-instance v1, LM0/E1;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, LM0/E1;-><init>(I)V

    invoke-static {v1}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v1

    iget-object v2, p0, LM0/d;->g:LM0/N0;

    const/high16 v3, -0x80000000

    const/16 v4, 0x9

    invoke-virtual {v0, v2, v3, v4, v1}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/d;->f:LM0/X0;

    iget-object v0, v0, LM0/X0;->g:LM0/W1;

    new-instance v1, LM0/E1;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, LM0/E1;-><init>(I)V

    invoke-static {v1}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v1

    iget-object v2, p0, LM0/d;->g:LM0/N0;

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v1}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LM0/d;->f:LM0/X0;

    iget-object v0, v0, LM0/X0;->g:LM0/W1;

    const/high16 v1, -0x80000000

    iget-object v2, p0, LM0/d;->g:LM0/N0;

    invoke-virtual {v0, v2, v1}, LM0/W1;->K0(LM0/N0;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, LM0/d;->f:LM0/X0;

    iget-object v0, v0, LM0/X0;->g:LM0/W1;

    const/high16 v1, -0x80000000

    iget-object v2, p0, LM0/d;->g:LM0/N0;

    invoke-virtual {v0, v2, v1}, LM0/W1;->K0(LM0/N0;I)V

    return-void

    :pswitch_3
    iget-object v0, p0, LM0/d;->f:LM0/X0;

    iget-object v0, v0, LM0/X0;->g:LM0/W1;

    new-instance v1, LM0/E1;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, LM0/E1;-><init>(I)V

    invoke-static {v1}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v1

    iget-object v2, p0, LM0/d;->g:LM0/N0;

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v1}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LM0/d;->f:LM0/X0;

    iget-object v0, v0, LM0/X0;->g:LM0/W1;

    new-instance v1, LM0/E1;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, LM0/E1;-><init>(I)V

    invoke-static {v1}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v1

    iget-object v2, p0, LM0/d;->g:LM0/N0;

    const/high16 v3, -0x80000000

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4, v1}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LM0/d;->f:LM0/X0;

    iget-object v0, v0, LM0/X0;->g:LM0/W1;

    new-instance v1, LM0/E1;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, LM0/E1;-><init>(I)V

    invoke-static {v1}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v1

    iget-object v2, p0, LM0/d;->g:LM0/N0;

    const/high16 v3, -0x80000000

    const/16 v4, 0xb

    invoke-virtual {v0, v2, v3, v4, v1}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LM0/d;->f:LM0/X0;

    iget-object v0, v0, LM0/X0;->g:LM0/W1;

    new-instance v1, LM0/E1;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LM0/E1;-><init>(I)V

    invoke-static {v1}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v1

    iget-object v2, p0, LM0/d;->g:LM0/N0;

    const/high16 v3, -0x80000000

    const/16 v4, 0xc

    invoke-virtual {v0, v2, v3, v4, v1}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LM0/d;->f:LM0/X0;

    iget-object v0, v0, LM0/X0;->g:LM0/W1;

    new-instance v1, LM0/E1;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LM0/E1;-><init>(I)V

    invoke-static {v1}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v1

    iget-object v2, p0, LM0/d;->g:LM0/N0;

    const/high16 v3, -0x80000000

    const/4 v4, 0x7

    invoke-virtual {v0, v2, v3, v4, v1}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LM0/d;->f:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, LM0/X0;->z:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, LM0/d;->g:LM0/N0;

    invoke-static {v1}, LM0/X0;->m(LM0/N0;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, LM0/X0;->k(LM0/N0;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, v0, LM0/X0;->z:Z

    :cond_2
    iget-object v0, v0, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    nop

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
