.class public abstract Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
.super Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Lorg/mozilla/javascript/ExternalArrayData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;,
        Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;",
        "Ljava/util/List<",
        "TT;>;",
        "Ljava/util/RandomAccess;",
        "Lorg/mozilla/javascript/ExternalArrayData;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x44e04f1c7de6ed8aL


# instance fields
.field protected final length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;III)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p4}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    .line 4
    iput p3, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return-void
.end method

.method public static synthetic A(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$29(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$17(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$15(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$28(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$35(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$5(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$13(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$31(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$26(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Ljava/lang/Object;)D
    .locals 2

    invoke-static {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$sortTemporaryArray$36(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic K(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$9(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$12(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$27(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$33(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$14(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$0(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$18(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$11(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getElemForToString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;IZ)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p4, :cond_0

    const-string p4, "toLocaleString"

    invoke-static {p3, p4, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {p3, p1, p2, p4, v0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method public static synthetic h(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$25(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$32(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V
    .locals 7

    new-instance v2, Lorg/mozilla/javascript/typedarrays/e;

    const/4 v3, 0x1

    invoke-direct {v2, p3, v3}, Lorg/mozilla/javascript/typedarrays/e;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v3, "buffer"

    const/4 v4, 0x3

    invoke-virtual {p2, p0, v3, v2, v4}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    new-instance v2, Lorg/mozilla/javascript/typedarrays/e;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Lorg/mozilla/javascript/typedarrays/e;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v3, "byteLength"

    invoke-virtual {p2, p0, v3, v2, v4}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    new-instance v2, Lorg/mozilla/javascript/typedarrays/e;

    const/4 v3, 0x2

    invoke-direct {v2, p3, v3}, Lorg/mozilla/javascript/typedarrays/e;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v3, "byteOffset"

    invoke-virtual {p2, p0, v3, v2, v4}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    new-instance v2, Lorg/mozilla/javascript/typedarrays/e;

    const/4 v3, 0x3

    invoke-direct {v2, p3, v3}, Lorg/mozilla/javascript/typedarrays/e;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v3, "length"

    invoke-virtual {p2, p0, v3, v2, v4}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x13

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v2, "at"

    const/4 v3, 0x1

    move-object v1, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x14

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "copyWithin"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x15

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "entries"

    const/4 v3, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x16

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "every"

    const/4 v3, 0x1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x17

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "fill"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x18

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "filter"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x12

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "find"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x19

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "findIndex"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x1a

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "findLast"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x1b

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "findLastIndex"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x1c

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "forEach"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x1d

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "includes"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/f;

    const/4 v0, 0x0

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/f;-><init>(Ljava/lang/Object;I)V

    const-string v2, "indexOf"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/f;

    const/4 v0, 0x1

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/f;-><init>(Ljava/lang/Object;I)V

    const-string v2, "join"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/4 v0, 0x0

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "keys"

    const/4 v3, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/4 v0, 0x1

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "lastIndexOf"

    const/4 v3, 0x1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/4 v0, 0x2

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "map"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/4 v0, 0x3

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "reduce"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/4 v0, 0x4

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "reduceRight"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/4 v0, 0x5

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "reverse"

    const/4 v3, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/4 v0, 0x6

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "set"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/4 v0, 0x7

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "slice"

    const/4 v3, 0x2

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x8

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "some"

    const/4 v3, 0x1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x9

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "sort"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0xa

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "subarray"

    const/4 v3, 0x2

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0xb

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "toLocaleString"

    const/4 v3, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0xc

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "toReversed"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0xd

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "toSorted"

    const/4 v3, 0x1

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0xe

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "toString"

    const/4 v3, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0xf

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "values"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x10

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const-string v2, "with"

    const/4 v3, 0x2

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    new-instance v4, Lorg/mozilla/javascript/typedarrays/d;

    const/16 v0, 0x11

    invoke-direct {v4, p3, v0}, Lorg/mozilla/javascript/typedarrays/d;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;I)V

    const/4 v3, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/SymbolKey;ILorg/mozilla/javascript/Callable;II)V

    return-void
.end method

.method public static synthetic j(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$8(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static js_at(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    array-length p1, p3

    const/4 p4, 0x1

    const-wide/16 v0, 0x0

    if-lt p1, p4, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    double-to-long p3, p3

    goto :goto_0

    :cond_0
    move-wide p3, v0

    :goto_0
    cmp-long p1, p3, v0

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v2, p1

    add-long/2addr p3, v2

    :goto_1
    cmp-long p1, p3, v0

    if-ltz p1, :cond_3

    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p0, p0

    cmp-long p0, p3, p0

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    long-to-int p0, p3

    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static js_buffer(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    iget-object p0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    return-object p0
.end method

.method private static js_byteLength(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static js_byteOffset(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;I)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;",
            "I)",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>()V

    invoke-interface {p3, p0, v0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v1, p2, v0

    if-nez v1, :cond_1

    new-instance p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>()V

    invoke-interface {p3, p0, v0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v2, v1, Ljava/lang/Number;

    if-nez v2, :cond_13

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    goto/16 :goto_6

    :cond_2
    instance-of v2, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    iget p2, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {p0, p1, p2, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p0

    iget p1, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-interface {p3, p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    :goto_0
    iget p1, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, p1, :cond_3

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    instance-of v2, v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    if-eqz v2, :cond_b

    check-cast v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    const/4 p0, 0x1

    invoke-static {p2, p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_5

    aget-object p0, p2, p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    :cond_5
    const/4 p0, 0x2

    invoke-static {p2, p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_6

    aget-object p0, p2, p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p0

    mul-int/2addr p0, p4

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result p0

    sub-int/2addr p0, v0

    :goto_1
    if-ltz v0, :cond_a

    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result p1

    if-gt v0, p1, :cond_a

    if-ltz p0, :cond_9

    add-int p1, v0, p0

    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result p2

    if-gt p1, p2, :cond_9

    rem-int p1, v0, p4

    if-nez p1, :cond_8

    rem-int p1, p0, p4

    if-nez p1, :cond_7

    div-int/2addr p0, p4

    invoke-interface {p3, v1, v0, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "msg.typed.array.bad.buffer.length.byte.size"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "msg.typed.array.bad.offset.byte.size"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "msg.typed.array.bad.length"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "msg.typed.array.bad.offset"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_b
    instance-of p2, v1, Lorg/mozilla/javascript/NativeArray;

    if-eqz p2, :cond_10

    check-cast v1, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result p2

    invoke-static {p0, p1, p2, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p0

    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result p1

    invoke-interface {p3, p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    :goto_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_f

    invoke-virtual {v1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, p2, :cond_e

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p2, :cond_c

    goto :goto_3

    :cond_c
    instance-of p2, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz p2, :cond_d

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_d
    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_e
    :goto_3
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    return-object p0

    :cond_10
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isArrayObject(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->getArrayElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object p2

    array-length v1, p2

    invoke-static {p0, p1, v1, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p0

    array-length p1, p2

    invoke-interface {p3, p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    :goto_5
    array-length p1, p2

    if-ge v0, p1, :cond_11

    aget-object p1, p2, v0

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    return-object p0

    :cond_12
    const-string p0, "Error"

    const-string p1, "invalid argument"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_13
    :goto_6
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p0, p1, p2, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p0

    invoke-interface {p3, p0, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    return-object p0
.end method

.method private static js_copyWithin(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 10

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    array-length p1, p3

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v4, p1

    add-long/2addr v4, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v4, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_1
    array-length p1, p3

    const/4 p4, 0x2

    if-lt p1, p4, :cond_2

    aget-object p1, p3, p2

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v4

    double-to-long v4, v4

    cmp-long p1, v4, v2

    if-gez p1, :cond_3

    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v6, p1

    add-long/2addr v6, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_3

    :cond_3
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_3
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v6, p1

    array-length p1, p3

    const/4 v8, 0x3

    if-lt p1, v8, :cond_4

    aget-object p1, p3, p4

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    aget-object p1, p3, p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    double-to-long v6, p3

    :cond_4
    cmp-long p1, v6, v2

    if-gez p1, :cond_5

    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p3, p1

    add-long/2addr p3, v6

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    goto :goto_4

    :cond_5
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p3, p1

    invoke-static {v6, v7, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_4
    sub-long/2addr p3, v4

    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v6, p1

    sub-long/2addr v6, v0

    invoke-static {p3, p4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    cmp-long p1, v4, v0

    const-wide/16 v6, 0x1

    if-gez p1, :cond_6

    add-long v8, v4, p3

    cmp-long p1, v0, v8

    if-gez p1, :cond_6

    sub-long v4, v8, v6

    add-long/2addr v0, p3

    sub-long/2addr v0, v6

    const/4 p2, -0x1

    :cond_6
    :goto_5
    cmp-long p1, p3, v2

    if-lez p1, :cond_7

    long-to-int p1, v4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    long-to-int v8, v0

    invoke-virtual {p0, v8, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    int-to-long v8, p2

    add-long/2addr v4, v8

    add-long/2addr v0, v8

    sub-long/2addr p3, v6

    goto :goto_5

    :cond_7
    return-object p0
.end method

.method private static js_fill(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "Lorg/mozilla/javascript/Scriptable;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;",
            ")",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView<",
            "*>;"
        }
    .end annotation

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    array-length p1, p3

    const-wide/16 v0, 0x0

    const/4 p2, 0x2

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    double-to-long v2, v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    cmp-long p1, v2, v0

    if-gez p1, :cond_1

    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v4, p1

    add-long/2addr v4, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_1
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v4, p1

    array-length p1, p3

    const/4 p4, 0x3

    if-lt p1, p4, :cond_2

    aget-object p1, p3, p2

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    aget-object p1, p3, p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p1

    double-to-long v4, p1

    :cond_2
    cmp-long p1, v4, v0

    if-gez p1, :cond_3

    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p1, p1

    add-long/2addr p1, v4

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_2

    :cond_3
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p1, p1

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :goto_2
    array-length p4, p3

    if-lez p4, :cond_4

    const/4 p4, 0x0

    aget-object p3, p3, p4

    goto :goto_3

    :cond_4
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_3
    long-to-int p4, v2

    :goto_4
    int-to-long v0, p4

    cmp-long v0, v0, p1

    if-gez v0, :cond_5

    invoke-virtual {p0, p4, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_5
    return-object p0
.end method

.method private static js_includes(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Boolean;
    .locals 4

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-nez p2, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    array-length p2, p3

    const/4 p4, 0x2

    const-wide/16 v0, 0x0

    if-ge p2, p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x1

    aget-object p3, p3, p2

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    double-to-long p3, p3

    cmp-long v2, p3, v0

    if-gez v2, :cond_3

    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v2, v2

    add-long/2addr p3, v2

    cmp-long v2, p3, v0

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move-wide v0, p3

    :goto_1
    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    sub-int/2addr p3, p2

    int-to-long p2, p3

    cmp-long p2, v0, p2

    if-lez p2, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    :goto_2
    long-to-int p2, v0

    :goto_3
    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge p2, p3, :cond_6

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->sameZero(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static js_indexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 7

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    iget p4, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-nez p4, :cond_1

    goto :goto_4

    :cond_1
    array-length p4, p3

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    if-ge p4, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p4, 0x1

    aget-object p3, p3, p4

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v3

    double-to-long v3, v3

    cmp-long p3, v3, v1

    if-gez p3, :cond_3

    iget p3, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v5, p3

    add-long/2addr v3, v5

    cmp-long p3, v3, v1

    if-gez p3, :cond_3

    goto :goto_1

    :cond_3
    move-wide v1, v3

    :goto_1
    iget p3, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    sub-int/2addr p3, p4

    int-to-long p3, p3

    cmp-long p3, v1, p3

    if-lez p3, :cond_4

    goto :goto_4

    :cond_4
    :goto_2
    long-to-int p3, v1

    :goto_3
    iget p4, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge p3, p4, :cond_6

    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p4

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p4, v0, :cond_5

    invoke-static {p4, p2}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    int-to-long p0, p3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-object p0
.end method

.method private static js_join(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/String;
    .locals 4

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    array-length p1, p3

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-lt p1, p4, :cond_1

    aget-object p1, p3, p2

    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ","

    :goto_1
    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-nez p3, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    new-array p3, p3, [Ljava/lang/String;

    move v0, p2

    move v1, v0

    :goto_2
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    aput-object v2, p3, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    sub-int/2addr v2, p4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    mul-int/2addr p4, v2

    add-int/2addr p4, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_3
    iget p4, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-eq p2, p4, :cond_7

    if-eqz p2, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    aget-object p4, p3, p2

    if-eqz p4, :cond_6

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_lastIndexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 7

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    iget p4, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-nez p4, :cond_1

    goto :goto_4

    :cond_1
    array-length v0, p3

    const/4 v1, 0x2

    const-wide/16 v2, 0x1

    if-ge v0, v1, :cond_2

    int-to-long p3, p4

    sub-long/2addr p3, v2

    goto :goto_2

    :cond_2
    const/4 p4, 0x1

    aget-object p3, p3, p4

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    double-to-long p3, p3

    iget v0, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v0, v0

    cmp-long v4, p3, v0

    const-wide/16 v5, 0x0

    if-ltz v4, :cond_3

    sub-long/2addr v0, v2

    move-wide p3, v0

    goto :goto_1

    :cond_3
    cmp-long v2, p3, v5

    if-gez v2, :cond_4

    add-long/2addr p3, v0

    :cond_4
    :goto_1
    cmp-long v0, p3, v5

    if-gez v0, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    long-to-int p3, p3

    :goto_3
    if-ltz p3, :cond_7

    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p4

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p4, v0, :cond_6

    invoke-static {p4, p2}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    int-to-long p0, p3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-object p0
.end method

.method private static js_length(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static js_reverse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "Lorg/mozilla/javascript/Scriptable;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;",
            ")",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView<",
            "*>;"
        }
    .end annotation

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static js_set(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    .line 2
    array-length p1, p3

    if-lez p1, :cond_5

    const/4 p1, 0x0

    .line 3
    aget-object p2, p3, p1

    instance-of p4, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    .line 4
    invoke-static {p3, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_0

    aget-object p2, p3, v0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p1

    .line 5
    :goto_0
    aget-object p1, p3, p1

    check-cast p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->setRange(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    .line 7
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    .line 8
    :cond_1
    instance-of p4, p2, Lorg/mozilla/javascript/NativeArray;

    if-eqz p4, :cond_3

    .line 9
    invoke-static {p3, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_2

    aget-object p2, p3, v0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, p1

    .line 10
    :goto_1
    aget-object p1, p3, p1

    check-cast p1, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->setRange(Lorg/mozilla/javascript/NativeArray;I)V

    .line 11
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    .line 12
    :cond_3
    instance-of p2, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_4

    .line 13
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_4
    const/4 p2, 0x2

    .line 14
    invoke-static {p3, p2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p1

    aget-object p2, p3, v0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 16
    :cond_5
    const-string p0, "Error"

    const-string p1, "invalid arguments"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/Scriptable;
    .locals 7

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    array-length p4, p3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-nez p4, :cond_0

    iget p3, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p3, p3

    move-wide v3, v1

    goto :goto_1

    :cond_0
    aget-object p4, p3, v0

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v3

    iget p4, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v5, p4

    invoke-static {v3, v4, v5, v6}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->toSliceIndex(DJ)J

    move-result-wide v3

    array-length p4, p3

    const/4 v5, 0x1

    if-eq p4, v5, :cond_2

    aget-object p3, p3, v5

    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p3, p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    iget v5, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v5, v5

    invoke-static {p3, p4, v5, v6}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->toSliceIndex(DJ)J

    move-result-wide p3

    goto :goto_1

    :cond_2
    :goto_0
    iget p3, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long p3, p3

    :goto_1
    sub-long/2addr p3, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, p3, v5

    if-gtz v5, :cond_3

    invoke-static {p3, p4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    iget-object v0, p2, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {v0, v3, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "slice"

    invoke-direct {p2, p0, p1, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->typedArraySpeciesCreate(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "msg.arraylength.bad"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static js_sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p3, v0

    instance-of v1, v1, Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "msg.function.expected"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    invoke-direct {p2, p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->sortTemporaryArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    :goto_1
    iget p1, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, p1, :cond_2

    aget-object p1, p0, v0

    invoke-virtual {p2, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method private static js_subarray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p3, p4

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    const/4 v1, 0x1

    invoke-static {p3, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v1, p3, v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    :cond_1
    iget v1, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v2

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_3

    array-length p3, p3

    if-lez p3, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "Error"

    const-string p1, "invalid arguments"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    if-gez v0, :cond_4

    iget p3, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/2addr v0, p3

    :cond_4
    if-gez v1, :cond_5

    iget p3, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/2addr v1, p3

    :cond_5
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v0, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->getByteOffset()I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v1

    mul-int/2addr v1, p3

    add-int/2addr v1, v0

    iget-object p3, p2, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-virtual {p3}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private static js_toReversed(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    new-instance p3, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget p4, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v0

    mul-int/2addr v0, p4

    int-to-double v0, v0

    invoke-direct {p3, v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>(D)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p3, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p4, p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    :goto_0
    iget p1, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, p1, :cond_0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static js_toSorted(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 5

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    invoke-direct {p2, p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->sortTemporaryArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    new-instance p4, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget v0, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v1

    mul-int/2addr v1, v0

    int-to-double v0, v1

    invoke-direct {p4, v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>(D)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p4, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p1, v0, p4}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    :goto_0
    iget p1, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, p1, :cond_0

    aget-object p1, p3, v1

    invoke-interface {p0, v1, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static js_toString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Z)Ljava/lang/String;
    .locals 1

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget p4, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-lez p4, :cond_0

    const/4 p4, 0x0

    invoke-direct {p2, p0, p1, p4, p5}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getElemForToString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;IZ)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p4, 0x1

    :goto_0
    iget v0, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge p4, v0, :cond_1

    const/16 v0, 0x2c

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p2, p0, p1, p4, p5}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getElemForToString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;IZ)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_with(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;
    .locals 8

    invoke-interface {p4, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p2

    array-length p4, p3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-lez p4, :cond_0

    aget-object p4, p3, v2

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v3

    double-to-int p4, v3

    int-to-long v3, p4

    goto :goto_0

    :cond_0
    move-wide v3, v0

    :goto_0
    cmp-long p4, v3, v0

    if-ltz p4, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    iget p4, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v5, p4

    add-long/2addr v5, v3

    :goto_1
    array-length p4, p3

    const/4 v7, 0x1

    if-le p4, v7, :cond_2

    aget-object p3, p3, v7

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p3

    goto :goto_2

    :cond_2
    const-wide/16 p3, 0x0

    :goto_2
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    cmp-long p4, v5, v0

    if-ltz p4, :cond_5

    iget p4, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    int-to-long v0, p4

    cmp-long v0, v5, v0

    if-gez v0, :cond_5

    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v1

    mul-int/2addr v1, p4

    int-to-double v3, v1

    invoke-direct {v0, v3, v4}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>(D)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p4, v0}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    :goto_3
    iget p1, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v2, p1, :cond_4

    int-to-long v0, v2

    cmp-long p1, v0, v5

    if-nez p1, :cond_3

    move-object p1, p3

    goto :goto_4

    :cond_3
    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-interface {p0, v2, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-object p0

    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget p1, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    mul-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    sub-int/2addr p2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "msg.typed.array.index.out.of.bounds"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static synthetic k(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$24(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$2(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$0(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_buffer(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$1(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_byteLength(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$10(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$11(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$12(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$13(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$14(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FOR_EACH:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$15(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_includes(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$16(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_indexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$17(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_join(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$18(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    new-instance p1, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p3, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->KEYS:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p1, p2, p0, p3}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p1
.end method

.method private static synthetic lambda$init$19(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_lastIndexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$2(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_byteOffset(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$20(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->MAP:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, v0, p2, p3, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "map"

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->typedArraySpeciesCreate(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$21(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->REDUCE:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->reduceMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$22(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->REDUCE_RIGHT:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->reduceMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$23(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_reverse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$24(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$25(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$26(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->SOME:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$27(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$28(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_subarray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$29(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x1

    move-object v4, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_toString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$3(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_length(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$30(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_toReversed(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$31(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_toSorted(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$32(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    move-object v4, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_toString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$33(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    new-instance p1, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p3, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->VALUES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p1, p2, p0, p3}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p1
.end method

.method private static synthetic lambda$init$34(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_with(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$35(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    new-instance p1, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p3, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->VALUES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p1, p2, p0, p3}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p1
.end method

.method private static synthetic lambda$init$4(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_at(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$5(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_copyWithin(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$6(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    new-instance p1, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p3, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->ENTRIES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p1, p2, p0, p3}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p1
.end method

.method private static synthetic lambda$init$7(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->EVERY:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$8(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_fill(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$9(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p0

    sget-object p3, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FILTER:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {p1, p3, p2, p0, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "filter"

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->typedArraySpeciesCreate(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$sortTemporaryArray$36(Ljava/lang/Object;)D
    .locals 2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic m(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$30(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
    .locals 2

    int-to-double v0, p2

    int-to-double p2, p3

    mul-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "ArrayBuffer"

    invoke-virtual {p0, p1, p3, p2}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    return-object p0
.end method

.method public static synthetic n(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$1(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$4(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$34(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$6(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$16(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$21(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private setRange(Lorg/mozilla/javascript/NativeArray;I)V
    .locals 2

    if-ltz p2, :cond_2

    .line 15
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-gt p2, v0, :cond_2

    .line 16
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-gt v0, v1, :cond_1

    .line 17
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-virtual {p0, p2, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 19
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "msg.typed.array.bad.source.array"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 21
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "msg.typed.array.bad.offset"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private setRange(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView<",
            "*>;I)V"
        }
    .end annotation

    if-ltz p2, :cond_4

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-gt p2, v0, :cond_4

    .line 2
    iget v1, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    sub-int/2addr v0, p2

    const/4 v2, 0x0

    if-gt v1, v0, :cond_3

    .line 3
    iget-object v0, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object v3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    if-ne v0, v3, :cond_1

    .line 4
    new-array v0, v1, [Ljava/lang/Object;

    move v1, v2

    .line 5
    :goto_0
    iget v3, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v3, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    :goto_1
    iget v1, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v2, v1, :cond_2

    add-int v1, v2, p2

    .line 8
    aget-object v3, v0, v2

    invoke-virtual {p0, v1, v3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    :goto_2
    iget v0, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v2, v0, :cond_2

    add-int v0, v2, p2

    .line 10
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void

    .line 11
    :cond_3
    const-string p1, "msg.typed.array.bad.source.array"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 13
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "msg.typed.array.bad.offset"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private sortTemporaryArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    array-length v0, p3

    if-lez v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getSortComparator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/util/Comparator;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/brisa/local/i;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/brisa/local/i;-><init>(I)V

    invoke-static {p1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p2
.end method

.method public static synthetic t(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$23(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static toIndex(D)I
    .locals 3

    double-to-int v0, p0

    int-to-double v1, v0

    cmpl-double p0, v1, p0

    if-nez p0, :cond_0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private typedArraySpeciesCreate(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->speciesConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Constructable;)Lorg/mozilla/javascript/Constructable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    const-string p1, "msg.typed.array.ctor.incompatible"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public static synthetic u(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$10(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$19(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$20(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$3(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$7(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->lambda$init$22(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public checkIndex(I)Z
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public delete(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->canonicalNumericIndexString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    iget v2, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    move v1, v0

    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    .line 2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->canonicalNumericIndexString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->toIndex(D)I

    move-result v0

    if-ltz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayElement(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayLength()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return v0
.end method

.method public abstract getBytesPerElement()I
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2

    .line 2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->canonicalNumericIndexString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->toIndex(D)I

    move-result v0

    if-ltz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    return-object v0
.end method

.method public abstract js_get(I)Ljava/lang/Object;
.end method

.method public abstract js_set(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->canonicalNumericIndexString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->toIndex(D)I

    move-result p1

    if-ltz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setArrayElement(ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">([TU;)[TU;"
        }
    .end annotation

    .line 4
    array-length v0, p1

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    .line 6
    :goto_1
    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v1, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :catch_0
    new-instance p1, Ljava/lang/ArrayStoreException;

    invoke-direct {p1}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p1

    :cond_1
    return-object p1
.end method
