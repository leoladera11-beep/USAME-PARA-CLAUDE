.class public final synthetic LM0/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LG/Z;


# direct methods
.method public synthetic constructor <init>(ILG/Z;)V
    .locals 0

    .line 1
    iput p1, p0, LM0/T;->e:I

    iput-object p2, p0, LM0/T;->f:LG/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LO/a;LG/Z;)V
    .locals 0

    .line 2
    const/4 p1, 0x4

    iput p1, p0, LM0/T;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LM0/T;->f:LG/Z;

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LM0/T;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LO/i;

    iget-object v0, p0, LM0/T;->f:LG/Z;

    iput-object v0, p1, LO/i;->o:LG/Z;

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/T;->f:LG/Z;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->G(LG/Z;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LM0/T;->f:LG/Z;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->w(LG/Z;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LM0/T;->f:LG/Z;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->G(LG/Z;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LM0/T;->f:LG/Z;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->w(LG/Z;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
