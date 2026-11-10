.class public final synthetic LM0/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/W1;

.field public final synthetic g:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(LM0/W1;Landroid/os/IBinder;I)V
    .locals 0

    iput p3, p0, LM0/A1;->e:I

    iput-object p1, p0, LM0/A1;->f:LM0/W1;

    iput-object p2, p0, LM0/A1;->g:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, LM0/A1;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/A1;->f:LM0/W1;

    iget-object v0, v0, LM0/W1;->b:LB/A;

    iget-object v1, p0, LM0/A1;->g:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, LB/A;->A(Ljava/lang/Object;)LM0/N0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, LB/A;->w(LM0/N0;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LM0/A1;->f:LM0/W1;

    iget-object v0, v0, LM0/W1;->b:LB/A;

    invoke-virtual {v0}, LB/A;->V()V

    iget-object v1, p0, LM0/A1;->g:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, LB/A;->A(Ljava/lang/Object;)LM0/N0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, LB/A;->Q(LM0/N0;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
