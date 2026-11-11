.class Lorg/mozilla/javascript/CodeGenerator;
.super Lorg/mozilla/javascript/Icode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;
    }
.end annotation


# static fields
.field private static final ECF_TAIL:I = 0x1

.field private static final MIN_FIXUP_TABLE_SIZE:I = 0x28

.field private static final MIN_LABEL_TABLE_SIZE:I = 0x20


# instance fields
.field private final bigInts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/math/BigInteger;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private doubleTableTop:I

.field private exceptionTableTop:I

.field private fixupTable:[J

.field private fixupTableTop:I

.field private iCodeTop:I

.field private itsData:Lorg/mozilla/javascript/InterpreterData;

.field private itsInFunctionFlag:Z

.field private itsInTryFlag:Z

.field private labelTable:[I

.field private labelTableTop:I

.field private lineNumber:I

.field private final literalIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private localTop:I

.field private scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

.field private stackDepth:I

.field private final strings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/Icode;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/CodeGenerator;->lambda$visitObjectLiteral$0(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private addBackwardGoto(II)V
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    if-le v0, p2, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {p0, v0, p2}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addBigInt(Ljava/math/BigInteger;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x4

    if-ge v0, p1, :cond_1

    rsub-int/lit8 p1, v0, -0x4a

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    if-gt v0, p1, :cond_2

    const/16 p1, -0x4e

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_0

    :cond_2
    const p1, 0xffff

    if-gt v0, p1, :cond_3

    const/16 p1, -0x4f

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_0

    :cond_3
    const/16 p1, -0x50

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    :goto_0
    const/16 p1, 0x59

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    return-void
.end method

.method private addExceptionHandler(IIIZII)V
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    const/16 v1, 0xc

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v2, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    goto :goto_0

    :cond_1
    array-length v2, v1

    if-ne v2, v0, :cond_2

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    move-object v1, v2

    :cond_2
    :goto_0
    aput p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    aput p2, v1, p1

    add-int/lit8 p1, v0, 0x2

    aput p3, v1, p1

    add-int/lit8 p1, v0, 0x3

    aput p4, v1, p1

    add-int/lit8 p1, v0, 0x4

    aput p5, v1, p1

    add-int/lit8 p1, v0, 0x5

    aput p6, v1, p1

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    return-void
.end method

.method private addGoto(Lorg/mozilla/javascript/Node;I)V
    .locals 6

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    if-lt p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addBackwardGoto(II)V

    return-void

    :cond_1
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    iget p2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    if-eqz v1, :cond_2

    array-length v2, v1

    if-ne p2, v2, :cond_4

    :cond_2
    if-nez v1, :cond_3

    const/16 v1, 0x28

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    goto :goto_0

    :cond_3
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    :cond_4
    :goto_0
    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    int-to-long v4, v0

    or-long/2addr v2, v4

    aput-wide v2, v1, p2

    return-void
.end method

.method private addGotoOp(I)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v2, v1, 0x3

    array-length v3, v0

    const/4 v4, 0x3

    if-le v2, v3, :cond_0

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_0
    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/2addr v1, v4

    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void
.end method

.method private addIcode(I)V
    .locals 1

    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addIndexOp(II)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexPrefix(I)V

    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    return-void
.end method

.method private addIndexPrefix(I)V
    .locals 1

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    rsub-int/lit8 p1, p1, -0x27

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    return-void

    :cond_1
    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    const/16 v0, -0x2d

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_2
    const v0, 0xffff

    if-gt p1, v0, :cond_3

    const/16 v0, -0x2e

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    return-void

    :cond_3
    const/16 v0, -0x2f

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    return-void
.end method

.method private addInt(I)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v2, v1, 0x4

    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_0
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x3

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void
.end method

.method private addStringOp(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addStringPrefix(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    return-void
.end method

.method private addStringPrefix(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x4

    if-ge v0, p1, :cond_1

    rsub-int/lit8 p1, v0, -0x30

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    return-void

    :cond_1
    const/16 p1, 0xff

    if-gt v0, p1, :cond_2

    const/16 p1, -0x34

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_2
    const p1, 0xffff

    if-gt v0, p1, :cond_3

    const/16 p1, -0x35

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    return-void

    :cond_3
    const/16 p1, -0x36

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    return-void
.end method

.method private addToken(I)V
    .locals 1

    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validTokenCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addUint16(I)V
    .locals 4

    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_0
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addUint8(I)V
    .locals 4

    and-int/lit16 v0, p1, -0x100

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_0
    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/2addr v1, v3

    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addVarOp(II)V
    .locals 3

    const/4 v0, -0x7

    if-eq p1, v0, :cond_5

    const/16 v0, 0xaa

    const/16 v1, 0x80

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    if-ge p2, v1, :cond_5

    if-ne p1, v0, :cond_2

    const/16 p1, -0x37

    goto :goto_1

    :cond_2
    const/16 p1, -0x38

    :goto_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_3
    if-ge p2, v1, :cond_4

    const/16 p1, -0x44

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_4
    const/16 p1, -0x43

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    return-void

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    return-void
.end method

.method private allocLocal()I
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    if-le v1, v3, :cond_0

    iput v1, v2, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    :cond_0
    return v0
.end method

.method private static badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private completeOptionalCallJump()Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;
    .locals 3

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/16 v2, -0x54

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/4 v0, -0x4

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const/16 v0, 0x2c

    const-string v2, "undefined"

    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    new-instance v2, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;

    invoke-direct {v2, v1, v0}, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;-><init>(II)V

    return-object v2
.end method

.method private finishGetElemGeneration(Lorg/mozilla/javascript/Node;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, 0x27

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void
.end method

.method private fixLabelGotos()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    aget-wide v3, v2, v1

    const/16 v2, 0x20

    shr-long v5, v3, v2

    long-to-int v2, v5

    long-to-int v3, v3

    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v2, v4, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    return-void
.end method

.method private generateCallFunAndThis(Lorg/mozilla/javascript/Node;Z)Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;
    .locals 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-eq v0, v3, :cond_3

    const/16 v4, 0x27

    if-eq v0, v4, :cond_3

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_1

    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    if-eqz p2, :cond_0

    const/16 p1, -0x16

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->completeOptionalCallJump()Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, -0x12

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    if-eqz p2, :cond_2

    const/16 p2, -0x13

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->completeOptionalCallJump()Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p2, -0xf

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    const/16 p2, -0x14

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->completeOptionalCallJump()Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;

    move-result-object p1

    return-object p1

    :cond_4
    const/16 p2, -0x10

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    if-eqz p2, :cond_6

    const/16 p1, -0x15

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->completeOptionalCallJump()Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;

    move-result-object p1

    return-object p1

    :cond_6
    const/16 p1, -0x11

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private generateFunctionICode()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v1, Lorg/mozilla/javascript/ast/FunctionNode;

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v3

    iput v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v3

    iput-boolean v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, -0x45

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getBaseLineno()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    :cond_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-boolean v0, v2, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    :cond_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->isES6Generator()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-boolean v0, v2, Lorg/mozilla/javascript/InterpreterData;->isES6Generator:Z

    :cond_3
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->generateICodeFromTree(Lorg/mozilla/javascript/Node;)V

    return-void
.end method

.method private generateICodeFromTree(Lorg/mozilla/javascript/Node;)V
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateNestedFunctions()V

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateRegExpLiterals()V

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateTemplateLiterals()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->fixLabelGotos()V

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-nez p1, :cond_0

    const/16 p1, 0x46

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, p1

    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    if-eq v1, v2, :cond_1

    new-array v1, v2, [B

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    aput-object v3, v4, v2

    goto :goto_0

    :cond_4
    :goto_1
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    array-length v3, v2

    if-eq v3, p1, :cond_6

    new-array v3, p1, [D

    invoke-static {v2, v0, v3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v3, p1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsBigIntTable:[Ljava/math/BigInteger;

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/math/BigInteger;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsBigIntTable:[Ljava/math/BigInteger;

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsBigIntTable:[Ljava/math/BigInteger;

    aget-object v3, v3, v1

    if-eqz v3, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_8
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsBigIntTable:[Ljava/math/BigInteger;

    aput-object v2, v3, v1

    goto :goto_3

    :cond_9
    :goto_4
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    if-eqz p1, :cond_a

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    array-length v2, v1

    if-eq v2, p1, :cond_a

    new-array v2, p1, [I

    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    :cond_a
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v1

    iput v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    add-int/2addr v1, v2

    iget v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    add-int/2addr v1, v2

    iput v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxFrameArray:I

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarNames()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object v1

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->argIsConst:[Z

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v1

    iput v1, p1, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->hasRestParameter()Z

    move-result v1

    iput-boolean v1, p1, Lorg/mozilla/javascript/InterpreterData;->argsHasRest:Z

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getDefaultParams()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    iput-boolean v0, p1, Lorg/mozilla/javascript/InterpreterData;->argsHasDefaults:Z

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getRawSourceStart()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->rawSourceStart:I

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getRawSourceEnd()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->rawSourceEnd:I

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private generateNestedFunctions()V
    .locals 7

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-array v1, v0, [Lorg/mozilla/javascript/InterpreterData;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_2

    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v3

    new-instance v4, Lorg/mozilla/javascript/CodeGenerator;

    invoke-direct {v4}, Lorg/mozilla/javascript/CodeGenerator;-><init>()V

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v5, v4, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v3, v4, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    new-instance v5, Lorg/mozilla/javascript/InterpreterData;

    iget-object v6, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-direct {v5, v6}, Lorg/mozilla/javascript/InterpreterData;-><init>(Lorg/mozilla/javascript/InterpreterData;)V

    iput-object v5, v4, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-direct {v4}, Lorg/mozilla/javascript/CodeGenerator;->generateFunctionICode()V

    iget-object v5, v4, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    aput-object v5, v1, v2

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    instance-of v5, v3, Lorg/mozilla/javascript/ast/AstRoot;

    if-nez v5, :cond_1

    instance-of v5, v3, Lorg/mozilla/javascript/ast/Scope;

    if-nez v5, :cond_1

    instance-of v3, v3, Lorg/mozilla/javascript/ast/Block;

    if-nez v3, :cond_1

    iget-object v3, v4, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/mozilla/javascript/InterpreterData;->declaredAsFunctionExpression:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    return-void
.end method

.method private generateRegExpLiterals()V
    .locals 7

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_0
    if-eq v4, v0, :cond_1

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpFlags(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v1, v5, v6}, Lorg/mozilla/javascript/RegExpProxy;->compileRegExp(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v3, v0, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    return-void
.end method

.method private generateTemplateLiterals()V
    .locals 10

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getTemplateLiteralCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eq v3, v0, :cond_2

    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getTemplateLiteralStrings(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/ast/TemplateCharacters;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/TemplateCharacters;->getValue()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/TemplateCharacters;->getRawValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    goto :goto_1

    :cond_1
    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v0, Lorg/mozilla/javascript/InterpreterData;->itsTemplateLiterals:[Ljava/lang/Object;

    return-void
.end method

.method private getDoubleIndex(D)I
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/16 v2, 0x40

    new-array v2, v2, [D

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    array-length v2, v1

    if-ne v2, v0, :cond_1

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    aput-wide p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    return v0
.end method

.method private static getLocalBlockRef(Lorg/mozilla/javascript/Node;)I
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/Node;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p0

    return p0
.end method

.method private getTargetLabel(Lorg/mozilla/javascript/Node;)I
    .locals 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->labelId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    if-eqz v2, :cond_1

    array-length v3, v2

    if-ne v0, v3, :cond_3

    :cond_1
    if-nez v2, :cond_2

    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    goto :goto_0

    :cond_2
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    :cond_3
    :goto_0
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aput v1, v2, v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->labelId(I)V

    return v0
.end method

.method private increaseICodeCapacity(I)[B
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, v0

    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/2addr p1, v2

    if-le p1, v1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    new-array p1, p1, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object p1, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    return-object p1

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private static synthetic lambda$visitObjectLiteral$0(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lorg/mozilla/javascript/Node;

    return p0
.end method

.method private markTargetLabel(Lorg/mozilla/javascript/Node;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    aput v1, v0, p1

    return-void
.end method

.method private releaseLocal(I)V
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method private resolveForwardGoto(I)V
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v1, p1, 0x3

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private resolveGoto(II)V
    .locals 4

    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-ltz v0, :cond_1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 v2, p1, 0x1

    int-to-short v3, v0

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Ljava/util/Map;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_3
    iget-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/2addr p1, v1

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    return-void
.end method

.method private stackChange(I)V
    .locals 2

    if-gtz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    return-void

    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    if-le v0, v1, :cond_1

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    return-void
.end method

.method private updateLineNumber(Lorg/mozilla/javascript/Node;)V
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result p1

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v1, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    if-gez v1, :cond_0

    iput p1, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    :cond_0
    iput p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    const/16 v0, -0x1f

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    :cond_1
    return-void
.end method

.method private visitArrayComprehension(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 0

    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    return-void
.end method

.method private visitArrayLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 2

    const/4 v0, 0x0

    move-object v1, p2

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 v1, -0x23

    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_1
    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitLiteralValue(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_2

    const/16 p1, 0x47

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, -0x26

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    :goto_2
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void
.end method

.method private visitExpression(Lorg/mozilla/javascript/Node;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    iget v4, v0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    const/16 v5, 0xb3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v2, v5, :cond_2b

    const/16 v5, 0xb4

    if-eq v2, v5, :cond_2a

    const-string v10, "undefined"

    const/16 v11, 0x2c

    const/16 v12, -0x53

    const/4 v13, 0x5

    const/4 v15, -0x4

    const v16, 0xffff

    const/16 v7, 0x1e

    const/4 v6, -0x1

    packed-switch v2, :pswitch_data_0

    const/4 v14, 0x4

    const/4 v5, 0x2

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_1

    const/16 v14, 0x3c

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    packed-switch v2, :pswitch_data_7

    invoke-static {v1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_0
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitArrayComprehension(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_11

    :pswitch_1
    iget-object v1, v0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v1, v0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v1

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v0, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    goto/16 :goto_11

    :pswitch_2
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v0, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, -0x42

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_3
    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_4
    iget-boolean v2, v0, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    if-ne v2, v6, :cond_2

    const/16 v2, -0xe

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :cond_2
    invoke-direct {v0, v14, v2}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_11

    :pswitch_5
    invoke-direct {v0, v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_11

    :pswitch_6
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    iget v1, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/16 v5, 0x76

    if-ne v2, v5, :cond_3

    const/4 v5, 0x7

    goto :goto_1

    :cond_3
    const/4 v5, 0x6

    :goto_1
    invoke-direct {v0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {v0, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    and-int/lit8 v3, p2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    :pswitch_7
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getBigInt()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addBigInt(Ljava/math/BigInteger;)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_8
    const/16 v5, 0x10

    invoke-virtual {v1, v5, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    move v5, v9

    :cond_4
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    add-int/2addr v5, v8

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    rsub-int/lit8 v1, v5, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_9
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_11

    :pswitch_a
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1, v7, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v3

    const/16 v5, 0x11

    if-ne v3, v8, :cond_5

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    iget v3, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-direct {v0, v12}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    iget v1, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-direct {v0, v13}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    invoke-direct {v0, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v11, v10}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    :cond_5
    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    goto/16 :goto_11

    :pswitch_b
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1, v7, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-ne v1, v8, :cond_6

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    iget v1, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-direct {v0, v12}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    :cond_6
    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_11

    :pswitch_c
    invoke-direct {v0, v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_11

    :pswitch_d
    invoke-static {v1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_e
    iget-object v1, v0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v1, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    iget-object v1, v0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v1

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v0, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0x3d

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    goto/16 :goto_11

    :pswitch_f
    iget-object v2, v0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v2, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_8
    iget-object v2, v0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v1

    invoke-direct {v0, v14, v1}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_10
    invoke-static {v1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v1

    const/16 v2, 0x3b

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_11
    invoke-virtual {v1, v14}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v1

    const/16 v2, 0x35

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_12
    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_13
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v1

    double-to-int v3, v1

    int-to-double v5, v3

    cmpl-double v5, v5, v1

    if-nez v5, :cond_c

    if-nez v3, :cond_9

    const/16 v3, -0x3a

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v1

    const-wide/16 v1, 0x0

    cmpg-double v1, v5, v1

    if-gez v1, :cond_d

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_2

    :cond_9
    if-ne v3, v8, :cond_a

    const/16 v1, -0x3b

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_2

    :cond_a
    int-to-short v1, v3

    if-ne v1, v3, :cond_b

    const/16 v1, -0x20

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    and-int v1, v3, v16

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_2

    :cond_b
    const/16 v1, -0x21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    goto :goto_2

    :cond_c
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->getDoubleIndex(D)I

    move-result v1

    const/16 v2, 0x2d

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    :cond_d
    :goto_2
    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_14
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :sswitch_0
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    iget v2, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/16 v3, -0x54

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {v0, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    :sswitch_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_11

    :sswitch_2
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v1, -0x3c

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    iget v1, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v0, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, -0x3d

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addBackwardGoto(II)V

    goto/16 :goto_11

    :pswitch_15
    :sswitch_3
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v3, 0x9c

    if-ne v2, v3, :cond_e

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v2, 0x49

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :cond_e
    invoke-direct {v0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v1, 0x4a

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :sswitch_4
    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v1

    iget-object v2, v0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v3

    if-eq v3, v5, :cond_10

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v3

    if-ne v3, v14, :cond_f

    goto :goto_3

    :cond_f
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_3
    const/16 v3, -0x17

    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ScriptNode;->isMethodDefinition()Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, -0x25

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    :cond_11
    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :sswitch_5
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    iget v3, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/4 v5, 0x7

    invoke-direct {v0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    and-int/lit8 v5, p2, 0x1

    invoke-direct {v0, v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    iget v1, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-direct {v0, v13}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    iput v4, v0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    invoke-direct {v0, v2, v5}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    :sswitch_6
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    :goto_4
    if-eq v3, v1, :cond_12

    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v0, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_4

    :cond_12
    and-int/lit8 v1, p2, 0x1

    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    goto/16 :goto_11

    :pswitch_16
    :sswitch_7
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    const/16 v7, 0x9a

    const/4 v10, -0x2

    if-ne v2, v7, :cond_13

    invoke-direct {v0, v10}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v5}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v2, 0x27

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :cond_13
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-ne v1, v8, :cond_14

    const/16 v1, 0x2a

    goto :goto_5

    :cond_14
    const/16 v1, 0x29

    :goto_5
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v0, v10}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :sswitch_8
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v1, v7, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v3

    if-ne v3, v8, :cond_15

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    iget v1, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-direct {v0, v12}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->finishGetElemGeneration(Lorg/mozilla/javascript/Node;)V

    iget v2, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-direct {v0, v13}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    invoke-direct {v0, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v11, v10}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    :cond_15
    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-ne v1, v8, :cond_16

    invoke-direct {v0, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :cond_16
    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->finishGetElemGeneration(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_11

    :pswitch_17
    :sswitch_9
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    const/16 v7, 0x99

    if-ne v2, v7, :cond_17

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v2, 0x21

    invoke-direct {v0, v2, v5}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :cond_17
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-ne v1, v8, :cond_18

    const/16 v1, 0x26

    goto :goto_6

    :cond_18
    const/16 v1, 0x25

    :goto_6
    invoke-direct {v0, v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_18
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v1, v7, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v5

    if-ne v5, v8, :cond_19

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    iget v1, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-direct {v0, v12}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    iget v2, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-direct {v0, v13}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    invoke-direct {v0, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v11, v10}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    :cond_19
    const/16 v5, 0x1f

    invoke-virtual {v1, v5, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-ne v1, v8, :cond_1b

    const/16 v1, 0x21

    if-ne v2, v1, :cond_1a

    const/16 v1, 0x23

    goto :goto_7

    :cond_1a
    const/16 v1, 0x24

    :goto_7
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    goto/16 :goto_11

    :cond_1b
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    goto/16 :goto_11

    :pswitch_19
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v5, 0x36

    if-ne v2, v5, :cond_1c

    move v2, v8

    goto :goto_8

    :cond_1c
    move v2, v9

    :goto_8
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-ne v1, v8, :cond_1d

    const/16 v1, -0x56

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_9

    :cond_1d
    if-eqz v2, :cond_1e

    invoke-direct {v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_9

    :cond_1e
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    :goto_9
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_1a
    invoke-virtual {v1, v7, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v5

    if-ne v5, v8, :cond_1f

    move v5, v8

    goto :goto_a

    :cond_1f
    move v5, v9

    :goto_a
    if-ne v2, v7, :cond_20

    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/4 v5, 0x0

    goto :goto_b

    :cond_20
    invoke-direct {v0, v3, v5}, Lorg/mozilla/javascript/CodeGenerator;->generateCallFunAndThis(Lorg/mozilla/javascript/Node;Z)Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;

    move-result-object v5

    if-eqz v5, :cond_21

    invoke-static {v5}, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->b(Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;)I

    move-result v6

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    :cond_21
    :goto_b
    move v6, v9

    :goto_c
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_22
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v3

    const/16 v10, 0x4c

    if-eq v2, v10, :cond_24

    if-eqz v3, :cond_24

    const/16 v1, -0x19

    invoke-direct {v0, v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    if-ne v2, v7, :cond_23

    move v9, v8

    :cond_23
    invoke-direct {v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    iget v1, v0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int v1, v1, v16

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_d

    :cond_24
    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-ne v1, v8, :cond_25

    const/16 v1, -0x55

    invoke-direct {v0, v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_d

    :cond_25
    const/16 v1, 0x2b

    if-ne v2, v1, :cond_26

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_26

    iget-object v1, v0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v1

    if-nez v1, :cond_26

    iget-boolean v1, v0, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    if-nez v1, :cond_26

    const/16 v2, -0x3e

    :cond_26
    invoke-direct {v0, v2, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    :goto_d
    if-ne v2, v7, :cond_27

    neg-int v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_e

    :cond_27
    rsub-int/lit8 v1, v6, -0x1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_e
    iget-object v1, v0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsMaxCalleeArgs:I

    if-le v6, v2, :cond_28

    iput v6, v1, Lorg/mozilla/javascript/InterpreterData;->itsMaxCalleeArgs:I

    :cond_28
    if-eqz v5, :cond_2e

    invoke-static {v5}, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->a(Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto :goto_11

    :pswitch_1b
    :sswitch_a
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v1, 0x8b

    if-ne v2, v1, :cond_29

    invoke-direct {v0, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const/16 v1, -0x39

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_11

    :cond_29
    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_11

    :pswitch_1c
    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_11

    :pswitch_1d
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_11

    :cond_2a
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->visitTemplateLiteral(Lorg/mozilla/javascript/Node;)V

    goto :goto_11

    :cond_2b
    const v16, 0xffff

    :pswitch_1e
    if-eqz v3, :cond_2c

    invoke-direct {v0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    goto :goto_f

    :cond_2c
    const/16 v3, -0x39

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_f
    const/16 v3, 0x4e

    if-ne v2, v3, :cond_2d

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_10

    :cond_2d
    const/16 v2, -0x49

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    :goto_10
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v1

    and-int v1, v1, v16

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    :cond_2e
    :goto_11
    add-int/2addr v4, v8

    iget v1, v0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    if-eq v4, v1, :cond_2f

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2f
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1b
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_9
        0x27 -> :sswitch_8
        0x29 -> :sswitch_7
        0x62 -> :sswitch_6
        0x73 -> :sswitch_5
        0x7a -> :sswitch_4
        0x8b -> :sswitch_a
        0x9c -> :sswitch_3
        0xa0 -> :sswitch_2
        0xad -> :sswitch_1
        0xb9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_1a
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_1c
        :pswitch_1c
        :pswitch_11
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_1c
        :pswitch_1c
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x43
        :pswitch_d
        :pswitch_d
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x47
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_15
        :pswitch_b
        :pswitch_1a
        :pswitch_a
        :pswitch_1e
        :pswitch_12
        :pswitch_1d
        :pswitch_1c
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x75
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x97
        :pswitch_4
        :pswitch_3
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xa9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private visitIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 5

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitSuperIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    return-void

    :cond_0
    const/16 v2, 0x21

    if-eq v1, v2, :cond_6

    const/16 v2, 0x27

    if-eq v1, v2, :cond_5

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x49

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0xb

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result p1

    const/4 p2, -0x7

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void

    :cond_4
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x8

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void

    :cond_5
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0xa

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void

    :cond_6
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x9

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void
.end method

.method private visitLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitArrayLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-void

    :cond_0
    const/16 v1, 0x48

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitObjectLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-void

    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private visitLiteralValue(Lorg/mozilla/javascript/Node;)V
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0xa5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x40

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa6

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x41

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xb1

    const/16 v3, -0x24

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    :goto_0
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void
.end method

.method private visitObjectLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 4

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/mozilla/javascript/b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/b;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, -0x22

    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    move v1, v0

    :goto_1
    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    aget-object v2, p1, v1

    :goto_2
    instance-of v3, v2, Lorg/mozilla/javascript/Node;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/mozilla/javascript/Node;

    iget-object v2, v2, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, -0x52

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :cond_2
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitLiteralValue(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 p1, 0x48

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    const/4 p1, -0x3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void
.end method

.method private visitStatement(Lorg/mozilla/javascript/Node;I)V
    .locals 12

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v2, -0x45

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_1a

    const/16 v2, 0x5a

    const/16 v3, -0x3f

    const/4 v4, 0x1

    if-eq v0, v2, :cond_16

    const/16 v2, 0x7a

    const/4 v5, 0x3

    const/4 v6, -0x5

    const/4 v7, -0x1

    if-eq v0, v2, :cond_13

    const/16 v2, 0x7f

    const/4 v8, -0x4

    const/4 v9, 0x0

    if-eq v0, v2, :cond_10

    const/16 v2, 0x88

    if-eq v0, v2, :cond_f

    const/16 v2, 0x8a

    if-eq v0, v2, :cond_d

    const/16 v2, 0x8d

    if-eq v0, v2, :cond_f

    const/16 v2, 0x9b

    const/4 v10, 0x2

    if-eq v0, v2, :cond_b

    const/16 v2, 0xae

    if-eq v0, v2, :cond_a

    const/16 v2, 0x37

    const v3, 0xffff

    if-eq v0, v2, :cond_9

    const/16 v2, 0x38

    if-eq v0, v2, :cond_8

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    iget-object p1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/16 v0, -0x1c

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    :cond_0
    :goto_0
    move-object v5, p0

    goto/16 :goto_b

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, 0x93

    if-ne v0, p1, :cond_1

    move v6, v8

    :cond_1
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->markTargetLabel(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringPrefix(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexPrefix(I)V

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v9

    :goto_2
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    :pswitch_5
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    iget-object p1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    :pswitch_6
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    iget-object p1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    const/16 v0, 0x14

    invoke-virtual {p1, v0, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v1, :cond_5

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0, v1, v4}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x48

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int/2addr p1, v3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    :cond_5
    :goto_3
    const/16 p1, -0x46

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int/2addr p1, v3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto/16 :goto_0

    :cond_6
    if-nez v1, :cond_7

    const/16 p1, -0x1b

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v1, v4}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v10}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int/2addr p1, v3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    :cond_a
    const/16 p1, -0x47

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->allocLocal()I

    move-result v0

    invoke-virtual {p1, v10, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    :goto_4
    if-eqz v1, :cond_c

    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_4

    :cond_c
    invoke-direct {p0, v3, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->releaseLocal(I)V

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result p1

    const/16 v0, -0x1d

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_5
    if-eqz v1, :cond_e

    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_5

    :cond_e
    const/16 v0, -0x1e

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto/16 :goto_0

    :cond_f
    :pswitch_a
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    :goto_6
    :pswitch_b
    if-eqz v1, :cond_0

    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_6

    :cond_10
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    :goto_7
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_11

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {p0, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x33

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    iget-object v0, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/4 v1, -0x6

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    goto :goto_7

    :cond_11
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_12
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v0

    if-ne v0, v5, :cond_14

    const/16 v0, -0x18

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_8

    :cond_14
    if-ne v0, v4, :cond_15

    :goto_8
    iget-boolean v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    if-nez v0, :cond_0

    const/16 v0, -0x17

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {p0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    :cond_15
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_16
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v10

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->allocLocal()I

    move-result v11

    const/16 v0, -0xd

    invoke-direct {p0, v0, v11}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    iget v6, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    iget-boolean v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    iput-boolean v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    :goto_9
    if-eqz v1, :cond_17

    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_9

    :cond_17
    iput-boolean v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    iget-object v0, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v0

    aget v7, v1, v0

    const/4 v9, 0x0

    move v8, v7

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/mozilla/javascript/CodeGenerator;->addExceptionHandler(IIIZII)V

    goto :goto_a

    :cond_18
    move-object v5, p0

    :goto_a
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object v0, v5, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result p1

    aget v7, v0, p1

    const/4 v9, 0x1

    move v8, v7

    invoke-direct/range {v5 .. v11}, Lorg/mozilla/javascript/CodeGenerator;->addExceptionHandler(IIIZII)V

    :cond_19
    invoke-direct {p0, v3, v11}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->releaseLocal(I)V

    goto :goto_b

    :cond_1a
    move-object v5, p0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    :goto_b
    iget p1, v5, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    if-ne p1, p2, :cond_1b

    return-void

    :cond_1b
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8f
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private visitSuperIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V
    .locals 6

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v1, 0x27

    const/4 v2, -0x1

    const/16 v3, 0x21

    if-eq p3, v3, :cond_1

    if-ne p3, v1, :cond_0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, 0x28

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x23

    invoke-direct {p0, v4, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    :goto_0
    and-int/lit8 p1, p4, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :cond_2
    const/16 v5, 0x4f

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/4 v5, -0x3

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const/16 v5, -0x3b

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    and-int/2addr p4, v4

    if-nez p4, :cond_3

    const/16 p4, 0x15

    invoke-direct {p0, p4}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_1

    :cond_3
    const/16 p4, 0x16

    invoke-direct {p0, p4}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    :goto_1
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    if-eq p3, v3, :cond_5

    if-eq p3, v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p2, 0x2a

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    const/4 p2, -0x2

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x26

    invoke-direct {p0, p3, p2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_2
    if-eqz p1, :cond_6

    const/4 p1, -0x4

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :cond_6
    return-void
.end method

.method private visitTemplateLiteral(Lorg/mozilla/javascript/Node;)V
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p1

    const/16 v0, -0x51

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void
.end method


# virtual methods
.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;
    .locals 2

    iput-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    new-instance v0, Lorg/mozilla/javascript/NodeTransformer;

    invoke-direct {v0}, Lorg/mozilla/javascript/NodeTransformer;-><init>()V

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/CompilerEnvirons;)V

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    :goto_0
    new-instance p2, Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v1

    invoke-direct {p2, p1, v0, p3, v1}, Lorg/mozilla/javascript/InterpreterData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/4 p1, 0x1

    iput-boolean p1, p2, Lorg/mozilla/javascript/InterpreterData;->topLevel:Z

    if-eqz p4, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateFunctionICode()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->generateICodeFromTree(Lorg/mozilla/javascript/Node;)V

    :goto_1
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    return-object p1
.end method
