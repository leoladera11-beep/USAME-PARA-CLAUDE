.class public final synthetic Lorg/mozilla/javascript/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(ILjava/io/Serializable;)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/q;->a:I

    iput-object p2, p0, Lorg/mozilla/javascript/q;->b:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/mozilla/javascript/q;->b:Ljava/io/Serializable;

    check-cast v0, Lorg/mozilla/javascript/NativeError;

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeError;->getStackDelegated()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lorg/mozilla/javascript/q;->b:Ljava/io/Serializable;

    check-cast v0, Lorg/mozilla/javascript/NativeError$ProtoProps;

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeError$ProtoProps;->getPrepareStackTrace()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lorg/mozilla/javascript/q;->b:Ljava/io/Serializable;

    check-cast v0, Lorg/mozilla/javascript/NativeError$ProtoProps;

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeError$ProtoProps;->getStackTraceLimit()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
