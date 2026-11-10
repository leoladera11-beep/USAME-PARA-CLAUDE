.class public final Lorg/mozilla/javascript/Interpreter;
.super Lorg/mozilla/javascript/Icode;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Evaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Interpreter$CallFrame;,
        Lorg/mozilla/javascript/Interpreter$GeneratorState;,
        Lorg/mozilla/javascript/Interpreter$ContinuationJump;,
        Lorg/mozilla/javascript/Interpreter$NewState;,
        Lorg/mozilla/javascript/Interpreter$ContinueLoop;,
        Lorg/mozilla/javascript/Interpreter$StateContinue;,
        Lorg/mozilla/javascript/Interpreter$NewThrowable;
    }
.end annotation


# static fields
.field private static final EXCEPTION_COST:I = 0x64

.field static final EXCEPTION_HANDLER_SLOT:I = 0x2

.field static final EXCEPTION_LOCAL_SLOT:I = 0x4

.field static final EXCEPTION_SCOPE_SLOT:I = 0x5

.field static final EXCEPTION_SLOT_SIZE:I = 0x6

.field static final EXCEPTION_TRY_END_SLOT:I = 0x1

.field static final EXCEPTION_TRY_START_SLOT:I = 0x0

.field static final EXCEPTION_TYPE_SLOT:I = 0x3

.field private static final INVOCATION_COST:I = 0x64

.field private static final undefined:Ljava/lang/Object;


# instance fields
.field itsData:Lorg/mozilla/javascript/InterpreterData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    sput-object v0, Lorg/mozilla/javascript/Interpreter;->undefined:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/Icode;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/Interpreter;->compareIdata(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z

    move-result p0

    return p0
.end method

.method private static addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iget p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    sub-int/2addr v1, p1

    add-int/2addr v1, p2

    add-int/2addr v1, v0

    iput v1, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget p1, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    if-le v1, p1, :cond_0

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Context;->observeInstructionCount(I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    :cond_0
    return-void
.end method

.method public static bridge synthetic b([Ljava/lang/Object;[DII)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static bytecodeSpan(I)I
    .locals 4

    const/16 v0, -0x54

    const/4 v1, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, -0x53

    if-eq p0, v0, :cond_3

    const/16 v0, -0x49

    if-eq p0, v0, :cond_3

    const/16 v0, -0x48

    if-eq p0, v0, :cond_3

    const/16 v0, -0x3d

    if-eq p0, v0, :cond_3

    const/16 v0, -0x1c

    if-eq p0, v0, :cond_3

    const/16 v0, 0x37

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e

    const/4 v2, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_3

    const/16 v0, -0x1a

    const/4 v3, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, -0x19

    if-eq p0, v0, :cond_1

    if-eq p0, v3, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    invoke-static {p0}, Lorg/mozilla/javascript/Icode;->validBytecode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    return v2

    :pswitch_1
    return v1

    :pswitch_2
    return v3

    :pswitch_3
    return v2

    :pswitch_4
    return v1

    :pswitch_5
    return v3

    :pswitch_6
    return v2

    :pswitch_7
    return v1

    :pswitch_8
    return v3

    :pswitch_9
    return v2

    :cond_1
    return v3

    :cond_2
    return v2

    :cond_3
    :pswitch_a
    return v1

    :pswitch_data_0
    .packed-switch -0x46
        :pswitch_a
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x38
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x2f
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x22
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public static bridge synthetic c(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    return-void
.end method

.method public static captureContinuation(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/NativeContinuation;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Interpreter frames not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;
    .locals 6

    .line 4
    new-instance v0, Lorg/mozilla/javascript/NativeContinuation;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeContinuation;-><init>()V

    .line 5
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    move-object p0, p1

    move-object v1, p0

    :goto_0
    if-eqz p0, :cond_4

    .line 6
    iget-boolean v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 8
    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    add-int/2addr v2, v1

    :goto_1
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 9
    aput-object v4, v1, v2

    .line 10
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    const/4 v3, 0x0

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_0
    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2

    const/16 v3, -0x55

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x1e

    if-eq v2, v1, :cond_3

    .line 12
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_3

    .line 13
    :cond_2
    :goto_2
    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object v4, v1, v2

    .line 14
    :cond_3
    :goto_3
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_7

    .line 15
    :goto_4
    iget-object p0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p0, :cond_5

    move-object v1, p0

    goto :goto_4

    .line 16
    :cond_5
    iget-boolean p0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    if-eqz p0, :cond_6

    goto :goto_5

    .line 17
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot capture continuation from JavaScript code not called directly by executeScriptWithContinuations or callFunctionWithContinuations"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_7
    :goto_5
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeContinuation;->initImplementation(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    const/4 p0, 0x0

    iput-object p0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iput v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    return-object v0
.end method

.method private static compareIdata(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    invoke-static {p0}, Lorg/mozilla/javascript/Interpreter;->getRawSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/Interpreter;->getRawSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method private static doAdd([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V
    .locals 10

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p0, v0

    aget-object v2, p0, p2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    const-string v4, "BigInt"

    const-string v5, "msg.cant.convert.to.number"

    if-ne v1, v3, :cond_1

    aget-wide v0, p1, v0

    if-ne v2, v3, :cond_0

    aget-wide v2, p1, p2

    add-double/2addr v2, v0

    aput-wide v2, p1, p2

    return-void

    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_8

    aget-wide v6, p1, p2

    const/4 v0, 0x0

    move-object v2, v1

    move-wide v8, v6

    move v6, v0

    move-wide v0, v8

    :goto_0
    instance-of v7, v2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v7, :cond_3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    if-nez v6, :cond_2

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :cond_2
    invoke-static {v2, p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, p2

    return-void

    :cond_3
    instance-of p3, v2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_5

    const/16 p1, 0xa

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p1

    if-eqz v6, :cond_4

    new-instance p3, Lorg/mozilla/javascript/ConsString;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {p3, v2, p1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p3, p0, p2

    return-void

    :cond_4
    new-instance p3, Lorg/mozilla/javascript/ConsString;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {p3, p1, v2}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p3, p0, p2

    return-void

    :cond_5
    instance-of p3, v2, Ljava/lang/Number;

    if-eqz p3, :cond_6

    check-cast v2, Ljava/lang/Number;

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v2

    :goto_1
    instance-of p3, v2, Ljava/math/BigInteger;

    if-nez p3, :cond_7

    aput-object v3, p0, p2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v0

    aput-wide v2, p1, p2

    return-void

    :cond_7
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_8
    instance-of v0, v2, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_11

    instance-of v0, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_9

    goto/16 :goto_4

    :cond_9
    instance-of p3, v2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_b

    instance-of p1, v1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_a

    new-instance p1, Lorg/mozilla/javascript/ConsString;

    check-cast v2, Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p1, v2, v1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p1, p0, p2

    return-void

    :cond_a
    new-instance p1, Lorg/mozilla/javascript/ConsString;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p1, v2, p3}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p1, p0, p2

    return-void

    :cond_b
    instance-of p3, v1, Ljava/lang/CharSequence;

    if-eqz p3, :cond_c

    new-instance p1, Lorg/mozilla/javascript/ConsString;

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p1, p3, v1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p1, p0, p2

    return-void

    :cond_c
    instance-of p3, v2, Ljava/lang/Number;

    if-eqz p3, :cond_d

    check-cast v2, Ljava/lang/Number;

    goto :goto_2

    :cond_d
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v2

    :goto_2
    instance-of p3, v1, Ljava/lang/Number;

    if-eqz p3, :cond_e

    check-cast v1, Ljava/lang/Number;

    goto :goto_3

    :cond_e
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    :goto_3
    instance-of p3, v2, Ljava/math/BigInteger;

    if-eqz p3, :cond_f

    instance-of v0, v1, Ljava/math/BigInteger;

    if-eqz v0, :cond_f

    check-cast v2, Ljava/math/BigInteger;

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    aput-object p1, p0, p2

    return-void

    :cond_f
    if-nez p3, :cond_10

    instance-of p3, v1, Ljava/math/BigInteger;

    if-nez p3, :cond_10

    aput-object v3, p0, p2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v2

    aput-wide v0, p1, p2

    return-void

    :cond_10
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_11
    :goto_4
    invoke-static {v2, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, p2

    return-void
.end method

.method private static doArithmetic(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 2

    add-int/lit8 v0, p4, -0x1

    invoke-static {p0, v0}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    move-result-object v0

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    move-result-object p0

    add-int/lit8 p4, p4, -0x1

    const/16 v1, 0x51

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->remainder(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->divide(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->multiply(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->subtract(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->exponentiate(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Ljava/math/BigInteger;

    if-eqz p1, :cond_1

    aput-object p0, p2, p4

    return p4

    :cond_1
    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object p1, p2, p4

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    aput-wide p0, p3, p4

    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static doBitNOT(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 1

    invoke-static {p0, p3}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->bitwiseNOT(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    aput-object p0, p1, p3

    return p3

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object v0, p1, p3

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    aput-wide p0, p2, p3

    return p3
.end method

.method private static doBitOp(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 2

    add-int/lit8 v0, p4, -0x1

    invoke-static {p0, v0}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    move-result-object v0

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    move-result-object p0

    add-int/lit8 p4, p4, -0x1

    const/16 v1, 0x12

    if-eq p1, v1, :cond_1

    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->bitwiseAND(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->bitwiseXOR(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->bitwiseOR(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->signedRightShift(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->leftShift(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Ljava/math/BigInteger;

    if-eqz p1, :cond_2

    aput-object p0, p2, p4

    return p4

    :cond_2
    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object p1, p2, p4

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    aput-wide p0, p3, p4

    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final doCallByteCode(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ZIII)Lorg/mozilla/javascript/Interpreter$NewState;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v10, p3

    move/from16 v1, p5

    iget-object v2, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    if-eqz p2, :cond_0

    iget v4, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/lit8 v4, v4, 0x64

    iput v4, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    :cond_0
    add-int/lit8 v4, v1, 0x1

    sub-int v11, p4, v4

    aget-object v4, v2, v11

    check-cast v4, Lorg/mozilla/javascript/Callable;

    add-int/lit8 v5, v11, 0x1

    aget-object v5, v2, v5

    check-cast v5, Lorg/mozilla/javascript/Scriptable;

    instance-of v7, v4, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v7, :cond_1

    move-object v7, v4

    check-cast v7, Lorg/mozilla/javascript/BaseFunction;

    invoke-virtual {v7}, Lorg/mozilla/javascript/BaseFunction;->getHomeObject()Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const/16 v9, -0x55

    if-ne v10, v9, :cond_2

    iget-object v5, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    :cond_2
    const/16 v9, 0x4c

    const/4 v12, 0x0

    if-ne v10, v9, :cond_3

    add-int/lit8 v7, v11, 0x2

    invoke-static {v2, v3, v7, v1}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->callRef(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;

    move-result-object v0

    aput-object v0, v2, v11

    new-instance v0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;

    invoke-direct {v0, v6, v11, v1, v12}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;III)V

    return-object v0

    :cond_3
    iget-object v9, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-boolean v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-eqz v13, :cond_4

    invoke-static {v9}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v9

    :cond_4
    move-object/from16 v16, v4

    move v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, v16

    :goto_1
    instance-of v13, v3, Lorg/mozilla/javascript/ArrowFunction;

    if-eqz v13, :cond_5

    check-cast v3, Lorg/mozilla/javascript/ArrowFunction;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ArrowFunction;->getTargetFunction()Lorg/mozilla/javascript/Callable;

    move-result-object v5

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ArrowFunction;->getCallThis(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    invoke-virtual {v3}, Lorg/mozilla/javascript/ArrowFunction;->getBoundHomeObject()Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    move-object/from16 v16, v7

    move-object v7, v3

    move-object v3, v5

    move-object/from16 v5, v16

    goto :goto_1

    :cond_5
    instance-of v13, v3, Lorg/mozilla/javascript/LambdaConstructor;

    const/4 v14, 0x2

    if-eqz v13, :cond_7

    :cond_6
    move-object v15, v6

    goto/16 :goto_5

    :cond_7
    instance-of v13, v3, Lorg/mozilla/javascript/LambdaFunction;

    if-eqz v13, :cond_8

    check-cast v3, Lorg/mozilla/javascript/LambdaFunction;

    invoke-virtual {v3}, Lorg/mozilla/javascript/LambdaFunction;->getTarget()Lorg/mozilla/javascript/Callable;

    move-result-object v3

    goto :goto_1

    :cond_8
    instance-of v13, v3, Lorg/mozilla/javascript/BoundFunction;

    if-eqz v13, :cond_a

    check-cast v3, Lorg/mozilla/javascript/BoundFunction;

    invoke-virtual {v3}, Lorg/mozilla/javascript/BoundFunction;->getTargetFunction()Lorg/mozilla/javascript/Callable;

    move-result-object v5

    invoke-virtual {v3, v0, v9}, Lorg/mozilla/javascript/BoundFunction;->getCallThis(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v13

    invoke-virtual {v3}, Lorg/mozilla/javascript/BoundFunction;->getBoundArgs()[Ljava/lang/Object;

    move-result-object v3

    array-length v15, v3

    if-lez v15, :cond_9

    add-int v1, v15, v11

    add-int/2addr v1, v14

    add-int/2addr v1, v4

    invoke-virtual {v6, v1}, Lorg/mozilla/javascript/Interpreter$CallFrame;->ensureStackLength(I)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    add-int/lit8 v14, v11, 0x2

    add-int v8, v14, v15

    invoke-static {v1, v14, v1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v14, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v12, v1, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v15

    :cond_9
    move-object v3, v5

    move-object v5, v13

    goto :goto_1

    :cond_a
    instance-of v8, v3, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v8, :cond_f

    move-object v8, v3

    check-cast v8, Lorg/mozilla/javascript/IdFunctionObject;

    invoke-static {v8}, Lorg/mozilla/javascript/BaseFunction;->isApplyOrCall(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->getCallable(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v5

    add-int/lit8 v3, v11, 0x2

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/Interpreter;->getApplyThis(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DIILorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v13

    move-object v15, v6

    invoke-static {v8}, Lorg/mozilla/javascript/BaseFunction;->isApply(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-ge v4, v14, :cond_b

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_2

    :cond_b
    add-int/lit8 v2, v11, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getApplyArguments(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :goto_2
    array-length v2, v1

    add-int v4, v2, v11

    add-int/2addr v4, v14

    invoke-virtual {v15, v4}, Lorg/mozilla/javascript/Interpreter$CallFrame;->ensureStackLength(I)[Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    invoke-static {v1, v12, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    move v4, v2

    move-object v2, v6

    goto :goto_3

    :cond_c
    if-lez v4, :cond_e

    const/4 v6, 0x1

    if-le v4, v6, :cond_d

    add-int/lit8 v6, v11, 0x3

    add-int/lit8 v8, v4, -0x1

    invoke-static {v1, v6, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v6, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    add-int/lit8 v4, v4, -0x1

    :cond_e
    :goto_3
    move-object v3, v5

    move-object v5, v13

    :goto_4
    move-object v6, v15

    goto/16 :goto_1

    :cond_f
    move-object v15, v6

    instance-of v6, v3, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    if-eqz v6, :cond_10

    check-cast v3, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    add-int/lit8 v1, v11, 0x4

    invoke-virtual {v15, v1}, Lorg/mozilla/javascript/Interpreter$CallFrame;->ensureStackLength(I)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    add-int/lit8 v6, v11, 0x2

    invoke-static {v1, v2, v6, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v4

    iget-object v8, v3, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->noSuchMethodMethod:Lorg/mozilla/javascript/Callable;

    iget-object v3, v3, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->methodName:Ljava/lang/String;

    aput-object v3, v1, v6

    add-int/lit8 v3, v11, 0x3

    invoke-virtual {v0, v9, v4}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    aput-object v4, v1, v3

    move-object v3, v8

    move v4, v14

    goto :goto_4

    :cond_10
    if-eqz v3, :cond_17

    :goto_5
    instance-of v6, v3, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v6, :cond_13

    move-object v8, v3

    check-cast v8, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v6, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v6, v6, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    iget-object v13, v8, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-ne v6, v13, :cond_13

    const/16 v13, -0x3e

    if-ne v10, v13, :cond_11

    iget-object v6, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v3, 0x0

    invoke-static {v0, v15, v3}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    goto :goto_6

    :cond_11
    move-object v6, v15

    :goto_6
    move-object v3, v7

    move v7, v4

    move-object v4, v1

    move-object v1, v9

    move-object v9, v6

    add-int/lit8 v6, v11, 0x2

    move-object/from16 v16, v5

    move-object v5, v2

    move-object/from16 v2, v16

    invoke-static/range {v0 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    if-eq v10, v13, :cond_12

    iput v11, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput v10, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    :cond_12
    new-instance v1, Lorg/mozilla/javascript/Interpreter$StateContinue;

    invoke-direct {v1, v0, v12}, Lorg/mozilla/javascript/Interpreter$StateContinue;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    return-object v1

    :cond_13
    move-object v6, v2

    move-object v2, v5

    move-object v5, v1

    move-object v1, v9

    instance-of v7, v3, Lorg/mozilla/javascript/NativeContinuation;

    if-eqz v7, :cond_15

    new-instance v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    check-cast v3, Lorg/mozilla/javascript/NativeContinuation;

    invoke-direct {v0, v3, v15}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    if-nez v4, :cond_14

    sget-object v1, Lorg/mozilla/javascript/Interpreter;->undefined:Ljava/lang/Object;

    iput-object v1, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    goto :goto_7

    :cond_14
    add-int/2addr v11, v14

    aget-object v1, v5, v11

    iput-object v1, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    aget-wide v1, v6, v11

    iput-wide v1, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    :goto_7
    new-instance v1, Lorg/mozilla/javascript/Interpreter$NewThrowable;

    invoke-direct {v1, v0, v12}, Lorg/mozilla/javascript/Interpreter$NewThrowable;-><init>(Ljava/lang/Object;I)V

    return-object v1

    :cond_15
    instance-of v7, v3, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v7, :cond_16

    move-object v7, v3

    check-cast v7, Lorg/mozilla/javascript/IdFunctionObject;

    invoke-static {v7}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v1, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v2, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-static {v0, v2, v12}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v0

    aput-object v0, v1, v11

    new-instance v0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;

    invoke-direct {v0, v15, v11, v4, v12}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;III)V

    return-object v0

    :cond_16
    iput-object v15, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    iput v10, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    iput v11, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    add-int/lit8 v7, v11, 0x2

    invoke-static {v5, v6, v7, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v0, v1, v2, v6}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v11

    new-instance v0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;

    invoke-direct {v0, v15, v11, v4, v12}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;III)V

    return-object v0

    :cond_17
    const/4 v3, 0x0

    invoke-static {v3, v3}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BIZ)I
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    iget v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v6, v3, v5

    and-int/lit16 v13, v6, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v3, v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    add-int/lit8 v5, v5, 0x2

    invoke-static {v3, v5}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v15

    if-eqz v6, :cond_2

    sub-int v3, p4, v4

    aget-object v5, v1, v3

    sget-object v6, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v5, v6, :cond_1

    aget-wide v5, v2, v3

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    :cond_1
    add-int/lit8 v6, v3, 0x1

    invoke-static {v1, v2, v6, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v7, p0

    invoke-static {v7, v5, v2, v4, v13}, Lorg/mozilla/javascript/ScriptRuntime;->newSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_1

    :cond_2
    move-object/from16 v7, p0

    add-int/lit8 v3, v4, 0x1

    sub-int v3, p4, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v1, v5

    move-object v9, v5

    check-cast v9, Lorg/mozilla/javascript/Scriptable;

    aget-object v5, v1, v3

    move-object v8, v5

    check-cast v8, Lorg/mozilla/javascript/Callable;

    add-int/lit8 v5, v3, 0x2

    invoke-static {v1, v2, v5, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v12, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v14, v2, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    move/from16 v16, p7

    invoke-static/range {v7 .. v16}, Lorg/mozilla/javascript/ScriptRuntime;->callSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;IZ)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    :goto_1
    iget v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return v3
.end method

.method private static doCompare(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 5

    add-int/lit8 v0, p4, -0x1

    aget-object v1, p2, p4

    aget-object v2, p2, v0

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_0

    aget-wide v1, p3, p4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p0, v0}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    move-object v4, p3

    move-object p3, p0

    move-object p0, v4

    :goto_0
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->compare(Ljava/lang/Number;Ljava/lang/Number;I)Z

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {v2, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->compare(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p0

    :goto_1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p2, v0

    return v0
.end method

.method private static doDelName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 4

    aget-object v0, p3, p5

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p4, p5

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p5, p5, -0x1

    aget-object v2, p3, p5

    if-ne v2, v1, :cond_1

    aget-wide v1, p4, p5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {v2, v0, p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p3, p5

    return p5
.end method

.method private static doElemIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[B[Ljava/lang/Object;[DI)I
    .locals 4

    aget-object v0, p3, p5

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p4, p5

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p5, p5, -0x1

    aget-object v2, p3, p5

    if-ne v2, v1, :cond_1

    aget-wide v1, p4, p5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1
    iget-object p4, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte p2, p2, v1

    invoke-static {v2, v0, p0, p4, p2}, Lorg/mozilla/javascript/ScriptRuntime;->elemIncrDecr(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p3, p5

    iget p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return p5
.end method

.method private static doEquals([Ljava/lang/Object;[DI)Z
    .locals 3

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p0, v0

    aget-object p0, p0, p2

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_2

    if-ne p0, v2, :cond_1

    aget-wide v1, p1, p2

    aget-wide p0, p1, v0

    cmpl-double p0, v1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    aget-wide v0, p1, v0

    invoke-static {v0, v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    if-ne p0, v2, :cond_3

    aget-wide p0, p1, p2

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static doGetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 5

    add-int/lit8 v0, p4, -0x1

    aget-object v1, p2, v0

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_0

    aget-wide v3, p3, v0

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_0
    aget-object v3, p2, p4

    if-eq v3, v2, :cond_1

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    aget-wide v2, p3, p4

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2, v3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    aput-object p0, p2, v0

    return v0
.end method

.method private static doGetElemSuper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 7

    add-int/lit8 v0, p4, -0x1

    aget-object v1, p2, v0

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    aget-object v3, p2, p4

    if-eq v3, v2, :cond_1

    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v3, p0, p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getSuperElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    aget-wide v2, p3, p4

    iget-object v5, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v6, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->getSuperIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    aput-object p0, p2, v0

    return v0
.end method

.method private static doGetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I
    .locals 1

    add-int/lit8 p3, p3, 0x1

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_0

    aget-object p0, p4, p6

    aput-object p0, p1, p3

    aget-wide p0, p5, p6

    aput-wide p0, p2, p3

    return p3

    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p2, p2, p6

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p2, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p1, p3

    return p3
.end method

.method private static doInOrInstanceof(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I
    .locals 4

    aget-object v0, p2, p4

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p3, p4

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p4, p4, -0x1

    aget-object v2, p2, p4

    if-ne v2, v1, :cond_1

    aget-wide v1, p3, p4

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1
    const/16 p3, 0x39

    if-ne p1, p3, :cond_2

    invoke-static {v2, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->in(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {v2, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p0

    :goto_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p2, p4

    return p4
.end method

.method private static doRefMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I
    .locals 4

    aget-object v0, p1, p3

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p2, p3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    aget-object v2, p1, p3

    if-ne v2, v1, :cond_1

    aget-wide v1, p2, p3

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1
    invoke-static {v2, v0, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    aput-object p0, p1, p3

    return p3
.end method

.method private static doRefNsMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I
    .locals 4

    aget-object v0, p1, p3

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p2, p3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, p3, -0x1

    aget-object v3, p1, v2

    if-ne v3, v1, :cond_1

    aget-wide v2, p2, v2

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_1
    add-int/lit8 p3, p3, -0x2

    aget-object v2, p1, p3

    if-ne v2, v1, :cond_2

    aget-wide v1, p2, p3

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_2
    invoke-static {v2, v3, v0, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    aput-object p0, p1, p3

    return p3
.end method

.method private static doRefNsName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DII)I
    .locals 4

    aget-object v0, p2, p4

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p3, p4

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p4, p4, -0x1

    aget-object v2, p2, p4

    if-ne v2, v1, :cond_1

    aget-wide v1, p3, p4

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v0, p0, p1, p5}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    aput-object p0, p2, p4

    return p4
.end method

.method private static doSetConstVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_2

    aget v0, p6, p7

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    and-int/lit8 p0, v0, 0x8

    if-eqz p0, :cond_0

    aget-object p0, p1, p3

    aput-object p0, p4, p7

    and-int/lit8 p0, v0, -0x9

    aput p0, p6, p7

    aget-wide p0, p2, p3

    aput-wide p0, p5, p7

    :cond_0
    return p3

    :cond_1
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p0, p0, p7

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "msg.var.redecl"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_2
    aget-object p1, p1, p3

    sget-object p4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, p4, :cond_3

    aget-wide p1, p2, p3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    :cond_3
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p2, p2, p7

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    instance-of p4, p0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz p4, :cond_4

    move-object p4, p0

    check-cast p4, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {p4, p2, p0, p1}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return p3

    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static doSetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 9

    add-int/lit8 v0, p4, -0x2

    aget-object v1, p2, p4

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_0

    aget-wide v3, p3, p4

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_0
    move-object v6, v1

    aget-object v1, p2, v0

    if-ne v1, v2, :cond_1

    aget-wide v3, p3, v0

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_1
    move-object v3, v1

    add-int/lit8 p4, p4, -0x1

    aget-object v1, p2, p4

    if-eq v1, v2, :cond_2

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3, v1, v6, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    aget-wide v4, p3, p4

    iget-object v8, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v7, p0

    invoke-static/range {v3 .. v8}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    aput-object p0, p2, v0

    return v0
.end method

.method private static doSetElemSuper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 10

    add-int/lit8 v0, p4, -0x2

    aget-object v1, p2, p4

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_0

    aget-wide v3, p3, p4

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_0
    move-object v5, v1

    aget-object v3, p2, v0

    if-ne v3, v2, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    add-int/lit8 p4, p4, -0x1

    aget-object v4, p2, p4

    if-eq v4, v2, :cond_2

    iget-object v7, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v8, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Lorg/mozilla/javascript/ScriptRuntime;->setSuperElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object v6, p0

    aget-wide v1, p3, p4

    iget-object v8, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v9, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    move-object v7, v6

    move-object v6, v5

    move-wide v4, v1

    invoke-static/range {v3 .. v9}, Lorg/mozilla/javascript/ScriptRuntime;->setSuperIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    aput-object p0, p2, v0

    return v0
.end method

.method private static doSetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_1

    aget p0, p6, p7

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    aget-object p0, p1, p3

    aput-object p0, p4, p7

    aget-wide p0, p2, p3

    aput-wide p0, p5, p7

    :cond_0
    return p3

    :cond_1
    aget-object p1, p1, p3

    sget-object p4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, p4, :cond_2

    aget-wide p1, p2, p3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    :cond_2
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p2, p2, p7

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p2, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return p3
.end method

.method private static doShallowEquals([Ljava/lang/Object;[DI)Z
    .locals 4

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p0, v0

    aget-object p0, p0, p2

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    aget-wide v0, p1, v0

    if-ne p0, v2, :cond_0

    aget-wide p0, p1, p2

    goto :goto_0

    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    instance-of p1, p0, Ljava/math/BigInteger;

    if-nez p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    if-ne p0, v2, :cond_4

    aget-wide p0, p1, p2

    instance-of p2, v1, Ljava/lang/Number;

    if-eqz p2, :cond_3

    instance-of p2, v1, Ljava/math/BigInteger;

    if-nez p2, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    cmpl-double p0, p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v3

    :cond_4
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static doVarIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 9

    const/4 v0, 0x1

    add-int/2addr p4, v0

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v2, v2, v3

    iget-boolean v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v3, :cond_10

    aget-object p0, p5, p8

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    aget-wide v4, p6, p8

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v4

    instance-of v5, v4, Ljava/math/BigInteger;

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, Ljava/math/BigInteger;

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    :goto_0
    const/4 v6, 0x0

    if-nez v3, :cond_9

    and-int/lit8 v3, v2, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-nez v3, :cond_2

    add-double/2addr v7, v4

    goto :goto_1

    :cond_2
    sub-double v7, v4, v7

    :goto_1
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    move v6, v0

    :cond_3
    aget v2, p7, p8

    and-int/2addr v2, v0

    if-nez v2, :cond_6

    if-eq p0, v1, :cond_4

    aput-object v1, p5, p8

    :cond_4
    aput-wide v7, p6, p8

    aput-object v1, p2, p4

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move-wide v4, v7

    :goto_2
    aput-wide v4, p3, p4

    goto :goto_7

    :cond_6
    if-eqz v6, :cond_7

    if-eq p0, v1, :cond_7

    aput-object p0, p2, p4

    goto :goto_7

    :cond_7
    aput-object v1, p2, p4

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    move-wide v4, v7

    :goto_3
    aput-wide v4, p3, p4

    goto :goto_7

    :cond_9
    and-int/lit8 p3, v2, 0x1

    if-nez p3, :cond_a

    sget-object p3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, p3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    goto :goto_4

    :cond_a
    sget-object p3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    :goto_4
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b

    move v6, v0

    :cond_b
    aget v2, p7, p8

    and-int/2addr v2, v0

    if-nez v2, :cond_d

    aput-object p3, p5, p8

    if-eqz v6, :cond_c

    goto :goto_5

    :cond_c
    move-object v3, p3

    :goto_5
    aput-object v3, p2, p4

    goto :goto_7

    :cond_d
    if-eqz v6, :cond_e

    if-eq p0, v1, :cond_e

    aput-object p0, p2, p4

    goto :goto_7

    :cond_e
    if-eqz v6, :cond_f

    goto :goto_6

    :cond_f
    move-object v3, p3

    :goto_6
    aput-object v3, p2, p4

    goto :goto_7

    :cond_10
    iget-object p3, v1, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p3, p3, p8

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, p3, p0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p2, p4

    :goto_7
    iget p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr p0, v0

    iput p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return p4
.end method

.method public static dumpICode(Lorg/mozilla/javascript/InterpreterData;)V
    .locals 0

    return-void
.end method

.method private static enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V
    .locals 3

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_7

    :cond_1
    iget-object v2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-nez v2, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_5

    :cond_3
    instance-of p3, v2, Lorg/mozilla/javascript/NativeWith;

    if-eqz p3, :cond_5

    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p3, :cond_3

    iget-object p3, p3, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-ne p3, v2, :cond_3

    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p3, p0, v2, p1, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onEnter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {p0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :cond_7
    return-void
.end method

.method private static exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    :cond_0
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v0, :cond_5

    :try_start_0
    instance-of v1, p2, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    invoke-interface {v0, p0, p1, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V

    return-void

    :cond_1
    check-cast p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-nez p2, :cond_2

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    :goto_0
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_4

    if-nez p2, :cond_3

    iget-wide v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    goto :goto_1

    :cond_3
    iget-wide v0, p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    :goto_1
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_4
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2, v0}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "RHINO USAGE WARNING: onExit terminated with exception"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_5
    return-void
.end method

.method private static freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;Z)Ljava/lang/Object;
    .locals 3

    iget p3, p3, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 p3, 0x1

    iput-boolean p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p2

    iput-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v1, v0, p2

    iput-wide v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    iput p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iget p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    sub-int/2addr p2, p3

    iput p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    sget-object p2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    :goto_0
    if-eqz p4, :cond_1

    new-instance p1, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;

    invoke-direct {p1, p0}, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "msg.yield.closing"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static getApplyThis(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DIILorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    instance-of p5, p5, Lorg/mozilla/javascript/InterpretedFunction;

    const/4 v0, 0x0

    if-eqz p5, :cond_3

    if-eqz p4, :cond_1

    aget-object p1, p1, p3

    sget-object p4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, p4, :cond_0

    aget-wide p1, p2, p3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    :cond_0
    iget-object p2, p6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0

    :cond_3
    if-eqz p4, :cond_4

    aget-object v0, p1, p3

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, p1, :cond_4

    aget-wide p1, p2, p3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_4
    iget-object p1, p6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, p1, v0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->getApplyOrCallThis(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private static getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;
    .locals 4

    if-nez p3, :cond_0

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    return-object p0

    :cond_0
    new-array v0, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p3, :cond_2

    aget-object v2, p0, p2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v2, v3, :cond_1

    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getCurrentFrameHomeObject(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    instance-of v0, p0, Lorg/mozilla/javascript/NativeCall;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/NativeCall;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeCall;->getHomeObject()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I
    .locals 9

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    array-length v6, v0

    if-eq v3, v6, :cond_7

    aget v6, v0, v3

    add-int/lit8 v7, v3, 0x1

    aget v7, v0, v7

    if-gt v6, p0, :cond_6

    if-lt p0, v7, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    add-int/lit8 v8, v3, 0x3

    aget v8, v0, v8

    if-eq v8, v2, :cond_2

    goto :goto_1

    :cond_2
    if-ltz v1, :cond_5

    if-ge v4, v7, :cond_3

    goto :goto_1

    :cond_3
    if-le v5, v6, :cond_4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_4
    if-ne v4, v7, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    move v1, v3

    move v5, v6

    move v4, v7

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x6

    goto :goto_0

    :cond_7
    return v1
.end method

.method private static getIndex([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static getInt([BI)I
    .locals 2

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static getLineNumbers(Lorg/mozilla/javascript/InterpreterData;)[I
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eq v3, v1, :cond_2

    aget-byte v4, p0, v3

    invoke-static {v4}, Lorg/mozilla/javascript/Interpreter;->bytecodeSpan(I)I

    move-result v5

    const/16 v6, -0x1f

    if-ne v4, v6, :cond_1

    const/4 v4, 0x3

    if-eq v5, v4, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    add-int/lit8 v4, v3, 0x1

    invoke-static {p0, v4}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/2addr v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [I

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    aput v1, p0, v2

    move v2, v3

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static getRawSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->rawSource:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/InterpreterData;->rawSourceStart:I

    iget p0, p0, Lorg/mozilla/javascript/InterpreterData;->rawSourceEnd:I

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getShort([BI)I
    .locals 1

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 2

    move-object v0, p2

    move-object p2, p1

    move-object p1, p0

    new-instance p0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-direct {p0, p1, v0, p8, p9}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    move v1, p7

    move-object p7, p3

    move-object p3, p4

    move-object p4, p5

    move p5, p6

    move p6, v1

    invoke-virtual/range {p0 .. p7}, Lorg/mozilla/javascript/Interpreter$CallFrame;->initializeArgs(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;)V

    const/4 p2, 0x0

    invoke-static {p1, p0, p3, p2}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p3

    iget-object v0, p3, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    iget-object p2, p2, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p2, p2, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    invoke-static {p0, p1, p3, v0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;IZ)V

    return-void
.end method

.method public static interpret(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v7, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-eq v7, v0, :cond_1

    iput-object v0, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    move-object v1, v0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityController:Lorg/mozilla/javascript/SecurityController;

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/SecurityController;->callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v7, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v7, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getHomeObject()Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    array-length v8, p4

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    iget-boolean v2, p1, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    iput-boolean v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    const/4 v2, 0x0

    iput-boolean v2, p1, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    sget-object v11, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    iget v2, v1, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    move v14, v13

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v2, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    :cond_1
    iget-object v2, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    iget-object v3, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_2
    const/4 v15, 0x0

    if-eqz v0, :cond_4

    instance-of v2, v0, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    if-eqz v2, :cond_3

    check-cast v0, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    move-object/from16 v3, p1

    invoke-static {v1, v3, v2, v13}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    move-object v7, v0

    move-object v0, v15

    goto :goto_2

    :cond_3
    move-object/from16 v3, p1

    instance-of v2, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-nez v2, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_1

    :cond_4
    move-object/from16 v3, p1

    :cond_5
    :goto_1
    move-object v7, v15

    :goto_2
    const-wide/16 v16, 0x0

    const/16 v18, -0x1

    move-object v2, v0

    move-object v4, v15

    move-object v5, v4

    move-object/from16 v19, v5

    move-wide/from16 v20, v16

    move/from16 v0, v18

    :goto_3
    if-eqz v2, :cond_7

    :try_start_0
    invoke-static {v1, v2, v3, v0, v14}, Lorg/mozilla/javascript/Interpreter;->processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3

    iget-object v2, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    iput-object v15, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    :cond_6
    :goto_4
    move-object/from16 v22, v2

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v12, v7

    move/from16 v32, v13

    move v6, v14

    const/16 p2, 0x64

    :goto_5
    const/4 v15, 0x2

    :goto_6
    const/16 v33, 0x0

    goto/16 :goto_6e

    :cond_7
    if-nez v7, :cond_6

    iget-boolean v6, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v6, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_7
    :try_start_1
    iget-object v2, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v6, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget-object v8, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_25

    const/16 p2, 0x64

    :try_start_2
    iget-object v9, v8, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_24

    move-object/from16 v23, v7

    :try_start_3
    iget-object v7, v8, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget-object v8, v8, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    iget-object v10, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 v31, v15

    iget-object v15, v10, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_23

    move/from16 v32, v13

    :try_start_4
    iget-object v13, v10, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    iget-object v10, v10, Lorg/mozilla/javascript/InterpreterData;->itsBigIntTable:[Ljava/math/BigInteger;

    iget v12, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput-object v3, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_22

    move-object/from16 v34, v3

    move-object v3, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v5

    move v5, v12

    move-object v12, v4

    move-object v4, v6

    :goto_8
    move v6, v0

    :goto_9
    :try_start_5
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_21

    add-int/lit8 v1, v0, 0x1

    :try_start_6
    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move-object/from16 v35, v13

    aget-byte v13, v15, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_20

    move-object/from16 v25, v3

    const/16 v3, 0xaa

    if-eq v13, v3, :cond_57

    const/16 v26, 0x3

    const/4 v3, 0x4

    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    packed-switch v13, :pswitch_data_2

    :try_start_7
    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter;->dumpICode(Lorg/mozilla/javascript/InterpreterData;)V

    new-instance v0, Ljava/lang/RuntimeException;

    iget v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown icode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " @ pc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v4, v12

    move v6, v14

    move-object/from16 v2, v22

    move-object/from16 v12, v23

    move-object/from16 v5, v34

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_6e

    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    aput-object v34, v25, v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v3, v25

    :goto_a
    move-object/from16 v13, v35

    goto :goto_9

    :pswitch_1
    move-object/from16 v1, p0

    move-object/from16 v3, v25

    :try_start_8
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doRefNsName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DII)I

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v0, v3

    move-object/from16 v29, v8

    move v8, v6

    move-object v6, v2

    move-object v2, v1

    move-object v1, v4

    :goto_b
    move-object v3, v0

    move-object v4, v1

    :goto_c
    move-object v1, v2

    move-object v2, v6

    move v6, v8

    :goto_d
    move-object/from16 v8, v29

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    :goto_e
    move-object v3, v6

    move-object v4, v12

    :goto_f
    move v6, v14

    move-object/from16 v2, v22

    move-object/from16 v12, v23

    move-object/from16 v5, v34

    goto/16 :goto_5

    :pswitch_2
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    :try_start_9
    aget-object v4, v0, v3

    if-ne v4, v11, :cond_8

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    goto :goto_11

    :catchall_3
    move-exception v0

    :goto_10
    move-object v1, v2

    goto :goto_e

    :cond_8
    :goto_11
    iget-object v5, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v4, v2, v5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object v4

    aput-object v4, v0, v3

    :cond_9
    :goto_12
    move-object v5, v6

    move-object v6, v2

    move-object v2, v5

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move v5, v3

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    :goto_13
    const/4 v15, 0x2

    goto/16 :goto_60

    :pswitch_3
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    invoke-static {v2, v0, v1, v3, v8}, Lorg/mozilla/javascript/Interpreter;->doRefNsMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I

    move-result v5

    goto :goto_b

    :pswitch_4
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    invoke-static {v2, v0, v1, v3, v8}, Lorg/mozilla/javascript/Interpreter;->doRefMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I

    move-result v5

    goto :goto_b

    :pswitch_5
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v4, v0, v3

    if-eq v4, v11, :cond_9

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->escapeTextValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_12

    :pswitch_6
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v4, v0, v3

    if-eq v4, v11, :cond_9

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->escapeAttributeValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_12

    :pswitch_7
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v4, v0, v3

    if-ne v4, v11, :cond_a

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    :cond_a
    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setDefaultNamespace(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_12

    :pswitch_8
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    invoke-static {v6}, Lorg/mozilla/javascript/Interpreter;->getCurrentFrameHomeObject(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    if-nez v4, :cond_b

    add-int/lit8 v5, v3, 0x1

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aput-object v3, v0, v5

    goto/16 :goto_b

    :cond_b
    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    aput-object v3, v0, v5

    goto/16 :goto_b

    :pswitch_9
    move-object/from16 v29, v8

    move v8, v6

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move v3, v13

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v6, p0

    move-object/from16 v25, v4

    move-object v13, v12

    move-object/from16 v12, v23

    goto/16 :goto_5e

    :pswitch_a
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v4, v0, v3

    if-ne v4, v11, :cond_c

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    :cond_c
    iget-object v5, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v4, v12, v2, v5}, Lorg/mozilla/javascript/ScriptRuntime;->specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;

    move-result-object v4

    aput-object v4, v0, v3

    goto/16 :goto_12

    :pswitch_b
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v4, v0, v3

    check-cast v4, Lorg/mozilla/javascript/Ref;

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->refDel(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    goto/16 :goto_12

    :pswitch_c
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v4, v0, v3

    if-ne v4, v11, :cond_d

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    :cond_d
    add-int/lit8 v5, v3, -0x1

    aget-object v3, v0, v5

    check-cast v3, Lorg/mozilla/javascript/Ref;

    iget-object v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3, v4, v2, v13}, Lorg/mozilla/javascript/ScriptRuntime;->refSet(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v5

    goto/16 :goto_b

    :pswitch_d
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v4, v0, v3

    check-cast v4, Lorg/mozilla/javascript/Ref;

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->refGet(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    goto/16 :goto_12

    :pswitch_e
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v4, v0, v3

    check-cast v4, [Ljava/lang/Object;

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v0, v5

    check-cast v5, [I

    add-int/lit8 v13, v3, -0x2

    aget-object v13, v0, v13

    check-cast v13, [Ljava/lang/Object;

    add-int/lit8 v25, v3, -0x3

    aget-object v3, v0, v25

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v26, v0

    move-object v0, v3

    move-object v3, v5

    iget-object v5, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v40, v13

    move-object v13, v1

    move-object/from16 v1, v40

    move-object/from16 v40, v4

    move-object v4, v2

    move-object/from16 v2, v40

    :try_start_a
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->fillObjectLiteral(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v2, v4

    move-object v1, v2

    move-object v2, v6

    move v6, v8

    move-object v4, v13

    move/from16 v5, v25

    :goto_14
    move-object/from16 v3, v26

    goto/16 :goto_d

    :catchall_4
    move-exception v0

    move-object v2, v4

    goto/16 :goto_10

    :pswitch_f
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object/from16 v9, v29

    move v8, v6

    move-object/from16 v28, v7

    move v3, v13

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v6, p0

    move-object/from16 v25, v4

    move-object v13, v12

    move-object/from16 v12, v23

    goto/16 :goto_50

    :pswitch_10
    const/4 v15, 0x2

    move v8, v6

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v1, v31

    move-object/from16 v6, p0

    goto/16 :goto_5b

    :pswitch_11
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    :try_start_b
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    aput-object v1, v0, v5

    :goto_15
    move-object v3, v0

    goto/16 :goto_c

    :pswitch_12
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    iget v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v1, v8

    aget-object v5, v0, v1

    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0x43

    if-ne v13, v8, :cond_e

    invoke-static {v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enumNext(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_16

    :cond_e
    invoke-static {v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enumId(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v5

    :goto_16
    aput-object v5, v0, v3

    move-object v5, v6

    move v6, v1

    move-object v1, v2

    move-object v2, v5

    move v5, v3

    move-object/from16 v8, v29

    move-object/from16 v13, v35

    :goto_17
    move-object v3, v0

    goto/16 :goto_9

    :pswitch_13
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v1, v0, v3

    if-ne v1, v11, :cond_f

    aget-wide v25, v4, v3

    invoke-static/range {v25 .. v26}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_f
    add-int/lit8 v5, v3, -0x1

    iget v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v3, v8

    const/16 v8, 0x3f

    if-ne v13, v8, :cond_10

    const/4 v8, 0x0

    goto :goto_18

    :cond_10
    const/16 v8, 0x40

    if-ne v13, v8, :cond_11

    move/from16 v8, v32

    goto :goto_18

    :cond_11
    const/16 v8, 0x42

    if-ne v13, v8, :cond_12

    const/4 v8, 0x6

    goto :goto_18

    :cond_12
    const/4 v8, 0x2

    :goto_18
    iget-object v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2, v13, v8}, Lorg/mozilla/javascript/ScriptRuntime;->enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    move-object v1, v2

    move-object v2, v6

    move-object/from16 v8, v29

    move-object/from16 v13, v35

    move v6, v3

    goto :goto_17

    :pswitch_14
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, -0x1

    iget v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v8, v13

    iget-object v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v13, v13, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    aget-byte v1, v13, v1

    if-eqz v1, :cond_13

    move/from16 v1, v32

    goto :goto_19

    :cond_13
    const/4 v1, 0x0

    :goto_19
    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Throwable;

    if-nez v1, :cond_14

    move-object/from16 v1, v31

    goto :goto_1a

    :cond_14
    aget-object v1, v0, v8

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    :goto_1a
    iget-object v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3, v1, v12, v2, v13}, Lorg/mozilla/javascript/ScriptRuntime;->newCatchScope(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v0, v8

    iget v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_15

    :pswitch_15
    move-object/from16 v29, v8

    move v8, v6

    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move/from16 v30, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move/from16 v26, v5

    move-object/from16 v23, v2

    move-object/from16 v25, v4

    goto/16 :goto_55

    :pswitch_16
    move-object/from16 v29, v8

    move v8, v6

    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    move-object/from16 v9, v29

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move/from16 v29, v8

    move/from16 v26, v5

    move-object/from16 v23, v2

    goto/16 :goto_54

    :pswitch_17
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    iget v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v1, v8

    aget-object v3, v0, v1

    aput-object v3, v0, v5

    aget-wide v25, v4, v1

    aput-wide v25, v4, v5

    move-object v3, v6

    move v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    goto/16 :goto_d

    :pswitch_18
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    invoke-static {v2, v13, v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->doInOrInstanceof(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I

    move-result v5

    goto/16 :goto_15

    :pswitch_19
    move v8, v6

    move-object/from16 v0, v25

    move-object v6, v2

    move-object/from16 v2, p0

    iget v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v1, v8

    aget-object v0, v0, v1

    move-object v1, v2

    :goto_1b
    move-object v2, v6

    move-object v4, v12

    move v6, v14

    move-object/from16 v12, v23

    move-object/from16 v5, v34

    const/4 v15, 0x2

    :goto_1c
    const/16 v33, 0x0

    goto/16 :goto_6f

    :pswitch_1a
    move-object v6, v2

    move v3, v5

    move-object/from16 v0, v25

    move-object/from16 v2, p0

    aget-object v0, v0, v3

    if-ne v0, v11, :cond_15

    aget-wide v0, v4, v3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_15
    iget v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v15, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    new-instance v3, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v1}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    move-object v1, v2

    move-object v0, v3

    goto :goto_1b

    :pswitch_1b
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_15

    :pswitch_1c
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    aget-object v1, v1, v8

    add-int/lit8 v5, v3, 0x1

    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_15

    :pswitch_1d
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, -0x1

    invoke-static {v0, v4, v5}, Lorg/mozilla/javascript/Interpreter;->doShallowEquals([Ljava/lang/Object;[DI)Z

    move-result v1

    const/16 v3, 0x34

    if-ne v13, v3, :cond_16

    move/from16 v3, v32

    goto :goto_1d

    :cond_16
    const/4 v3, 0x0

    :goto_1d
    xor-int/2addr v1, v3

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_15

    :pswitch_1e
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v5

    goto/16 :goto_15

    :pswitch_1f
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v5

    goto/16 :goto_15

    :pswitch_20
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    aput-object v1, v0, v5

    goto/16 :goto_15

    :pswitch_21
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    aput-object v31, v0, v5

    goto/16 :goto_15

    :pswitch_22
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    aput-object v12, v0, v5

    goto/16 :goto_15

    :pswitch_23
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    aput-object v11, v0, v5

    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    aget-wide v25, v1, v8

    aput-wide v25, v4, v5

    goto/16 :goto_15

    :pswitch_24
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_15

    :pswitch_25
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v3, v14

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v1, p0

    move-object/from16 v25, v4

    move v4, v13

    move-object v13, v12

    move-object/from16 v12, v23

    goto/16 :goto_64

    :pswitch_26
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    invoke-static {v2, v6, v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->doSetElemSuper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v5

    goto/16 :goto_15

    :pswitch_27
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    invoke-static {v2, v6, v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->doSetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v5

    goto/16 :goto_15

    :pswitch_28
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    invoke-static {v2, v6, v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->doGetElemSuper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v5

    goto/16 :goto_15

    :pswitch_29
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    invoke-static {v2, v6, v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->doGetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_15

    :pswitch_2a
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    :try_start_c
    aget-object v1, v0, v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-ne v1, v11, :cond_17

    :try_start_d
    aget-wide v25, v4, v3

    invoke-static/range {v25 .. v26}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_17
    add-int/lit8 v13, v3, -0x1

    move-object v3, v0

    :try_start_e
    aget-object v0, v3, v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-ne v0, v11, :cond_18

    :try_start_f
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_18
    move-object/from16 v25, v4

    :try_start_10
    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v5, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    move-object/from16 v26, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v12

    :try_start_11
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->setSuperProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object v2, v3

    :try_start_12
    aput-object v0, v26, v13

    move-object v12, v1

    move-object v1, v2

    move-object v2, v6

    move v6, v8

    move v5, v13

    :goto_1e
    move-object/from16 v4, v25

    goto/16 :goto_14

    :catchall_5
    move-exception v0

    :goto_1f
    move-object v4, v1

    move-object v1, v2

    move-object v3, v6

    goto/16 :goto_f

    :catchall_6
    move-exception v0

    move-object v2, v3

    goto :goto_1f

    :catchall_7
    move-exception v0

    move-object v1, v12

    goto :goto_1f

    :pswitch_2b
    move v3, v5

    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v0, v26, v3

    if-ne v0, v11, :cond_19

    aget-wide v4, v25, v3

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_19
    add-int/lit8 v5, v3, -0x1

    aget-object v3, v26, v5

    if-ne v3, v11, :cond_1a

    aget-wide v3, v25, v5

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_1a
    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3, v1, v0, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v26, v5

    move-object v12, v1

    move-object v1, v2

    move-object v2, v6

    move v6, v8

    goto :goto_1e

    :pswitch_2c
    move v3, v5

    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v0, v26, v3

    if-ne v0, v11, :cond_1b

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1b
    move v5, v3

    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    const/16 v12, 0x24

    if-ne v13, v12, :cond_1c

    move v12, v5

    move/from16 v5, v32

    goto :goto_20

    :cond_1c
    move v12, v5

    const/4 v5, 0x0

    :goto_20
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->getSuperProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v26, v12

    :goto_21
    move-object v5, v6

    move-object v6, v2

    move-object v2, v5

    move-object v13, v1

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move v5, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v26

    goto/16 :goto_13

    :pswitch_2d
    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move-object/from16 v25, v4

    move v12, v5

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v0, v26, v12

    if-ne v0, v11, :cond_1d

    aget-wide v3, v25, v12

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_1d
    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v26, v12

    goto :goto_21

    :pswitch_2e
    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move-object/from16 v25, v4

    move v12, v5

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v0, v26, v12

    if-ne v0, v11, :cond_1e

    aget-wide v3, v25, v12

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_1e
    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v26, v12

    goto :goto_21

    :pswitch_2f
    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move-object/from16 v25, v4

    move v12, v5

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v0, v26, v12

    if-ne v0, v11, :cond_1f

    aget-wide v3, v25, v12

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_1f
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v26, v12

    goto :goto_21

    :pswitch_30
    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move v8, v6

    move v3, v13

    move-object v13, v1

    move v6, v5

    move-object v5, v4

    move-object/from16 v4, v26

    const/16 v24, 0x2

    move-object/from16 v27, v9

    move-object/from16 v25, v15

    move-object/from16 v12, v23

    move/from16 v15, p2

    move-object/from16 v1, p0

    goto/16 :goto_32

    :pswitch_31
    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move-object/from16 v25, v4

    move v12, v5

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    if-eqz v14, :cond_20

    iget v0, v2, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/lit8 v0, v0, 0x64

    iput v0, v2, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_20
    sub-int v0, v12, v8

    :try_start_13
    aget-object v3, v26, v0

    instance-of v4, v3, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v4, :cond_22

    move-object/from16 v27, v9

    move-object v9, v3

    check-cast v9, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    iget-object v5, v9, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    if-ne v4, v5, :cond_21

    :try_start_14
    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v9, v2, v3}, Lorg/mozilla/javascript/BaseFunction;->createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :try_start_15
    iget-object v2, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    add-int/lit8 v7, v0, 0x1

    move-object v4, v3

    const/16 v24, 0x2

    move/from16 v15, p2

    move-object v12, v1

    move-object v10, v6

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    move-object/from16 v1, p0

    :try_start_16
    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    move-object v4, v5

    move-object v6, v10

    :try_start_17
    aput-object v3, v4, v0

    iput v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    move-object v3, v2

    move v0, v8

    move-object v4, v12

    move-object/from16 v2, v22

    move-object/from16 v7, v23

    move-object/from16 v15, v31

    move/from16 v13, v32

    move-object/from16 v5, v34

    goto/16 :goto_3

    :catchall_8
    move-exception v0

    :goto_22
    move-object v3, v6

    move-object v4, v12

    :goto_23
    move v6, v14

    move/from16 p2, v15

    :goto_24
    move-object/from16 v2, v22

    move-object/from16 v12, v23

    move/from16 v15, v24

    :goto_25
    move-object/from16 v5, v34

    goto/16 :goto_6

    :catchall_9
    move-exception v0

    move-object v6, v10

    goto :goto_22

    :catchall_a
    move-exception v0

    const/16 v24, 0x2

    move/from16 v15, p2

    move-object v12, v1

    move-object/from16 v1, p0

    :goto_26
    move-object v3, v6

    move-object v4, v12

    move v6, v14

    goto :goto_24

    :catchall_b
    move-exception v0

    move/from16 v15, p2

    move-object v12, v1

    move-object v1, v2

    :goto_27
    const/16 v24, 0x2

    goto :goto_26

    :cond_21
    :goto_28
    move-object v12, v1

    move-object v1, v2

    move-object/from16 v5, v25

    move-object/from16 v4, v26

    const/16 v9, 0xd

    const/16 v24, 0x2

    move-object/from16 v25, v15

    move/from16 v15, p2

    goto :goto_29

    :catchall_c
    move-exception v0

    move/from16 v15, p2

    move-object v12, v1

    move-object v1, v2

    const/16 v9, 0xd

    goto :goto_27

    :cond_22
    move-object/from16 v27, v9

    goto :goto_28

    :goto_29
    instance-of v2, v3, Lorg/mozilla/javascript/Constructable;

    if-nez v2, :cond_24

    if-ne v3, v11, :cond_23

    aget-wide v2, v5, v0

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_23
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_24
    check-cast v3, Lorg/mozilla/javascript/Constructable;

    instance-of v2, v3, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v2, :cond_25

    move-object v2, v3

    check-cast v2, Lorg/mozilla/javascript/IdFunctionObject;

    invoke-static {v2}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v13, 0x0

    invoke-static {v1, v3, v13}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_2a

    :cond_25
    add-int/lit8 v2, v0, 0x1

    invoke-static {v4, v5, v2, v8}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v2

    iget-object v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v3, v1, v13, v2}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    aput-object v2, v4, v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :goto_2a
    move-object v3, v4

    move-object v4, v5

    move-object v2, v6

    move v6, v8

    move/from16 p2, v15

    move-object/from16 v15, v25

    move-object/from16 v9, v27

    move-object/from16 v8, v29

    move-object/from16 v13, v35

    move v5, v0

    goto/16 :goto_9

    :pswitch_32
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    :try_start_18
    invoke-static {v6, v12}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->negate(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    instance-of v3, v0, Ljava/math/BigInteger;

    if-eqz v3, :cond_26

    aput-object v0, v4, v12

    :goto_2b
    move-object v13, v2

    move-object v2, v6

    move-object/from16 v28, v7

    move/from16 p2, v15

    move/from16 v15, v24

    move-object/from16 v7, v25

    move-object v6, v1

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move v5, v12

    move-object/from16 v12, v23

    goto/16 :goto_60

    :catchall_d
    move-exception v0

    move-object v4, v2

    move-object v3, v6

    goto/16 :goto_23

    :cond_26
    aput-object v11, v4, v12

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v36

    aput-wide v36, v5, v12

    goto :goto_2b

    :pswitch_33
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    invoke-static {v6, v12}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v36

    aput-object v11, v4, v12

    aput-wide v36, v5, v12

    goto :goto_2b

    :pswitch_34
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    invoke-static {v6, v4, v5, v12}, Lorg/mozilla/javascript/Interpreter;->doBitNOT(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v0

    :goto_2c
    move-object v12, v2

    goto/16 :goto_2a

    :pswitch_35
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    invoke-static {v6, v12}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v12

    goto :goto_2b

    :pswitch_36
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    invoke-static {v6, v13, v4, v5, v12}, Lorg/mozilla/javascript/Interpreter;->doArithmetic(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v0

    goto :goto_2c

    :pswitch_37
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    add-int/lit8 v0, v12, -0x1

    invoke-static {v4, v5, v0, v1}, Lorg/mozilla/javascript/Interpreter;->doAdd([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V

    goto :goto_2c

    :pswitch_38
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    add-int/lit8 v0, v12, -0x1

    invoke-static {v6, v0}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v36

    invoke-static {v6, v12}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v3, v12, -0x1

    aput-object v11, v4, v3

    invoke-static/range {v36 .. v37}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v12

    ushr-long/2addr v12, v0

    long-to-double v12, v12

    aput-wide v12, v5, v3

    :goto_2d
    move-object/from16 p2, v5

    move v5, v3

    move-object v3, v4

    move-object/from16 v4, p2

    move-object v12, v2

    move-object v2, v6

    move v6, v8

    :goto_2e
    move/from16 p2, v15

    move-object/from16 v15, v25

    move-object/from16 v9, v27

    goto/16 :goto_d

    :pswitch_39
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    invoke-static {v6, v13, v4, v5, v12}, Lorg/mozilla/javascript/Interpreter;->doCompare(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v0

    goto/16 :goto_2c

    :pswitch_3a
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    add-int/lit8 v0, v12, -0x1

    invoke-static {v4, v5, v0}, Lorg/mozilla/javascript/Interpreter;->doEquals([Ljava/lang/Object;[DI)Z

    move-result v3

    if-ne v13, v9, :cond_27

    move/from16 v12, v32

    goto :goto_2f

    :cond_27
    const/4 v12, 0x0

    :goto_2f
    xor-int/2addr v3, v12

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v0

    goto/16 :goto_2c

    :pswitch_3b
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    invoke-static {v6, v13, v4, v5, v12}, Lorg/mozilla/javascript/Interpreter;->doBitOp(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v0

    goto/16 :goto_2c

    :pswitch_3c
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    aget-object v0, v4, v12

    if-ne v0, v11, :cond_28

    aget-wide v36, v5, v12

    invoke-static/range {v36 .. v37}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_28
    add-int/lit8 v3, v12, -0x1

    aget-object v12, v4, v3

    check-cast v12, Lorg/mozilla/javascript/Scriptable;

    const/16 v9, 0x8

    if-ne v13, v9, :cond_29

    iget-object v9, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v12, v0, v1, v9, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_30

    :cond_29
    iget-object v9, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v12, v0, v1, v9, v2}, Lorg/mozilla/javascript/ScriptRuntime;->strictSetName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_30
    aput-object v0, v4, v3

    goto/16 :goto_2d

    :pswitch_3d
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    add-int/lit8 v0, v12, -0x1

    invoke-static {v6, v12}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_2c

    :cond_2a
    move-object v13, v2

    move-object v2, v6

    move-object/from16 v28, v7

    move v6, v14

    move/from16 p2, v15

    move-object/from16 v12, v23

    move/from16 v15, v24

    move-object/from16 v7, v25

    const/16 v33, 0x0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move v5, v0

    goto/16 :goto_68

    :pswitch_3e
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    add-int/lit8 v0, v12, -0x1

    invoke-static {v6, v12}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v3

    if-nez v3, :cond_2a

    iget v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_2c

    :pswitch_3f
    move-object/from16 v29, v8

    const/16 v24, 0x2

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    const/16 v33, 0x0

    move-object/from16 v1, p0

    move-object v13, v2

    move-object/from16 v25, v5

    move-object v2, v6

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move v5, v12

    move v6, v14

    move-object v7, v15

    move-object/from16 v12, v23

    move/from16 v15, v24

    move-object/from16 v24, v4

    goto/16 :goto_68

    :pswitch_40
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move/from16 v15, p2

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    aget-object v0, v4, v12

    iput-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    aget-wide v3, v5, v12

    iput-wide v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    move-object v13, v2

    move-object v2, v6

    move/from16 p2, v15

    move-object/from16 v12, v23

    move/from16 v15, v24

    move-object v6, v1

    :goto_31
    move-object/from16 v1, v31

    goto/16 :goto_5b

    :pswitch_41
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    iget-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->leaveWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto/16 :goto_2b

    :pswitch_42
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    aget-object v0, v4, v12

    if-ne v0, v11, :cond_2b

    aget-wide v36, v5, v12

    invoke-static/range {v36 .. v37}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_2b
    add-int/lit8 v3, v12, -0x1

    iget-object v9, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1, v9}, Lorg/mozilla/javascript/ScriptRuntime;->enterWith(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    goto/16 :goto_2d

    :pswitch_43
    move-object/from16 v29, v8

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move v3, v13

    move-object v13, v2

    move-object v2, v6

    move v6, v12

    move-object/from16 v27, v9

    const/16 v24, 0x2

    move-object/from16 v25, v15

    move/from16 v15, p2

    move-object/from16 v1, p0

    move-object/from16 v12, v23

    :goto_32
    :try_start_19
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doDelName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v0

    move-object v3, v4

    move-object v4, v5

    :goto_33
    move-object/from16 v1, p0

    move v5, v0

    :goto_34
    move v6, v8

    move-object/from16 v23, v12

    move-object v12, v13

    goto/16 :goto_2e

    :catchall_e
    move-exception v0

    const/16 v33, 0x0

    move-object/from16 v1, p0

    move-object v3, v2

    move-object v4, v13

    move v6, v14

    move/from16 p2, v15

    move-object/from16 v2, v22

    move/from16 v15, v24

    :goto_35
    move-object/from16 v5, v34

    goto/16 :goto_6e

    :pswitch_44
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v3, v25

    const/16 v24, 0x2

    move v8, v6

    move-object/from16 v25, v15

    move/from16 v15, p2

    add-int/lit8 v0, v5, 0x1

    aget-object v1, v3, v5

    aput-object v1, v3, v0

    aget-wide v5, v4, v5

    aput-wide v5, v4, v0

    goto :goto_33

    :pswitch_45
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v3, v25

    const/16 v24, 0x2

    move v8, v6

    move-object/from16 v25, v15

    move/from16 v15, p2

    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v5, -0x1

    aget-object v6, v3, v1

    aput-object v6, v3, v0

    aget-wide v36, v4, v1

    aput-wide v36, v4, v0

    add-int/lit8 v0, v5, 0x2

    aget-object v1, v3, v5

    aput-object v1, v3, v0

    aget-wide v5, v4, v5

    aput-wide v5, v4, v0

    goto :goto_33

    :pswitch_46
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v3, v25

    const/16 v24, 0x2

    move v8, v6

    move-object/from16 v25, v15

    move/from16 v15, p2

    aget-object v0, v3, v5

    add-int/lit8 v1, v5, -0x1

    aget-object v6, v3, v1

    aput-object v6, v3, v5

    aput-object v0, v3, v1

    aget-wide v36, v4, v5

    aget-wide v38, v4, v1

    aput-wide v38, v4, v5

    aput-wide v36, v4, v1

    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move/from16 p2, v15

    move/from16 v15, v24

    move-object/from16 v7, v25

    move-object/from16 v24, v3

    :goto_36
    move-object/from16 v25, v4

    goto/16 :goto_60

    :pswitch_47
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v3, v25

    const/16 v24, 0x2

    move v8, v6

    move-object/from16 v25, v15

    move/from16 v15, p2

    aput-object v31, v3, v5

    :goto_37
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, p0

    goto/16 :goto_34

    :pswitch_48
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v3, v25

    const/16 v24, 0x2

    move v8, v6

    move-object/from16 v25, v15

    move/from16 v15, p2

    aget-object v0, v3, v5

    iput-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    aget-wide v0, v4, v5

    iput-wide v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    aput-object v31, v3, v5

    goto :goto_37

    :pswitch_49
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v3, v25

    const/16 v24, 0x2

    move v8, v6

    move-object/from16 v25, v15

    move/from16 v15, p2

    add-int/lit8 v0, v5, -0x1

    invoke-static {v2, v5}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v1

    if-nez v1, :cond_2c

    iget v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_33

    :cond_2c
    add-int/lit8 v5, v5, -0x2

    aput-object v31, v3, v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    const/16 v33, 0x0

    move-object/from16 v1, p0

    move-object/from16 v28, v7

    move v6, v14

    move/from16 p2, v15

    move/from16 v15, v24

    move-object/from16 v7, v25

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    goto/16 :goto_68

    :pswitch_4a
    move-object v1, v9

    move v9, v6

    move-object v6, v1

    move-object/from16 v1, p0

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v3, v25

    move-object/from16 v25, v15

    const/4 v15, 0x2

    :try_start_1a
    invoke-static/range {v1 .. v9}, Lorg/mozilla/javascript/Interpreter;->doVarIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    move/from16 v27, v9

    move-object v9, v8

    move/from16 v8, v27

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v6, v1

    :goto_38
    move-object v1, v6

    move v6, v8

    move-object v8, v9

    move-object/from16 v23, v12

    move-object v12, v13

    move-object/from16 v15, v25

    :goto_39
    move-object/from16 v9, v27

    :goto_3a
    move-object/from16 v7, v28

    goto/16 :goto_a

    :catchall_f
    move-exception v0

    move-object v6, v1

    :goto_3b
    move-object v3, v2

    :goto_3c
    move-object v4, v13

    :goto_3d
    move v6, v14

    move-object/from16 v2, v22

    goto/16 :goto_25

    :pswitch_4b
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v3, v25

    move-object v9, v8

    move-object/from16 v25, v15

    const/4 v15, 0x2

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    :try_start_1b
    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aget-byte v1, v25, v1

    invoke-static {v0, v13, v6, v1}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v5

    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_38

    :catchall_10
    move-exception v0

    :goto_3e
    move-object v3, v2

    move-object v1, v6

    goto :goto_3c

    :pswitch_4c
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v3, v25

    move-object v9, v8

    move-object/from16 v25, v15

    const/4 v15, 0x2

    move v8, v6

    move-object/from16 v6, p0

    aget-object v0, v3, v5

    if-ne v0, v11, :cond_2d

    aget-wide v0, v4, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_2d
    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v7, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v7, v25, v7

    invoke-static {v0, v13, v6, v1, v7}, Lorg/mozilla/javascript/ScriptRuntime;->propIncrDecr(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v5

    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    move-object/from16 v24, v3

    move-object/from16 v29, v9

    move-object/from16 v7, v25

    goto/16 :goto_36

    :pswitch_4d
    move-object/from16 v1, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v3, v15

    move-object/from16 v12, v23

    const/4 v15, 0x2

    move-object v9, v8

    move v8, v6

    move v6, v5

    move-object v5, v4

    move-object/from16 v4, v25

    :try_start_1c
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doElemIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[B[Ljava/lang/Object;[DI)I

    move-result v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    move-object v6, v2

    move-object v7, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object v2, v1

    move v5, v0

    :goto_3f
    move-object v1, v2

    :goto_40
    move-object v2, v6

    :goto_41
    move-object v15, v7

    move v6, v8

    :goto_42
    move-object v8, v9

    move-object/from16 v23, v12

    move-object v12, v13

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_39

    :catchall_11
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    :goto_43
    move-object v3, v6

    goto/16 :goto_3c

    :pswitch_4e
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    :try_start_1d
    aget-object v0, v24, v5

    check-cast v0, Lorg/mozilla/javascript/Ref;

    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aget-byte v1, v7, v1

    invoke-static {v0, v2, v3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->refIncrDecr(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v24, v5

    iget v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_44
    move-object/from16 v29, v6

    move-object v6, v2

    move-object/from16 v2, v29

    :goto_45
    move-object/from16 v29, v9

    goto/16 :goto_60

    :catchall_12
    move-exception v0

    move-object v1, v2

    goto :goto_43

    :pswitch_4f
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    iget v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v0, v8

    aget-object v1, v24, v0

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    iput-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    :goto_46
    move-object v1, v2

    move-object v2, v6

    :goto_47
    move-object v15, v7

    move-object v8, v9

    move-object/from16 v23, v12

    move-object v12, v13

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    :goto_48
    move-object/from16 v9, v27

    move-object/from16 v7, v28

    :goto_49
    move-object/from16 v13, v35

    goto/16 :goto_8

    :pswitch_50
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    iget v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v0, v8

    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aput-object v1, v24, v0

    goto :goto_46

    :pswitch_51
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v5, 0x1

    iget-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v13}, Lorg/mozilla/javascript/ScriptRuntime;->typeofName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_3f

    :pswitch_52
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v0, v5, 0x1

    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v13, v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getNameFunctionAndThis(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v24, v0

    add-int/lit8 v5, v5, 0x2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_3f

    :pswitch_53
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v0, v24, v5

    if-ne v0, v11, :cond_2e

    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_2e
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v13, v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    aput-object v0, v24, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_3f

    :pswitch_54
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v0, v5, -0x1

    aget-object v1, v24, v0

    if-ne v1, v11, :cond_2f

    aget-wide v3, v25, v0

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_2f
    aget-object v3, v24, v5

    if-ne v3, v11, :cond_30

    aget-wide v3, v25, v5

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_30
    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v3, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->getElemFunctionAndThis(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v24, v0

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_44

    :pswitch_55
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v0, v24, v5

    if-ne v0, v11, :cond_31

    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_31
    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    aput-object v0, v24, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_3f

    :pswitch_56
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v0, v5, 0x1

    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v13, v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getNameFunctionAndThisOptional(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v24, v0

    add-int/lit8 v5, v5, 0x2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_3f

    :pswitch_57
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v0, v24, v5

    if-ne v0, v11, :cond_32

    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_32
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v13, v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThisOptional(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    aput-object v0, v24, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_3f

    :pswitch_58
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v0, v5, -0x1

    aget-object v1, v24, v0

    if-ne v1, v11, :cond_33

    aget-wide v3, v25, v0

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_33
    aget-object v3, v24, v5

    if-ne v3, v11, :cond_34

    aget-wide v3, v25, v5

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_34
    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v3, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->getElemFunctionAndThisOptional(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v24, v0

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_44

    :pswitch_59
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    aget-object v0, v24, v5

    if-ne v0, v11, :cond_35

    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_35
    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThisOptional(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    aput-object v0, v24, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_3f

    :pswitch_5a
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    iget-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {v2, v0, v1, v8}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object v0

    iget-object v1, v0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-ne v1, v3, :cond_36

    move/from16 v26, v5

    invoke-static {v6}, Lorg/mozilla/javascript/Interpreter;->getCurrentFrameHomeObject(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    add-int/lit8 v23, v26, 0x1

    move-object v3, v0

    new-instance v0, Lorg/mozilla/javascript/ArrowFunction;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    :try_start_1e
    iget-object v2, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_14

    move-object/from16 v1, p0

    :try_start_1f
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ArrowFunction;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    aput-object v0, v24, v23

    move-object v2, v6

    move-object v15, v7

    move v6, v8

    move-object v8, v9

    move/from16 v5, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v23, v12

    move-object v12, v13

    goto/16 :goto_a

    :catchall_13
    move-exception v0

    goto/16 :goto_43

    :catchall_14
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_43

    :cond_36
    move-object v3, v0

    move-object v1, v2

    move/from16 v26, v5

    add-int/lit8 v5, v26, 0x1

    aput-object v3, v24, v5

    goto/16 :goto_40

    :pswitch_5b
    move-object/from16 v1, p0

    move/from16 v26, v5

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    iget-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {v1, v0, v2, v8}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    move-object v2, v6

    move-object/from16 v29, v9

    move/from16 v5, v26

    move-object v6, v1

    goto/16 :goto_60

    :pswitch_5c
    move-object/from16 v1, p0

    move/from16 v26, v5

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    if-eqz v14, :cond_37

    iget v0, v1, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/lit8 v0, v0, 0x64

    iput v0, v1, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    :cond_37
    move-object v3, v7

    move v7, v8

    const/4 v8, 0x0

    move-object v2, v6

    move-object/from16 v4, v25

    move/from16 v5, v26

    move-object v6, v3

    move-object/from16 v3, v24

    :try_start_20
    invoke-static/range {v1 .. v8}, Lorg/mozilla/javascript/Interpreter;->doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BIZ)I

    move-result v5

    move v8, v7

    move-object v15, v6

    move v6, v8

    move-object v8, v9

    move-object/from16 v23, v12

    move-object v12, v13

    goto/16 :goto_39

    :catchall_15
    move-exception v0

    goto/16 :goto_3b

    :pswitch_5d
    move-object/from16 v1, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v3, v25

    move-object v9, v8

    move v8, v6

    move-object v6, v15

    const/4 v15, 0x2

    if-eqz v14, :cond_38

    iget v0, v1, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/lit8 v0, v0, 0x64

    iput v0, v1, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_15

    :cond_38
    move v7, v8

    const/4 v8, 0x1

    :try_start_21
    invoke-static/range {v1 .. v8}, Lorg/mozilla/javascript/Interpreter;->doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BIZ)I

    move-result v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    move-object/from16 v24, v3

    move v8, v7

    move-object v7, v6

    move-object v6, v1

    move-object v1, v6

    move-object v15, v7

    move v6, v8

    move-object v8, v9

    move-object/from16 v23, v12

    move-object v12, v13

    move-object/from16 v3, v24

    goto/16 :goto_39

    :pswitch_5e
    const/4 v15, 0x2

    move v8, v6

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v6, p0

    :try_start_22
    sget-object v0, Lorg/mozilla/javascript/Interpreter;->undefined:Ljava/lang/Object;

    iput-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    goto/16 :goto_31

    :pswitch_5f
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    aput-object v11, v24, v5

    add-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    aput-wide v0, v4, v5

    move-object/from16 v25, v4

    move-object v1, v6

    move-object/from16 v29, v9

    :goto_4a
    move v6, v14

    const/16 v33, 0x0

    goto/16 :goto_68

    :pswitch_60
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    add-int/lit8 v1, v0, 0x1

    if-ne v5, v1, :cond_39

    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v0, v8

    aget-object v1, v24, v5

    aput-object v1, v24, v0

    aget-wide v25, v4, v5

    aput-wide v25, v4, v0

    add-int/lit8 v5, v5, -0x1

    move-object v1, v6

    move-object v15, v7

    move-object v8, v9

    move-object/from16 v23, v12

    :goto_4b
    move-object v12, v13

    move-object/from16 v3, v24

    goto/16 :goto_48

    :cond_39
    if-eq v5, v0, :cond_3a

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3a
    move-object/from16 v25, v4

    goto/16 :goto_45

    :pswitch_61
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    if-eqz v14, :cond_3b

    const/4 v1, 0x0

    invoke-static {v6, v2, v1}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    :cond_3b
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v0, v8

    aget-object v1, v24, v0

    if-eq v1, v11, :cond_3c

    move-object v0, v1

    move-object v1, v6

    move-object v4, v13

    move v6, v14

    move-object/from16 v5, v34

    goto/16 :goto_1c

    :cond_3c
    move-object/from16 v25, v4

    aget-wide v3, v25, v0

    double-to-int v1, v3

    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-eqz v14, :cond_3d

    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    :cond_3d
    :goto_4c
    move-object v1, v6

    goto/16 :goto_47

    :pswitch_62
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v0, :cond_3e

    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    invoke-interface {v1, v6, v0}, Lorg/mozilla/javascript/debug/DebugFrame;->onLineChange(Lorg/mozilla/javascript/Context;I)V

    :cond_3e
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v15

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_45

    :pswitch_63
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    aput-object v11, v24, v5

    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result v0

    int-to-double v0, v0

    aput-wide v0, v25, v5

    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v15

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_4d
    move-object v1, v6

    goto/16 :goto_41

    :pswitch_64
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    aput-object v11, v24, v5

    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v0

    int-to-double v0, v0

    aput-wide v0, v25, v5

    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v3

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_4d

    :pswitch_65
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v3, v3, v8

    check-cast v3, [Ljava/lang/Object;

    aget-byte v1, v7, v1

    if-eqz v1, :cond_3f

    move/from16 v1, v32

    goto :goto_4e

    :cond_3f
    const/4 v1, 0x0

    :goto_4e
    add-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v5, 0x1

    iget-object v4, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    aput-object v4, v24, v0

    add-int/lit8 v0, v5, 0x2

    if-eqz v1, :cond_40

    array-length v1, v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_4f

    :cond_40
    move-object v1, v3

    :goto_4f
    aput-object v1, v24, v0

    add-int/lit8 v0, v5, 0x3

    array-length v1, v3

    new-array v1, v1, [I

    aput-object v1, v24, v0

    add-int/lit8 v5, v5, 0x4

    array-length v0, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v0, v24, v5

    aput-wide v16, v25, v5

    goto :goto_4d

    :pswitch_66
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v0, v5, 0x1

    new-array v1, v8, [I

    aput-object v1, v24, v0

    add-int/lit8 v5, v5, 0x2

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v0, v24, v5

    aput-wide v16, v25, v5

    goto/16 :goto_4d

    :pswitch_67
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    aget-object v0, v24, v5

    if-ne v0, v11, :cond_41

    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_41
    add-int/lit8 v5, v5, -0x1

    aget-wide v3, v25, v5

    double-to-int v1, v3

    aget-object v3, v24, v5

    check-cast v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v0, v1

    aput-wide v0, v25, v5

    goto/16 :goto_4d

    :pswitch_68
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    aget-object v0, v24, v5

    check-cast v0, Lorg/mozilla/javascript/InterpretedFunction;

    add-int/lit8 v1, v5, -0x4

    aget-object v1, v24, v1

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/BaseFunction;->setHomeObject(Lorg/mozilla/javascript/Scriptable;)V

    goto/16 :goto_45

    :pswitch_69
    move-object/from16 v27, v9

    move-object v9, v8

    move-object/from16 v28, v7

    move v3, v13

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v13, v12

    move-object/from16 v12, v23

    move v8, v6

    move-object/from16 v6, p0

    :goto_50
    aget-object v0, v24, v5

    check-cast v0, [Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    aget-object v1, v24, v5

    check-cast v1, [I

    const/16 v1, -0x26

    if-ne v3, v1, :cond_42

    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v1, v1, v8

    check-cast v1, [I

    goto :goto_51

    :cond_42
    move-object/from16 v1, v31

    :goto_51
    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1, v6, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newArrayLiteral([Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_4d

    :pswitch_6a
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object/from16 v1, p0

    move-object v15, v7

    move-object/from16 v3, v24

    move-object/from16 v7, v28

    move-object/from16 v13, v35

    const/4 v6, 0x0

    goto/16 :goto_9

    :pswitch_6b
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object/from16 v1, p0

    move-object v15, v7

    move-object/from16 v3, v24

    move-object/from16 v7, v28

    move/from16 v6, v32

    goto/16 :goto_a

    :pswitch_6c
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object/from16 v1, p0

    move v6, v15

    move-object/from16 v3, v24

    move-object/from16 v13, v35

    move-object v15, v7

    move-object/from16 v7, v28

    goto/16 :goto_9

    :pswitch_6d
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object/from16 v1, p0

    move-object v15, v7

    move-object/from16 v3, v24

    move/from16 v6, v26

    goto/16 :goto_3a

    :pswitch_6e
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object/from16 v1, p0

    move v6, v3

    move-object v15, v7

    move-object/from16 v3, v24

    goto/16 :goto_3a

    :pswitch_6f
    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    const/4 v0, 0x5

    move-object v1, v6

    move-object v15, v7

    goto/16 :goto_4b

    :pswitch_70
    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move-object v3, v6

    move v6, v1

    move-object v1, v3

    move-object v15, v7

    goto/16 :goto_42

    :pswitch_71
    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    iget v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v1, v15

    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4c

    :pswitch_72
    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v0

    iget v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v1, v3

    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4c

    :pswitch_73
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    aget-object v0, v35, v33

    :goto_52
    move-object v1, v6

    move-object v15, v7

    move v6, v8

    move-object v8, v9

    move-object/from16 v23, v12

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v13, v35

    move-object v12, v0

    goto/16 :goto_9

    :pswitch_74
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    aget-object v0, v35, v32

    goto :goto_52

    :pswitch_75
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    aget-object v0, v35, v15

    goto :goto_52

    :pswitch_76
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    aget-object v0, v35, v26

    goto :goto_52

    :pswitch_77
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    aget-object v1, v35, v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    add-int/lit8 v0, v0, 0x2

    :try_start_23
    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_16

    :goto_53
    move-object v15, v7

    move-object/from16 v23, v12

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v7, v28

    move-object/from16 v13, v35

    move-object v12, v1

    move-object v1, v6

    move v6, v8

    move-object v8, v9

    move-object/from16 v9, v27

    goto/16 :goto_9

    :catchall_16
    move-exception v0

    move-object v4, v1

    move-object v3, v2

    move-object v1, v6

    goto/16 :goto_3d

    :pswitch_78
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    :try_start_24
    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    aget-object v1, v35, v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    :try_start_25
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v15

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_16

    goto :goto_53

    :pswitch_79
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    :try_start_26
    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v0

    aget-object v1, v35, v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    :try_start_27
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v3

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_16

    goto :goto_53

    :pswitch_7a
    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v9, v8

    add-int/lit8 v0, v0, 0x2

    :try_start_28
    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v0, v7, v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    move/from16 v29, v0

    move-object/from16 v23, v2

    move/from16 v26, v5

    :goto_54
    :try_start_29
    invoke-static/range {v23 .. v29}, Lorg/mozilla/javascript/Interpreter;->doGetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I

    move-result v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_17

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move/from16 v0, v29

    move-object v1, v6

    move-object v15, v7

    move-object v8, v9

    move-object/from16 v23, v12

    move-object v12, v13

    goto/16 :goto_48

    :catchall_17
    move-exception v0

    move-object/from16 v2, v23

    goto/16 :goto_3e

    :pswitch_7b
    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v3, v25

    const/4 v15, 0x2

    move-object v9, v8

    add-int/lit8 v0, v0, 0x2

    :try_start_2a
    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v0, v7, v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    move/from16 v30, v0

    move-object/from16 v24, v3

    move-object/from16 v29, v9

    move-object/from16 v23, v2

    move-object/from16 v25, v4

    move/from16 v26, v5

    :goto_55
    :try_start_2b
    invoke-static/range {v23 .. v30}, Lorg/mozilla/javascript/Interpreter;->doSetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v5
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_17

    move-object/from16 v2, v23

    move/from16 v0, v30

    :goto_56
    move-object v1, v6

    move-object v15, v7

    move-object/from16 v23, v12

    move-object v12, v13

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    goto/16 :goto_49

    :pswitch_7c
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    :try_start_2c
    sget-object v0, Lorg/mozilla/javascript/Interpreter;->undefined:Ljava/lang/Object;

    aput-object v0, v24, v5

    :goto_57
    move-object v1, v6

    move-object v15, v7

    move v6, v8

    move-object/from16 v23, v12

    move-object v12, v13

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v9, v27

    move-object/from16 v7, v28

    goto/16 :goto_d

    :pswitch_7d
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v24, v5

    goto :goto_57

    :pswitch_7e
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v24, v5

    goto :goto_57

    :pswitch_7f
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    aget-object v0, v24, v5

    if-ne v0, v11, :cond_43

    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_43
    add-int/lit8 v5, v5, -0x1

    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->enterDotQuery(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto :goto_57

    :pswitch_80
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    invoke-static {v2, v5}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v0

    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->updateDotQuery(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_44

    aput-object v0, v24, v5

    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->leaveDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v15

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_60

    :cond_44
    add-int/lit8 v5, v5, -0x1

    move-object v1, v6

    goto/16 :goto_4a

    :pswitch_81
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v3, v13

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move-object v13, v12

    move-object/from16 v12, v23

    const/16 v33, 0x0

    :goto_58
    move-object/from16 v1, p0

    move v4, v3

    move v3, v14

    goto/16 :goto_64

    :pswitch_82
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v0, v8

    aput-object v31, v24, v0

    goto/16 :goto_56

    :pswitch_83
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    aget-object v0, v24, v5

    add-int/lit8 v1, v5, -0x1

    aget-wide v3, v25, v1

    double-to-int v3, v3

    aget-object v4, v24, v1

    check-cast v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    add-int/lit8 v5, v5, -0x2

    aget-object v0, v24, v5

    check-cast v0, [I

    aput v18, v0, v3

    add-int/lit8 v3, v3, 0x1

    int-to-double v3, v3

    aput-wide v3, v25, v1

    :goto_59
    move v5, v1

    goto/16 :goto_57

    :pswitch_84
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    aget-object v0, v24, v5

    add-int/lit8 v1, v5, -0x1

    aget-wide v3, v25, v1

    double-to-int v3, v3

    aget-object v4, v24, v1

    check-cast v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    add-int/lit8 v5, v5, -0x2

    aget-object v0, v24, v5

    check-cast v0, [I

    aput v32, v0, v3

    add-int/lit8 v3, v3, 0x1

    int-to-double v3, v3

    aput-wide v3, v25, v1

    goto :goto_59

    :pswitch_85
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    aget-object v0, v24, v5

    if-ne v0, v11, :cond_45

    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_45
    add-int/lit8 v5, v5, -0x1

    aget-object v1, v24, v5

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v0, v6, v13}, Lorg/mozilla/javascript/ScriptRuntime;->setConst(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_57

    :pswitch_86
    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    add-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v0, v7, v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_10

    move/from16 v30, v0

    move-object v1, v6

    move-object/from16 v23, v2

    move/from16 v26, v5

    move v6, v14

    const/16 v33, 0x0

    goto/16 :goto_6b

    :pswitch_87
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v3, v13

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move v8, v6

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v6, p0

    :try_start_2d
    iget-boolean v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v1, :cond_4a

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v2}, Lorg/mozilla/javascript/Interpreter;->captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    move/from16 v1, v32

    iput-boolean v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    invoke-virtual {v6}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v1

    const/16 v3, 0xc8

    if-lt v1, v3, :cond_46

    new-instance v1, Lorg/mozilla/javascript/ES6Generator;

    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v4, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v1, v3, v4, v0}, Lorg/mozilla/javascript/ES6Generator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V

    iput-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    goto/16 :goto_31

    :catchall_18
    move-exception v0

    :goto_5a
    move-object v3, v2

    move-object v1, v6

    move-object v4, v13

    move v6, v14

    move-object/from16 v2, v22

    move-object/from16 v5, v34

    const/16 v32, 0x1

    goto/16 :goto_6

    :cond_46
    new-instance v1, Lorg/mozilla/javascript/NativeGenerator;

    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v4, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v1, v3, v4, v0}, Lorg/mozilla/javascript/NativeGenerator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V

    iput-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    goto/16 :goto_31

    :pswitch_88
    move v8, v6

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move/from16 v3, v32

    const/4 v15, 0x2

    move-object/from16 v6, p0

    iput-boolean v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    new-instance v1, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3}, Lorg/mozilla/javascript/NativeIterator;->getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v0}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v1, v12, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    goto/16 :goto_31

    :pswitch_89
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v0, :cond_4d

    invoke-interface {v0, v6}, Lorg/mozilla/javascript/debug/DebugFrame;->onDebuggerStatement(Lorg/mozilla/javascript/Context;)V

    goto/16 :goto_60

    :pswitch_8a
    move v8, v6

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    move/from16 v1, v32

    const/4 v15, 0x2

    move-object/from16 v6, p0

    move-object/from16 v25, v4

    iput-boolean v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    aget-object v0, v24, v5

    iput-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    aget-wide v0, v25, v5

    iput-wide v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    new-instance v0, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_47

    iget-wide v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_47
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeIterator$StopIteration;-><init>(Ljava/lang/Object;)V

    iget v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    new-instance v3, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v4, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v1}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v3, v12, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    goto/16 :goto_31

    :goto_5b
    invoke-static {v6, v2, v1}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    :try_start_2e
    iget-wide v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1a

    :try_start_2f
    iget-object v2, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v2, :cond_49

    iget-boolean v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v0, :cond_48

    invoke-virtual {v2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    move-object v2, v0

    goto :goto_5d

    :catchall_19
    move-exception v0

    move-object/from16 v19, v1

    move-wide/from16 v20, v3

    move-object v1, v6

    move-object v4, v13

    move v6, v14

    move-object/from16 v5, v34

    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object v3, v2

    :goto_5c
    move-object/from16 v2, v22

    goto/16 :goto_6e

    :cond_48
    :goto_5d
    invoke-static {v2, v1, v3, v4}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_19

    move-wide/from16 v20, v3

    move-object v1, v6

    move v0, v8

    move-object v7, v12

    move-object v4, v13

    move-object/from16 v5, v34

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object v3, v2

    move-object/from16 v2, v22

    goto/16 :goto_3

    :cond_49
    move-object v0, v1

    move-object v1, v6

    move-object/from16 v2, v22

    goto/16 :goto_79

    :catchall_1a
    move-exception v0

    move-object/from16 v19, v1

    goto/16 :goto_5a

    :pswitch_8b
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v3, v13

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v25, v4

    move v8, v6

    move-object v13, v12

    move-object/from16 v12, v23

    move-object/from16 v6, p0

    :cond_4a
    :goto_5e
    :try_start_30
    iget-boolean v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v0, :cond_4c

    const/16 v0, -0x49

    if-ne v3, v0, :cond_4b

    const/4 v0, 0x1

    goto :goto_5f

    :cond_4b
    const/4 v0, 0x0

    :goto_5f
    invoke-static {v6, v2, v5, v12, v0}, Lorg/mozilla/javascript/Interpreter;->freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4c
    invoke-static {v2, v5, v12, v3}, Lorg/mozilla/javascript/Interpreter;->thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_18

    if-eq v0, v1, :cond_4d

    move-object v1, v6

    move-object v4, v13

    move v6, v14

    move-object/from16 v5, v34

    const/16 v32, 0x1

    goto/16 :goto_1c

    :cond_4d
    :goto_60
    move-object v1, v6

    move-object v15, v7

    move v6, v8

    move-object/from16 v23, v12

    move-object v12, v13

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    move-object/from16 v13, v35

    const/16 v31, 0x0

    const/16 v32, 0x1

    goto/16 :goto_9

    :pswitch_8c
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    :try_start_31
    aget-object v34, v10, v33
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1b

    goto :goto_60

    :catchall_1b
    move-exception v0

    move-object v3, v2

    move-object v1, v6

    move-object v4, v13

    move v6, v14

    move-object/from16 v2, v22

    move-object/from16 v5, v34

    const/16 v32, 0x1

    goto/16 :goto_6e

    :pswitch_8d
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    :try_start_32
    aget-object v34, v10, v32

    :goto_61
    move-object v1, v6

    :goto_62
    move-object v15, v7

    move v6, v8

    move-object/from16 v23, v12

    move-object v12, v13

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    move-object/from16 v13, v35

    const/16 v31, 0x0

    goto/16 :goto_9

    :catchall_1c
    move-exception v0

    move-object v3, v2

    move-object v1, v6

    move-object v4, v13

    move v6, v14

    :goto_63
    move-object/from16 v2, v22

    goto/16 :goto_35

    :pswitch_8e
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    aget-object v34, v10, v15

    goto :goto_61

    :pswitch_8f
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    aget-object v34, v10, v26

    goto :goto_61

    :pswitch_90
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    aget-object v34, v10, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_61

    :pswitch_91
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    aget-object v34, v10, v0

    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v15

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_61

    :pswitch_92
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v0

    aget-object v34, v10, v0

    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v3

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_61

    :pswitch_93
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsTemplateLiterals:[Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v6, v1, v0, v8}, Lorg/mozilla/javascript/ScriptRuntime;->getTemplateLiteralCallSite(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_61

    :pswitch_94
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    aget-object v0, v24, v5

    if-ne v0, v11, :cond_4e

    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_4e
    add-int/lit8 v1, v5, -0x1

    add-int/lit8 v5, v5, -0x3

    aget-object v3, v24, v5

    check-cast v3, [Ljava/lang/Object;

    aget-wide v4, v25, v1

    double-to-int v4, v4

    aput-object v0, v3, v4

    move v5, v1

    goto/16 :goto_61

    :pswitch_95
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, v5

    add-int/lit8 v5, v5, -0x1

    if-eqz v0, :cond_4f

    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v15

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_61

    :cond_4f
    move-object v1, v6

    move v6, v14

    goto/16 :goto_68

    :pswitch_96
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, v5

    add-int/lit8 v5, v5, -0x1

    if-eqz v0, :cond_50

    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_50
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v15

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1c

    goto/16 :goto_61

    :pswitch_97
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v3, v13

    move-object v7, v15

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move-object v13, v12

    move-object/from16 v12, v23

    goto/16 :goto_58

    :goto_64
    :try_start_33
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doCallByteCode(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ZIII)Lorg/mozilla/javascript/Interpreter$NewState;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1e

    move v8, v6

    move v6, v3

    :try_start_34
    instance-of v3, v0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;

    if-eqz v3, :cond_51

    check-cast v0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;

    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;->a(Lorg/mozilla/javascript/Interpreter$ContinueLoop;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v2

    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v4, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;->c(Lorg/mozilla/javascript/Interpreter$ContinueLoop;)I

    move-result v5

    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;->b(Lorg/mozilla/javascript/Interpreter$ContinueLoop;)I

    move-result v0

    :goto_65
    move v14, v6

    move-object v15, v7

    move-object/from16 v23, v12

    move-object v12, v13

    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    move-object/from16 v13, v35

    const/16 v31, 0x0

    goto/16 :goto_8

    :catchall_1d
    move-exception v0

    :goto_66
    move-object v3, v2

    move-object v4, v13

    goto/16 :goto_63

    :cond_51
    instance-of v3, v0, Lorg/mozilla/javascript/Interpreter$StateContinue;

    if-eqz v3, :cond_52

    check-cast v0, Lorg/mozilla/javascript/Interpreter$StateContinue;

    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter$StateContinue;->a(Lorg/mozilla/javascript/Interpreter$StateContinue;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3

    move v14, v6

    move v0, v8

    move-object v7, v12

    move-object v4, v13

    move-object/from16 v2, v22

    move/from16 v13, v32

    move-object/from16 v5, v34

    :goto_67
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_52
    instance-of v3, v0, Lorg/mozilla/javascript/Interpreter$NewThrowable;

    if-eqz v3, :cond_53

    check-cast v0, Lorg/mozilla/javascript/Interpreter$NewThrowable;

    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter$NewThrowable;->a(Lorg/mozilla/javascript/Interpreter$NewThrowable;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v13

    move-object/from16 v5, v34

    goto/16 :goto_6f

    :cond_53
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :goto_68
    if-eqz v6, :cond_54

    invoke-static {v1, v2, v15}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    :cond_54
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v7, v0}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result v0

    if-eqz v0, :cond_55

    iget v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v3

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_69

    :cond_55
    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Ljava/util/Map;

    iget v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_69
    if-eqz v6, :cond_56

    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    :cond_56
    :goto_6a
    move v14, v6

    goto/16 :goto_62

    :catchall_1e
    move-exception v0

    move v6, v3

    goto :goto_66

    :pswitch_98
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v1, p0

    move-object/from16 v25, v4

    move v8, v6

    move v6, v14

    add-int/lit8 v5, v5, -0x1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v24, v5

    invoke-static {}, Lorg/mozilla/javascript/ScriptRuntime;->throwDeleteOnSuperPropertyNotAllowed()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1d

    goto :goto_6a

    :cond_57
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object v13, v12

    move-object v7, v15

    move-object/from16 v12, v23

    move-object/from16 v24, v25

    const/4 v15, 0x2

    move-object/from16 v1, p0

    move v8, v6

    move-object/from16 v25, v4

    move/from16 v30, v8

    move-object/from16 v27, v9

    const/16 v33, 0x0

    move v6, v14

    move-object/from16 v23, v2

    move/from16 v26, v5

    :goto_6b
    :try_start_35
    invoke-static/range {v23 .. v30}, Lorg/mozilla/javascript/Interpreter;->doSetConstVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v5
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1f

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move/from16 v0, v30

    goto/16 :goto_65

    :catchall_1f
    move-exception v0

    move-object/from16 v2, v23

    goto/16 :goto_66

    :catchall_20
    move-exception v0

    move-object v13, v12

    move v6, v14

    move-object/from16 v12, v23

    const/4 v15, 0x2

    const/16 v33, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_66

    :catchall_21
    move-exception v0

    move-object v13, v12

    move v6, v14

    move-object/from16 v12, v23

    const/4 v15, 0x2

    const/16 v33, 0x0

    goto/16 :goto_66

    :catchall_22
    move-exception v0

    :goto_6c
    move v6, v14

    move-object/from16 v12, v23

    :goto_6d
    const/4 v15, 0x2

    const/16 v33, 0x0

    goto/16 :goto_5c

    :catchall_23
    move-exception v0

    move/from16 v32, v13

    goto :goto_6c

    :catchall_24
    move-exception v0

    move-object v12, v7

    move/from16 v32, v13

    move v6, v14

    goto :goto_6d

    :catchall_25
    move-exception v0

    move-object v12, v7

    move/from16 v32, v13

    move v6, v14

    const/16 p2, 0x64

    goto :goto_6d

    :goto_6e
    if-nez v2, :cond_70

    move-object v2, v3

    :goto_6f
    if-nez v0, :cond_58

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_58
    if-eqz v12, :cond_5a

    iget v3, v12, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    if-ne v3, v15, :cond_5a

    iget-object v3, v12, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    if-ne v0, v3, :cond_5a

    :cond_59
    move/from16 v10, v32

    :goto_70
    const/4 v3, 0x0

    goto :goto_72

    :cond_5a
    instance-of v3, v0, Lorg/mozilla/javascript/JavaScriptException;

    if-eqz v3, :cond_5b

    :goto_71
    move v10, v15

    goto :goto_70

    :cond_5b
    instance-of v3, v0, Lorg/mozilla/javascript/EcmaError;

    if-eqz v3, :cond_5c

    goto :goto_71

    :cond_5c
    instance-of v3, v0, Lorg/mozilla/javascript/EvaluatorException;

    if-eqz v3, :cond_5d

    goto :goto_71

    :cond_5d
    instance-of v3, v0, Lorg/mozilla/javascript/ContinuationPending;

    if-eqz v3, :cond_5f

    :cond_5e
    move/from16 v10, v33

    goto :goto_70

    :cond_5f
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_60

    const/16 v9, 0xd

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_59

    goto :goto_71

    :cond_60
    const/16 v9, 0xd

    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_61

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_71

    :cond_61
    instance-of v3, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-eqz v3, :cond_62

    move-object v3, v0

    check-cast v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    move/from16 v10, v32

    goto :goto_72

    :cond_62
    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_59

    goto :goto_71

    :goto_72
    if-eqz v6, :cond_63

    move/from16 v7, p2

    :try_start_36
    invoke-static {v1, v2, v7}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_1
    .catch Ljava/lang/Error; {:try_start_36 .. :try_end_36} :catch_0

    goto :goto_73

    :catch_0
    move-exception v0

    move/from16 v13, v33

    const/4 v3, 0x0

    goto :goto_74

    :catch_1
    move-exception v0

    move/from16 v13, v32

    goto :goto_74

    :cond_63
    :goto_73
    move v13, v10

    :goto_74
    iget-object v7, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v7, :cond_64

    instance-of v8, v0, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_64

    move-object v8, v0

    check-cast v8, Ljava/lang/RuntimeException;

    :try_start_37
    invoke-interface {v7, v1, v8}, Lorg/mozilla/javascript/debug/DebugFrame;->onExceptionThrown(Lorg/mozilla/javascript/Context;Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_26

    goto :goto_75

    :catchall_26
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    move/from16 v13, v33

    const/4 v3, 0x0

    goto :goto_76

    :cond_64
    :goto_75
    move-object/from16 v40, v2

    move-object v2, v0

    move-object/from16 v0, v40

    :cond_65
    :goto_76
    if-eqz v13, :cond_67

    if-eq v13, v15, :cond_66

    move/from16 v7, v32

    goto :goto_77

    :cond_66
    move/from16 v7, v33

    :goto_77
    invoke-static {v0, v7}, Lorg/mozilla/javascript/Interpreter;->getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I

    move-result v7

    if-ltz v7, :cond_67

    move-object v3, v0

    move v14, v6

    move v0, v7

    move-object v7, v12

    :goto_78
    move/from16 v13, v32

    goto/16 :goto_67

    :cond_67
    invoke-static {v1, v0, v2}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez v0, :cond_6f

    if-eqz v3, :cond_6a

    iget-object v7, v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v7, :cond_68

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_68
    iget-object v7, v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v7, :cond_69

    move-object v3, v0

    move v14, v6

    move-object v7, v12

    move/from16 v0, v18

    goto :goto_78

    :cond_69
    iget-object v0, v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    iget-wide v3, v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    const/4 v2, 0x0

    goto :goto_79

    :cond_6a
    move-object/from16 v0, v19

    move-wide/from16 v3, v20

    :goto_79
    iget-object v5, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    if-eqz v5, :cond_6b

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    if-eqz v5, :cond_6b

    iget-object v5, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    goto :goto_7a

    :cond_6b
    const/4 v7, 0x0

    iput-object v7, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    iput-object v7, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    :goto_7a
    if-eqz v2, :cond_6d

    instance-of v0, v2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_6c

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_6c
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_6d
    if-eq v0, v11, :cond_6e

    goto :goto_7b

    :cond_6e
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :goto_7b
    return-object v0

    :cond_6f
    const/4 v7, 0x0

    if-eqz v3, :cond_65

    iget-object v8, v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-static {v8, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    move-object v3, v0

    move v14, v6

    move-object v15, v7

    move-object v7, v12

    move/from16 v0, v18

    move/from16 v13, v32

    goto/16 :goto_3

    :cond_70
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch -0x56
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x42
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_3b
        :pswitch_3b
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_25
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_3c
        :pswitch_36
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

.method private static processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 5

    const/4 v0, 0x0

    if-ltz p3, :cond_2

    iget-boolean p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p2

    :cond_0
    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    add-int/lit8 v1, p3, 0x2

    aget v1, p0, v1

    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-eqz p4, :cond_1

    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    :cond_1
    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    iput p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/lit8 v1, p3, 0x5

    aget v1, p0, v1

    add-int/2addr v1, p4

    add-int/lit8 p3, p3, 0x4

    aget p0, p0, p3

    add-int/2addr p4, p0

    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object p3, p0, v1

    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aput-object p1, p0, p4

    goto :goto_2

    :cond_2
    check-cast p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-static {p3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3
    iget-object p2, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez p2, :cond_4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_4
    iget-object p2, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget p3, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v1, :cond_5

    iget v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    sub-int/2addr p3, v1

    :cond_5
    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_0
    if-eq v1, p3, :cond_9

    iget-boolean v4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v4, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_6
    iget-boolean v4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-eqz v4, :cond_8

    if-nez v3, :cond_7

    sub-int v3, p3, v1

    new-array v3, v3, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    :cond_7
    aput-object p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_8
    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    :goto_1
    if-eqz v2, :cond_a

    add-int/lit8 v2, v2, -0x1

    aget-object p2, v3, v2

    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-static {p0, p2, p3, p4}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_a
    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p2

    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    iget-wide p3, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    invoke-static {p2, p0, p3, p4}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V

    :goto_2
    iput-object v0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    return-object p2
.end method

.method public static restartContinuation(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    iget-boolean v6, p1, Lorg/mozilla/javascript/Context;->isTopLevelStrict:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    array-length p0, v5

    if-nez p0, :cond_1

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    aget-object p0, v5, p0

    :goto_0
    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeContinuation;->getImplementation()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    new-instance p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    iput-object p0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    invoke-static {v2, p2, p1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p3, Lorg/mozilla/javascript/Interpreter$CallFrame;

    new-instance p1, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    invoke-direct {p1, p2, p4}, Lorg/mozilla/javascript/Interpreter$GeneratorState;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :try_start_0
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    if-ne p0, p4, :cond_0

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_0
    throw p0

    :cond_1
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    throw p1
.end method

.method private static setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2

    const/16 v1, -0x55

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x1e

    if-ne v0, p2, :cond_1

    instance-of p2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget p3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object p1, p2, p3

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aput-wide p2, p1, v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    return-void
.end method

.method private static stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z
    .locals 6

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    :cond_1
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    const-wide/16 v4, 0x0

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_2

    cmpl-double p0, v0, v4

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    if-eqz v0, :cond_8

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, p0, :cond_4

    goto :goto_0

    :cond_4
    instance-of p0, v0, Ljava/math/BigInteger;

    if-eqz p0, :cond_5

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_5
    instance-of p0, v0, Ljava/lang/Number;

    if-eqz p0, :cond_7

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_6

    cmpl-double p0, p0, v4

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v3

    :cond_7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8
    :goto_0
    return v3
.end method

.method private static stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    return-wide v0
.end method

.method private static stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iget v1, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    new-instance p1, Lorg/mozilla/javascript/JavaScriptException;

    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {p1, p2, p0, v0}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object p1

    :cond_0
    if-ne v1, v2, :cond_1

    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    return-object p0

    :cond_1
    if-nez v1, :cond_4

    const/16 v0, 0x4e

    if-eq p3, v0, :cond_2

    const/16 v0, -0x49

    if-ne p3, v0, :cond_3

    :cond_2
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    aput-object p2, p0, p1

    :cond_3
    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p0

    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public captureStackInfo(Lorg/mozilla/javascript/RhinoException;)V
    .locals 6

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    iget-object v1, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget-object v3, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/2addr v1, v2

    new-array v1, v1, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_0
    new-array v1, v2, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    :goto_1
    array-length v3, v1

    sub-int/2addr v3, v2

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    aput-object v0, v1, v3

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    array-length v4, v1

    if-eq v0, v4, :cond_4

    aget-object v4, v1, v0

    iget v4, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-array v0, v3, [I

    array-length v2, v1

    :cond_5
    if-eqz v2, :cond_6

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v1, v2

    :goto_3
    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    iget v5, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    aput v5, v0, v3

    iget-object v4, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    iput-object v1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    iput-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    return-void

    :cond_8
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    iput-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    return-void
.end method

.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/CodeGenerator;

    invoke-direct {v0}, Lorg/mozilla/javascript/CodeGenerator;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/CodeGenerator;->compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    return-object p1
.end method

.method public createFunctionObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    if-eq p3, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object p3, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {p1, p2, p3, p4}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p1

    return-object p1
.end method

.method public createScriptObject(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Script;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/InterpretedFunction;->createScript(Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p1

    return-object p1
.end method

.method public getPatchedStack(Lorg/mozilla/javascript/RhinoException;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "line.separator"

    invoke-static {v1}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    check-cast v2, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object p1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    array-length v3, v2

    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_7

    add-int/lit8 v3, v3, -0x1

    const-string v6, "org.mozilla.javascript.Interpreter.interpretLoop"

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_4

    :cond_0
    add-int/lit8 v6, v6, 0x30

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_2

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_2

    const/16 v8, 0xd

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v0, p2, v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    :goto_3
    if-eqz v5, :cond_6

    if-nez v4, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3
    add-int/lit8 v4, v4, -0x1

    iget-object v7, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\tat script"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v8, 0x28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, p1, v4

    if-ltz v8, :cond_5

    const/16 v9, 0x3a

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v7, v8}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_3

    :cond_6
    move v5, v6

    goto :goto_0

    :cond_7
    :goto_4
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScriptStack(Lorg/mozilla/javascript/RhinoException;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/RhinoException;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Interpreter;->getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "line.separator"

    invoke-static {v1}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v5

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v5, v8

    invoke-virtual {v9, v6}, Lorg/mozilla/javascript/ScriptStackElement;->renderJavaStyle(Ljava/lang/StringBuilder;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;
    .locals 11

    iget-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    check-cast v2, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object p1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    array-length v3, v2

    array-length v4, p1

    :goto_0
    if-eqz v3, :cond_5

    add-int/lit8 v3, v3, -0x1

    aget-object v5, v2, v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-eqz v5, :cond_4

    if-nez v4, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    add-int/lit8 v4, v4, -0x1

    iget-object v7, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    aget v9, p1, v4

    if-ltz v9, :cond_2

    iget-object v10, v7, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v10, v9}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v9

    goto :goto_2

    :cond_2
    const/4 v9, -0x1

    :goto_2
    iget-object v10, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v7, v1

    :goto_3
    iget-object v5, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    new-instance v10, Lorg/mozilla/javascript/ScriptStackElement;

    invoke-direct {v10, v8, v7, v9}, Lorg/mozilla/javascript/ScriptStackElement;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/mozilla/javascript/ScriptStackElement;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/mozilla/javascript/ScriptStackElement;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [[Lorg/mozilla/javascript/ScriptStackElement;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lorg/mozilla/javascript/ScriptStackElement;

    return-object p1
.end method

.method public getSourcePositionFromStack(Lorg/mozilla/javascript/Context;[I)Ljava/lang/String;
    .locals 3

    iget-object p1, p1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast p1, Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v2, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v2, p1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result p1

    aput p1, p2, v1

    goto :goto_0

    :cond_0
    aput v1, p2, v1

    :goto_0
    iget-object p1, v0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    return-object p1
.end method

.method public setEvalScriptFlag(Lorg/mozilla/javascript/Script;)V
    .locals 1

    check-cast p1, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object p1, p1, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    return-void
.end method
