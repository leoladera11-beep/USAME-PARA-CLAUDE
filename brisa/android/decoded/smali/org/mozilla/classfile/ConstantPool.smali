.class final Lorg/mozilla/classfile/ConstantPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CONSTANT_Class:B = 0x7t

.field static final CONSTANT_Double:B = 0x6t

.field static final CONSTANT_Fieldref:B = 0x9t

.field static final CONSTANT_Float:B = 0x4t

.field static final CONSTANT_Integer:B = 0x3t

.field static final CONSTANT_InterfaceMethodref:B = 0xbt

.field static final CONSTANT_InvokeDynamic:B = 0x12t

.field static final CONSTANT_Long:B = 0x5t

.field static final CONSTANT_MethodHandle:B = 0xft

.field static final CONSTANT_MethodType:B = 0x10t

.field static final CONSTANT_Methodref:B = 0xat

.field static final CONSTANT_NameAndType:B = 0xct

.field static final CONSTANT_String:B = 0x8t

.field static final CONSTANT_Utf8:B = 0x1t

.field private static final ConstantPoolSize:I = 0x100

.field private static final MAX_UTF_ENCODING_SIZE:I = 0xffff


# instance fields
.field private cfw:Lorg/mozilla/classfile/ClassFileWriter;

.field private final itsClassHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final itsConstantData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final itsConstantHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final itsFieldRefHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/mozilla/classfile/FieldOrMethodRef;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final itsMethodRefHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/mozilla/classfile/FieldOrMethodRef;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private itsPool:[B

.field private final itsPoolTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final itsStringConstHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private itsTop:I

.field private itsTopIndex:I

.field private final itsUtf8Hash:Ljava/util/HashMap;
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
.method public constructor <init>(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsStringConstHash:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsUtf8Hash:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsFieldRefHash:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsMethodRefHash:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantHash:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantData:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 p1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    const/16 p1, 0x100

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    return-void
.end method

.method private addNameAndType(Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/16 v3, 0xc

    aput-byte v3, v0, v1

    invoke-static {p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    invoke-static {p2, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    iget p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short p1, p1

    return p1
.end method

.method private ensure(I)V
    .locals 4

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int v1, v0, p1

    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    array-length v3, v2

    if-le v1, v3, :cond_1

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int v3, v0, p1

    if-le v3, v1, :cond_0

    add-int v1, v0, p1

    :cond_0
    new-array p1, v1, [B

    const/4 v1, 0x0

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    :cond_1
    return-void
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)S
    .locals 6

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v1, :cond_2

    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getSlashedForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_0

    iget-object v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v2, v0

    move v0, v4

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v3, v1, v4

    invoke-static {v0, v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-short p1, v0

    return p1
.end method

.method public addConstant(D)I
    .locals 3

    const/16 v0, 0x9

    .line 18
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 19
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 21
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {p1, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt64(J[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 22
    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p2, p1, 0x2

    .line 23
    iput p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 24
    iget-object p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method

.method public addConstant(F)I
    .locals 3

    const/4 v0, 0x5

    .line 12
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 13
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 15
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 16
    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    return p1
.end method

.method public addConstant(I)I
    .locals 4

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/4 v3, 0x3

    aput-byte v3, v0, v1

    .line 3
    invoke-static {p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4
    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short p1, p1

    return p1
.end method

.method public addConstant(J)I
    .locals 4

    const/16 v0, 0x9

    .line 6
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 7
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/4 v3, 0x5

    aput-byte v3, v0, v1

    .line 8
    invoke-static {p1, p2, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt64(J[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 9
    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p2, p1, 0x2

    .line 10
    iput p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 11
    iget-object p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method

.method public addConstant(Ljava/lang/Object;)I
    .locals 2

    .line 33
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 35
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    move-result p1

    return p1

    .line 36
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 37
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    move-result p1

    return p1

    .line 38
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 39
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(F)I

    move-result p1

    return p1

    .line 40
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 41
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(J)I

    move-result p1

    return p1

    .line 42
    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 43
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(D)I

    move-result p1

    return p1

    .line 44
    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 45
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 46
    :cond_6
    instance-of v0, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    if-eqz v0, :cond_7

    .line 47
    check-cast p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addMethodHandle(Lorg/mozilla/classfile/ClassFileWriter$MHandle;)S

    move-result p1

    return p1

    .line 48
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "value "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_8
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    move-result p1

    return p1
.end method

.method public addConstant(Ljava/lang/String;)I
    .locals 5

    const v0, 0xffff

    .line 25
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    and-int/2addr p1, v0

    .line 26
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsStringConstHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v2, :cond_0

    .line 27
    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    const/4 v2, 0x3

    .line 28
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 29
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v1, v2, v3

    .line 30
    invoke-static {p1, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v2

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 31
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsStringConstHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public addFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    new-instance v0, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/FieldOrMethodRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsFieldRefHash:Ljava/util/HashMap;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p2, p3}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result p2

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    const/4 p3, 0x5

    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v3, p3, v1

    invoke-static {p1, p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    invoke-static {p2, p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p1, v1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsFieldRefHash:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-short p1, v1

    return p1
.end method

.method public addInterfaceMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 6

    invoke-direct {p0, p2, p3}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v1

    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/16 v5, 0xb

    aput-byte v5, v2, v3

    invoke-static {v1, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v1

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    invoke-static {v0, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    new-instance v0, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/FieldOrMethodRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    iget p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short p1, p1

    return p1
.end method

.method public addInvokeDynamic(Ljava/lang/String;Ljava/lang/String;I)S
    .locals 5

    new-instance v0, Lorg/mozilla/classfile/ConstantEntry;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p3, p1, p2}, Lorg/mozilla/classfile/ConstantEntry;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantHash:Ljava/util/HashMap;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result p1

    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v1, v2, v3

    invoke-static {p3, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p3

    iput p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    invoke-static {p1, v2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, p2}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    int-to-short p1, v2

    return p1
.end method

.method public addMethodHandle(Lorg/mozilla/classfile/ClassFileWriter$MHandle;)S
    .locals 6

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantHash:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-byte v0, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget-object v0, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lorg/mozilla/classfile/ConstantPool;->addFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lorg/mozilla/classfile/ConstantPool;->addInterfaceMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lorg/mozilla/classfile/ConstantPool;->addMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    :goto_0
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    const/16 v4, 0xf

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-byte v5, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    aput-byte v5, v1, v3

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    int-to-short p1, v0

    return p1
.end method

.method public addMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 4

    new-instance v0, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/FieldOrMethodRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsMethodRefHash:Ljava/util/HashMap;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p2, p3}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result p2

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    const/4 p3, 0x5

    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget-object p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v3, p3, v1

    invoke-static {p1, p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object p3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    invoke-static {p2, p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 p1, v1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsMethodRefHash:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-short p1, v1

    return p1
.end method

.method public addUtf8(Ljava/lang/String;)S
    .locals 13

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsUtf8Hash:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const v3, 0xffff

    if-le v1, v3, :cond_0

    :goto_0
    move v6, v2

    goto/16 :goto_3

    :cond_0
    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x3

    invoke-direct {p0, v4}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget-object v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    aput-byte v2, v5, v4

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lorg/mozilla/classfile/ConstantPool;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->getCharBuffer(I)[C

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v1, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    move v7, v6

    :goto_1
    if-eq v7, v1, :cond_3

    aget-char v8, v5, v7

    if-eqz v8, :cond_1

    const/16 v9, 0x7f

    if-gt v8, v9, :cond_1

    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v10, v4, 0x1

    int-to-byte v8, v8

    aput-byte v8, v9, v4

    move v4, v10

    goto :goto_2

    :cond_1
    const/16 v9, 0x7ff

    if-le v8, v9, :cond_2

    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v11, v8, 0xc

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    aput-byte v11, v9, v4

    add-int/lit8 v11, v4, 0x2

    shr-int/lit8 v12, v8, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v9, v10

    add-int/lit8 v4, v4, 0x3

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v9, v11

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v11, v8, 0x6

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    aput-byte v11, v9, v4

    add-int/lit8 v4, v4, 0x2

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v9, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v5, v1, 0x3

    sub-int v5, v4, v5

    if-le v5, v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    add-int/lit8 v1, v1, 0x2

    int-to-byte v3, v5

    aput-byte v3, v0, v1

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsUtf8Hash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Too big string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_4
    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-short p1, v0

    return p1
.end method

.method public getConstantData(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getConstantType(I)B
    .locals 2

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1
.end method

.method public getUtfEncodingLimit(Ljava/lang/String;II)I
    .locals 3

    sub-int v0, p3, p2

    mul-int/lit8 v0, v0, 0x3

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-eq p2, p3, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x7ff

    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x3

    :goto_1
    if-gez v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return p3
.end method

.method public getWriteSize()I
    .locals 1

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isUnderUtfEncodingLimit(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    const v3, 0xffff

    if-gt v1, v3, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    if-le v0, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/classfile/ConstantPool;->getUtfEncodingLimit(Ljava/lang/String;II)I

    move-result p1

    if-ne v0, p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public setConstantData(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write([BI)I
    .locals 3

    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short v0, v0

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/2addr p2, p1

    return p2
.end method
