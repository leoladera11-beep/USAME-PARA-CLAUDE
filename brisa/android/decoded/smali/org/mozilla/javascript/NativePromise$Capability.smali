.class Lorg/mozilla/javascript/NativePromise$Capability;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capability"
.end annotation


# instance fields
.field promise:Ljava/lang/Object;

.field private rawReject:Ljava/lang/Object;

.field private rawResolve:Ljava/lang/Object;

.field reject:Lorg/mozilla/javascript/Callable;

.field resolve:Lorg/mozilla/javascript/Callable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawResolve:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawReject:Ljava/lang/Object;

    instance-of v0, p3, Lorg/mozilla/javascript/Constructable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v2, Lorg/mozilla/javascript/B;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/mozilla/javascript/B;-><init>(Ljava/lang/Object;I)V

    const/4 v3, 0x2

    invoke-direct {v0, p2, v3, v2}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    check-cast p3, Lorg/mozilla/javascript/Constructable;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    iget-object p1, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawResolve:Ljava/lang/Object;

    instance-of p2, p1, Lorg/mozilla/javascript/Callable;

    const-string p3, "msg.function.expected"

    if-eqz p2, :cond_1

    check-cast p1, Lorg/mozilla/javascript/Callable;

    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$Capability;->resolve:Lorg/mozilla/javascript/Callable;

    iget-object p1, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawReject:Ljava/lang/Object;

    instance-of p2, p1, Lorg/mozilla/javascript/Callable;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/mozilla/javascript/Callable;

    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    return-void

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "msg.constructor.expected"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public static synthetic a(Lorg/mozilla/javascript/NativePromise$Capability;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/NativePromise$Capability;->lambda$new$0(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private executor([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawResolve:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawReject:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawResolve:Ljava/lang/Object;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    aget-object p1, p1, v1

    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawReject:Ljava/lang/Object;

    :cond_1
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_2
    const-string p1, "msg.promise.capability.state"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private synthetic lambda$new$0(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p4}, Lorg/mozilla/javascript/NativePromise$Capability;->executor([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
