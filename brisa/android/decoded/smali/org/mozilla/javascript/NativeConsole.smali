.class public Lorg/mozilla/javascript/NativeConsole;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;,
        Lorg/mozilla/javascript/NativeConsole$Level;
    }
.end annotation


# static fields
.field private static final CONSOLE_TAG:Ljava/lang/Object;

.field private static final DEFAULT_LABEL:Ljava/lang/String; = "default"

.field private static final FMT_REG:Ljava/util/regex/Pattern;

.field private static final Id_assert:I = 0x8

.field private static final Id_count:I = 0x9

.field private static final Id_countReset:I = 0xa

.field private static final Id_debug:I = 0x3

.field private static final Id_error:I = 0x7

.field private static final Id_info:I = 0x5

.field private static final Id_log:I = 0x4

.field private static final Id_time:I = 0xb

.field private static final Id_timeEnd:I = 0xc

.field private static final Id_timeLog:I = 0xd

.field private static final Id_toSource:I = 0x1

.field private static final Id_trace:I = 0x2

.field private static final Id_warn:I = 0x6

.field private static final LAST_METHOD_ID:I = 0xd

.field private static final MAX_ID:I = 0xd

.field private static final serialVersionUID:J = 0x4f07548b9dd24921L


# instance fields
.field private final counters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

.field private final timers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Console"

    sput-object v0, Lorg/mozilla/javascript/NativeConsole;->CONSOLE_TAG:Ljava/lang/Object;

    const-string v0, "%[sfdioOc%]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeConsole;->FMT_REG:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->timers:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->counters:Ljava/util/Map;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    return-void
.end method

.method private count(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 3

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "default"

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->counters:Ljava/util/Map;

    new-instance v1, Lorg/mozilla/javascript/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/a;-><init>(I)V

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    sget-object v1, Lorg/mozilla/javascript/NativeConsole$Level;->INFO:Lorg/mozilla/javascript/NativeConsole$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, v1, p3}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    return-void
.end method

.method private countReset(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 3

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "default"

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->counters:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_1

    sget-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    const-string v1, "Count for \'"

    const-string v2, "\' does not exist."

    invoke-static {v1, p3, v2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static format(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    if-eqz p2, :cond_f

    array-length v1, p2

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    aget-object v3, p2, v2

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/mozilla/javascript/ConsString;

    if-eqz v4, :cond_b

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/javascript/NativeConsole;->FMT_REG:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    const-string v7, "%%"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "%"

    goto/16 :goto_3

    :cond_2
    array-length v7, p2

    if-lt v5, v7, :cond_3

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_3
    aget-object v7, p2, v5

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v8, "%s"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v9, 0x5

    goto :goto_2

    :sswitch_1
    const-string v8, "%o"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x4

    goto :goto_2

    :sswitch_2
    const-string v8, "%i"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v9, 0x3

    goto :goto_2

    :sswitch_3
    const-string v8, "%f"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_4
    const-string v8, "%d"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move v9, v4

    goto :goto_2

    :sswitch_5
    const-string v8, "%O"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    move v9, v2

    :goto_2
    packed-switch v9, :pswitch_data_0

    move-object v6, v0

    goto :goto_1

    :pswitch_0
    invoke-static {v7}, Lorg/mozilla/javascript/NativeConsole;->formatString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :pswitch_1
    invoke-static {v7}, Lorg/mozilla/javascript/NativeConsole;->formatFloat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :pswitch_2
    invoke-static {v7}, Lorg/mozilla/javascript/NativeConsole;->formatInt(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :pswitch_3
    invoke-static {p0, p1, v7}, Lorg/mozilla/javascript/NativeConsole;->formatObj(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :goto_3
    invoke-static {v6}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move v2, v5

    :cond_b
    :goto_4
    array-length v0, p2

    if-ge v2, v0, :cond_e

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    aget-object v0, p2, v2

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-static {v0}, Lorg/mozilla/javascript/NativeConsole;->formatString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_d
    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/NativeConsole;->formatObj(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_6
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4ca -> :sswitch_5
        0x4df -> :sswitch_4
        0x4e1 -> :sswitch_3
        0x4e4 -> :sswitch_2
        0x4ea -> :sswitch_1
        0x4ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static formatFloat(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    const/16 p0, 0xa

    invoke-static {v0, v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatInt(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/math/BigInteger;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->bigIntToString(Ljava/math/BigInteger;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "n"

    invoke-static {p0, v0}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatObj(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-static {p2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p2, Lorg/mozilla/javascript/NativeError;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/mozilla/javascript/NativeError;

    invoke-virtual {p2}, Lorg/mozilla/javascript/NativeError;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    invoke-static {p0, p1}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "stack"

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :try_start_0
    new-instance v0, Lorg/mozilla/javascript/NativeConsole$1;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/NativeConsole$1;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/NativeJSON;->stringify(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/mozilla/javascript/EcmaError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "TypeError"

    invoke-virtual {p0}, Lorg/mozilla/javascript/EcmaError;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    throw p0
.end method

.method private static formatString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "n"

    invoke-static {p0, v0}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeConsole;->lambda$count$0(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;ZLorg/mozilla/javascript/NativeConsole$ConsolePrinter;)V
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/NativeConsole;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/NativeConsole;-><init>(Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;)V

    const/16 p2, 0xd

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    const-string p1, "console"

    const/4 p2, 0x2

    invoke-static {p0, p1, v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private jsAssert(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    aget-object v3, v1, v2

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_3

    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    aget-object v4, v1, v3

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Assertion failed: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    array-length v4, v1

    sub-int/2addr v4, v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v5

    goto :goto_0

    :cond_2
    const-string v3, "Assertion failed:"

    aput-object v3, v1, v2

    move-object v8, v1

    :goto_0
    iget-object v4, v0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    sget-object v7, Lorg/mozilla/javascript/NativeConsole$Level;->ERROR:Lorg/mozilla/javascript/NativeConsole$Level;

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-interface/range {v4 .. v9}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    return-void

    :cond_3
    :goto_1
    iget-object v10, v0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    sget-object v13, Lorg/mozilla/javascript/NativeConsole$Level;->ERROR:Lorg/mozilla/javascript/NativeConsole$Level;

    const-string v1, "Assertion failed: console.assert"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-interface/range {v10 .. v15}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    return-void
.end method

.method private static synthetic lambda$count$0(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    new-instance p0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object p0
.end method

.method private nano2Milli(Ljava/lang/Long;)D
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    return-void
.end method

.method private time(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 3

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "default"

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->timers:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    const-string v1, "Timer \'"

    const-string v2, "\' already exists."

    invoke-static {v1, p3, v2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/NativeConsole;->timers:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private timeEnd(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 6

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "default"

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeConsole;->timers:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    sget-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    const-string v1, "Timer \'"

    const-string v2, "\' does not exist."

    invoke-static {v1, p3, v2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lorg/mozilla/javascript/NativeConsole$Level;->INFO:Lorg/mozilla/javascript/NativeConsole$Level;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeConsole;->nano2Milli(Ljava/lang/Long;)D

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, v1, p3}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    return-void
.end method

.method private timeLog(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 7

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "default"

    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/NativeConsole;->timers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_1

    sget-object p3, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    const-string v1, "Timer \'"

    const-string v2, "\' does not exist."

    invoke-static {v1, v0, v2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeConsole;->nano2Milli(Ljava/lang/Long;)D

    move-result-wide v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    :goto_1
    array-length v0, p3

    if-ge v1, v0, :cond_2

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p3, v1

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object p3, Lorg/mozilla/javascript/NativeConsole$Level;->INFO:Lorg/mozilla/javascript/NativeConsole$Level;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/NativeConsole;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lorg/mozilla/javascript/NativeConsole;->CONSOLE_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p0

    return-object p1

    :cond_0
    move-object v1, p2

    move-object v2, p3

    move-object v4, p5

    move-object p2, p0

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p3, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    :pswitch_0
    invoke-direct {p0, v1, v2, v4}, Lorg/mozilla/javascript/NativeConsole;->timeLog(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1, v2, v4}, Lorg/mozilla/javascript/NativeConsole;->timeEnd(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1, v2, v4}, Lorg/mozilla/javascript/NativeConsole;->time(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1, v2, v4}, Lorg/mozilla/javascript/NativeConsole;->countReset(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v1, v2, v4}, Lorg/mozilla/javascript/NativeConsole;->count(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v1, v2, v4}, Lorg/mozilla/javascript/NativeConsole;->jsAssert(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p2, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    sget-object v3, Lorg/mozilla/javascript/NativeConsole$Level;->ERROR:Lorg/mozilla/javascript/NativeConsole$Level;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p2, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    sget-object v3, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p2, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    sget-object v3, Lorg/mozilla/javascript/NativeConsole$Level;->INFO:Lorg/mozilla/javascript/NativeConsole$Level;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p2, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    sget-object v3, Lorg/mozilla/javascript/NativeConsole$Level;->DEBUG:Lorg/mozilla/javascript/NativeConsole$Level;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    goto :goto_0

    :pswitch_a
    new-instance p1, Lorg/mozilla/javascript/EvaluatorException;

    const-string p3, "[object Object]"

    invoke-direct {p1, p3}, Lorg/mozilla/javascript/EvaluatorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->getScriptStack()[Lorg/mozilla/javascript/ScriptStackElement;

    move-result-object v5

    iget-object v0, p2, Lorg/mozilla/javascript/NativeConsole;->printer:Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;

    sget-object v3, Lorg/mozilla/javascript/NativeConsole$Level;->TRACE:Lorg/mozilla/javascript/NativeConsole$Level;

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/NativeConsole$ConsolePrinter;->print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeConsole$Level;[Ljava/lang/Object;[Lorg/mozilla/javascript/ScriptStackElement;)V

    :goto_0
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_b
    const-string p1, "Console"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "trace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    move v15, v2

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    move v15, v3

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    move v15, v4

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    move v15, v5

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "warn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    move v15, v6

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    move v15, v7

    goto :goto_0

    :sswitch_6
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v15, v8

    goto :goto_0

    :sswitch_7
    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v15, v9

    goto :goto_0

    :sswitch_8
    const-string v1, "countReset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v15, v10

    goto :goto_0

    :sswitch_9
    const-string v1, "timeLog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v15, v11

    goto :goto_0

    :sswitch_a
    const-string v1, "timeEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v15, v12

    goto :goto_0

    :sswitch_b
    const-string v1, "assert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    move v15, v13

    goto :goto_0

    :sswitch_c
    const-string v1, "toSource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    move v15, v14

    :goto_0
    packed-switch v15, :pswitch_data_0

    return v14

    :pswitch_0
    return v12

    :pswitch_1
    return v7

    :pswitch_2
    return v11

    :pswitch_3
    return v5

    :pswitch_4
    return v8

    :pswitch_5
    return v3

    :pswitch_6
    return v9

    :pswitch_7
    return v10

    :pswitch_8
    return v4

    :pswitch_9
    const/16 v0, 0xd

    return v0

    :pswitch_a
    return v2

    :pswitch_b
    return v6

    :pswitch_c
    return v13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a2ea58a -> :sswitch_c
        -0x53ef8cba -> :sswitch_b
        -0x4e515132 -> :sswitch_a
        -0x4e5136c9 -> :sswitch_9
        -0x3e70d280 -> :sswitch_8
        0x1a344 -> :sswitch_7
        0x3164ae -> :sswitch_6
        0x3652cd -> :sswitch_5
        0x379286 -> :sswitch_4
        0x5a7510f -> :sswitch_3
        0x5b09653 -> :sswitch_2
        0x5c4d208 -> :sswitch_1
        0x697f145 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
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
        :pswitch_0
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Console"

    return-object v0
.end method

.method public initPrototypeId(I)V
    .locals 4

    const/16 v0, 0xd

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "timeLog"

    goto :goto_1

    :pswitch_1
    const-string v0, "timeEnd"

    :goto_0
    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_1

    :pswitch_2
    const-string v0, "time"

    goto :goto_0

    :pswitch_3
    const-string v0, "countReset"

    goto :goto_0

    :pswitch_4
    const-string v0, "count"

    goto :goto_0

    :pswitch_5
    const-string v1, "assert"

    goto :goto_1

    :pswitch_6
    const-string v0, "error"

    goto :goto_0

    :pswitch_7
    const-string v0, "warn"

    goto :goto_0

    :pswitch_8
    const-string v0, "info"

    goto :goto_0

    :pswitch_9
    const-string v0, "log"

    goto :goto_0

    :pswitch_a
    const-string v0, "debug"

    goto :goto_0

    :pswitch_b
    const-string v0, "trace"

    goto :goto_0

    :pswitch_c
    const/4 v0, 0x0

    const-string v1, "toSource"

    :goto_1
    sget-object v2, Lorg/mozilla/javascript/NativeConsole;->CONSOLE_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
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
        :pswitch_0
    .end packed-switch
.end method
