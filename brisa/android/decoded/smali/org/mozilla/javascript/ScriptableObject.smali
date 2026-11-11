.class public abstract Lorg/mozilla/javascript/ScriptableObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Scriptable;
.implements Lorg/mozilla/javascript/SymbolScriptable;
.implements Ljava/io/Serializable;
.implements Lorg/mozilla/javascript/debug/DebuggableObject;
.implements Lorg/mozilla/javascript/ConstProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/ScriptableObject$KeyComparator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CONST:I = 0xd

.field public static final DONTENUM:I = 0x2

.field public static final EMPTY:I = 0x0

.field private static final GET_ARRAY_LENGTH:Ljava/lang/reflect/Method;

.field private static final KEY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMANENT:I = 0x4

.field public static final READONLY:I = 0x1

.field public static final UNINITIALIZED_CONST:I = 0x8

.field private static final serialVersionUID:J = 0x2745afa870ac78baL


# instance fields
.field private volatile associatedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient externalData:Lorg/mozilla/javascript/ExternalArrayData;

.field private isExtensible:Z

.field private isSealed:Z

.field private parentScopeObject:Lorg/mozilla/javascript/Scriptable;

.field private prototypeObject:Lorg/mozilla/javascript/Scriptable;

.field private transient slotMap:Lorg/mozilla/javascript/SlotMapContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Lorg/mozilla/javascript/ScriptableObject;

    const-string v1, "getExternalArrayLength"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptableObject;->GET_ARRAY_LENGTH:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/mozilla/javascript/ScriptableObject$KeyComparator;

    invoke-direct {v0}, Lorg/mozilla/javascript/ScriptableObject$KeyComparator;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ScriptableObject;->KEY_COMPARATOR:Ljava/util/Comparator;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isSealed:Z

    .line 4
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->createSlotMap(I)Lorg/mozilla/javascript/SlotMapContainer;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isSealed:Z

    if-eqz p1, :cond_0

    .line 8
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->parentScopeObject:Lorg/mozilla/javascript/Scriptable;

    .line 9
    iput-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->prototypeObject:Lorg/mozilla/javascript/Scriptable;

    .line 10
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->createSlotMap(I)Lorg/mozilla/javascript/SlotMapContainer;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static synthetic a(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/LazyLoadSlot;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->ensureLazySlot(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/LazyLoadSlot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/mozilla/javascript/ScriptableObject;ZLjava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;
    .locals 0

    invoke-direct/range {p0 .. p13}, Lorg/mozilla/javascript/ScriptableObject;->lambda$defineOwnProperty$0(ZLjava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;

    move-result-object p0

    return-object p0
.end method

.method public static buildClassCtor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Lorg/mozilla/javascript/BaseFunction;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/mozilla/javascript/Scriptable;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class<",
            "TT;>;ZZ)",
            "Lorg/mozilla/javascript/BaseFunction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/FunctionObject;->getMethodList(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v6, v4, :cond_4

    aget-object v11, v3, v6

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "init"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v13, v12

    if-ne v13, v7, :cond_2

    aget-object v7, v12, v5

    sget-object v13, Lorg/mozilla/javascript/ScriptRuntime;->ContextClass:Ljava/lang/Class;

    if-ne v7, v13, :cond_2

    aget-object v7, v12, v10

    sget-object v13, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-ne v7, v13, :cond_2

    aget-object v7, v12, v8

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_2

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v2

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_2
    array-length v7, v12

    if-ne v7, v10, :cond_3

    aget-object v7, v12, v5

    sget-object v8, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-ne v7, v8, :cond_3

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    array-length v6, v4

    move v11, v5

    :goto_3
    if-ge v11, v6, :cond_6

    aget-object v12, v4, v11

    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    move-object v12, v9

    :goto_4
    if-eqz v12, :cond_2f

    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {v12, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v6}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v12

    invoke-static {v12, v11}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v13, :cond_7

    check-cast v12, Lorg/mozilla/javascript/BaseFunction;

    invoke-virtual {v12}, Lorg/mozilla/javascript/BaseFunction;->getPrototypeProperty()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v14, p1

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    return-object v12

    :cond_7
    move-object/from16 v14, p1

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v12}, Ljava/lang/Class;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-static {v12}, Lorg/mozilla/javascript/ScriptableObject;->extendsScriptable(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v12

    invoke-static {v0, v12, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    goto :goto_5

    :cond_9
    move-object v2, v9

    :goto_5
    if-nez v2, :cond_a

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    :cond_a
    invoke-interface {v6, v2}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    const-class v2, Lorg/mozilla/javascript/annotations/JSConstructor;

    invoke-static {v3, v2}, Lorg/mozilla/javascript/ScriptableObject;->findAnnotatedMember([Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v12

    if-nez v12, :cond_b

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptableObject;->findAnnotatedMember([Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v12

    :cond_b
    const-string v2, "jsConstructor"

    if-nez v12, :cond_c

    invoke-static {v3, v2}, Lorg/mozilla/javascript/FunctionObject;->findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v12

    :cond_c
    if-nez v12, :cond_11

    array-length v13, v4

    if-ne v13, v10, :cond_d

    aget-object v12, v4, v5

    goto :goto_6

    :cond_d
    array-length v13, v4

    if-ne v13, v8, :cond_f

    aget-object v13, v4, v5

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_e

    aget-object v12, v4, v10

    goto :goto_6

    :cond_e
    aget-object v13, v4, v10

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_f

    aget-object v12, v4, v5

    :cond_f
    :goto_6
    if-eqz v12, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "msg.ctor.multiple.parms"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_11
    :goto_7
    new-instance v4, Lorg/mozilla/javascript/FunctionObject;

    invoke-direct {v4, v11, v12, v0}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/FunctionObject;->isVarArgsMethod()Z

    move-result v11

    if-nez v11, :cond_2e

    const/4 v11, 0x7

    invoke-virtual {v4, v0, v6, v11}, Lorg/mozilla/javascript/FunctionObject;->initAsConstructor(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;I)V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    array-length v14, v3

    move v15, v5

    move/from16 v16, v15

    move-object v5, v9

    :goto_8
    if-ge v15, v14, :cond_2b

    move/from16 v23, v10

    aget-object v10, v3, v15

    if-ne v10, v12, :cond_12

    move-object/from16 p3, v2

    move v7, v8

    move-object/from16 p1, v11

    goto/16 :goto_17

    :cond_12
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    move/from16 v24, v8

    const-string v8, "finishInit"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v1, v8

    if-ne v1, v7, :cond_14

    aget-object v1, v8, v16

    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-ne v1, v7, :cond_14

    aget-object v1, v8, v23

    move-object/from16 p1, v8

    const-class v8, Lorg/mozilla/javascript/FunctionObject;

    if-ne v1, v8, :cond_14

    aget-object v1, p1, v24

    if-ne v1, v7, :cond_14

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object/from16 p3, v2

    move-object v5, v10

    :cond_13
    :goto_9
    move-object/from16 p1, v11

    move/from16 v7, v24

    goto/16 :goto_17

    :cond_14
    const/16 v1, 0x24

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_15

    :goto_a
    move-object/from16 p3, v2

    goto :goto_9

    :cond_15
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_a

    :cond_16
    const-class v1, Lorg/mozilla/javascript/annotations/JSFunction;

    invoke-virtual {v10, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    goto :goto_b

    :cond_17
    const-class v1, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    invoke-virtual {v10, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    goto :goto_b

    :cond_18
    const-class v1, Lorg/mozilla/javascript/annotations/JSGetter;

    invoke-virtual {v10, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    goto :goto_b

    :cond_19
    const-class v1, Lorg/mozilla/javascript/annotations/JSSetter;

    invoke-virtual {v10, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_b
    const-string v7, "jsGet_"

    const-string v8, "jsStaticFunction_"

    move-object/from16 p3, v2

    if-nez v1, :cond_1d

    const-string v2, "jsFunction_"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1b

    :goto_c
    move-object/from16 p1, v11

    goto :goto_d

    :cond_1b
    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object v2, v8

    goto :goto_c

    :cond_1c
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v2, v7

    goto :goto_c

    :cond_1d
    move-object/from16 p1, v11

    const/4 v2, 0x0

    :goto_d
    instance-of v11, v1, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    if-nez v11, :cond_1f

    invoke-static {v2, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    goto :goto_e

    :cond_1e
    move/from16 v8, v16

    goto :goto_f

    :cond_1f
    :goto_e
    move/from16 v8, v23

    :goto_f
    if-eqz v8, :cond_20

    move-object/from16 v11, p1

    :goto_10
    move/from16 v17, v8

    goto :goto_11

    :cond_20
    move-object v11, v13

    goto :goto_10

    :goto_11
    invoke-static {v9, v2, v1}, Lorg/mozilla/javascript/ScriptableObject;->getPropertyName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2a

    invoke-virtual {v11, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    instance-of v1, v1, Lorg/mozilla/javascript/annotations/JSGetter;

    if-nez v1, :cond_21

    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_21
    move/from16 v7, v24

    goto :goto_15

    :cond_22
    if-eqz v17, :cond_24

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_12

    :cond_23
    const-string v0, "jsStaticFunction must be used with static method."

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_24
    :goto_12
    new-instance v1, Lorg/mozilla/javascript/FunctionObject;

    invoke-direct {v1, v8, v10, v6}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/FunctionObject;->isVarArgsConstructor()Z

    move-result v2

    if-nez v2, :cond_26

    if-eqz v17, :cond_25

    move-object v2, v4

    :goto_13
    move/from16 v7, v24

    goto :goto_14

    :cond_25
    move-object v2, v6

    goto :goto_13

    :goto_14
    invoke-static {v2, v8, v1, v7}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    if-eqz p2, :cond_28

    invoke-virtual {v1}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    goto :goto_17

    :cond_26
    invoke-interface {v12}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "msg.varargs.fun"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :goto_15
    instance-of v1, v6, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v1, :cond_29

    const-string v1, "jsSet_"

    invoke-static {v3, v8, v1}, Lorg/mozilla/javascript/ScriptableObject;->findSetterMethod([Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v21

    if-eqz v21, :cond_27

    move/from16 v1, v16

    goto :goto_16

    :cond_27
    move/from16 v1, v23

    :goto_16
    or-int/lit8 v22, v1, 0x6

    move-object/from16 v17, v6

    check-cast v17, Lorg/mozilla/javascript/ScriptableObject;

    const/16 v19, 0x0

    move-object/from16 v18, v8

    move-object/from16 v20, v10

    invoke-virtual/range {v17 .. v22}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    :cond_28
    :goto_17
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move v8, v7

    move/from16 v10, v23

    const/4 v7, 0x3

    const/4 v9, 0x0

    goto/16 :goto_8

    :cond_29
    move-object v1, v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "msg.extend.scriptable"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_2a
    move-object v1, v8

    const-string v0, "duplicate.defineClass.name"

    filled-new-array {v9, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_2b
    if-eqz v5, :cond_2c

    filled-new-array {v0, v4, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    if-eqz p2, :cond_2d

    invoke-virtual {v4}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    instance-of v0, v6, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_2d

    check-cast v6, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v6}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_2d
    return-object v4

    :cond_2e
    invoke-interface {v12}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "msg.varargs.ctor"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_2f
    move-object/from16 v14, p1

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "msg.zero.arg.ctor"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
.end method

.method public static buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    sget-object v1, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v0, p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    const-string p0, "value"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p2, p0}, Lorg/mozilla/javascript/ScriptableObject;->setCommonDescriptorProperties(IZ)V

    return-object v0
.end method

.method public static callMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lorg/mozilla/javascript/Function;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lorg/mozilla/javascript/Function;

    .line 5
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {v0, p0, p2, p1, p3}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 7
    invoke-static {p0, v0, p2, p1, p3}, Lorg/mozilla/javascript/Context;->call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static callMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->callMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private checkNotSealed(Ljava/lang/Object;I)V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isSealed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "msg.modify.sealed"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method private static checkSlotRemoval(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;
    .locals 0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string p1, "msg.delete.property.with.configurable.false"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkValidAttributes(I)V
    .locals 1

    and-int/lit8 v0, p0, -0x10

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createLambdaAccessorSlot(Ljava/lang/Object;ILjava/util/function/Function;Ljava/util/function/BiConsumer;I)Lorg/mozilla/javascript/LambdaAccessorSlot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/function/Function<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;I)",
            "Lorg/mozilla/javascript/LambdaAccessorSlot;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/javascript/LambdaAccessorSlot;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/LambdaAccessorSlot;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0, p3}, Lorg/mozilla/javascript/LambdaAccessorSlot;->setGetter(Lorg/mozilla/javascript/Scriptable;Ljava/util/function/Function;)V

    invoke-virtual {v0, p0, p4}, Lorg/mozilla/javascript/LambdaAccessorSlot;->setSetter(Lorg/mozilla/javascript/Scriptable;Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, p5}, Lorg/mozilla/javascript/Slot;->setAttributes(I)V

    return-object v0
.end method

.method private static createSlotMap(I)Lorg/mozilla/javascript/SlotMapContainer;
    .locals 2

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/mozilla/javascript/SlotMapContainer;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/SlotMapContainer;-><init>(I)V

    return-object v0
.end method

.method public static synthetic d(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/LambdaAccessorSlot;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/LambdaAccessorSlot;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/mozilla/javascript/ScriptableObject;->lambda$defineProperty$1(Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/LambdaAccessorSlot;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/LambdaAccessorSlot;

    move-result-object p0

    return-object p0
.end method

.method public static defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/mozilla/javascript/Scriptable;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class<",
            "TT;>;ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->buildClassCtor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Lorg/mozilla/javascript/BaseFunction;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/BaseFunction;->getClassPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    .line 5
    invoke-static {p0, p2, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public static defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/mozilla/javascript/Scriptable;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Ljava/lang/String;

    return-void
.end method

.method public static defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/mozilla/javascript/Scriptable;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Ljava/lang/String;

    return-void
.end method

.method public static defineConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/ConstProperties;->defineConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V

    return-void

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/16 v1, 0xd

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    .line 7
    instance-of v0, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v0, :cond_0

    .line 8
    invoke-interface {p0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_0
    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static deleteProperty(Lorg/mozilla/javascript/Scriptable;I)Z
    .locals 2

    .line 4
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    .line 6
    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public static deleteProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public static deleteProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Z
    .locals 2

    .line 7
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Lorg/mozilla/javascript/SymbolScriptable;->delete(Lorg/mozilla/javascript/Symbol;)V

    .line 10
    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/SymbolScriptable;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public static synthetic e(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/LambdaSlot;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->ensureLambdaSlot(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/LambdaSlot;

    move-result-object p0

    return-object p0
.end method

.method private static ensureAccessorSlot(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/AccessorSlot;
    .locals 0

    if-nez p2, :cond_0

    new-instance p2, Lorg/mozilla/javascript/AccessorSlot;

    invoke-direct {p2, p0, p1}, Lorg/mozilla/javascript/AccessorSlot;-><init>(Ljava/lang/Object;I)V

    return-object p2

    :cond_0
    instance-of p0, p2, Lorg/mozilla/javascript/AccessorSlot;

    if-eqz p0, :cond_1

    check-cast p2, Lorg/mozilla/javascript/AccessorSlot;

    return-object p2

    :cond_1
    new-instance p0, Lorg/mozilla/javascript/AccessorSlot;

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/AccessorSlot;-><init>(Lorg/mozilla/javascript/Slot;)V

    return-object p0
.end method

.method private static ensureLambdaSlot(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/LambdaSlot;
    .locals 0

    if-nez p2, :cond_0

    new-instance p2, Lorg/mozilla/javascript/LambdaSlot;

    invoke-direct {p2, p0, p1}, Lorg/mozilla/javascript/LambdaSlot;-><init>(Ljava/lang/Object;I)V

    return-object p2

    :cond_0
    instance-of p0, p2, Lorg/mozilla/javascript/LambdaSlot;

    if-eqz p0, :cond_1

    check-cast p2, Lorg/mozilla/javascript/LambdaSlot;

    return-object p2

    :cond_1
    new-instance p0, Lorg/mozilla/javascript/LambdaSlot;

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/LambdaSlot;-><init>(Lorg/mozilla/javascript/Slot;)V

    return-object p0
.end method

.method private static ensureLazySlot(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/LazyLoadSlot;
    .locals 0

    if-nez p2, :cond_0

    new-instance p2, Lorg/mozilla/javascript/LazyLoadSlot;

    invoke-direct {p2, p0, p1}, Lorg/mozilla/javascript/LazyLoadSlot;-><init>(Ljava/lang/Object;I)V

    return-object p2

    :cond_0
    instance-of p0, p2, Lorg/mozilla/javascript/LazyLoadSlot;

    if-eqz p0, :cond_1

    check-cast p2, Lorg/mozilla/javascript/LazyLoadSlot;

    return-object p2

    :cond_1
    new-instance p0, Lorg/mozilla/javascript/LazyLoadSlot;

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/LazyLoadSlot;-><init>(Lorg/mozilla/javascript/Slot;)V

    return-object p0
.end method

.method public static ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "msg.arg.not.object"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/mozilla/javascript/Delegator;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/mozilla/javascript/Delegator;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "msg.arg.not.object"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static ensureScriptableObjectButNotSymbol(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/Symbol;

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "msg.arg.not.object"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/SymbolScriptable;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "msg.object.not.symbolscriptable"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static extendsScriptable(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/mozilla/javascript/Scriptable;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/AccessorSlot;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->ensureAccessorSlot(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/AccessorSlot;

    move-result-object p0

    return-object p0
.end method

.method private static findAnnotatedMember([Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/AccessibleObject;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/reflect/Member;"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/reflect/Member;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findSetterMethod([Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    const-class v5, Lorg/mozilla/javascript/annotations/JSSetter;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/annotations/JSSetter;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lorg/mozilla/javascript/annotations/JSSetter;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-interface {v5}, Lorg/mozilla/javascript/annotations/JSSetter;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p2, p1}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    array-length p2, p0

    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->checkSlotRemoval(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;

    move-result-object p0

    return-object p0
.end method

.method public static getArrayPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->Array:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/TopLevel;->getBuiltinPrototype(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private getAttributeSlot(Ljava/lang/String;I)Lorg/mozilla/javascript/Slot;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_0
    const-string p2, "msg.prop.not.found"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_1
    return-object v0
.end method

.method private getAttributeSlot(Lorg/mozilla/javascript/Symbol;)Lorg/mozilla/javascript/Slot;
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    const-string v0, "msg.prop.not.found"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method public static getBase(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    move-object v0, p0

    .line 3
    :cond_0
    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v0
.end method

.method public static getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    move-object v0, p0

    .line 1
    :cond_0
    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v0
.end method

.method private static getBase(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    move-object v0, p0

    .line 5
    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v1

    invoke-interface {v1, p1, p0}, Lorg/mozilla/javascript/SymbolScriptable;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 6
    :cond_1
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v0
.end method

.method public static getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/mozilla/javascript/BaseFunction;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p0, Lorg/mozilla/javascript/BaseFunction;

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getPrototypeProperty()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    const-string p1, "prototype"

    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getDefaultValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_9

    .line 2
    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_0

    :goto_1
    if-eqz v4, :cond_2

    .line 3
    const-string v3, "toString"

    goto :goto_2

    .line 4
    :cond_2
    const-string v3, "valueOf"

    .line 5
    :goto_2
    invoke-static {p0, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    instance-of v5, v3, Lorg/mozilla/javascript/Function;

    if-nez v5, :cond_3

    goto :goto_4

    .line 7
    :cond_3
    check-cast v3, Lorg/mozilla/javascript/Function;

    if-nez v0, :cond_4

    .line 8
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 9
    :cond_4
    invoke-interface {v3}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v3, v0, v5, p0, v6}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 10
    instance-of v5, v3, Lorg/mozilla/javascript/Scriptable;

    if-nez v5, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-eq p1, v5, :cond_7

    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    if-ne p1, v5, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_8

    .line 12
    instance-of v4, v3, Lorg/mozilla/javascript/Wrapper;

    if-eqz v4, :cond_8

    .line 13
    check-cast v3, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v3}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v3

    .line 14
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_8

    :cond_7
    :goto_3
    return-object v3

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    if-nez p1, :cond_a

    .line 15
    const-string p0, "undefined"

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 16
    :goto_5
    const-string p1, "msg.default.value"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->Function:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/TopLevel;->getBuiltinPrototype(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static getGeneratorFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->GeneratorFunction:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/TopLevel;->getBuiltinPrototype(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/TopLevel;->getBuiltinPrototype(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private static getPropWalkingPrototypeChain(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    .line 7
    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_0

    :goto_0
    return-object v0
.end method

.method private static getPropWalkingPrototypeChain(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_0

    :goto_0
    return-object v0
.end method

.method private static getPropWalkingPrototypeChain(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;
    .locals 2

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/mozilla/javascript/SymbolScriptable;->get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_0

    :goto_0
    return-object v0
.end method

.method public static getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->getPropWalkingPrototypeChain(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->getPropWalkingPrototypeChain(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getPropWalkingPrototypeChain(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getPropertyIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .locals 7

    if-nez p0, :cond_0

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    if-nez v2, :cond_7

    array-length v5, v0

    if-nez v5, :cond_5

    move-object v0, v3

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v5, v4

    :goto_1
    array-length v6, v0

    if-eq v5, v6, :cond_6

    aget-object v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    move-object v0, v1

    :cond_7
    :goto_2
    array-length v5, v3

    if-eq v4, v5, :cond_1

    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private static getPropertyName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p1, p2, Lorg/mozilla/javascript/annotations/JSGetter;

    if-eqz p1, :cond_3

    check-cast p2, Lorg/mozilla/javascript/annotations/JSGetter;

    invoke-interface {p2}, Lorg/mozilla/javascript/annotations/JSGetter;->value()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_6

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x3

    if-le p2, v0, :cond_6

    const-string p2, "get"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of p1, p2, Lorg/mozilla/javascript/annotations/JSFunction;

    if-eqz p1, :cond_4

    check-cast p2, Lorg/mozilla/javascript/annotations/JSFunction;

    invoke-interface {p2}, Lorg/mozilla/javascript/annotations/JSFunction;->value()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    instance-of p1, p2, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    if-eqz p1, :cond_5

    check-cast p2, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    invoke-interface {p2}, Lorg/mozilla/javascript/annotations/JSStaticFunction;->value()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :cond_6
    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    return-object p1

    :cond_8
    :goto_1
    return-object p0
.end method

.method public static getSuperProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getPropWalkingPrototypeChain(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getPropWalkingPrototypeChain(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getPropWalkingPrototypeChain(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    :goto_0
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    :cond_0
    instance-of v0, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTypedProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    .line 2
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    .line 3
    :cond_0
    invoke-static {p0, p2}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getTypedProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p2}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hasProperty(Lorg/mozilla/javascript/Scriptable;I)Z
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Z
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z
    .locals 1

    const-string v0, "get"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "set"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "writable"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isFalse(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isGenericDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTrue(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$defineOwnProperty$0(ZLjava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p13, p3}, Lorg/mozilla/javascript/ScriptableObject;->checkPropertyChangeForSlot(Ljava/lang/Object;Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/ScriptableObject;)V

    :cond_0
    if-nez p13, :cond_1

    new-instance p1, Lorg/mozilla/javascript/Slot;

    const/4 p2, 0x0

    invoke-direct {p1, p11, p12, p2}, Lorg/mozilla/javascript/Slot;-><init>(Ljava/lang/Object;II)V

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p4, p5, p6}, Lorg/mozilla/javascript/ScriptableObject;->applyDescriptorToAttributeBitset(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p13}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result p1

    invoke-virtual {p0, p1, p4, p5, p6}, Lorg/mozilla/javascript/ScriptableObject;->applyDescriptorToAttributeBitset(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    move-object p1, p13

    :goto_0
    if-eqz p7, :cond_5

    instance-of p3, p1, Lorg/mozilla/javascript/AccessorSlot;

    if-eqz p3, :cond_2

    move-object p3, p1

    check-cast p3, Lorg/mozilla/javascript/AccessorSlot;

    goto :goto_1

    :cond_2
    new-instance p3, Lorg/mozilla/javascript/AccessorSlot;

    invoke-direct {p3, p1}, Lorg/mozilla/javascript/AccessorSlot;-><init>(Lorg/mozilla/javascript/Slot;)V

    move-object p1, p3

    :goto_1
    sget-object p4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p8, p4, :cond_3

    new-instance p5, Lorg/mozilla/javascript/AccessorSlot$FunctionGetter;

    invoke-direct {p5, p8}, Lorg/mozilla/javascript/AccessorSlot$FunctionGetter;-><init>(Ljava/lang/Object;)V

    iput-object p5, p3, Lorg/mozilla/javascript/AccessorSlot;->getter:Lorg/mozilla/javascript/AccessorSlot$Getter;

    :cond_3
    if-eq p9, p4, :cond_4

    new-instance p4, Lorg/mozilla/javascript/AccessorSlot$FunctionSetter;

    invoke-direct {p4, p9}, Lorg/mozilla/javascript/AccessorSlot$FunctionSetter;-><init>(Ljava/lang/Object;)V

    iput-object p4, p3, Lorg/mozilla/javascript/AccessorSlot;->setter:Lorg/mozilla/javascript/AccessorSlot$Setter;

    :cond_4
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object p4, p3, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lorg/mozilla/javascript/Slot;->isValueSlot()Z

    move-result p4

    if-nez p4, :cond_6

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p3, Lorg/mozilla/javascript/Slot;

    invoke-direct {p3, p1}, Lorg/mozilla/javascript/Slot;-><init>(Lorg/mozilla/javascript/Slot;)V

    move-object p1, p3

    :cond_6
    sget-object p3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p10, p3, :cond_7

    iput-object p10, p1, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    goto :goto_2

    :cond_7
    if-nez p13, :cond_8

    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object p3, p1, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    :cond_8
    :goto_2
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Slot;->setAttributes(I)V

    return-object p1
.end method

.method private synthetic lambda$defineProperty$1(Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/LambdaAccessorSlot;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/LambdaAccessorSlot;
    .locals 0

    if-eqz p7, :cond_0

    invoke-direct {p0, p1, p2, p7, p3}, Lorg/mozilla/javascript/ScriptableObject;->replaceExistingLambdaSlot(Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/LambdaAccessorSlot;)Lorg/mozilla/javascript/LambdaAccessorSlot;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p4}, Lorg/mozilla/javascript/ScriptableObject;->checkPropertyChangeForSlot(Ljava/lang/Object;Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/ScriptableObject;)V

    return-object p3
.end method

.method private putConstImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Z
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "msg.not.extensible"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    if-eq p0, p3, :cond_2

    iget-object p5, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p5, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object p5, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p5, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1, p4, p0, p3}, Lorg/mozilla/javascript/Slot;->setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    iget-object p3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/16 v0, 0xd

    invoke-virtual {p3, p1, p2, v0}, Lorg/mozilla/javascript/SlotMapContainer;->modify(Ljava/lang/Object;II)Lorg/mozilla/javascript/Slot;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result p3

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_6

    and-int/lit8 p1, p3, 0x8

    if-eqz p1, :cond_5

    iput-object p4, p2, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    const/16 p1, 0x8

    if-eq p5, p1, :cond_5

    and-int/lit8 p1, p3, -0x9

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/Slot;->setAttributes(I)V

    :cond_5
    return v1

    :cond_6
    const-string p2, "msg.var.redecl"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method public static putConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private putImpl(Ljava/lang/Object;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Z
    .locals 4

    const-string v0, "msg.not.extensible"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, p3, :cond_3

    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v3, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    iget-boolean p2, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_0

    instance-of p2, p1, Lorg/mozilla/javascript/AccessorSlot;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result p2

    and-int/2addr p2, v1

    if-eqz p2, :cond_2

    :cond_0
    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    if-nez p1, :cond_9

    return v2

    :cond_3
    iget-boolean v3, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v3, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of p2, p1, Lorg/mozilla/javascript/AccessorSlot;

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result p2

    and-int/2addr p2, v1

    if-eqz p2, :cond_5

    :cond_4
    if-nez p5, :cond_6

    :cond_5
    if-nez p1, :cond_9

    return v1

    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_7
    iget-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isSealed:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    :cond_8
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0, p1, p2, v2}, Lorg/mozilla/javascript/SlotMapContainer;->modify(Ljava/lang/Object;II)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    :cond_9
    invoke-virtual {p1, p4, p0, p3, p5}, Lorg/mozilla/javascript/Slot;->setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Z

    move-result p1

    return p1
.end method

.method public static putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V
    .locals 1

    .line 5
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 6
    :cond_0
    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public static putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 2
    :cond_0
    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public static putProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 4
    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public static putSuperProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V
    .locals 0

    .line 3
    invoke-interface {p0, p2, p1, p3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public static putSuperProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p2, p1, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public static putSuperProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object p0

    invoke-interface {p0, p2, p1, p3}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->createSlotMap(I)Lorg/mozilla/javascript/SlotMapContainer;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Slot;

    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/SlotMapContainer;->add(Lorg/mozilla/javascript/Slot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static redefineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/ConstProperties;->isConst(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "msg.const.redecl"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    :goto_1
    return-void

    :cond_3
    const-string p0, "msg.var.redecl"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private replaceExistingLambdaSlot(Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/LambdaAccessorSlot;)Lorg/mozilla/javascript/LambdaAccessorSlot;
    .locals 1

    instance-of v0, p3, Lorg/mozilla/javascript/LambdaAccessorSlot;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/mozilla/javascript/LambdaAccessorSlot;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mozilla/javascript/LambdaAccessorSlot;

    invoke-direct {v0, p3}, Lorg/mozilla/javascript/LambdaAccessorSlot;-><init>(Lorg/mozilla/javascript/Slot;)V

    :goto_0
    invoke-virtual {v0, p4}, Lorg/mozilla/javascript/LambdaAccessorSlot;->replaceWith(Lorg/mozilla/javascript/LambdaAccessorSlot;)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/LambdaAccessorSlot;->buildPropertyDescriptor(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lorg/mozilla/javascript/ScriptableObject;->checkPropertyChangeForSlot(Ljava/lang/Object;Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/ScriptableObject;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SlotMapContainer;->readLock()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v2}, Lorg/mozilla/javascript/SlotMapContainer;->dirtySize()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v2}, Lorg/mozilla/javascript/SlotMapContainer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/Slot;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/SlotMapContainer;->unlockRead(J)V

    return-void

    :goto_2
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v2, v0, v1}, Lorg/mozilla/javascript/SlotMapContainer;->unlockRead(J)V

    throw p1
.end method


# virtual methods
.method public addLazilyInitializedValue(Ljava/lang/String;ILorg/mozilla/javascript/LazilyLoadedCtor;I)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    new-instance v1, Lorg/mozilla/javascript/J;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/J;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Lorg/mozilla/javascript/SlotMapContainer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/LazyLoadSlot;

    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/Slot;->setAttributes(I)V

    iput-object p3, p1, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    return-void
.end method

.method public applyDescriptorToAttributeBitset(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p2, v0, :cond_1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    and-int/lit8 p1, p1, -0x3

    goto :goto_0

    :cond_0
    or-int/lit8 p1, p1, 0x2

    :cond_1
    :goto_0
    if-eq p3, v0, :cond_3

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    and-int/lit8 p1, p1, -0x2

    goto :goto_1

    :cond_2
    or-int/lit8 p1, p1, 0x1

    :cond_3
    :goto_1
    if-eq p4, v0, :cond_5

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    and-int/lit8 p1, p1, -0x5

    return p1

    :cond_4
    or-int/lit8 p1, p1, 0x4

    :cond_5
    return p1
.end method

.method public final declared-synchronized associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->associatedValues:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->associatedValues:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/mozilla/javascript/Kit;->initHash(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public avoidObjectDetection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkPropertyChangeForSlot(Ljava/lang/Object;Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "msg.not.extensible"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    const-string v1, "configurable"

    invoke-static {p3, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p2}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v0, v2

    :cond_2
    const-string v1, "enumerable"

    invoke-static {p3, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_a

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v1

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_c

    const-string v0, "writable"

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "value"

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    iget-object p2, p2, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    invoke-virtual {p0, p3, p2}, Lorg/mozilla/javascript/ScriptableObject;->sameValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    const-string p2, "msg.change.value.with.writable.false"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_5
    const-string p2, "msg.change.writable.false.to.true.with.configurable.false"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_6
    if-eqz v1, :cond_9

    instance-of v0, p2, Lorg/mozilla/javascript/AccessorSlot;

    if-eqz v0, :cond_9

    check-cast p2, Lorg/mozilla/javascript/AccessorSlot;

    const-string v0, "set"

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/AccessorSlot;->isSameSetterFunction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "get"

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/AccessorSlot;->isSameGetterFunction(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    :cond_7
    const-string p2, "msg.change.getter.with.configurable.false"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_8
    const-string p2, "msg.change.setter.with.configurable.false"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_9
    const-string p2, "msg.change.property.data.to.accessor.with.configurable.false"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_a
    const-string p2, "msg.change.enumerable.with.configurable.false"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_b
    const-string p2, "msg.change.configurable.false.to.true"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_c
    :goto_0
    return-void
.end method

.method public checkPropertyDefinition(Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 3

    const-string v0, "get"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v0, v2, :cond_1

    instance-of v2, v0, Lorg/mozilla/javascript/Callable;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    const-string v0, "set"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_3

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    instance-of v1, v0, Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "msg.both.data.and.accessor.desc"

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public defineConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V
    .locals 6

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/16 v5, 0x8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->putConstImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq v3, v0, :cond_2

    instance-of p1, v3, Lorg/mozilla/javascript/ConstProperties;

    if-eqz p1, :cond_1

    move-object p2, v3

    check-cast p2, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {p2, v1, v3}, Lorg/mozilla/javascript/ConstProperties;->defineConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    invoke-static {p2}, Lorg/mozilla/javascript/FunctionObject;->getMethodList(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-static {v0, v3}, Lorg/mozilla/javascript/FunctionObject;->findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Lorg/mozilla/javascript/FunctionObject;

    invoke-direct {v5, v3, v4, p0}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0, v3, v5, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "msg.method.not.found"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public defineOwnProperties(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [Lorg/mozilla/javascript/ScriptableObject;

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    invoke-static {p2, v5, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/ScriptableObject;->checkPropertyDefinition(Lorg/mozilla/javascript/ScriptableObject;)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length p2, v0

    :goto_1
    if-ge v1, p2, :cond_1

    aget-object v3, v0, v1

    aget-object v4, v2, v1

    invoke-virtual {p0, p1, v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->checkPropertyDefinition(Lorg/mozilla/javascript/ScriptableObject;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)Z

    move-result p1

    return p1
.end method

.method public defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)Z
    .locals 15

    move-object/from16 v4, p3

    move-object/from16 v3, p2

    .line 3
    instance-of v0, v3, Lorg/mozilla/javascript/Symbol;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v12, v1

    move-object v13, v3

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object v0

    .line 5
    iget-object v2, v0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 6
    iget v1, v0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    const/4 v2, 0x0

    :cond_1
    move v12, v1

    move-object v13, v2

    .line 7
    :goto_0
    const-string v0, "enumerable"

    invoke-static {v4, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 8
    const-string v0, "writable"

    invoke-static {v4, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 9
    const-string v0, "configurable"

    invoke-static {v4, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 10
    const-string v0, "get"

    invoke-static {v4, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 11
    const-string v0, "set"

    invoke-static {v4, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 12
    const-string v0, "value"

    invoke-static {v4, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 13
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v8

    .line 14
    iget-object v14, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    new-instance v0, Lorg/mozilla/javascript/I;

    move-object v1, p0

    move/from16 v2, p4

    invoke-direct/range {v0 .. v11}, Lorg/mozilla/javascript/I;-><init>(Lorg/mozilla/javascript/ScriptableObject;ZLjava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v13, v12, v0}, Lorg/mozilla/javascript/SlotMapContainer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;

    const/4 v0, 0x1

    return v0
.end method

.method public defineProperty(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v1, v0, 0x3

    .line 15
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 16
    invoke-virtual {p1, v2, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 17
    aget-char v0, v1, v3

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    aput-char v0, v1, v3

    const/16 v0, 0x67

    .line 18
    aput-char v0, v1, v2

    const/16 v0, 0x65

    const/4 v3, 0x1

    .line 19
    aput-char v0, v1, v3

    const/4 v0, 0x2

    const/16 v3, 0x74

    .line 20
    aput-char v3, v1, v0

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const/16 v3, 0x73

    .line 22
    aput-char v3, v1, v2

    .line 23
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 24
    invoke-static {p2}, Lorg/mozilla/javascript/FunctionObject;->getMethodList(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p2

    .line 25
    invoke-static {p2, v0}, Lorg/mozilla/javascript/FunctionObject;->findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 26
    invoke-static {p2, v2}, Lorg/mozilla/javascript/FunctionObject;->findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-nez p2, :cond_0

    or-int/lit8 p3, p3, 0x1

    :cond_0
    move v8, p3

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object v7, p2

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 27
    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    return-void

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    .line 2
    invoke-virtual {p0, p1, p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Ljava/lang/String;I)V

    return-void
.end method

.method public defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V
    .locals 9

    .line 29
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_7

    .line 30
    new-instance v4, Lorg/mozilla/javascript/MemberBox;

    invoke-direct {v4, p3}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    .line 31
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    .line 32
    :goto_0
    iput-object p2, v4, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    goto :goto_1

    .line 33
    :cond_1
    iput-object v0, v4, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    move v5, v2

    .line 34
    :goto_1
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 35
    array-length v7, v6

    if-nez v7, :cond_3

    if-eqz v5, :cond_2

    .line 36
    const-string v5, "msg.obj.getter.parms"

    goto :goto_3

    :cond_2
    move-object v5, v3

    goto :goto_3

    .line 37
    :cond_3
    array-length v7, v6

    const-string v8, "msg.bad.getter.parms"

    if-ne v7, v2, :cond_5

    .line 38
    aget-object v6, v6, v1

    .line 39
    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-eq v6, v7, :cond_4

    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableObjectClass:Ljava/lang/Class;

    if-eq v6, v7, :cond_4

    goto :goto_2

    :cond_4
    if-nez v5, :cond_2

    :cond_5
    :goto_2
    move-object v5, v8

    :goto_3
    if-nez v5, :cond_6

    goto :goto_4

    .line 40
    :cond_6
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_7
    move-object v4, v3

    :goto_4
    if-eqz p4, :cond_10

    .line 41
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    if-ne p3, v0, :cond_f

    .line 42
    new-instance p3, Lorg/mozilla/javascript/MemberBox;

    invoke-direct {p3, p4}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    .line 43
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz p2, :cond_8

    move v0, v2

    goto :goto_5

    :cond_8
    move v0, v1

    .line 44
    :goto_5
    iput-object p2, p3, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    goto :goto_6

    .line 45
    :cond_9
    iput-object v0, p3, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    move v0, v2

    .line 46
    :goto_6
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    .line 47
    array-length v5, p2

    if-ne v5, v2, :cond_a

    if-eqz v0, :cond_d

    .line 48
    const-string v3, "msg.setter2.expected"

    goto :goto_7

    .line 49
    :cond_a
    array-length v2, p2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_c

    .line 50
    aget-object p2, p2, v1

    .line 51
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-eq p2, v2, :cond_b

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableObjectClass:Ljava/lang/Class;

    if-eq p2, v2, :cond_b

    .line 52
    const-string v3, "msg.setter2.parms"

    goto :goto_7

    :cond_b
    if-nez v0, :cond_d

    .line 53
    const-string v3, "msg.setter1.parms"

    goto :goto_7

    .line 54
    :cond_c
    const-string v3, "msg.setter.parms"

    :cond_d
    :goto_7
    if-nez v3, :cond_e

    move-object v3, p3

    goto :goto_8

    .line 55
    :cond_e
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    .line 56
    :cond_f
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "msg.setter.return"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    .line 57
    :cond_10
    :goto_8
    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    new-instance p3, Lorg/mozilla/javascript/J;

    const/4 p4, 0x2

    invoke-direct {p3, p4}, Lorg/mozilla/javascript/J;-><init>(I)V

    invoke-virtual {p2, p1, v1, p3}, Lorg/mozilla/javascript/SlotMapContainer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/AccessorSlot;

    .line 58
    invoke-virtual {p1, p5}, Lorg/mozilla/javascript/Slot;->setAttributes(I)V

    if-eqz v4, :cond_11

    .line 59
    new-instance p2, Lorg/mozilla/javascript/AccessorSlot$MemberBoxGetter;

    invoke-direct {p2, v4}, Lorg/mozilla/javascript/AccessorSlot$MemberBoxGetter;-><init>(Lorg/mozilla/javascript/MemberBox;)V

    iput-object p2, p1, Lorg/mozilla/javascript/AccessorSlot;->getter:Lorg/mozilla/javascript/AccessorSlot$Getter;

    :cond_11
    if-eqz v3, :cond_12

    .line 60
    new-instance p2, Lorg/mozilla/javascript/AccessorSlot$MemberBoxSetter;

    invoke-direct {p2, v3}, Lorg/mozilla/javascript/AccessorSlot$MemberBoxSetter;-><init>(Lorg/mozilla/javascript/MemberBox;)V

    iput-object p2, p1, Lorg/mozilla/javascript/AccessorSlot;->setter:Lorg/mozilla/javascript/AccessorSlot$Setter;

    :cond_12
    return-void
.end method

.method public defineProperty(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/util/function/Consumer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    new-instance v1, Lorg/mozilla/javascript/J;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/J;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/mozilla/javascript/SlotMapContainer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/LambdaSlot;

    .line 62
    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/Slot;->setAttributes(I)V

    .line 63
    iput-object p2, p1, Lorg/mozilla/javascript/LambdaSlot;->getter:Ljava/util/function/Supplier;

    .line 64
    iput-object p3, p1, Lorg/mozilla/javascript/LambdaSlot;->setter:Ljava/util/function/Consumer;

    return-void
.end method

.method public defineProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiConsumer;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    const-string p1, "at least one of {getter, setter} is required"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 66
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->createLambdaAccessorSlot(Ljava/lang/Object;ILjava/util/function/Function;Ljava/util/function/BiConsumer;I)Lorg/mozilla/javascript/LambdaAccessorSlot;

    move-result-object v7

    .line 67
    invoke-virtual {v7, p1}, Lorg/mozilla/javascript/LambdaAccessorSlot;->buildPropertyDescriptor(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v8

    .line 68
    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/ScriptableObject;->checkPropertyDefinition(Lorg/mozilla/javascript/ScriptableObject;)V

    .line 69
    iget-object p2, v0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    new-instance v3, Lorg/mozilla/javascript/K;

    move-object v5, p1

    move-object v4, v0

    move-object v6, v1

    invoke-direct/range {v3 .. v8}, Lorg/mozilla/javascript/K;-><init>(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/LambdaAccessorSlot;Lorg/mozilla/javascript/ScriptableObject;)V

    const/4 p1, 0x0

    invoke-virtual {p2, v1, p1, v3}, Lorg/mozilla/javascript/SlotMapContainer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;

    return-void
.end method

.method public defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V
    .locals 1

    .line 11
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    .line 12
    invoke-virtual {v0, p6}, Lorg/mozilla/javascript/BaseFunction;->setStandardPropertyAttributes(I)V

    .line 13
    invoke-virtual {p0, p2, v0, p5}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public defineProperty(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    .line 5
    invoke-virtual {p0, p1, p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Lorg/mozilla/javascript/Symbol;I)V

    return-void
.end method

.method public delete(I)V
    .locals 4

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    .line 4
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    new-instance v2, Lorg/mozilla/javascript/J;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/J;-><init>(I)V

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/SlotMapContainer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    .line 2
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    new-instance v2, Lorg/mozilla/javascript/J;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/J;-><init>(I)V

    invoke-virtual {v1, p1, v0, v2}, Lorg/mozilla/javascript/SlotMapContainer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;

    return-void
.end method

.method public delete(Lorg/mozilla/javascript/Symbol;)V
    .locals 4

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    .line 6
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    new-instance v2, Lorg/mozilla/javascript/J;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/J;-><init>(I)V

    invoke-virtual {v1, p1, v0, v2}, Lorg/mozilla/javascript/SlotMapContainer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;

    return-void
.end method

.method public equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-ne p0, p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lorg/mozilla/javascript/ExternalArrayData;->getArrayLength()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 6
    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    invoke-interface {p2, p1}, Lorg/mozilla/javascript/ExternalArrayData;->getArrayElement(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    if-nez p1, :cond_2

    .line 9
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    .line 10
    :cond_2
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Slot;->getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 14
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz v0, :cond_1

    .line 17
    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 19
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 20
    :goto_0
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, v0, :cond_5

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_4

    .line 22
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    :cond_4
    return-object p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Slot;->getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    .line 11
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    if-nez p1, :cond_0

    .line 12
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Slot;->getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllIds()[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->associatedValues:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes(I)I
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributeSlot(Ljava/lang/String;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result p1

    return p1
.end method

.method public final getAttributes(ILorg/mozilla/javascript/Scriptable;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(I)I

    move-result p1

    return p1
.end method

.method public getAttributes(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->getAttributeSlot(Ljava/lang/String;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result p1

    return p1
.end method

.method public final getAttributes(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAttributes(Lorg/mozilla/javascript/Symbol;)I
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributeSlot(Lorg/mozilla/javascript/Symbol;)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result p1

    return p1
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getDefaultValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getExternalArrayData()Lorg/mozilla/javascript/ExternalArrayData;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    return-object v0
.end method

.method public getExternalArrayLength()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/mozilla/javascript/ExternalArrayData;->getArrayLength()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    if-eqz p4, :cond_3

    .line 3
    invoke-virtual {p2, p1, p3}, Lorg/mozilla/javascript/Slot;->getSetterFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p2, p1, p3}, Lorg/mozilla/javascript/Slot;->getGetterFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_4

    .line 5
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_4
    return-object p1
.end method

.method public getGetterOrSetter(Ljava/lang/String;IZ)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2, p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->getGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getIds(ZZ)[Ljava/lang/Object;
    .locals 10

    .line 2
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/mozilla/javascript/ExternalArrayData;->getArrayLength()I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_2

    .line 4
    :cond_1
    new-array v2, v0, [Ljava/lang/Object;

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_2

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_2
    :goto_2
    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v3}, Lorg/mozilla/javascript/SlotMapContainer;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    .line 7
    :cond_3
    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v3}, Lorg/mozilla/javascript/SlotMapContainer;->readLock()J

    move-result-wide v3

    .line 8
    :try_start_0
    iget-object v5, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v5}, Lorg/mozilla/javascript/SlotMapContainer;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v0

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/Slot;

    if-nez p1, :cond_5

    .line 9
    invoke-virtual {v7}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_4

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_5
    :goto_4
    if-nez p2, :cond_6

    iget-object v8, v7, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    instance-of v8, v8, Lorg/mozilla/javascript/Symbol;

    if-nez v8, :cond_4

    :cond_6
    if-ne v6, v0, :cond_8

    .line 10
    iget-object v8, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v8}, Lorg/mozilla/javascript/SlotMapContainer;->dirtySize()I

    move-result v8

    add-int/2addr v8, v0

    new-array v8, v8, [Ljava/lang/Object;

    if-eqz v2, :cond_7

    .line 11
    invoke-static {v2, v1, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    move-object v2, v8

    :cond_8
    add-int/lit8 v8, v6, 0x1

    .line 12
    iget-object v9, v7, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    if-eqz v9, :cond_9

    goto :goto_5

    :cond_9
    iget v7, v7, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_5
    aput-object v9, v2, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v8

    goto :goto_3

    .line 13
    :cond_a
    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/SlotMapContainer;->unlockRead(J)V

    .line 14
    array-length p1, v2

    add-int/2addr p1, v0

    if-ne v6, p1, :cond_b

    goto :goto_6

    .line 15
    :cond_b
    new-array p1, v6, [Ljava/lang/Object;

    .line 16
    invoke-static {v2, v1, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    .line 17
    :goto_6
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    if-eqz p1, :cond_c

    const/16 p2, 0x10

    .line 18
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 19
    sget-object p1, Lorg/mozilla/javascript/ScriptableObject;->KEY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_c
    return-object v2

    .line 20
    :goto_7
    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p2, v3, v4}, Lorg/mozilla/javascript/SlotMapContainer;->unlockRead(J)V

    .line 21
    throw p1
.end method

.method public getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->querySlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Slot;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1, p0}, Lorg/mozilla/javascript/Slot;->getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public getParentScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->parentScopeObject:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->prototypeObject:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->avoidObjectDetection()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "undefined"

    return-object v0

    :cond_0
    const-string v0, "object"

    return-object v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 3

    .line 2
    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Lorg/mozilla/javascript/ExternalArrayData;->getArrayLength()I

    move-result p2

    if-ge p1, p2, :cond_0

    return v1

    :cond_0
    return v0

    .line 4
    :cond_1
    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, p1}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    .line 5
    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->jsDelegatesTo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public isConst(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result p1

    const/4 v0, 0x5

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SlotMapContainer;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isExtensible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    return v0
.end method

.method public isGetterOrSetter(Ljava/lang/String;IZ)Z
    .locals 0

    iget-object p3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p3, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Slot;->isSetterSlot()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isSealed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isSealed:Z

    return v0
.end method

.method public preventExtensions()Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    const/4 v0, 0x1

    return v0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lorg/mozilla/javascript/ExternalArrayData;->getArrayLength()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 6
    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    invoke-interface {p2, p1, p3}, Lorg/mozilla/javascript/ExternalArrayData;->setArrayElement(ILjava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Lorg/mozilla/javascript/JavaScriptException;

    .line 8
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    sget-object p3, Lorg/mozilla/javascript/TopLevel$NativeErrors;->RangeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const-string v0, "External array index out of bounds "

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-static {p2, p0, p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->newNativeError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$NativeErrors;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw p1

    .line 10
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Context;->isCurrentContextStrict()Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->putOwnProperty(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-eq p2, p0, :cond_3

    .line 11
    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/mozilla/javascript/Context;->isCurrentContextStrict()Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->putOwnProperty(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eq p2, p0, :cond_1

    .line 2
    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    .line 13
    invoke-static {}, Lorg/mozilla/javascript/Context;->isCurrentContextStrict()Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->putOwnProperty(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eq p2, p0, :cond_1

    .line 14
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->putConstImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eq v3, v0, :cond_2

    instance-of p1, v3, Lorg/mozilla/javascript/ConstProperties;

    if-eqz p1, :cond_1

    move-object p2, v3

    check-cast p2, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {p2, v1, v3, v4}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v3, v1, v3, v4}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public putOwnProperty(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Z
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->putImpl(Ljava/lang/Object;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public putOwnProperty(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Z
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->putImpl(Ljava/lang/Object;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public putOwnProperty(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Z
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->putImpl(Ljava/lang/Object;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public querySlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Slot;
    .locals 1

    instance-of p1, p2, Lorg/mozilla/javascript/Symbol;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object p1

    iget-object p2, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v0, 0x0

    iget p1, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-virtual {p2, v0, p1}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    return-object p1
.end method

.method public sameValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    if-ne p2, v0, :cond_1

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_1
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public sealObject()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-boolean v1, p0, Lorg/mozilla/javascript/ScriptableObject;->isSealed:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Slot;

    iget-object v3, v2, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    instance-of v4, v3, Lorg/mozilla/javascript/LazilyLoadedCtor;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/mozilla/javascript/LazilyLoadedCtor;

    :try_start_0
    invoke-virtual {v3}, Lorg/mozilla/javascript/LazilyLoadedCtor;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lorg/mozilla/javascript/LazilyLoadedCtor;->getValue()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lorg/mozilla/javascript/LazilyLoadedCtor;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v1}, Lorg/mozilla/javascript/SlotMapContainer;->readLock()J

    move-result-wide v1

    :try_start_1
    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v3}, Lorg/mozilla/javascript/SlotMapContainer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/Slot;

    iget-object v5, v4, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    instance-of v5, v5, Lorg/mozilla/javascript/LazilyLoadedCtor;

    if-eqz v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/mozilla/javascript/ScriptableObject;->isSealed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v3, v1, v2}, Lorg/mozilla/javascript/SlotMapContainer;->unlockRead(J)V

    goto :goto_0

    :goto_3
    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v3, v1, v2}, Lorg/mozilla/javascript/SlotMapContainer;->unlockRead(J)V

    throw v0

    :cond_5
    return-void
.end method

.method public setAttributes(II)V
    .locals 3

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    .line 7
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/SlotMapContainer;->modify(Ljava/lang/Object;II)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Slot;->setAttributes(I)V

    return-void
.end method

.method public setAttributes(ILorg/mozilla/javascript/Scriptable;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(II)V

    return-void
.end method

.method public setAttributes(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    .line 4
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v1, p1, v0, v0}, Lorg/mozilla/javascript/SlotMapContainer;->modify(Ljava/lang/Object;II)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Slot;->setAttributes(I)V

    return-void
.end method

.method public final setAttributes(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Ljava/lang/String;I)V

    return-void
.end method

.method public setAttributes(Lorg/mozilla/javascript/Symbol;I)V
    .locals 2

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    .line 10
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v1, p1, v0, v0}, Lorg/mozilla/javascript/SlotMapContainer;->modify(Ljava/lang/Object;II)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Slot;->setAttributes(I)V

    return-void
.end method

.method public setCommonDescriptorProperties(IZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v2, "writable"

    invoke-virtual {p0, v2, p2, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_1
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v2, "enumerable"

    invoke-virtual {p0, v2, p2, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "configurable"

    invoke-virtual {p0, p2, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setExternalArrayData(Lorg/mozilla/javascript/ExternalArrayData;)V
    .locals 6

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    if-nez p1, :cond_0

    const-string p1, "length"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v3, Lorg/mozilla/javascript/ScriptableObject;->GET_ARRAY_LENGTH:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v1, "length"

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    return-void
.end method

.method public setGetterOrSetter(Ljava/lang/Object;ILorg/mozilla/javascript/Callable;Z)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    new-instance v1, Lorg/mozilla/javascript/J;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/J;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Lorg/mozilla/javascript/SlotMapContainer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;

    move-result-object p2

    check-cast p2, Lorg/mozilla/javascript/AccessorSlot;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p2

    instance-of v0, p2, Lorg/mozilla/javascript/AccessorSlot;

    if-eqz v0, :cond_7

    check-cast p2, Lorg/mozilla/javascript/AccessorSlot;

    :goto_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    const/4 p1, 0x0

    if-eqz p4, :cond_4

    instance-of p4, p3, Lorg/mozilla/javascript/Function;

    if-eqz p4, :cond_3

    new-instance p1, Lorg/mozilla/javascript/AccessorSlot$FunctionSetter;

    invoke-direct {p1, p3}, Lorg/mozilla/javascript/AccessorSlot$FunctionSetter;-><init>(Ljava/lang/Object;)V

    iput-object p1, p2, Lorg/mozilla/javascript/AccessorSlot;->setter:Lorg/mozilla/javascript/AccessorSlot$Setter;

    goto :goto_2

    :cond_3
    iput-object p1, p2, Lorg/mozilla/javascript/AccessorSlot;->setter:Lorg/mozilla/javascript/AccessorSlot$Setter;

    goto :goto_2

    :cond_4
    instance-of p4, p3, Lorg/mozilla/javascript/Function;

    if-eqz p4, :cond_5

    new-instance p1, Lorg/mozilla/javascript/AccessorSlot$FunctionGetter;

    invoke-direct {p1, p3}, Lorg/mozilla/javascript/AccessorSlot$FunctionGetter;-><init>(Ljava/lang/Object;)V

    iput-object p1, p2, Lorg/mozilla/javascript/AccessorSlot;->getter:Lorg/mozilla/javascript/AccessorSlot$Getter;

    goto :goto_2

    :cond_5
    iput-object p1, p2, Lorg/mozilla/javascript/AccessorSlot;->getter:Lorg/mozilla/javascript/AccessorSlot$Getter;

    :goto_2
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object p1, p2, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    return-void

    :cond_6
    const-string p2, "msg.modify.readonly"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_7
    return-void
.end method

.method public setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->parentScopeObject:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->prototypeObject:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SlotMapContainer;->size()I

    move-result v0

    return v0
.end method
