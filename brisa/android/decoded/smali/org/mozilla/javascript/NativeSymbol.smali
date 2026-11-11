.class public Lorg/mozilla/javascript/NativeSymbol;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Symbol;


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "Symbol"

.field private static final GLOBAL_TABLE_KEY:Ljava/lang/Object;

.field public static final TYPE_NAME:Ljava/lang/String; = "symbol"

.field private static final serialVersionUID:J = -0x82e774764cfb173L


# instance fields
.field private final key:Lorg/mozilla/javascript/SymbolKey;

.field private final symbolData:Lorg/mozilla/javascript/NativeSymbol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/NativeSymbol;->GLOBAL_TABLE_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/NativeSymbol;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 5
    iget-object v0, p1, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    iput-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    .line 6
    iget-object p1, p1, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/SymbolKey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    .line 3
    iput-object p0, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    return-void
.end method

.method private static constructSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 1

    const/4 v0, 0x0

    .line 2
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p0, p1, v0, p3}, Lorg/mozilla/javascript/LambdaConstructor;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativeSymbol;

    return-object p0
.end method

.method private static constructSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/SymbolKey;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0, p3}, Lorg/mozilla/javascript/LambdaConstructor;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativeSymbol;

    return-object p0
.end method

.method private static createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V
    .locals 0

    invoke-static {p0, p1, p2, p4}, Lorg/mozilla/javascript/NativeSymbol;->constructSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/SymbolKey;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p2, p3, p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static getGlobalMap(Lorg/mozilla/javascript/Scriptable;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/NativeSymbol;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    sget-object v0, Lorg/mozilla/javascript/NativeSymbol;->GLOBAL_TABLE_KEY:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private static getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/NativeSymbol;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/LambdaConstructor;->convertThisObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativeSymbol;

    return-object p0
.end method

.method public static synthetic h(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/NativeSymbol;->lambda$js_for$1(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeSymbol;->js_keyFor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 7

    new-instance v0, Lorg/mozilla/javascript/LambdaConstructor;

    new-instance v5, Lorg/mozilla/javascript/F;

    const/4 v1, 0x2

    invoke-direct {v5, v1}, Lorg/mozilla/javascript/F;-><init>(I)V

    const-string v2, "Symbol"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LambdaConstructor;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILorg/mozilla/javascript/Constructable;)V

    const/4 p1, 0x7

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/BaseFunction;->setPrototypePropertyAttributes(I)V

    new-instance v4, Lorg/mozilla/javascript/x;

    const/4 p1, 0x2

    invoke-direct {v4, v0, p1}, Lorg/mozilla/javascript/x;-><init>(Lorg/mozilla/javascript/LambdaConstructor;I)V

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v2, "for"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/G;

    const/4 p1, 0x0

    invoke-direct {v4, p1}, Lorg/mozilla/javascript/G;-><init>(I)V

    const-string v2, "keyFor"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/G;

    const/4 p1, 0x1

    invoke-direct {v4, p1}, Lorg/mozilla/javascript/G;-><init>(I)V

    const-string v2, "toString"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    new-instance v4, Lorg/mozilla/javascript/G;

    const/4 p1, 0x2

    invoke-direct {v4, p1}, Lorg/mozilla/javascript/G;-><init>(I)V

    const-string v2, "valueOf"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->TO_PRIMITIVE:Lorg/mozilla/javascript/SymbolKey;

    new-instance v4, Lorg/mozilla/javascript/G;

    invoke-direct {v4, p1}, Lorg/mozilla/javascript/G;-><init>(I)V

    const/4 v5, 0x3

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/SymbolKey;ILorg/mozilla/javascript/Callable;II)V

    sget-object p1, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    const-string v3, "Symbol"

    const/4 v4, 0x3

    invoke-virtual {v0, p1, v3, v4}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    new-instance v5, Lorg/mozilla/javascript/a;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lorg/mozilla/javascript/a;-><init>(I)V

    const-string v6, "description"

    invoke-virtual {v0, p0, v6, v5, v4}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    const/4 v4, 0x2

    invoke-static {v1, v3, v0, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v3, "iterator"

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, v3, v4}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string v3, "species"

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->SPECIES:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, v3, v4}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string v3, "toStringTag"

    invoke-static {p0, v1, v0, v3, p1}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string p1, "hasInstance"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->HAS_INSTANCE:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string p1, "isConcatSpreadable"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->IS_CONCAT_SPREADABLE:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string p1, "isRegExp"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->IS_REGEXP:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string p1, "toPrimitive"

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string p1, "match"

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->MATCH:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string p1, "matchAll"

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->MATCH_ALL:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string p1, "replace"

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->REPLACE:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string p1, "search"

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->SEARCH:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string p1, "split"

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->SPLIT:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string p1, "unscopables"

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->UNSCOPABLES:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    return-void
.end method

.method private static isStrictMode()Z
    .locals 1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic j(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeSymbol;->js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    return-object p0
.end method

.method private static js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 1

    array-length p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x0

    aget-object p1, p2, p0

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    aget-object p0, p2, p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    array-length p1, p2

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    new-instance p0, Lorg/mozilla/javascript/NativeSymbol;

    aget-object p1, p2, v0

    check-cast p1, Lorg/mozilla/javascript/SymbolKey;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeSymbol;-><init>(Lorg/mozilla/javascript/SymbolKey;)V

    return-object p0

    :cond_1
    new-instance p1, Lorg/mozilla/javascript/NativeSymbol;

    new-instance p2, Lorg/mozilla/javascript/SymbolKey;

    invoke-direct {p2, p0}, Lorg/mozilla/javascript/SymbolKey;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeSymbol;-><init>(Lorg/mozilla/javascript/SymbolKey;)V

    return-object p1
.end method

.method private static js_description(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeSymbol;->getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->getKey()Lorg/mozilla/javascript/SymbolKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/SymbolKey;->getDescription()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static js_for(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/LambdaConstructor;)Ljava/lang/Object;
    .locals 2

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1}, Lorg/mozilla/javascript/NativeSymbol;->getGlobalMap(Lorg/mozilla/javascript/Scriptable;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/H;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/mozilla/javascript/H;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static js_keyFor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    instance-of p3, p2, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz p3, :cond_3

    check-cast p2, Lorg/mozilla/javascript/NativeSymbol;

    invoke-static {p1}, Lorg/mozilla/javascript/NativeSymbol;->getGlobalMap(Lorg/mozilla/javascript/Scriptable;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/mozilla/javascript/NativeSymbol;

    iget-object p3, p3, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    iget-object v0, p2, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    if-ne p3, v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_3
    const-string p2, "TypeError"

    const-string p3, "Not a Symbol"

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->throwCustomError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;

    move-result-object p0

    throw p0
.end method

.method private static js_toString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/NativeSymbol;->getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_valueOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/mozilla/javascript/NativeSymbol;->getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    return-object p0
.end method

.method public static synthetic k(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeSymbol;->js_valueOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeSymbol;->js_toString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$0(Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p4, p0}, Lorg/mozilla/javascript/NativeSymbol;->js_for(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/LambdaConstructor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$js_for$1(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeSymbol;->constructSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeSymbol;->js_description(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/NativeSymbol;->lambda$init$0(Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Symbol"

    return-object v0
.end method

.method public getKey()Lorg/mozilla/javascript/SymbolKey;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    return-object v0
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "symbol"

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTypeOf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SymbolKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSymbol()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/NativeSymbol;->isStrictMode()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "msg.no.assign.symbol.strict"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/NativeSymbol;->isStrictMode()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "msg.no.assign.symbol.strict"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/NativeSymbol;->isStrictMode()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 12
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "msg.no.assign.symbol.strict"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SymbolKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
