.class public Lorg/mozilla/javascript/NativeSet;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# static fields
.field static final GETSIZE:Lorg/mozilla/javascript/SymbolKey;

.field static final ITERATOR_TAG:Ljava/lang/String; = "Set Iterator"

.field private static final Id_add:I = 0x2

.field private static final Id_clear:I = 0x5

.field private static final Id_constructor:I = 0x1

.field private static final Id_delete:I = 0x3

.field private static final Id_entries:I = 0x7

.field private static final Id_forEach:I = 0x8

.field private static final Id_has:I = 0x4

.field private static final Id_keys:I = 0x6

.field private static final Id_values:I = 0x6

.field private static final MAX_PROTOTYPE_ID:I = 0xa

.field private static final SET_TAG:Ljava/lang/Object;

.field private static final SymbolId_getSize:I = 0x9

.field private static final SymbolId_toStringTag:I = 0xa

.field private static final serialVersionUID:J = -0x7528c3c8668835daL


# instance fields
.field private final entries:Lorg/mozilla/javascript/Hashtable;

.field private instanceOfSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Set"

    sput-object v0, Lorg/mozilla/javascript/NativeSet;->SET_TAG:Ljava/lang/Object;

    new-instance v0, Lorg/mozilla/javascript/SymbolKey;

    const-string v1, "[Symbol.getSize]"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/SymbolKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeSet;->GETSIZE:Lorg/mozilla/javascript/SymbolKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/Hashtable;

    invoke-direct {v0}, Lorg/mozilla/javascript/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeSet;->instanceOfSet:Z

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 5

    new-instance v0, Lorg/mozilla/javascript/NativeSet;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeSet;-><init>()V

    const/16 v1, 0xa

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

.method private js_add(Ljava/lang/Object;)Ljava/lang/Object;
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
    iget-object v0, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1, p1}, Lorg/mozilla/javascript/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private js_clear()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Hashtable;->clear()V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method private js_delete(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Hashtable;->deleteEntry(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private js_forEach(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_3

    check-cast p3, Lorg/mozilla/javascript/Callable;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

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
    iget-object v2, v2, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    filled-new-array {v2, v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, p1, p2, v3, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_3
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private js_getSize()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Hashtable;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private js_has(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Hashtable;->has(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/NativeCollectionIterator;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Hashtable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "Set Iterator"

    invoke-direct {v0, p1, v2, p2, v1}, Lorg/mozilla/javascript/NativeCollectionIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/NativeCollectionIterator$Type;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;)V
    .locals 4

    if-eqz p3, :cond_4

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {p3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->callIterator(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "add"

    invoke-static {v0, v1, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    new-instance v1, Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-direct {v1, p0, p1, p3}, Lorg/mozilla/javascript/IteratorLikeIterable;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator()Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p0, p1, p2, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V

    return-void

    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_4
    :goto_4
    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/NativeSet;

    invoke-static {p0, v0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->ensureType(Ljava/lang/Object;Ljava/lang/Class;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativeSet;

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeSet;->instanceOfSet:Z

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
    .locals 2

    sget-object v0, Lorg/mozilla/javascript/NativeSet;->SET_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Set.prototype has no method: "

    invoke-static {p3, p1}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeSet;->js_getSize()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    invoke-static {p5}, Lorg/mozilla/javascript/NativeMap;->key([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    array-length v0, p5

    if-le v0, v1, :cond_1

    aget-object p5, p5, v1

    goto :goto_0

    :cond_1
    sget-object p5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    invoke-direct {p1, p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeSet;->js_forEach(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->BOTH:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/NativeSet;->js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->VALUES:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/NativeSet;->js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeSet;->js_clear()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    invoke-static {p5}, Lorg/mozilla/javascript/NativeMap;->key([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeSet;->js_has(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    invoke-static {p5}, Lorg/mozilla/javascript/NativeMap;->key([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeSet;->js_delete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    invoke-static {p5}, Lorg/mozilla/javascript/NativeMap;->key([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeSet;->js_add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    if-nez p4, :cond_3

    new-instance p1, Lorg/mozilla/javascript/NativeSet;

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeSet;-><init>()V

    iput-boolean v1, p1, Lorg/mozilla/javascript/NativeSet;->instanceOfSet:Z

    array-length p4, p5

    if-lez p4, :cond_2

    invoke-static {p5}, Lorg/mozilla/javascript/NativeMap;->key([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p1, p4}, Lorg/mozilla/javascript/NativeSet;->loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;)V

    :cond_2
    return-object p1

    :cond_3
    const-string p1, "Set"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "msg.no.new"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 11

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    move v10, v1

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "keys"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    move v10, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "has"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v10, v9

    goto :goto_0

    :sswitch_3
    const-string v0, "add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v10, v3

    goto :goto_0

    :sswitch_4
    const-string v0, "forEach"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v10, v4

    goto :goto_0

    :sswitch_5
    const-string v0, "values"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v10, v5

    goto :goto_0

    :sswitch_6
    const-string v0, "delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v10, v6

    goto :goto_0

    :sswitch_7
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v10, v7

    goto :goto_0

    :sswitch_8
    const-string v0, "entries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move v10, v8

    :goto_0
    packed-switch v10, :pswitch_data_0

    return v8

    :pswitch_0
    return v3

    :pswitch_1
    return v9

    :pswitch_2
    return v4

    :pswitch_3
    return v6

    :pswitch_4
    return v1

    :pswitch_5
    return v9

    :pswitch_6
    return v5

    :pswitch_7
    return v7

    :pswitch_8
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5edd7b70 -> :sswitch_8
        -0x5ead2806 -> :sswitch_7
        -0x4f997a55 -> :sswitch_6
        -0x311a62de -> :sswitch_5
        -0x28732996 -> :sswitch_4
        0x178a1 -> :sswitch_3
        0x1929a -> :sswitch_2
        0x322df4 -> :sswitch_1
        0x5a5b64d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    const/16 p1, 0x9

    return p1

    .line 2
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x6

    return p1

    .line 3
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xa

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Set"

    return-object v0
.end method

.method public initPrototypeId(I)V
    .locals 14

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "forEach"

    :goto_0
    move-object v5, v0

    move v7, v1

    goto :goto_2

    :pswitch_1
    const-string v1, "entries"

    :goto_1
    move v7, v0

    move-object v5, v1

    goto :goto_2

    :pswitch_2
    const-string v1, "values"

    goto :goto_1

    :pswitch_3
    const-string v1, "clear"

    goto :goto_1

    :pswitch_4
    const-string v0, "has"

    goto :goto_0

    :pswitch_5
    const-string v0, "delete"

    goto :goto_0

    :pswitch_6
    const-string v0, "add"

    goto :goto_0

    :pswitch_7
    const-string v1, "constructor"

    goto :goto_1

    :goto_2
    sget-object v3, Lorg/mozilla/javascript/NativeSet;->SET_TAG:Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_0
    move-object v2, p0

    sget-object p1, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSet;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {p0, v0, p1, v1, v3}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeValue(ILorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    return-void

    :cond_1
    move-object v2, p0

    move v4, p1

    sget-object v9, Lorg/mozilla/javascript/NativeSet;->SET_TAG:Ljava/lang/Object;

    sget-object v11, Lorg/mozilla/javascript/NativeSet;->GETSIZE:Lorg/mozilla/javascript/SymbolKey;

    const-string v12, "get size"

    const/4 v13, 0x0

    move-object v8, v2

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
