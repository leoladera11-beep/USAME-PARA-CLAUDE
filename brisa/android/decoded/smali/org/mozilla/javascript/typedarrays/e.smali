.class public final synthetic Lorg/mozilla/javascript/typedarrays/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V
    .locals 0

    iput p2, p0, Lorg/mozilla/javascript/typedarrays/e;->a:I

    iput-object p1, p0, Lorg/mozilla/javascript/typedarrays/e;->b:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/e;->b:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->x(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/e;->b:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->l(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/e;->b:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->P(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/e;->b:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->n(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
