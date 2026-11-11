.class Lorg/mozilla/javascript/optimizer/DoubleLinker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljdk/dynalink/linker/TypeBasedGuardingDynamicLinker;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static addInt(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double p0, p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static compareGE(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static compareGEInt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static compareGT(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static compareGTInt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static compareLE(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static compareLEInt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static compareLT(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static compareLTInt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static eqInt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static testAdd(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z
    .locals 0

    instance-of p0, p0, Ljava/lang/Double;

    if-eqz p0, :cond_0

    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static testAddInt(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z
    .locals 0

    instance-of p0, p0, Ljava/lang/Double;

    if-eqz p0, :cond_0

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static testTwo(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/lang/Double;

    if-eqz p0, :cond_0

    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static testTwoInt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/lang/Double;

    if-eqz p0, :cond_0

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static toBoolean(Ljava/lang/Object;)Z
    .locals 5

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const-wide/16 v3, 0x0

    cmpl-double p0, v0, v3

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private static toInt32(Ljava/lang/Object;)I
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    return p0
.end method

.method private static toNumber(Ljava/lang/Object;)D
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static toNumeric(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method private static toUint32(Ljava/lang/Object;)J
    .locals 2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v0

    return-wide v0
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

    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getGuardedInvocation(Ljdk/dynalink/linker/LinkRequest;Ljdk/dynalink/linker/LinkerServices;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 10

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

    if-eqz v1, :cond_12

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getCallSiteDescriptor()Ljdk/dynalink/CallSiteDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljdk/dynalink/CallSiteDescriptor;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v4

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    sget-object v3, Lorg/mozilla/javascript/optimizer/RhinoOperation;->ADD:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, v3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eqz v4, :cond_2

    instance-of v4, p1, Ljava/lang/Double;

    if-eqz v4, :cond_2

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v3, "add"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-virtual {v2, v5}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    const-class v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v4, "testAdd"

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p2, v3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v3, "addInt"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-virtual {v2, v5}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    const-class v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v4, "testAddInt"

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    sget-object v3, Lorg/mozilla/javascript/optimizer/RhinoOperation;->EQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SHALLOWEQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, v3, v4}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;Ljdk/dynalink/Operation;)Z

    move-result v5

    const-string v6, "testTwo"

    if-eqz v5, :cond_4

    instance-of v5, p1, Ljava/lang/Double;

    if-eqz v5, :cond_4

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v3, "eq"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    invoke-virtual {v1, v3, v6, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p2, v3, v4}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;Ljdk/dynalink/Operation;)Z

    move-result v3

    const-string v4, "testTwoInt"

    if-eqz v3, :cond_5

    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v3, "eqInt"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    sget-object v3, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, v3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v5

    if-eqz v5, :cond_6

    instance-of v5, p1, Ljava/lang/Double;

    if-eqz v5, :cond_6

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v3, "compareLT"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    invoke-virtual {v1, v3, v6, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    sget-object v5, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, v5}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v7

    if-eqz v7, :cond_7

    instance-of v7, p1, Ljava/lang/Double;

    if-eqz v7, :cond_7

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v3, "compareGT"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    invoke-virtual {v1, v3, v6, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    sget-object v7, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, v7}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v8

    if-eqz v8, :cond_8

    instance-of v8, p1, Ljava/lang/Double;

    if-eqz v8, :cond_8

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v3, "compareLE"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    invoke-virtual {v1, v3, v6, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    sget-object v8, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, v8}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v9

    if-eqz v9, :cond_9

    instance-of v9, p1, Ljava/lang/Double;

    if-eqz v9, :cond_9

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v3, "compareGE"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    invoke-virtual {v1, v3, v6, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p2, v3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v3

    if-eqz v3, :cond_a

    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_a

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v3, "compareLTInt"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p2, v5}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v3

    if-eqz v3, :cond_b

    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_b

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v3, "compareGTInt"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p2, v7}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v3

    if-eqz v3, :cond_c

    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_c

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v3, "compareLEInt"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p2, v8}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v3

    if-eqz v3, :cond_d

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_d

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v3, "compareGEInt"

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    const-class v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto/16 :goto_1

    :cond_d
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOBOOLEAN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    const-class v3, Ljava/lang/Double;

    if-eqz p1, :cond_e

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v4, "toBoolean"

    invoke-virtual {v1, p1, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-static {v3}, Ljdk/dynalink/linker/support/Guards;->getInstanceOfGuard(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto :goto_1

    :cond_e
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMBER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v4, "toNumber"

    invoke-virtual {v1, p1, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-static {v3}, Ljdk/dynalink/linker/support/Guards;->getInstanceOfGuard(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto :goto_1

    :cond_f
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMERIC:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v4, "toNumeric"

    invoke-virtual {v1, p1, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-static {v3}, Ljdk/dynalink/linker/support/Guards;->getInstanceOfGuard(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto :goto_1

    :cond_10
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v4, "toInt32"

    invoke-virtual {v1, p1, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-static {v3}, Ljdk/dynalink/linker/support/Guards;->getInstanceOfGuard(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto :goto_1

    :cond_11
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOUINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-class p1, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    const-string v4, "toUint32"

    invoke-virtual {v1, p1, v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-static {v3}, Ljdk/dynalink/linker/support/Guards;->getInstanceOfGuard(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    goto :goto_1

    :cond_12
    move-object p1, v0

    move-object v1, p1

    :goto_1
    if-eqz p1, :cond_14

    sget-boolean v0, Lorg/mozilla/javascript/optimizer/DefaultLinker;->DEBUG:Z

    if-eqz v0, :cond_13

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, " double operation"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_13
    new-instance p2, Ljdk/dynalink/linker/GuardedInvocation;

    invoke-direct {p2, p1, v1}, Ljdk/dynalink/linker/GuardedInvocation;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object p2

    :cond_14
    return-object v0
.end method
