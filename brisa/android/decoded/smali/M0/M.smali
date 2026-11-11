.class public final synthetic LM0/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/l0;

.field public final synthetic g:LM0/i2;

.field public final synthetic h:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(LM0/l0;LM0/i2;Landroid/os/Bundle;I)V
    .locals 0

    iput p4, p0, LM0/M;->e:I

    iput-object p1, p0, LM0/M;->f:LM0/l0;

    iput-object p2, p0, LM0/M;->g:LM0/i2;

    iput-object p3, p0, LM0/M;->h:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LM0/q;I)V
    .locals 7

    iget v0, p0, LM0/M;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/M;->f:LM0/l0;

    iget-object v2, v0, LM0/l0;->c:LM0/y0;

    iget-object v0, p0, LM0/M;->g:LM0/i2;

    invoke-virtual {v0}, LM0/i2;->b()Landroid/os/Bundle;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v5, p0, LM0/M;->h:Landroid/os/Bundle;

    move-object v1, p1

    move v3, p2

    invoke-interface/range {v1 .. v6}, LM0/q;->J(LM0/o;ILandroid/os/Bundle;Landroid/os/Bundle;Z)V

    return-void

    :pswitch_0
    move-object v1, p1

    move v3, p2

    iget-object p1, p0, LM0/M;->f:LM0/l0;

    iget-object p1, p1, LM0/l0;->c:LM0/y0;

    iget-object p2, p0, LM0/M;->g:LM0/i2;

    invoke-virtual {p2}, LM0/i2;->b()Landroid/os/Bundle;

    move-result-object p2

    iget-object v0, p0, LM0/M;->h:Landroid/os/Bundle;

    invoke-interface {v1, p1, v3, p2, v0}, LM0/q;->R(LM0/o;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
