.class public final synthetic LM0/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/t1;

.field public final synthetic g:LM0/d2;


# direct methods
.method public synthetic constructor <init>(LM0/t1;LM0/d2;I)V
    .locals 0

    iput p3, p0, LM0/h1;->e:I

    iput-object p1, p0, LM0/h1;->f:LM0/t1;

    iput-object p2, p0, LM0/h1;->g:LM0/d2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LM0/h1;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/h1;->f:LM0/t1;

    iget-object v1, v0, LM0/t1;->o:LN0/O;

    iget-object v2, p0, LM0/h1;->g:LM0/d2;

    invoke-virtual {v0, v2}, LM0/t1;->F(LM0/d2;)LN0/U;

    move-result-object v0

    invoke-virtual {v1, v0}, LN0/O;->j0(LN0/U;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/h1;->f:LM0/t1;

    iget-object v1, v0, LM0/t1;->o:LN0/O;

    iget-object v2, p0, LM0/h1;->g:LM0/d2;

    invoke-virtual {v0, v2}, LM0/t1;->F(LM0/d2;)LN0/U;

    move-result-object v3

    invoke-virtual {v1, v3}, LN0/O;->j0(LN0/U;)V

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    invoke-virtual {v2}, LM0/d2;->w()LG/c0;

    move-result-object v1

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, LG/c0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, LM0/d2;->p0()LG/q0;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, LG/q0;->a:LG/m0;

    :goto_0
    invoke-virtual {v0, v1}, LM0/r1;->t(LG/q0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
