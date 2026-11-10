.class public final synthetic LM0/Y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/t1;


# direct methods
.method public synthetic constructor <init>(LM0/t1;I)V
    .locals 0

    iput p2, p0, LM0/Y0;->e:I

    iput-object p1, p0, LM0/Y0;->f:LM0/t1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LM0/Y0;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/Y0;->f:LM0/t1;

    invoke-virtual {v0}, LM0/t1;->P()V

    return-void

    :pswitch_0
    new-instance v0, LM0/Y0;

    const/4 v1, 0x1

    iget-object v2, p0, LM0/Y0;->f:LM0/t1;

    invoke-direct {v0, v2, v1}, LM0/Y0;-><init>(LM0/t1;I)V

    invoke-virtual {v2, v0}, LM0/t1;->M(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
