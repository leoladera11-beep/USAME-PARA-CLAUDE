.class Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolvingFunctions"
.end annotation


# instance fields
.field private alreadyResolved:Z

.field reject:Lorg/mozilla/javascript/LambdaFunction;

.field resolve:Lorg/mozilla/javascript/LambdaFunction;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->alreadyResolved:Z

    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v1, Lorg/mozilla/javascript/D;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lorg/mozilla/javascript/D;-><init>(Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;Lorg/mozilla/javascript/NativePromise;I)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->resolve:Lorg/mozilla/javascript/LambdaFunction;

    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v1, Lorg/mozilla/javascript/D;

    const/4 v3, 0x1

    invoke-direct {v1, p0, p2, v3}, Lorg/mozilla/javascript/D;-><init>(Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;Lorg/mozilla/javascript/NativePromise;I)V

    invoke-direct {v0, p1, v2, v1}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->reject:Lorg/mozilla/javascript/LambdaFunction;

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->lambda$new$1(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->lambda$new$0(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->lambda$resolve$2(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    array-length p4, p5

    if-lez p4, :cond_0

    const/4 p4, 0x0

    aget-object p4, p5, p4

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    invoke-direct {p0, p2, p3, p1, p4}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$new$1(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    array-length p4, p5

    if-lez p4, :cond_0

    const/4 p4, 0x0

    aget-object p4, p5, p4

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    invoke-direct {p0, p2, p3, p1, p4}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->reject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$resolve$2(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Lorg/mozilla/javascript/Callable;

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/NativePromise;->z(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Callable;)V

    return-void
.end method

.method private reject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->alreadyResolved:Z

    if-eqz v0, :cond_0

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->alreadyResolved:Z

    invoke-static {p1, p2, p3, p4}, Lorg/mozilla/javascript/NativePromise;->B(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->alreadyResolved:Z

    if-eqz v0, :cond_0

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->alreadyResolved:Z

    if-ne p4, p3, :cond_1

    sget-object p4, Lorg/mozilla/javascript/TopLevel$NativeErrors;->TypeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const-string v0, "No promise self-resolution"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->newNativeError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$NativeErrors;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lorg/mozilla/javascript/NativePromise;->B(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2, p3, p4}, Lorg/mozilla/javascript/NativePromise;->A(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "then"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Callable;

    if-nez v1, :cond_3

    invoke-static {p1, p2, p3, p4}, Lorg/mozilla/javascript/NativePromise;->A(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    move-object v1, v0

    new-instance v0, Lorg/mozilla/javascript/E;

    move-object v5, v1

    check-cast v5, Lorg/mozilla/javascript/Callable;

    move-object v2, p1

    move-object v3, p2

    move-object v1, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/E;-><init>(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Callable;)V

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/Context;->enqueueMicrotask(Ljava/lang/Runnable;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method
