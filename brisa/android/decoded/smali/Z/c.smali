.class public final synthetic LZ/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LW0/c;


# direct methods
.method public synthetic constructor <init>(LW0/c;I)V
    .locals 0

    iput p2, p0, LZ/c;->e:I

    iput-object p1, p0, LZ/c;->f:LW0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LZ/c;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LZ/c;->f:LW0/c;

    iget-object v0, v0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, LZ/e;

    iget-object v0, v0, LZ/e;->i:LZ/I;

    invoke-interface {v0}, LZ/I;->c()V

    return-void

    :pswitch_0
    iget-object v0, p0, LZ/c;->f:LW0/c;

    iget-object v0, v0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, LZ/e;

    iget-object v0, v0, LZ/e;->i:LZ/I;

    invoke-interface {v0}, LZ/I;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
