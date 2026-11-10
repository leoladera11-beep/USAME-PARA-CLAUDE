.class public final synthetic LM0/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/l0;


# direct methods
.method public synthetic constructor <init>(LM0/l0;I)V
    .locals 0

    iput p2, p0, LM0/V;->e:I

    iput-object p1, p0, LM0/V;->f:LM0/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LM0/V;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/V;->f:LM0/l0;

    iget-object v1, v0, LM0/l0;->I:LM0/b2;

    if-eqz v1, :cond_0

    sget-object v2, LM0/Z1;->c:LM0/Z1;

    invoke-virtual {v0, v1, v2}, LM0/l0;->q1(LM0/b2;LM0/Z1;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LM0/V;->f:LM0/l0;

    iget-object v1, v0, LM0/l0;->o:LM0/i0;

    if-eqz v1, :cond_1

    iget-object v2, v0, LM0/l0;->d:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, v0, LM0/l0;->o:LM0/i0;

    :cond_1
    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    iget-object v0, v0, LM0/y0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
