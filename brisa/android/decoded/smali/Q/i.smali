.class public final synthetic LQ/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LQ/k;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LQ/k;LQ/l;I)V
    .locals 0

    iput p3, p0, LQ/i;->e:I

    iput-object p1, p0, LQ/i;->f:LQ/k;

    iput-object p2, p0, LQ/i;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LQ/i;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LQ/i;->f:LQ/k;

    iget v1, v0, LQ/k;->a:I

    iget-object v0, v0, LQ/k;->b:LU/A;

    iget-object v2, p0, LQ/i;->g:Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, LQ/l;->Q(ILU/A;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LQ/i;->f:LQ/k;

    iget v1, v0, LQ/k;->a:I

    iget-object v0, v0, LQ/k;->b:LU/A;

    iget-object v2, p0, LQ/i;->g:Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, LQ/l;->b(ILU/A;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
