.class Lorg/mozilla/javascript/optimizer/ConstAwareLinker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljdk/dynalink/linker/TypeBasedGuardingDynamicLinker;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/mozilla/javascript/optimizer/ConstAwareLinker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConstValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Lorg/mozilla/javascript/NativeWith;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/NativeWith;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeWith;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/ConstAwareLinker;->getConstValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {p1, p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    invoke-virtual {p1, p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public canLinkType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/mozilla/javascript/NativeWith;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getGuardedInvocation(Ljdk/dynalink/linker/LinkRequest;Ljdk/dynalink/linker/LinkerServices;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 4

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->isCallSiteUnstable()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    new-instance p2, Lorg/mozilla/javascript/optimizer/ParsedOperation;

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getCallSiteDescriptor()Ljdk/dynalink/CallSiteDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljdk/dynalink/CallSiteDescriptor;->getOperation()Ljdk/dynalink/Operation;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;-><init>(Ljdk/dynalink/Operation;)V

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getReceiver()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isNamespace(Ljdk/dynalink/Namespace;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljdk/dynalink/StandardOperation;->GET:Ljdk/dynalink/StandardOperation;

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isNamespace(Ljdk/dynalink/Namespace;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Ljdk/dynalink/StandardOperation;->GET:Ljdk/dynalink/StandardOperation;

    sget-object v3, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETNOWARN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, v2, v3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;Ljdk/dynalink/Operation;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    invoke-virtual {p2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/ConstAwareLinker;->getConstValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getCallSiteDescriptor()Ljdk/dynalink/CallSiteDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljdk/dynalink/CallSiteDescriptor;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object p1

    invoke-static {v1}, Ljdk/dynalink/linker/support/Guards;->getIdentityGuard(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-static {v0, p1}, Ljdk/dynalink/linker/support/Guards;->asType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodHandles;->constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    sget-boolean v1, Lorg/mozilla/javascript/optimizer/DefaultLinker;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, ": constant"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    new-instance p2, Ljdk/dynalink/linker/GuardedInvocation;

    invoke-direct {p2, p1, v0}, Ljdk/dynalink/linker/GuardedInvocation;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object p2

    :cond_4
    return-object v0
.end method
