.class final Lorg/mozilla/javascript/InterpreterData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mozilla/javascript/debug/DebuggableScript;


# static fields
.field static final INITIAL_BIGINTTABLE_SIZE:I = 0x40

.field static final INITIAL_MAX_ICODE_LENGTH:I = 0x400

.field static final INITIAL_NUMBERTABLE_SIZE:I = 0x40

.field static final INITIAL_STRINGTABLE_SIZE:I = 0x40

.field private static final serialVersionUID:J = 0x465401b399c4b69aL


# instance fields
.field argCount:I

.field argIsConst:[Z

.field argNames:[Ljava/lang/String;

.field argsHasDefaults:Z

.field argsHasRest:Z

.field declaredAsFunctionExpression:Z

.field evalScriptFlag:Z

.field firstLinePC:I

.field private icodeHashCode:I

.field isES6Generator:Z

.field isStrict:Z

.field itsBigIntTable:[Ljava/math/BigInteger;

.field itsDoubleTable:[D

.field itsExceptionTable:[I

.field itsFunctionType:I

.field itsICode:[B

.field itsMaxCalleeArgs:I

.field itsMaxFrameArray:I

.field itsMaxLocals:I

.field itsMaxStack:I

.field itsMaxVars:I

.field itsName:Ljava/lang/String;

.field itsNeedsActivation:Z

.field itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

.field itsRegExpLiterals:[Ljava/lang/Object;

.field itsSourceFile:Ljava/lang/String;

.field itsStringTable:[Ljava/lang/String;

.field itsTemplateLiterals:[Ljava/lang/Object;

.field languageVersion:I

.field literalIds:[Ljava/lang/Object;

.field longJumps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field parentData:Lorg/mozilla/javascript/InterpreterData;

.field rawSource:Ljava/lang/String;

.field rawSourceEnd:I

.field rawSourceStart:I

.field topLevel:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/mozilla/javascript/InterpreterData;->icodeHashCode:I

    .line 4
    iput p1, p0, Lorg/mozilla/javascript/InterpreterData;->languageVersion:I

    .line 5
    iput-object p2, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lorg/mozilla/javascript/InterpreterData;->rawSource:Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    .line 8
    invoke-direct {p0}, Lorg/mozilla/javascript/InterpreterData;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/InterpreterData;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lorg/mozilla/javascript/InterpreterData;->icodeHashCode:I

    .line 12
    iput-object p1, p0, Lorg/mozilla/javascript/InterpreterData;->parentData:Lorg/mozilla/javascript/InterpreterData;

    .line 13
    iget v0, p1, Lorg/mozilla/javascript/InterpreterData;->languageVersion:I

    iput v0, p0, Lorg/mozilla/javascript/InterpreterData;->languageVersion:I

    .line 14
    iget-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->rawSource:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->rawSource:Ljava/lang/String;

    .line 16
    iget-boolean p1, p1, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    iput-boolean p1, p0, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    .line 17
    invoke-direct {p0}, Lorg/mozilla/javascript/InterpreterData;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    const/16 v0, 0x40

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    new-array v0, v0, [Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsBigIntTable:[Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getFunction(I)Lorg/mozilla/javascript/debug/DebuggableScript;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFunctionCount()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumbers()[I
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/Interpreter;->getLineNumbers(Lorg/mozilla/javascript/InterpreterData;)[I

    move-result-object v0

    return-object v0
.end method

.method public getParamAndVarCount()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getParamCount()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    return v0
.end method

.method public getParamOrVarConst(I)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->argIsConst:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public getParamOrVarName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParent()Lorg/mozilla/javascript/debug/DebuggableScript;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->parentData:Lorg/mozilla/javascript/InterpreterData;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public icodeHashCode()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/InterpreterData;->icodeHashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/InterpreterData;->icodeHashCode:I

    :cond_0
    return v0
.end method

.method public isFunction()Z
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGeneratedScript()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isGeneratedScript(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTopLevel()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/InterpreterData;->topLevel:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    const-string v2, ":"

    invoke-static {v0, v2, v1}, LB1/e;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
