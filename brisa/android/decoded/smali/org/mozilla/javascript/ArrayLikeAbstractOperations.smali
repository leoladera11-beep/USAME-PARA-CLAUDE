.class public Lorg/mozilla/javascript/ArrayLikeAbstractOperations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;,
        Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;,
        Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;,
        Lorg/mozilla/javascript/ArrayLikeAbstractOperations$StringLikeComparator;
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$StringLikeComparator;

    invoke-direct {v0}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$StringLikeComparator;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->STRING_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;

    invoke-direct {v0}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->STRING_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p1, p4}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    :cond_0
    long-to-int p0, p2

    invoke-interface {p1, p0, p1, p4}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public static getCallbackArg(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;
    .locals 3

    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/Function;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/RegExpProxy;->isRegExp(Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-int p1, p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSortComparator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    array-length v0, p2

    if-lez v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    if-eq v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getSortComparatorFromArguments(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    return-object p0
.end method

.method public static getSortComparatorFromArguments(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;
    .locals 6

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    const/4 p2, 0x2

    new-array v1, p2, [Ljava/lang/Object;

    new-instance p2, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;

    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$1;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$1;-><init>([Ljava/lang/Object;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    invoke-direct {p2, v0}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ElementComparator;-><init>(Ljava/util/Comparator;)V

    return-object p2
.end method

.method public static iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    .line 3
    invoke-static {v0, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    if-nez p6, :cond_1

    .line 4
    sget-object v5, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v5, v1, :cond_0

    sget-object v5, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v5, v1, :cond_0

    sget-object v5, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v5, v1, :cond_0

    sget-object v5, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-ne v5, v1, :cond_1

    :cond_0
    move-object/from16 v5, p1

    .line 5
    invoke-static {v0, v4, v5}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    .line 6
    :cond_1
    invoke-static {v0, v4}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v5

    .line 7
    sget-object v7, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->MAP:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const/4 v8, 0x0

    if-ne v1, v7, :cond_3

    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v5, v9

    if-gtz v9, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    const-string v0, "msg.arraylength.bad"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 10
    :cond_3
    :goto_0
    array-length v9, v3

    if-lez v9, :cond_4

    aget-object v9, v3, v8

    goto :goto_1

    :cond_4
    sget-object v9, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 11
    :goto_1
    invoke-static {v0, v9}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getCallbackArg(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;

    move-result-object v9

    .line 12
    invoke-static {v9}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v10

    .line 13
    array-length v11, v3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-lt v11, v12, :cond_6

    aget-object v3, v3, v13

    if-eqz v3, :cond_6

    sget-object v11, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v3, v11, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    invoke-static {v0, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    goto :goto_3

    :cond_6
    :goto_2
    move-object v3, v10

    .line 15
    :goto_3
    sget-object v11, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FILTER:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v1, v11, :cond_8

    if-ne v1, v7, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    :goto_4
    if-ne v1, v7, :cond_9

    long-to-int v7, v5

    goto :goto_5

    :cond_9
    move v7, v8

    .line 16
    :goto_5
    invoke-virtual {v0, v2, v7}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 17
    :goto_6
    sget-object v7, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const-wide/16 v11, 0x0

    const-wide/16 v14, 0x1

    move/from16 p1, v8

    if-eq v1, v7, :cond_b

    sget-object v8, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-ne v1, v8, :cond_a

    goto :goto_7

    :cond_a
    move-wide/from16 v16, v11

    goto :goto_8

    :cond_b
    :goto_7
    sub-long v16, v5, v14

    :goto_8
    const-wide/16 v18, -0x1

    if-eq v1, v7, :cond_c

    .line 18
    sget-object v8, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-ne v1, v8, :cond_d

    :cond_c
    move-wide/from16 v5, v18

    :cond_d
    if-eq v1, v7, :cond_f

    .line 19
    sget-object v7, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-ne v1, v7, :cond_e

    goto :goto_9

    :cond_e
    move-wide/from16 v18, v14

    :cond_f
    :goto_9
    move-wide/from16 v7, v16

    :goto_a
    cmp-long v16, v7, v5

    if-eqz v16, :cond_13

    move-wide/from16 p3, v14

    .line 20
    invoke-static {v4, v7, v8}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v14

    .line 21
    sget-object v15, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v14, v15, :cond_11

    .line 22
    sget-object v14, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v1, v14, :cond_10

    sget-object v14, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v1, v14, :cond_10

    sget-object v14, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-eq v1, v14, :cond_10

    sget-object v14, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    if-ne v1, v14, :cond_12

    .line 23
    :cond_10
    sget-object v14, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 24
    :cond_11
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 25
    filled-new-array {v14, v15, v4}, [Ljava/lang/Object;

    move-result-object v15

    .line 26
    invoke-interface {v9, v0, v10, v3, v15}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    packed-switch v16, :pswitch_data_0

    :pswitch_0
    goto :goto_b

    .line 28
    :pswitch_1
    invoke-static {v13}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    long-to-double v0, v7

    .line 29
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 30
    :pswitch_2
    invoke-static {v13}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    return-object v14

    .line 31
    :pswitch_3
    invoke-static {v13}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 32
    :pswitch_4
    invoke-static {v0, v2, v7, v8, v13}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    goto :goto_b

    .line 33
    :pswitch_5
    invoke-static {v13}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    add-long v13, v11, p3

    aget-object v15, v15, p1

    invoke-static {v0, v2, v11, v12, v15}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    move-wide v11, v13

    goto :goto_b

    .line 34
    :pswitch_6
    invoke-static {v13}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_12
    :goto_b
    add-long v7, v7, v18

    move-wide/from16 v14, p3

    const/4 v13, 0x1

    goto :goto_a

    .line 35
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_14

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    .line 36
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_14
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 37
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 38
    :cond_15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_16
    return-object v2

    .line 39
    :cond_17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static reduceMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v4

    array-length v2, v3

    const/4 v6, 0x0

    if-lez v2, :cond_0

    aget-object v2, v3, v6

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    if-eqz v2, :cond_8

    instance-of v7, v2, Lorg/mozilla/javascript/Function;

    if-eqz v7, :cond_8

    check-cast v2, Lorg/mozilla/javascript/Function;

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    sget-object v8, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->REDUCE:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    const/4 v9, 0x1

    move-object/from16 v10, p1

    if-ne v10, v8, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    array-length v10, v3

    if-le v10, v9, :cond_2

    aget-object v3, v3, v9

    goto :goto_2

    :cond_2
    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    :goto_2
    const-wide/16 v9, 0x0

    :goto_3
    cmp-long v11, v9, v4

    if-gez v11, :cond_6

    const-wide/16 v11, 0x1

    if-eqz v8, :cond_3

    move-wide v13, v9

    goto :goto_4

    :cond_3
    sub-long v13, v4, v11

    sub-long/2addr v13, v9

    :goto_4
    invoke-static {v1, v13, v14}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v15

    move-wide/from16 p1, v11

    sget-object v11, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v15, v11, :cond_4

    goto :goto_5

    :cond_4
    if-ne v3, v11, :cond_5

    move-object v3, v15

    goto :goto_5

    :cond_5
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v3, v15, v11, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v7, v7, v3}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_5
    add-long v9, v9, p1

    goto :goto_3

    :cond_6
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v3, v0, :cond_7

    return-object v3

    :cond_7
    const-string v0, "msg.empty.array.reduce"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_8
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static toSliceIndex(DJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    long-to-double p2, p2

    add-double/2addr p0, p2

    cmpg-double p2, p0, v0

    if-gez p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    double-to-long p0, p0

    return-wide p0

    :cond_1
    long-to-double v0, p2

    cmpl-double v0, p0, v0

    if-lez v0, :cond_2

    return-wide p2

    :cond_2
    double-to-long p0, p0

    return-wide p0
.end method
