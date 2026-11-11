.class Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromiseAllResolver"
.end annotation


# static fields
.field private static final MAX_PROMISES:I = 0x200000


# instance fields
.field capability:Lorg/mozilla/javascript/NativePromise$Capability;

.field failFast:Z

.field iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

.field remainingElements:I

.field thisObj:Lorg/mozilla/javascript/Scriptable;

.field final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/IteratorLikeIterable$Itr;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativePromise$Capability;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->values:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    iput-object p2, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iput-boolean p4, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->failFast:Z

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->lambda$resolve$0(Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->lambda$resolve$1(Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$resolve$0(Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    array-length p4, p5

    if-lez p4, :cond_0

    const/4 p4, 0x0

    aget-object p4, p5, p4

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    iget-boolean p5, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->failFast:Z

    if-nez p5, :cond_1

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p5

    const-string v0, "status"

    const-string v1, "fulfilled"

    invoke-interface {p5, v0, p5, v1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string v0, "value"

    invoke-interface {p5, v0, p5, p4}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    move-object p4, p5

    :cond_1
    invoke-virtual {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$resolve$1(Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    const-string v0, "status"

    const-string v1, " rejected"

    invoke-interface {p4, v0, p4, v1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    array-length v0, p5

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p5, p5, v0

    goto :goto_0

    :cond_0
    sget-object p5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    const-string v0, "reason"

    invoke-interface {p4, v0, p4, p5}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p3, p4, p0}, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public finalResolution(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object v1, v1, Lorg/mozilla/javascript/NativePromise$Capability;->resolve:Lorg/mozilla/javascript/Callable;

    sget-object v2, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, p2, v2, v0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->thisObj:Lorg/mozilla/javascript/Scriptable;

    const-string v1, "resolve"

    invoke-static {v0, v1, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/high16 v4, 0x200000

    if-eq v3, v4, :cond_4

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    invoke-virtual {v6}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    invoke-virtual {v7}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->next()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v7, v4

    :goto_1
    if-nez v6, :cond_2

    iget v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->finalResolution(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object p1, p1, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    return-object p1

    :cond_2
    iget-object v6, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->values:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, p1, p2, v1, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v6, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;

    invoke-direct {v6, v3}, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;-><init>(I)V

    new-instance v7, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v8, Lorg/mozilla/javascript/C;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v6, v9}, Lorg/mozilla/javascript/C;-><init>(Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;I)V

    invoke-direct {v7, p2, v5, v8}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    iget-object v8, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object v8, v8, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    iget-boolean v9, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->failFast:Z

    if-nez v9, :cond_3

    new-instance v8, Lorg/mozilla/javascript/LambdaFunction;

    new-instance v9, Lorg/mozilla/javascript/C;

    const/4 v10, 0x1

    invoke-direct {v9, p0, v6, v10}, Lorg/mozilla/javascript/C;-><init>(Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;I)V

    invoke-direct {v8, p2, v5, v9}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    const/4 v6, 0x3

    invoke-virtual {v8, v6}, Lorg/mozilla/javascript/BaseFunction;->setStandardPropertyAttributes(I)V

    :cond_3
    iget v6, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    const-string v5, "then"

    invoke-static {v4, v5, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, p1, p2, v5, v6}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    iget-object p2, p0, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->iterator:Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    invoke-virtual {p2, v5}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->setDone(Z)V

    throw p1

    :cond_4
    const-string p1, "msg.promise.all.toobig"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->rangeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method
