.class public final synthetic LM0/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/k0;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(LM0/k0;III)V
    .locals 0

    iput p4, p0, LM0/j0;->e:I

    iput-object p1, p0, LM0/j0;->f:LM0/k0;

    iput p2, p0, LM0/j0;->g:I

    iput p3, p0, LM0/j0;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LM0/q;I)V
    .locals 3

    iget v0, p0, LM0/j0;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/j0;->f:LM0/k0;

    iget-object v0, v0, LM0/k0;->a:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    iget v1, p0, LM0/j0;->g:I

    iget v2, p0, LM0/j0;->h:I

    invoke-interface {p1, v0, p2, v1, v2}, LM0/q;->r0(LM0/o;III)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/j0;->f:LM0/k0;

    iget-object v0, v0, LM0/k0;->a:LM0/l0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    iget v1, p0, LM0/j0;->g:I

    iget v2, p0, LM0/j0;->h:I

    invoke-interface {p1, v0, p2, v1, v2}, LM0/q;->r0(LM0/o;III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
