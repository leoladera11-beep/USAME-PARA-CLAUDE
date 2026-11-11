.class public final synthetic LM0/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LG/T;


# direct methods
.method public synthetic constructor <init>(LG/T;I)V
    .locals 0

    iput p2, p0, LM0/L;->e:I

    iput-object p1, p0, LM0/L;->f:LG/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LM0/L;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/L;->f:LG/T;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->N(LG/T;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/L;->f:LG/T;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->O(LG/T;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
