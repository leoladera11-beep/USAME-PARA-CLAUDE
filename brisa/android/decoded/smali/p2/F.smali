.class public final synthetic Lp2/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lp2/F;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lp2/F;->a:I

    check-cast p1, Lp2/E;

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_3
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_5
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_7
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_8
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_9
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_a
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_b
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_c
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lp2/E;->f(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
