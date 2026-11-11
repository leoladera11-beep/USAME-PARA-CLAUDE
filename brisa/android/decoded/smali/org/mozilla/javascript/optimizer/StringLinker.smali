.class Lorg/mozilla/javascript/optimizer/StringLinker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljdk/dynalink/linker/TypeBasedGuardingDynamicLinker;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/mozilla/javascript/optimizer/StringLinker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 0

    new-instance p2, Lorg/mozilla/javascript/ConsString;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static getLength(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static testAdd(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z
    .locals 0

    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    instance-of p0, p1, Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static testEq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getGuardedInvocation(Ljdk/dynalink/linker/LinkRequest;Ljdk/dynalink/linker/LinkerServices;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 6

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->isCallSiteUnstable()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getArguments()[Ljava/lang/Object;

    move-result-object p2

    array-length p2, p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getArguments()[Ljava/lang/Object;

    move-result-object p2

    aget-object p2, p2, v1

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    new-instance v2, Lorg/mozilla/javascript/optimizer/ParsedOperation;

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getCallSiteDescriptor()Ljdk/dynalink/CallSiteDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljdk/dynalink/CallSiteDescriptor;->getOperation()Ljdk/dynalink/Operation;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;-><init>(Ljdk/dynalink/Operation;)V

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getCallSiteDescriptor()Ljdk/dynalink/CallSiteDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljdk/dynalink/CallSiteDescriptor;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object p1

    sget-object v3, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isNamespace(Ljdk/dynalink/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lorg/mozilla/javascript/optimizer/RhinoOperation;->ADD:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v3}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    instance-of p2, p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    const-class p2, Lorg/mozilla/javascript/optimizer/StringLinker;

    const-string v4, "add"

    invoke-virtual {v1, p2, v4, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class p2, Lorg/mozilla/javascript/optimizer/StringLinker;

    const-string v4, "testAdd"

    invoke-virtual {v1, p2, v4, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p2

    goto :goto_1

    :cond_2
    sget-object v3, Lorg/mozilla/javascript/optimizer/RhinoOperation;->EQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SHALLOWEQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {v2, v3, v4}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;Ljdk/dynalink/Operation;)Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_4

    const-class p2, Lorg/mozilla/javascript/optimizer/StringLinker;

    const-string v3, "eq"

    invoke-virtual {v1, p2, v3, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p2

    const-class v3, Lorg/mozilla/javascript/optimizer/StringLinker;

    const-string v4, "testEq"

    invoke-virtual {v1, v3, v4, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_1

    :cond_3
    sget-object p2, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isNamespace(Ljdk/dynalink/Namespace;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Ljdk/dynalink/StandardOperation;->GET:Ljdk/dynalink/StandardOperation;

    sget-object v3, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETNOWARN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {v2, p2, v3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;Ljdk/dynalink/Operation;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "length"

    invoke-virtual {v2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-class p2, Lorg/mozilla/javascript/optimizer/StringLinker;

    const-string v3, "getLength"

    invoke-virtual {v1, p2, v3, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    invoke-static {p2}, Ljdk/dynalink/linker/support/Guards;->getInstanceOfGuard(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p2

    goto :goto_1

    :cond_4
    move-object p1, v0

    move-object p2, p1

    :goto_1
    if-eqz p1, :cond_6

    sget-boolean v0, Lorg/mozilla/javascript/optimizer/DefaultLinker;->DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " string operation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    new-instance v0, Ljdk/dynalink/linker/GuardedInvocation;

    invoke-direct {v0, p1, p2}, Ljdk/dynalink/linker/GuardedInvocation;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    :cond_6
    return-object v0
.end method
