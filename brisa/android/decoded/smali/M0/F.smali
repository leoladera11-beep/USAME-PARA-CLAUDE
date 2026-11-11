.class public final synthetic LM0/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/l0;

.field public final synthetic g:LG/P;


# direct methods
.method public synthetic constructor <init>(LM0/l0;LG/P;I)V
    .locals 0

    iput p3, p0, LM0/F;->e:I

    iput-object p1, p0, LM0/F;->f:LM0/l0;

    iput-object p2, p0, LM0/F;->g:LG/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LM0/q;I)V
    .locals 4

    iget v0, p0, LM0/F;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/F;->f:LM0/l0;

    iget-object v1, v0, LM0/l0;->c:LM0/y0;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v0

    const/4 v2, 0x1

    iget-object v3, p0, LM0/F;->g:LG/P;

    invoke-virtual {v3, v0, v2}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v1, p2, v0}, LM0/q;->o(LM0/o;ILandroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/F;->f:LM0/l0;

    iget-object v1, v0, LM0/l0;->c:LM0/y0;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v0

    iget-object v2, p0, LM0/F;->g:LG/P;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v1, p2, v0, v3}, LM0/q;->L(LM0/o;ILandroid/os/Bundle;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
