.class public Lorg/mozilla/javascript/typedarrays/NativeDataView;
.super Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;
.source "SourceFile"


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "DataView"

.field private static final serialVersionUID:J = 0x13d128f92f39bdf8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-void
.end method

.method public static synthetic A(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$17(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static determinePos([Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "offset out of range"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_1
    return v0
.end method

.method public static synthetic h(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$14(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$12(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 7

    new-instance v0, Lorg/mozilla/javascript/LambdaConstructor;

    new-instance v5, Lorg/mozilla/javascript/typedarrays/a;

    const/4 v1, 0x1

    invoke-direct {v5, v1}, Lorg/mozilla/javascript/typedarrays/a;-><init>(I)V

    const-string v2, "DataView"

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LambdaConstructor;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILorg/mozilla/javascript/Constructable;)V

    const/4 p1, 0x7

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/BaseFunction;->setPrototypePropertyAttributes(I)V

    new-instance p1, LJ2/c;

    const/16 v2, 0x9

    invoke-direct {p1, v2}, LJ2/c;-><init>(I)V

    const-string v2, "buffer"

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v2, p1, v3}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    new-instance p1, LJ2/c;

    const/16 v2, 0xa

    invoke-direct {p1, v2}, LJ2/c;-><init>(I)V

    const-string v2, "byteLength"

    invoke-virtual {v0, p0, v2, p1, v3}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    new-instance p1, LJ2/c;

    const/16 v2, 0xb

    invoke-direct {p1, v2}, LJ2/c;-><init>(I)V

    const-string v2, "byteOffset"

    invoke-virtual {v0, p0, v2, p1, v3}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/4 p0, 0x2

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v2, "getFloat32"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/4 p0, 0x3

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "getFloat64"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/4 p0, 0x4

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "getInt8"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/4 p0, 0x5

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "getInt16"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/4 p0, 0x6

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "getInt32"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/4 p0, 0x7

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "getUint8"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/16 p0, 0x8

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "getUint16"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/16 p0, 0x9

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "getUint32"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/16 p0, 0xa

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "setFloat32"

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/16 p0, 0xb

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "setFloat64"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/16 p0, 0xc

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "setInt8"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/16 p0, 0xd

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "setInt16"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/16 p0, 0xe

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "setInt32"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/16 p0, 0xf

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "setUint8"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/16 p0, 0x10

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "setUint16"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/typedarrays/b;

    const/4 p0, 0x1

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/typedarrays/b;-><init>(I)V

    const-string v2, "setUint32"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    const-string p0, "DataView"

    const/4 p1, 0x2

    invoke-static {v1, p0, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    return-void
.end method

.method public static synthetic j(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$4(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeDataView;
    .locals 3

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_6

    aget-object p1, p2, p0

    instance-of v0, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    const-string v2, "offset out of range"

    if-eqz v1, :cond_1

    aget-object p0, p2, v0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    aget-object p2, p2, v0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result p2

    sub-int/2addr p2, p0

    :goto_1
    if-ltz p2, :cond_5

    if-ltz p0, :cond_4

    add-int v0, p0, p2

    invoke-virtual {p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result v1

    if-gt v0, v1, :cond_4

    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeDataView;

    invoke-direct {v0, p1, p0, p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v0

    :cond_4
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_5
    const-string p0, "length out of range"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_6
    const-string p0, "TypeError"

    const-string p1, "Missing parameters"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private js_getFloat(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->determinePos([Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->rangeCheck(II)V

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le p1, v1, :cond_0

    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, v1}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readFloat64([BIZ)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, v1}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readFloat32([BIZ)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method private js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->determinePos([Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->rangeCheck(II)V

    const/4 v1, 0x1

    invoke-static {p3, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le p1, v1, :cond_0

    aget-object p3, p3, v1

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readInt32([BIZ)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readUint32([BIZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readInt16([BIZ)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readUint16([BIZ)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz p2, :cond_6

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readInt8([BI)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readUint8([BI)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private js_setFloat(I[Ljava/lang/Object;)V
    .locals 6

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->determinePos([Ljava/lang/Object;)I

    move-result v0

    const-string v1, "offset out of range"

    if-ltz v0, :cond_5

    const/4 v2, 0x2

    invoke-static {p2, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-le p1, v4, :cond_0

    aget-object v2, p2, v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-le v3, v4, :cond_1

    aget-object p2, p2, v4

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    goto :goto_1

    :cond_1
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    :goto_1
    add-int p2, v0, p1

    iget v5, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p2, v5, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/16 p2, 0x8

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, v3, v4, v2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeFloat64([BIDZ)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, v3, v4, v2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeFloat32([BIDZ)V

    return-void

    :cond_4
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_5
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private js_setInt(IZ[Ljava/lang/Object;)V
    .locals 7

    invoke-static {p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->determinePos([Ljava/lang/Object;)I

    move-result v0

    const-string v1, "offset out of range"

    if-ltz v0, :cond_e

    const/4 v2, 0x2

    invoke-static {p3, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-le p1, v4, :cond_0

    aget-object v3, p3, v2

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    array-length v6, p3

    if-le v6, v4, :cond_1

    aget-object v5, p3, v4

    :cond_1
    if-eq p1, v4, :cond_a

    if-eq p1, v2, :cond_6

    const/4 p3, 0x4

    if-ne p1, p3, :cond_5

    if-eqz p2, :cond_3

    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toInt32(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2, v3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeInt32([BIIZ)V

    return-void

    :cond_2
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint32(Ljava/lang/Object;)J

    move-result-wide p2

    add-int/2addr p1, v0

    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, v2, :cond_4

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr v1, v0

    invoke-static {p1, v1, p2, p3, v3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeUint32([BIJZ)V

    return-void

    :cond_4
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    if-eqz p2, :cond_8

    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toInt16(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_7

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2, v3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeInt16([BIIZ)V

    return-void

    :cond_7
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint16(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_9

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2, v3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeUint16([BIIZ)V

    return-void

    :cond_9
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_a
    if-eqz p2, :cond_c

    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toInt8(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_b

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeInt8([BII)V

    return-void

    :cond_b
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_c
    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint8(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_d

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeUint8([BII)V

    return-void

    :cond_d
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_e
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public static synthetic k(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$2(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeDataView;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$0(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    iget-object p0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    return-object p0
.end method

.method private static synthetic lambda$init$1(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$10(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$11(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-direct {p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setFloat(I[Ljava/lang/Object;)V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static synthetic lambda$init$12(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-direct {p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setFloat(I[Ljava/lang/Object;)V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static synthetic lambda$init$13(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static synthetic lambda$init$14(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static synthetic lambda$init$15(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x4

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static synthetic lambda$init$16(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static synthetic lambda$init$17(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static synthetic lambda$init$18(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static synthetic lambda$init$2(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    iget p0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$3(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-direct {p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getFloat(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$4(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-direct {p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getFloat(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$5(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$6(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$7(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x4

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$8(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$9(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$1(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$16(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$18(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$5(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$15(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$11(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private rangeCheck(II)V
    .locals 0

    if-ltz p1, :cond_0

    add-int/2addr p1, p2

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    const-string p1, "offset out of range"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeDataView;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/typedarrays/NativeDataView;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/LambdaConstructor;->convertThisObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/typedarrays/NativeDataView;

    return-object p0
.end method

.method public static synthetic s(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$13(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$0(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$7(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$9(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$6(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$10(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$3(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->lambda$init$8(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "DataView"

    return-object v0
.end method
