.class public Lorg/mozilla/javascript/ArrowFunction;
.super Lorg/mozilla/javascript/BaseFunction;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x6663e25d046ef419L


# instance fields
.field private final boundHomeObject:Lorg/mozilla/javascript/Scriptable;

.field private final boundThis:Lorg/mozilla/javascript/Scriptable;

.field private final targetFunction:Lorg/mozilla/javascript/Callable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    iput-object p3, p0, Lorg/mozilla/javascript/ArrowFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    iput-object p4, p0, Lorg/mozilla/javascript/ArrowFunction;->boundThis:Lorg/mozilla/javascript/Scriptable;

    iput-object p5, p0, Lorg/mozilla/javascript/ArrowFunction;->boundHomeObject:Lorg/mozilla/javascript/Scriptable;

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorThrower(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/BaseFunction;

    move-result-object p4

    new-instance p5, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {p5}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p5, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    const-string p2, "get"

    invoke-virtual {p5, p2, p5, p4}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string p2, "set"

    invoke-virtual {p5, p2, p5, p4}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p4, "enumerable"

    invoke-virtual {p5, p4, p5, p2}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string p4, "configurable"

    invoke-virtual {p5, p4, p5, p2}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    invoke-virtual {p5}, Lorg/mozilla/javascript/ScriptableObject;->preventExtensions()Z

    const-string p2, "caller"

    invoke-virtual {p0, p1, p2, p5, p3}, Lorg/mozilla/javascript/IdScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)Z

    const-string p2, "arguments"

    invoke-virtual {p0, p1, p2, p5, p3}, Lorg/mozilla/javascript/IdScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)Z

    return-void
.end method

.method public static equalObjectGraphs(Lorg/mozilla/javascript/ArrowFunction;Lorg/mozilla/javascript/ArrowFunction;Lorg/mozilla/javascript/EqualObjectGraphs;)Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/ArrowFunction;->boundThis:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p1, Lorg/mozilla/javascript/ArrowFunction;->boundThis:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/ArrowFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    iget-object p1, p1, Lorg/mozilla/javascript/ArrowFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    invoke-virtual {p2, p0, p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p3, p0, Lorg/mozilla/javascript/ArrowFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ArrowFunction;->getCallThis(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 0

    const-class p1, Lorg/mozilla/javascript/DecompilerFlag;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/ArrowFunction;->decompile(ILjava/util/EnumSet;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "msg.not.ctor"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public decompile(ILjava/util/EnumSet;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lorg/mozilla/javascript/DecompilerFlag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/javascript/ArrowFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    instance-of v1, v0, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mozilla/javascript/BaseFunction;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->decompile(ILjava/util/EnumSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->decompile(ILjava/util/EnumSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getArity()I
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ArrowFunction;->getLength()I

    move-result v0

    return v0
.end method

.method public getBoundHomeObject()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ArrowFunction;->boundHomeObject:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getCallThis(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ArrowFunction;->boundThis:Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method public getLength()I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/ArrowFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    instance-of v1, v0, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mozilla/javascript/BaseFunction;

    invoke-virtual {v0}, Lorg/mozilla/javascript/BaseFunction;->getLength()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTargetFunction()Lorg/mozilla/javascript/Callable;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ArrowFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    return-object v0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/ArrowFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    instance-of v1, v0, Lorg/mozilla/javascript/Function;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mozilla/javascript/Function;

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->hasInstance(Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "msg.not.ctor"

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method
