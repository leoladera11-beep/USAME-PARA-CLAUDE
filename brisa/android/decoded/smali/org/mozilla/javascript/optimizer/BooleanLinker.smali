.class Lorg/mozilla/javascript/optimizer/BooleanLinker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljdk/dynalink/linker/TypeBasedGuardingDynamicLinker;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/mozilla/javascript/optimizer/BooleanLinker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static testEq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static toBoolean(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

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

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getGuardedInvocation(Ljdk/dynalink/linker/LinkRequest;Ljdk/dynalink/linker/LinkerServices;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 5

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

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {p2, v1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isNamespace(Ljdk/dynalink/Namespace;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getCallSiteDescriptor()Ljdk/dynalink/CallSiteDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljdk/dynalink/CallSiteDescriptor;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/optimizer/RhinoOperation;->EQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SHALLOWEQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, v3, v4}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;Ljdk/dynalink/Operation;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x1

    aget-object p1, p1, v3

    instance-of p1, p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    const-class p1, Lorg/mozilla/javascript/optimizer/BooleanLinker;

    const-string v3, "eq"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class v3, Lorg/mozilla/javascript/optimizer/BooleanLinker;

    const-string v4, "testEq"

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOBOOLEAN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-class p1, Lorg/mozilla/javascript/optimizer/BooleanLinker;

    const-string v3, "toBoolean"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v1}, Ljdk/dynalink/linker/support/Guards;->getInstanceOfGuard(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object p1, v0

    move-object v1, p1

    :goto_0
    if-eqz p1, :cond_4

    sget-boolean v0, Lorg/mozilla/javascript/optimizer/DefaultLinker;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, " boolean operation"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    new-instance p2, Ljdk/dynalink/linker/GuardedInvocation;

    invoke-direct {p2, p1, v1}, Ljdk/dynalink/linker/GuardedInvocation;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object p2

    :cond_4
    return-object v0
.end method
