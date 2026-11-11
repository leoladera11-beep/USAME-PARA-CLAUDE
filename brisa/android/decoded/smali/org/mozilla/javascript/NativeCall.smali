.class public final Lorg/mozilla/javascript/NativeCall;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# static fields
.field private static final CALL_TAG:Ljava/lang/Object;

.field private static final Id_constructor:I = 0x1

.field private static final MAX_PROTOTYPE_ID:I = 0x1

.field private static final serialVersionUID:J = -0x67aff2d47ec02d36L


# instance fields
.field private arguments:Lorg/mozilla/javascript/Arguments;

.field function:Lorg/mozilla/javascript/NativeFunction;

.field private homeObject:Lorg/mozilla/javascript/Scriptable;

.field isArrow:Z

.field isStrict:Z

.field originalArgs:[Ljava/lang/Object;

.field transient parentActivationCall:Lorg/mozilla/javascript/NativeCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Call"

    sput-object v0, Lorg/mozilla/javascript/NativeCall;->CALL_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;ZZZLorg/mozilla/javascript/Scriptable;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    .line 4
    iput-object p8, p0, Lorg/mozilla/javascript/NativeCall;->homeObject:Lorg/mozilla/javascript/Scriptable;

    .line 5
    iput-boolean p5, p0, Lorg/mozilla/javascript/NativeCall;->isArrow:Z

    .line 6
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    if-nez p4, :cond_0

    .line 7
    sget-object p8, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p8, p4

    :goto_0
    iput-object p8, p0, Lorg/mozilla/javascript/NativeCall;->originalArgs:[Ljava/lang/Object;

    .line 8
    iput-boolean p6, p0, Lorg/mozilla/javascript/NativeCall;->isStrict:Z

    .line 9
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeFunction;->getParamAndVarCount()I

    move-result p6

    .line 10
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeFunction;->getParamCount()I

    move-result p8

    const/4 v0, 0x4

    if-eqz p6, :cond_6

    const/4 v1, 0x0

    if-eqz p7, :cond_4

    .line 11
    array-length p7, p4

    if-lt p7, p8, :cond_1

    .line 12
    array-length p7, p4

    sub-int/2addr p7, p8

    new-array p7, p7, [Ljava/lang/Object;

    .line 13
    array-length v2, p4

    sub-int/2addr v2, p8

    invoke-static {p4, p8, p7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 14
    :cond_1
    sget-object p7, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    :goto_1
    if-ge v1, p8, :cond_3

    .line 15
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    array-length v3, p4

    if-ge v1, v3, :cond_2

    aget-object v3, p4, v1

    goto :goto_2

    :cond_2
    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 17
    :goto_2
    invoke-virtual {p0, v2, v3, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p1, p8}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object p4

    .line 19
    invoke-virtual {p2, p3, p7}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 20
    invoke-virtual {p0, p4, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_5

    :cond_4
    :goto_3
    if-ge v1, p8, :cond_6

    .line 21
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object p2

    .line 22
    array-length p3, p4

    if-ge v1, p3, :cond_5

    aget-object p3, p4, v1

    goto :goto_4

    :cond_5
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 23
    :goto_4
    invoke-virtual {p0, p2, p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 24
    :cond_6
    :goto_5
    const-string p2, "arguments"

    invoke-super {p0, p2, p0}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p3

    if-nez p3, :cond_7

    if-nez p5, :cond_7

    .line 25
    new-instance p3, Lorg/mozilla/javascript/Arguments;

    invoke-direct {p3, p0}, Lorg/mozilla/javascript/Arguments;-><init>(Lorg/mozilla/javascript/NativeCall;)V

    iput-object p3, p0, Lorg/mozilla/javascript/NativeCall;->arguments:Lorg/mozilla/javascript/Arguments;

    .line 26
    invoke-virtual {p0, p2, p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_7
    if-eqz p6, :cond_b

    :goto_6
    if-ge p8, p6, :cond_b

    .line 27
    invoke-virtual {p1, p8}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-super {p0, p2, p0}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 29
    invoke-virtual {p1, p8}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarConst(I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 30
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/16 p4, 0xd

    invoke-virtual {p0, p2, p3, p4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_7

    .line 31
    :cond_8
    instance-of p3, p1, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz p3, :cond_9

    move-object p3, p1

    check-cast p3, Lorg/mozilla/javascript/InterpretedFunction;

    .line 32
    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/InterpretedFunction;->hasFunctionNamed(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 33
    :cond_9
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {p0, p2, p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_a
    :goto_7
    add-int/lit8 p8, p8, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/NativeCall;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeCall;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method


# virtual methods
.method public defineAttributesForArguments()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeCall;->arguments:Lorg/mozilla/javascript/Arguments;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Arguments;->defineAttributesForStrictMode()V

    :cond_0
    return-void
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/NativeCall;->CALL_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p1

    const/4 p5, 0x1

    if-ne p1, p5, :cond_2

    const-string p1, "Call"

    if-nez p4, :cond_1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->checkDeprecated(Lorg/mozilla/javascript/Context;Ljava/lang/String;)V

    new-instance p1, Lorg/mozilla/javascript/NativeCall;

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeCall;-><init>()V

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-object p1

    :cond_1
    const-string p2, "msg.only.from.new"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Call"

    return-object v0
.end method

.method public getHomeObject()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeCall;->homeObject:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public initPrototypeId(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v1, "constructor"

    sget-object v2, Lorg/mozilla/javascript/NativeCall;->CALL_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
