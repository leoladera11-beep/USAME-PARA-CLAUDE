.class public final synthetic LM0/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/l0;

.field public final synthetic g:F


# direct methods
.method public synthetic constructor <init>(LM0/l0;FI)V
    .locals 0

    iput p3, p0, LM0/U;->e:I

    iput-object p1, p0, LM0/U;->f:LM0/l0;

    iput p2, p0, LM0/U;->g:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LM0/q;I)V
    .locals 3

    iget v0, p0, LM0/U;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/U;->f:LM0/l0;

    iget-object v1, v0, LM0/l0;->c:LM0/y0;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    invoke-interface {p1, v1, p2}, LM0/q;->l0(LM0/o;I)V

    goto :goto_0

    :cond_0
    iget v0, p0, LM0/U;->g:F

    invoke-interface {p1, v1, p2, v0}, LM0/q;->x0(LM0/o;IF)V

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, LM0/U;->g:F

    iget-object v1, p0, LM0/U;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v1, p2, v0}, LM0/q;->x0(LM0/o;IF)V

    return-void

    :pswitch_1
    iget v0, p0, LM0/U;->g:F

    iget-object v1, p0, LM0/U;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v1, p2, v0}, LM0/q;->s0(LM0/o;IF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
