.class public final synthetic LN/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LN/x;


# direct methods
.method public synthetic constructor <init>(LN/x;I)V
    .locals 0

    iput p2, p0, LN/p;->e:I

    iput-object p1, p0, LN/p;->f:LN/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LN/p;->e:I

    check-cast p1, LG/e0;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN/p;->f:LN/x;

    iget-object v0, v0, LN/x;->S:LG/T;

    invoke-interface {p1, v0}, LG/e0;->O(LG/T;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LN/p;->f:LN/x;

    iget-object v0, v0, LN/x;->Q:LG/c0;

    invoke-interface {p1, v0}, LG/e0;->D(LG/c0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
