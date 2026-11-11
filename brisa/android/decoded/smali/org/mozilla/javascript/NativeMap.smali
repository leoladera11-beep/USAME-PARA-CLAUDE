.class public Lorg/mozilla/javascript/NativeMap;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# static fields
.field private static final ConstructorId_groupBy:I = -0x1

.field static final ITERATOR_TAG:Ljava/lang/String; = "Map Iterator"

.field private static final Id_clear:I = 0x6

.field private static final Id_constructor:I = 0x1

.field private static final Id_delete:I = 0x4

.field private static final Id_entries:I = 0x9

.field private static final Id_forEach:I = 0xa

.field private static final Id_get:I = 0x3

.field private static final Id_has:I = 0x5

.field private static final Id_keys:I = 0x7

.field private static final Id_set:I = 0x2

.field private static final Id_values:I = 0x8

.field private static final MAP_TAG:Ljava/lang/Object;

.field private static final MAX_PROTOTYPE_ID:I = 0xc

.field private static final SymbolId_getSize:I = 0xb

.field private static final SymbolId_toStringTag:I = 0xc

.field private static final serialVersionUID:J = 0x10438168986853fbL


# instance fields
.field private final entries:Lorg/mozilla/javascript/Hashtable;

.field private instanceOfMap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Map"

    sput-object v0, Lorg/mozilla/javascript/NativeMap;->MAP_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/Hashtable;

    invoke-direct {v0}, Lorg/mozilla/javascript/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeMap;->instanceOfMap:Z

    return-void
.end method

.method public static synthetic h(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/mozilla/javascript/NativeMap;->lambda$loadFromIterable$0(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 5

    new-instance v0, Lorg/mozilla/javascript/NativeMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeMap;-><init>()V

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ScriptableObject;

    const-string v3, "enumerable"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string v3, "configurable"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    sget-object v3, Lorg/mozilla/javascript/NativeSet;->GETSIZE:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, v3, v0}, Lorg/mozilla/javascript/IdScriptableObject;->get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get"

    invoke-virtual {v2, v4, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string v3, "size"

    invoke-virtual {v0, p0, v3, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)Z

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->addSymbolSpecies(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdScriptableObject;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    return-void
.end method

.method private js_clear()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Hashtable;->clear()V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method private js_delete(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Hashtable;->deleteEntry(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private js_forEach(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_3

    check-cast p3, Lorg/mozilla/javascript/Callable;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Hashtable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Hashtable$Entry;

    invoke-static {p1, p4, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    move-object v3, p2

    :cond_0
    if-nez v3, :cond_1

    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    :cond_1
    iget-object v4, v2, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    iget-object v2, v2, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    filled-new-array {v4, v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, p1, p2, v3, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_3
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "msg.isnt.function"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private js_get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Hashtable;->getEntry(Ljava/lang/Object;)Lorg/mozilla/javascript/Hashtable$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    return-object p1
.end method

.method private js_getSize()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Hashtable;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private js_has(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Hashtable;->has(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/NativeCollectionIterator;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Hashtable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "Map Iterator"

    invoke-direct {v0, p1, v2, p2, v1}, Lorg/mozilla/javascript/NativeCollectionIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/NativeCollectionIterator$Type;Ljava/util/Iterator;)V

    return-object v0
.end method

.method private js_set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->negativeZero:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static key([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    array-length v0, p0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    instance-of v0, p0, Lorg/mozilla/javascript/Delegator;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/Delegator;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static synthetic lambda$loadFromIterable$0(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    filled-new-array {p4, p5}, [Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;)V
    .locals 2

    if-eqz p3, :cond_2

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->callIterator(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "set"

    invoke-static {v0, v1, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    new-instance v1, Lorg/mozilla/javascript/s;

    invoke-direct {v1, v0, p0, p1, p2}, Lorg/mozilla/javascript/s;-><init>(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;)V

    invoke-static {p0, p1, p3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/util/function/BiConsumer;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/NativeMap;

    invoke-static {p0, v0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->ensureType(Ljava/lang/Object;Ljava/lang/Class;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativeMap;

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeMap;->instanceOfMap:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "msg.incompat.call"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lorg/mozilla/javascript/NativeMap;->MAP_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const-string v6, "Map"

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Map.prototype has no method: "

    invoke-static {p3, p1}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_1
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeMap;->js_getSize()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    array-length p4, p5

    if-lez p4, :cond_1

    aget-object p4, p5, v1

    goto :goto_0

    :cond_1
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    array-length v0, p5

    if-le v0, v2, :cond_2

    aget-object p5, p5, v2

    goto :goto_1

    :cond_2
    sget-object p5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_1
    invoke-direct {p1, p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeMap;->js_forEach(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->BOTH:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/NativeMap;->js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->VALUES:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/NativeMap;->js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->KEYS:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/NativeMap;->js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeMap;->js_clear()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    invoke-static {p5}, Lorg/mozilla/javascript/NativeMap;->key([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeMap;->js_has(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    invoke-static {p5}, Lorg/mozilla/javascript/NativeMap;->key([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeMap;->js_delete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    invoke-static {p5}, Lorg/mozilla/javascript/NativeMap;->key([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeMap;->js_get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    invoke-static {p5}, Lorg/mozilla/javascript/NativeMap;->key([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    array-length p3, p5

    if-le p3, v2, :cond_3

    aget-object p3, p5, v2

    goto :goto_2

    :cond_3
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_2
    invoke-direct {p1, p2, p3}, Lorg/mozilla/javascript/NativeMap;->js_set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    if-nez p4, :cond_5

    new-instance p1, Lorg/mozilla/javascript/NativeMap;

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeMap;-><init>()V

    iput-boolean v2, p1, Lorg/mozilla/javascript/NativeMap;->instanceOfMap:Z

    array-length p4, p5

    if-lez p4, :cond_4

    invoke-static {p5}, Lorg/mozilla/javascript/NativeMap;->key([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p1, p4}, Lorg/mozilla/javascript/NativeMap;->loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;)V

    :cond_4
    return-object p1

    :cond_5
    const-string p1, "msg.no.new"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :pswitch_c
    array-length p4, p5

    if-ge p4, v2, :cond_6

    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_3
    move-object v3, p4

    goto :goto_4

    :cond_6
    aget-object p4, p5, v1

    goto :goto_3

    :goto_4
    array-length p4, p5

    const/4 v0, 0x2

    if-ge p4, v0, :cond_7

    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_5
    move-object v4, p4

    goto :goto_6

    :cond_7
    aget-object p4, p5, v2

    goto :goto_5

    :goto_6
    sget-object v5, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;->COLLECTION:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    move-object v2, p1

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->groupBy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p3, v6}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    check-cast p4, Lorg/mozilla/javascript/NativeMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iget-object v1, p4, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v1, p5, v0}, Lorg/mozilla/javascript/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_8
    return-object p4

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 6

    sget-object v2, Lorg/mozilla/javascript/NativeMap;->MAP_TAG:Ljava/lang/Object;

    const-string v4, "groupBy"

    const/4 v5, 0x2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 12

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    move v11, v1

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "keys"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    move v11, v2

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    move v11, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "has"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v11, v4

    goto :goto_0

    :sswitch_4
    const-string v0, "get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v11, v5

    goto :goto_0

    :sswitch_5
    const-string v0, "forEach"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v11, v6

    goto :goto_0

    :sswitch_6
    const-string v0, "values"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v11, v7

    goto :goto_0

    :sswitch_7
    const-string v0, "delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v11, v8

    goto :goto_0

    :sswitch_8
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move v11, v9

    goto :goto_0

    :sswitch_9
    const-string v0, "entries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v11, v10

    :goto_0
    packed-switch v11, :pswitch_data_0

    return v10

    :pswitch_0
    return v4

    :pswitch_1
    return v3

    :pswitch_2
    return v8

    :pswitch_3
    return v5

    :pswitch_4
    return v7

    :pswitch_5
    const/16 p1, 0xa

    return p1

    :pswitch_6
    return v2

    :pswitch_7
    return v6

    :pswitch_8
    return v9

    :pswitch_9
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5edd7b70 -> :sswitch_9
        -0x5ead2806 -> :sswitch_8
        -0x4f997a55 -> :sswitch_7
        -0x311a62de -> :sswitch_6
        -0x28732996 -> :sswitch_5
        0x18f56 -> :sswitch_4
        0x1929a -> :sswitch_3
        0x1bc62 -> :sswitch_2
        0x322df4 -> :sswitch_1
        0x5a5b64d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/NativeSet;->GETSIZE:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xb

    return p1

    .line 2
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x9

    return p1

    .line 3
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Map"

    return-object v0
.end method

.method public initPrototypeId(I)V
    .locals 14

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "forEach"

    :goto_0
    move v7, v0

    move-object v5, v1

    goto :goto_2

    :pswitch_1
    const-string v0, "entries"

    :goto_1
    move-object v5, v0

    move v7, v1

    goto :goto_2

    :pswitch_2
    const-string v0, "values"

    goto :goto_1

    :pswitch_3
    const-string v0, "keys"

    goto :goto_1

    :pswitch_4
    const-string v0, "clear"

    goto :goto_1

    :pswitch_5
    const-string v1, "has"

    goto :goto_0

    :pswitch_6
    const-string v1, "delete"

    goto :goto_0

    :pswitch_7
    const-string v1, "get"

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x2

    const-string v1, "set"

    goto :goto_0

    :pswitch_9
    const-string v0, "constructor"

    goto :goto_1

    :goto_2
    sget-object v3, Lorg/mozilla/javascript/NativeMap;->MAP_TAG:Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_0
    move-object v2, p0

    sget-object p1, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeMap;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {p0, v0, p1, v1, v3}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeValue(ILorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    return-void

    :cond_1
    move-object v2, p0

    move v4, p1

    sget-object v9, Lorg/mozilla/javascript/NativeMap;->MAP_TAG:Ljava/lang/Object;

    sget-object v11, Lorg/mozilla/javascript/NativeSet;->GETSIZE:Lorg/mozilla/javascript/SymbolKey;

    const-string v12, "get size"

    const/4 v13, 0x0

    move-object v8, v2

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
