.class public final synthetic LM0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LG/e;


# direct methods
.method public synthetic constructor <init>(LG/e;I)V
    .locals 0

    iput p2, p0, LM0/e0;->e:I

    iput-object p1, p0, LM0/e0;->f:LG/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LM0/e0;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/e0;->f:LG/e;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->o(LG/e;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/e0;->f:LG/e;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->o(LG/e;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
