.class public final synthetic LM0/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/l0;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(LM0/l0;III)V
    .locals 0

    iput p4, p0, LM0/N;->e:I

    iput-object p1, p0, LM0/N;->f:LM0/l0;

    iput p2, p0, LM0/N;->g:I

    iput p3, p0, LM0/N;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LM0/q;I)V
    .locals 3

    iget v0, p0, LM0/N;->e:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LM0/N;->h:I

    iget-object v1, p0, LM0/N;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    iget v2, p0, LM0/N;->g:I

    invoke-interface {p1, v1, p2, v2, v0}, LM0/q;->P(LM0/o;III)V

    return-void

    :pswitch_0
    iget v0, p0, LM0/N;->h:I

    iget-object v1, p0, LM0/N;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    iget v2, p0, LM0/N;->g:I

    invoke-interface {p1, v1, p2, v2, v0}, LM0/q;->t0(LM0/o;III)V

    return-void

    :pswitch_1
    iget v0, p0, LM0/N;->h:I

    iget-object v1, p0, LM0/N;->f:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    iget v2, p0, LM0/N;->g:I

    invoke-interface {p1, v1, p2, v2, v0}, LM0/q;->o0(LM0/o;III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
