.class public Lorg/mozilla/classfile/ClassFileWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;,
        Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;,
        Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;,
        Lorg/mozilla/classfile/ClassFileWriter$MHandle;
    }
.end annotation


# static fields
.field public static final ACC_ABSTRACT:S = 0x400s

.field public static final ACC_FINAL:S = 0x10s

.field public static final ACC_NATIVE:S = 0x100s

.field public static final ACC_PRIVATE:S = 0x2s

.field public static final ACC_PROTECTED:S = 0x4s

.field public static final ACC_PUBLIC:S = 0x1s

.field public static final ACC_STATIC:S = 0x8s

.field public static final ACC_SUPER:S = 0x20s

.field public static final ACC_SYNCHRONIZED:S = 0x20s

.field public static final ACC_TRANSIENT:S = 0x80s

.field public static final ACC_VOLATILE:S = 0x40s

.field private static final DEBUGCODE:Z = false

.field private static final DEBUGLABELS:Z = false

.field private static final DEBUGSTACK:Z = false

.field private static final ExceptionTableSize:I = 0x4

.field private static final FileHeaderConstant:I = -0x35014542

.field private static final GenerateStackMap:Z

.field private static final LineNumberTableSize:I = 0x10

.field private static final MIN_FIXUP_TABLE_SIZE:I = 0x28

.field private static final MIN_LABEL_TABLE_SIZE:I = 0x20

.field private static final MajorVersion:I

.field private static final MinorVersion:I

.field private static final SuperBlockStartsSize:I = 0x4


# instance fields
.field private generatedClassName:Ljava/lang/String;

.field private itsBootstrapMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;",
            ">;"
        }
    .end annotation
.end field

.field private itsBootstrapMethodsLength:I

.field private itsCodeBuffer:[B

.field private itsCodeBufferTop:I

.field private itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

.field private itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

.field private itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

.field private itsExceptionTableTop:I

.field private itsFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/classfile/ClassFileField;",
            ">;"
        }
    .end annotation
.end field

.field private itsFixupTable:[J

.field private itsFixupTableTop:I

.field private itsFlags:I

.field private itsInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private itsJumpFroms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private itsLabelTable:[I

.field private itsLabelTableTop:I

.field private itsLineNumberTable:[I

.field private itsLineNumberTableTop:I

.field private itsMaxLocals:I

.field private itsMaxStack:I

.field private itsMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/classfile/ClassFileMethod;",
            ">;"
        }
    .end annotation
.end field

.field private itsSourceFileNameIndex:I

.field private itsStackTop:I

.field private itsSuperBlockStarts:[I

.field private itsSuperBlockStartsTop:I

.field private itsSuperClassIndex:I

.field private itsThisClassIndex:I

.field private itsVarDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private tmpCharBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x1

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/16 v3, 0x30

    :try_start_0
    invoke-static {}, Lorg/mozilla/classfile/ClassFileWriter;->readClassFile()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v4, :cond_2

    const/16 v5, 0x8

    :try_start_1
    new-array v6, v5, [B

    move v7, v2

    :goto_0
    if-ge v7, v5, :cond_1

    rsub-int/lit8 v8, v7, 0x8

    invoke-virtual {v4, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_0

    add-int/2addr v7, v8

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    :catchall_0
    move-exception v5

    move v7, v2

    goto :goto_4

    :cond_1
    const/4 v7, 0x4

    aget-byte v7, v6, v7

    shl-int/2addr v7, v5

    const/4 v8, 0x5

    aget-byte v8, v6, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    const/4 v8, 0x6

    :try_start_2
    aget-byte v8, v6, v8

    shl-int/lit8 v5, v8, 0x8

    const/4 v8, 0x7

    aget-byte v3, v6, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v5

    goto :goto_1

    :catchall_1
    move-exception v5

    goto :goto_4

    :cond_2
    :try_start_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Warning: Unable to read ClassFileWriter.class, using default bytecode version"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v7, v2

    :goto_1
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    goto :goto_6

    :cond_3
    :goto_2
    sput v7, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    sput v3, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    if-lt v3, v1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    sput-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    return-void

    :goto_4
    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v4

    :try_start_6
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_4
    move-exception v4

    move v7, v2

    goto :goto_6

    :catch_0
    move v7, v2

    :catch_1
    :try_start_7
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Can\'t read ClassFileWriter.class to get bytecode version"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_6
    sput v7, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    sput v3, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    if-lt v3, v1, :cond_6

    goto :goto_7

    :cond_6
    move v0, v2

    :goto_7
    sput-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    throw v4
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Ljava/util/ArrayList;

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->generatedClassName:Ljava/lang/String;

    new-instance v0, Lorg/mozilla/classfile/ConstantPool;

    invoke-direct {v0, p0}, Lorg/mozilla/classfile/ConstantPool;-><init>(Lorg/mozilla/classfile/ClassFileWriter;)V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:I

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperClassIndex:I

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:I

    :cond_0
    const/16 p1, 0x21

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFlags:I

    return-void
.end method

.method public static bridge synthetic a(Lorg/mozilla/classfile/ClassFileWriter;)[B
    .locals 0

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    return-object p0
.end method

.method private addLabelFixup(II)V
    .locals 4

    if-gez p1, :cond_4

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ne v0, v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/16 v1, 0x28

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    goto :goto_0

    :cond_1
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    :cond_2
    :goto_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    int-to-long p1, p2

    or-long/2addr p1, v2

    aput-wide p1, v1, v0

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad label"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad label, no biscuit"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addReservedCodeSpace(I)I
    .locals 4

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/2addr p1, v0

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    array-length v2, v1

    if-le p1, v2, :cond_1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_0

    move v2, p1

    :cond_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    :cond_1
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    return v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No method to add to"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addSuperBlockStart(I)V
    .locals 4

    sget-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    goto :goto_0

    :cond_0
    array-length v1, v0

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    if-ne v1, v2, :cond_1

    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    aput p1, v0, v1

    :cond_2
    return-void
.end method

.method private addToCodeBuffer(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void
.end method

.method private addToCodeInt16(I)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {p1, v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    return-void
.end method

.method private static arrayTypeToName(I)C
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad operand"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x4a

    return p0

    :pswitch_1
    const/16 p0, 0x49

    return p0

    :pswitch_2
    const/16 p0, 0x53

    return p0

    :pswitch_3
    const/16 p0, 0x42

    return p0

    :pswitch_4
    const/16 p0, 0x44

    return p0

    :pswitch_5
    const/16 p0, 0x46

    return p0

    :pswitch_6
    const/16 p0, 0x43

    return p0

    :pswitch_7
    const/16 p0, 0x5a

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
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

.method public static bridge synthetic b(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    return p0
.end method

.method private static badStack(I)V
    .locals 1

    if-gez p0, :cond_0

    const-string v0, "Stack underflow: "

    invoke-static {p0, v0}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "Too big stack: "

    invoke-static {p0, v0}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static bytecodeStr(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    return-object p0
.end method

.method private static classDescriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static classNameToSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x2

    new-array v3, v2, [C

    const/16 v4, 0x4c

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/16 v4, 0x3b

    aput-char v4, v3, v1

    const/4 v4, 0x1

    invoke-virtual {p0, v5, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    :goto_0
    if-eq v4, v1, :cond_1

    aget-char p0, v3, v4

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    const/16 p0, 0x2f

    aput-char p0, v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v5, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method private createInitialLocals()[I
    .locals 10

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:I

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileMethod;->getFlags()S

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileMethod;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "<init>"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    aput v1, v0, v3

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:I

    invoke-static {v1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v4}, Lorg/mozilla/classfile/ClassFileMethod;->getType()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x29

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-nez v5, :cond_7

    if-ltz v6, :cond_7

    add-int/2addr v5, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-ge v5, v6, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x46

    if-eq v8, v9, :cond_4

    const/16 v9, 0x4c

    if-eq v8, v9, :cond_3

    const/16 v9, 0x53

    if-eq v8, v9, :cond_4

    const/16 v9, 0x49

    if-eq v8, v9, :cond_4

    const/16 v9, 0x4a

    if-eq v8, v9, :cond_4

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_4

    const/16 v9, 0x5b

    if-eq v8, v9, :cond_2

    packed-switch v8, :pswitch_data_0

    goto :goto_3

    :cond_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/16 v8, 0x3b

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v8

    goto :goto_3

    :cond_4
    :pswitch_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-static {v8, v9}, Lorg/mozilla/classfile/TypeInfo;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result v8

    add-int/lit8 v9, v1, 0x1

    aput v8, v0, v1

    invoke-static {v8}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_5
    move v1, v9

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad method type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static bridge synthetic d(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    return-object p0
.end method

.method private static descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x53

    if-eq v0, v1, :cond_1

    const/16 v1, 0x56

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->classDescriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :pswitch_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static bridge synthetic e(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    return p0
.end method

.method public static bridge synthetic f(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:I

    return p0
.end method

.method private finalizeSuperBlockStarts()V
    .locals 6

    sget-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    aget-object v2, v2, v1

    iget v2, v2, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->sort([III)V

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    aget v0, v1, v0

    const/4 v1, 0x1

    move v2, v1

    move v3, v2

    :goto_1
    iget v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    aget v5, v4, v2

    if-eq v0, v5, :cond_2

    if-eq v3, v2, :cond_1

    aput v5, v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    add-int/lit8 v2, v3, -0x1

    aget v0, v0, v2

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    if-ne v0, v2, :cond_4

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    :cond_4
    return-void
.end method

.method private fixLabelGotos()V
    .locals 9

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    aget-wide v4, v3, v2

    const/16 v3, 0x20

    shr-long v6, v4, v3

    long-to-int v3, v6

    long-to-int v4, v4

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    aget v3, v5, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    invoke-direct {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v7, v4, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-int/2addr v3, v7

    int-to-short v5, v3

    if-ne v5, v3, :cond_0

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string v1, "Program too complex: too big jump offset"

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unlocated label"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    return-void
.end method

.method public static bridge synthetic g(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    return p0
.end method

.method public static getSlashedForm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWriteSize()I
    .locals 4

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v1, "SourceFile"

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ConstantPool;->getWriteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/classfile/ClassFileField;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileField;->getWriteSize()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    :goto_1
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileMethod;->getWriteSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x2

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:I

    if-eqz v2, :cond_3

    add-int/lit8 v0, v1, 0xa

    :cond_3
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public static bridge synthetic h(Lorg/mozilla/classfile/ClassFileWriter;)[I
    .locals 0

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    return-object p0
.end method

.method public static bridge synthetic i(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    return p0
.end method

.method public static bridge synthetic j(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:I

    return p0
.end method

.method public static bridge synthetic k(Lorg/mozilla/classfile/ClassFileWriter;I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    return-void
.end method

.method public static bridge synthetic l(Lorg/mozilla/classfile/ClassFileWriter;)[I
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->createInitialLocals()[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(I)C
    .locals 0

    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->arrayTypeToName(I)C

    move-result p0

    return p0
.end method

.method public static bridge synthetic n(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(IZ)I
    .locals 0

    invoke-static {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->opcodeLength(IZ)I

    move-result p0

    return p0
.end method

.method private static opcodeCount(I)I
    .locals 2

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad opcode: "

    invoke-static {p0, v1}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, -0x1

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbb
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static opcodeLength(IZ)I
    .locals 3

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_2

    const/16 v0, 0xff

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad opcode: "

    invoke-static {p0, v0}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    return v1

    :pswitch_2
    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :pswitch_3
    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v0

    :pswitch_4
    return v2

    :pswitch_5
    return v0

    :cond_2
    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xac
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public static bridge synthetic p(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static putInt16(I[BI)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    add-int/lit8 p2, p2, 0x2

    return p2
.end method

.method public static putInt32(I[BI)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    add-int/lit8 p2, p2, 0x4

    return p2
.end method

.method public static putInt64(J[BI)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p3

    long-to-int p0, p0

    invoke-static {p0, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p0

    return p0
.end method

.method public static readClassFile()Ljava/io/InputStream;
    .locals 2

    const-class v0, Lorg/mozilla/classfile/ClassFileWriter;

    const-string v1, "ClassFileWriter.class"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "org/mozilla/classfile/ClassFileWriter.class"

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static sizeOfParameters(Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x3

    if-gt v3, v1, :cond_c

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_c

    const/4 v4, 0x1

    if-gt v4, v2, :cond_c

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_c

    move v6, v3

    move v7, v6

    move v1, v4

    :goto_0
    const/16 v8, 0x5b

    const/16 v9, 0x5a

    const/16 v10, 0x4a

    const/16 v11, 0x49

    const/16 v12, 0x53

    const/16 v13, 0x4c

    const/16 v14, 0x46

    if-eq v1, v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v14, :cond_7

    if-eq v15, v13, :cond_4

    if-eq v15, v12, :cond_7

    if-eq v15, v11, :cond_7

    if-eq v15, v10, :cond_3

    if-eq v15, v9, :cond_7

    if-eq v15, v8, :cond_0

    packed-switch v15, :pswitch_data_0

    goto :goto_5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    :goto_1
    if-ne v15, v8, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_1

    :cond_1
    if-eq v15, v14, :cond_2

    if-eq v15, v13, :cond_4

    if-eq v15, v12, :cond_2

    if-eq v15, v9, :cond_2

    if-eq v15, v11, :cond_2

    if-eq v15, v10, :cond_2

    packed-switch v15, :pswitch_data_1

    goto :goto_5

    :cond_2
    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :pswitch_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v15, v1, 0x1

    const/16 v3, 0x3b

    invoke-virtual {v0, v3, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x2

    if-gt v1, v3, :cond_6

    if-lt v3, v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v3, 0x1

    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    :goto_3
    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    :pswitch_2
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v3, v4

    :goto_5
    if-eqz v3, :cond_c

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_a

    if-eq v1, v13, :cond_a

    if-eq v1, v12, :cond_a

    const/16 v2, 0x56

    if-eq v1, v2, :cond_b

    if-eq v1, v11, :cond_a

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_a

    if-eq v1, v8, :cond_a

    packed-switch v1, :pswitch_data_2

    const/4 v3, 0x0

    goto :goto_6

    :cond_9
    :pswitch_3
    add-int/lit8 v6, v6, 0x1

    :cond_a
    :pswitch_4
    add-int/2addr v6, v4

    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    shl-int/lit8 v0, v7, 0x10

    const v1, 0xffff

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    return v0

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad parameter signature: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static stackChange(I)I
    .locals 2

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad opcode: "

    invoke-static {p0, v1}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, -0x4

    return p0

    :pswitch_1
    const/4 p0, -0x3

    return p0

    :pswitch_2
    const/4 p0, -0x2

    return p0

    :pswitch_3
    const/4 p0, -0x1

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_6
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private xop(III)V
    .locals 1

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void

    :cond_0
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    :cond_1
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    :cond_2
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void
.end method


# virtual methods
.method public acquireLabel()I
    .locals 4

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ne v0, v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/16 v1, 0x20

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    goto :goto_0

    :cond_1
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    :cond_2
    :goto_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    return v0
.end method

.method public add(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->opcodeCount(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    .line 3
    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    int-to-short v1, v0

    .line 5
    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 6
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-le v0, v2, :cond_2

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    :cond_2
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_3

    .line 7
    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    :cond_3
    return-void

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected operands"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(II)V
    .locals 5

    .line 9
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    .line 10
    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    const/16 v1, 0xb4

    const/high16 v2, 0x10000

    if-eq p1, v1, :cond_11

    const/16 v1, 0xb5

    if-eq p1, v1, :cond_11

    const/16 v1, 0xbc

    .line 11
    const-string v3, "out of range index"

    const/16 v4, 0x100

    if-eq p1, v1, :cond_f

    const/16 v1, 0xc6

    if-eq p1, v1, :cond_a

    const/16 v1, 0xc7

    if-eq p1, v1, :cond_a

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected opcode for 1 operand"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :pswitch_0
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    goto/16 :goto_2

    :pswitch_1
    if-ltz p2, :cond_3

    if-le v2, p2, :cond_3

    if-lt p2, v4, :cond_2

    const/16 v1, 0xc4

    .line 14
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 15
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 16
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto/16 :goto_4

    .line 17
    :cond_2
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 18
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto/16 :goto_4

    .line 19
    :cond_3
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string p2, "out of range variable"

    invoke-direct {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    if-ltz p2, :cond_7

    if-ge p2, v2, :cond_7

    const/16 v1, 0x13

    if-ge p2, v4, :cond_5

    if-eq p1, v1, :cond_5

    const/16 v2, 0x14

    if-ne p1, v2, :cond_4

    goto :goto_0

    .line 20
    :cond_4
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 21
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto/16 :goto_4

    :cond_5
    :goto_0
    const/16 v2, 0x12

    if-ne p1, v2, :cond_6

    .line 22
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_1

    .line 23
    :cond_6
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 24
    :goto_1
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto/16 :goto_4

    .line 25
    :cond_7
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    invoke-direct {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    int-to-short v1, p2

    if-ne v1, p2, :cond_8

    .line 26
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 27
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto/16 :goto_4

    .line 28
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range short"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    int-to-byte v1, p2

    if-ne v1, p2, :cond_9

    .line 29
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 30
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto/16 :goto_4

    .line 31
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range byte"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    :pswitch_5
    const/high16 v1, -0x80000000

    and-int v2, p2, v1

    if-eq v2, v1, :cond_c

    if-ltz p2, :cond_b

    const v3, 0xffff

    if-gt p2, v3, :cond_b

    goto :goto_3

    .line 32
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad label for branch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_c
    :goto_3
    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 34
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    if-eq v2, v1, :cond_d

    .line 35
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    add-int/2addr p2, v3

    .line 36
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 37
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 38
    :cond_d
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_e

    sub-int p2, p1, v3

    .line 39
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 40
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 41
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 42
    invoke-direct {p0, p2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addLabelFixup(II)V

    const/4 p1, 0x0

    .line 43
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto :goto_4

    :cond_f
    if-ltz p2, :cond_10

    if-ge p2, v4, :cond_10

    .line 44
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 45
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_4

    .line 46
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    if-ltz p2, :cond_13

    if-ge p2, v2, :cond_13

    .line 47
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 48
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    :goto_4
    int-to-short p1, v0

    .line 49
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 50
    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-le v0, p2, :cond_12

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    :cond_12
    return-void

    .line 51
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x99
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public add(III)V
    .locals 3

    .line 52
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    .line 53
    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    const/high16 v1, 0x10000

    const/16 v2, 0x84

    if-ne p1, v2, :cond_6

    if-ltz p2, :cond_5

    if-le v1, p2, :cond_5

    if-ltz p3, :cond_4

    if-le v1, p3, :cond_4

    const/16 p1, 0xff

    if-gt p2, p1, :cond_3

    const/16 p1, 0x7f

    if-le p3, p1, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 55
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 56
    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p1, 0xc4

    .line 57
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 58
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 59
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 60
    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto :goto_1

    .line 61
    :cond_4
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string p2, "out of range increment"

    invoke-direct {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_5
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string p2, "out of range variable"

    invoke-direct {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/16 v2, 0xc5

    if-ne p1, v2, :cond_a

    if-ltz p2, :cond_9

    if-ge p2, v1, :cond_9

    if-ltz p3, :cond_8

    const/16 p1, 0x100

    if-ge p3, p1, :cond_8

    .line 63
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 64
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 65
    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    :goto_1
    int-to-short p1, v0

    .line 66
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 67
    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-le v0, p2, :cond_7

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    :cond_7
    return-void

    .line 68
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range dimensions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected opcode for 2 operands"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(ILjava/lang/String;)V
    .locals 2

    .line 71
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    .line 72
    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    const/16 v1, 0xbb

    if-eq p1, v1, :cond_3

    const/16 v1, 0xbd

    if-eq p1, v1, :cond_3

    const/16 v1, 0xc0

    if-eq p1, v1, :cond_3

    const/16 v1, 0xc1

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad opcode for class reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p2

    .line 75
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 76
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    int-to-short p1, v0

    .line 77
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 78
    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-le v0, p2, :cond_4

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    :cond_4
    return-void
.end method

.method public add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 79
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad opcode for field reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sub-int/2addr v0, v1

    goto :goto_2

    :pswitch_1
    add-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_2

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_3

    .line 82
    :cond_2
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 83
    :cond_3
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p2, p3, p4}, Lorg/mozilla/classfile/ConstantPool;->addFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p2

    .line 84
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 85
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    int-to-short p1, v0

    .line 86
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 87
    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-le v0, p2, :cond_4

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addALoad(I)V
    .locals 2

    const/16 v0, 0x2a

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addAStore(I)V
    .locals 2

    const/16 v0, 0x4b

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addDLoad(I)V
    .locals 2

    const/16 v0, 0x26

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addDStore(I)V
    .locals 2

    const/16 v0, 0x47

    const/16 v1, 0x39

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addExceptionHandler(IIILjava/lang/String;)V
    .locals 2

    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    if-ne v1, v0, :cond_5

    and-int v1, p2, v0

    if-ne v1, v0, :cond_4

    and-int v1, p3, v0

    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p4}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p4

    :goto_0
    new-instance v1, Lorg/mozilla/classfile/ExceptionTableEntry;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/mozilla/classfile/ExceptionTableEntry;-><init>(IIIS)V

    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-nez p1, :cond_1

    const/4 p2, 0x4

    new-array p2, p2, [Lorg/mozilla/classfile/ExceptionTableEntry;

    iput-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    array-length p3, p2

    if-ne p1, p3, :cond_2

    mul-int/lit8 p3, p1, 0x2

    new-array p3, p3, [Lorg/mozilla/classfile/ExceptionTableEntry;

    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    :cond_2
    :goto_1
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad handlerLabel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad endLabel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad startLabel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addFLoad(I)V
    .locals 2

    const/16 v0, 0x22

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addFStore(I)V
    .locals 2

    const/16 v0, 0x43

    const/16 v1, 0x38

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p2

    .line 3
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    new-instance v1, Lorg/mozilla/classfile/ClassFileField;

    invoke-direct {v1, p1, p2, p3}, Lorg/mozilla/classfile/ClassFileField;-><init>(SSS)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;SD)V
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    .line 21
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p2

    .line 22
    new-instance v0, Lorg/mozilla/classfile/ClassFileField;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/ClassFileField;-><init>(SSS)V

    .line 23
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string p2, "ConstantValue"

    .line 24
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 25
    invoke-virtual {p2, p4, p5}, Lorg/mozilla/classfile/ConstantPool;->addConstant(D)I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x2

    .line 26
    invoke-virtual {v0, p1, p3, p4, p2}, Lorg/mozilla/classfile/ClassFileField;->setAttributes(SSSI)V

    .line 27
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;SI)V
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    .line 5
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p2

    .line 6
    new-instance v0, Lorg/mozilla/classfile/ClassFileField;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/ClassFileField;-><init>(SSS)V

    .line 7
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string p2, "ConstantValue"

    .line 8
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 9
    invoke-virtual {p2, p4}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    move-result p2

    const/4 p3, 0x0

    .line 10
    invoke-virtual {v0, p1, p3, p3, p2}, Lorg/mozilla/classfile/ClassFileField;->setAttributes(SSSI)V

    .line 11
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;SJ)V
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    .line 13
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p2

    .line 14
    new-instance v0, Lorg/mozilla/classfile/ClassFileField;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/ClassFileField;-><init>(SSS)V

    .line 15
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string p2, "ConstantValue"

    .line 16
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 17
    invoke-virtual {p2, p4, p5}, Lorg/mozilla/classfile/ConstantPool;->addConstant(J)I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x2

    .line 18
    invoke-virtual {v0, p1, p3, p4, p2}, Lorg/mozilla/classfile/ClassFileField;->setAttributes(SSSI)V

    .line 19
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addILoad(I)V
    .locals 2

    const/16 v0, 0x1a

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addIStore(I)V
    .locals 2

    const/16 v0, 0x3b

    const/16 v1, 0x36

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addInterface(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p4}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x10

    int-to-short v0, v0

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    add-int/2addr v2, v0

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v0

    add-int/2addr v2, v0

    if-ltz v2, :cond_0

    const/16 v0, 0x7fff

    if-ge v0, v2, :cond_1

    :cond_0
    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad opcode for method reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p1, p2, p3, p4}, Lorg/mozilla/classfile/ConstantPool;->addInterfaceMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p1, p2, p3, p4}, Lorg/mozilla/classfile/ConstantPool;->addMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    :goto_0
    int-to-short p1, v2

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-le v2, p2, :cond_3

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public varargs addInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/classfile/ClassFileWriter$MHandle;[Ljava/lang/Object;)V
    .locals 2

    sget v0, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    const/16 v1, 0x33

    if-lt v0, v1, :cond_5

    invoke-static {p2}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    add-int/2addr v1, v0

    if-ltz v1, :cond_0

    const/16 v0, 0x7fff

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    new-instance v0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;

    invoke-direct {v0, p0, p3, p4}, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;-><init>(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/classfile/ClassFileWriter$MHandle;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    if-nez p3, :cond_2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    :cond_2
    iget-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_3

    iget-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget-object p4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    array-length v0, v0

    add-int/2addr p4, v0

    iput p4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    :cond_3
    iget-object p4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {p4, p1, p2, p3}, Lorg/mozilla/classfile/ConstantPool;->addInvokeDynamic(Ljava/lang/String;Ljava/lang/String;I)S

    move-result p1

    const/16 p2, 0xba

    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    int-to-short p1, v1

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-le v1, p2, :cond_4

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please build and run with JDK 1.7 for invokedynamic support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLLoad(I)V
    .locals 2

    const/16 v0, 0x1e

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addLStore(I)V
    .locals 2

    const/16 v0, 0x3f

    const/16 v1, 0x37

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    return-void
.end method

.method public addLineNumberEntry(S)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    const/16 v1, 0x10

    if-nez v0, :cond_0

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    array-length v3, v2

    if-ne v0, v3, :cond_1

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    shl-int/lit8 v1, v3, 0x10

    add-int/2addr v1, p1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No method to stop"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLoadConstant(D)V
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addConstant(D)I

    move-result p1

    const/16 p2, 0x14

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public addLoadConstant(F)V
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(F)I

    move-result p1

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public addLoadConstant(I)V
    .locals 4

    const/4 v0, 0x3

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    const/4 v3, 0x5

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_0

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    move-result p1

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    :cond_1
    const/4 p1, 0x7

    .line 3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    :cond_2
    const/4 p1, 0x6

    .line 4
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    .line 5
    :cond_3
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    .line 6
    :cond_4
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    .line 7
    :cond_5
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void
.end method

.method public addLoadConstant(J)V
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addConstant(J)I

    move-result p1

    const/16 p2, 0x14

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public addLoadConstant(Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void
.end method

.method public addLoadThis()V
    .locals 1

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void
.end method

.method public addPush(D)V
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    const/16 v3, 0x77

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_0

    const/16 v2, 0xe

    .line 10
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    div-double/2addr v4, p1

    cmpg-double p1, v4, v0

    if-gez p1, :cond_3

    .line 11
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    :cond_0
    cmpl-double v2, p1, v4

    if-eqz v2, :cond_2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v2, p1, v4

    if-nez v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(D)V

    return-void

    :cond_2
    :goto_0
    const/16 v2, 0xf

    .line 13
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    cmpg-double p1, p1, v0

    if-gez p1, :cond_3

    .line 14
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_3
    return-void
.end method

.method public addPush(I)V
    .locals 2

    int-to-byte v0, p1

    if-ne v0, p1, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v1, 0x5

    if-gt p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x3

    int-to-byte p1, p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    :cond_1
    const/16 p1, 0x10

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void

    :cond_2
    int-to-short v0, p1

    if-ne v0, p1, :cond_3

    const/16 p1, 0x11

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void

    .line 5
    :cond_3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    return-void
.end method

.method public addPush(J)V
    .locals 3

    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 p1, 0x85

    .line 8
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(J)V

    return-void
.end method

.method public addPush(Ljava/lang/String;)V
    .locals 9

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 16
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/mozilla/classfile/ConstantPool;->getUtfEncodingLimit(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v3, 0xbb

    .line 18
    const-string v4, "java/lang/StringBuilder"

    invoke-virtual {p0, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/16 v3, 0x59

    .line 19
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 20
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 21
    const-string v5, "<init>"

    const-string v6, "(I)V"

    const/16 v7, 0xb7

    invoke-virtual {p0, v7, v4, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_0
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 23
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(Ljava/lang/String;)V

    .line 25
    const-string v2, "append"

    const-string v5, "(Ljava/lang/String;)Ljava/lang/StringBuilder;"

    const/16 v6, 0xb6

    invoke-virtual {p0, v6, v4, v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x57

    .line 26
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    if-ne v1, v0, :cond_1

    .line 27
    const-string p1, "toString"

    const-string v0, "()Ljava/lang/String;"

    invoke-virtual {p0, v6, v4, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_1
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v2, p1, v1, v0}, Lorg/mozilla/classfile/ConstantPool;->getUtfEncodingLimit(Ljava/lang/String;II)I

    move-result v2

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_0
.end method

.method public addPush(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void
.end method

.method public addTableSwitch(II)I
    .locals 7

    if-gt p1, p2, :cond_4

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    const/16 v1, 0xaa

    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    sub-int v1, p2, p1

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    not-int v2, v2

    and-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v3

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    move-result v1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    add-int/lit8 v4, v1, 0x1

    const/16 v5, -0x56

    aput-byte v5, v3, v1

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    aput-byte v6, v3, v4

    add-int/lit8 v2, v2, -0x1

    move v4, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x4

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {p1, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p1

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {p2, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    int-to-short p1, v0

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-le v0, p2, :cond_3

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    :cond_3
    return v1

    :cond_4
    new-instance v0, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addVariableDescriptor(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result p2

    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    :cond_0
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustStackTop(I)V
    .locals 2

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    const/16 p1, 0x7fff

    if-ge p1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    :cond_1
    int-to-short p1, v0

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-le v0, v1, :cond_2

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    :cond_2
    return-void
.end method

.method public final getCharBuffer(I)[C
    .locals 2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    array-length v1, v0

    if-le p1, v1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    :cond_1
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    return-object p1
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->generatedClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCodeOffset()I
    .locals 1

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    return v0
.end method

.method public getLabelPC(I)I
    .locals 1

    if-gez p1, :cond_1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label, no biscuit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStackTop()I
    .locals 1

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    return v0
.end method

.method public isUnderStringSizeLimit(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->isUnderUtfEncodingLimit(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public markHandler(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    return-void
.end method

.method public markLabel(I)V
    .locals 3

    if-gez p1, :cond_2

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-gt p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    aput v1, v0, p1

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can only mark label once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label, no biscuit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public markLabel(II)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 8
    iput p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    return-void
.end method

.method public final markTableSwitchCase(II)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    return-void
.end method

.method public final markTableSwitchCase(III)V
    .locals 2

    if-ltz p3, :cond_0

    .line 4
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-gt p3, v0, :cond_0

    int-to-short p3, p3

    .line 5
    iput p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 6
    iget p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 7
    iget-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad stack index: "

    .line 10
    invoke-static {p3, p2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final markTableSwitchDefault(I)V
    .locals 3

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    return-void
.end method

.method public setFlags(S)V
    .locals 0

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFlags:I

    return-void
.end method

.method public setStackTop(S)V
    .locals 0

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    return-void
.end method

.method public setTableSwitchJump(III)V
    .locals 5

    if-ltz p3, :cond_5

    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    if-lt v0, p3, :cond_5

    const/4 v1, -0x1

    if-lt p2, v1, :cond_4

    not-int v1, p1

    and-int/lit8 v1, v1, 0x3

    if-gez p2, :cond_0

    add-int/lit8 v2, p1, 0x1

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, 0x1

    add-int/2addr v2, v1

    add-int/lit8 v3, p2, 0x3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    :goto_0
    if-ltz p1, :cond_3

    add-int/lit8 v3, v0, -0x10

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    if-lt v3, p1, :cond_3

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    aget-byte v3, v1, p1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xaa

    if-ne v3, v4, :cond_2

    if-ltz v2, :cond_1

    add-int/lit8 v3, v2, 0x4

    if-lt v0, v3, :cond_1

    sub-int/2addr p3, p1

    invoke-static {p3, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    return-void

    :cond_1
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string p3, "Too big case index: "

    invoke-static {p2, p3}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not offset of tableswitch statement"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is outside a possible range of tableswitch in already generated code"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Bad case index: "

    invoke-static {p2, p3}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad jump target: "

    invoke-static {p3, p2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startMethod(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 7

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v5

    new-instance v1, Lorg/mozilla/classfile/ClassFileMethod;

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/classfile/ClassFileMethod;-><init>(Ljava/lang/String;SLjava/lang/String;SS)V

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    return-void
.end method

.method public stopMethod(I)V
    .locals 14

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->fixLabelGotos()V

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:I

    sget-boolean p1, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->finalizeSuperBlockStarts()V

    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;

    invoke-direct {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;-><init>(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->generate()V

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x8

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->computeWriteSize()I

    move-result v4

    if-lez v4, :cond_3

    add-int/lit8 v4, v4, 0x6

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    iget v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/lit8 v5, v5, 0x10

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    mul-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v5

    const/4 v5, 0x2

    add-int/2addr v6, v5

    add-int/2addr v6, v1

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    const/high16 v1, 0x10000

    if-gt v6, v1, :cond_f

    new-array v1, v6, [B

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v7, "Code"

    invoke-virtual {v3, v7}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    invoke-static {v3, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    add-int/lit8 v6, v6, -0x6

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:I

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    iget v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/2addr v3, v6

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-lez v6, :cond_7

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    move v6, v2

    :goto_4
    iget v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-ge v6, v7, :cond_8

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    aget-object v7, v7, v6

    iget v8, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    invoke-virtual {p0, v8}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v8

    iget v9, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    invoke-virtual {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v9

    iget v10, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    invoke-virtual {p0, v10}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v10

    iget-short v7, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsCatchType:S

    const/4 v11, -0x1

    if-eq v8, v11, :cond_6

    if-eq v9, v11, :cond_5

    if-eq v10, v11, :cond_4

    invoke-static {v8, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v9, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v10, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v7, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handler label not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "end label not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "start label not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {v2, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    :cond_8
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    move v6, v7

    goto :goto_5

    :cond_9
    move v6, v2

    :goto_5
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    if-eqz v8, :cond_a

    add-int/lit8 v6, v6, 0x1

    :cond_a
    if-lez v4, :cond_b

    add-int/lit8 v6, v6, 0x1

    :cond_b
    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    if-eqz v6, :cond_c

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v8, "LineNumberTable"

    invoke-virtual {v6, v8}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v6

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v5

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    move v6, v2

    :goto_6
    iget v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    if-ge v6, v8, :cond_c

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    aget v8, v8, v6

    invoke-static {v8, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v8, "LocalVariableTable"

    invoke-virtual {v6, v8}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v6

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v8, v6, 0xa

    add-int/2addr v8, v5

    invoke-static {v8, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v3

    invoke-static {v6, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    move v8, v2

    :goto_7
    if-ge v8, v6, :cond_d

    iget-object v9, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v10, v9, v2

    aget v11, v9, v7

    aget v12, v9, v5

    const/4 v13, 0x3

    aget v9, v9, v13

    iget v13, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    sub-int/2addr v13, v12

    invoke-static {v12, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v13, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v10, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v11, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-static {v9, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_d
    if-lez v4, :cond_e

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v5, "StackMapTable"

    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v4

    invoke-static {v4, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->write([BI)I

    :cond_e
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileMethod;->setCodeAttribute([B)V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    return-void

    :cond_f
    new-instance p1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string v0, "generated bytecode for method exceeds 64K limit."

    invoke-direct {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No method to stop"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toByteArray()[B
    .locals 10

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v2, "BootstrapMethods"

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:I

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v4, "SourceFile"

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->getWriteSize()I

    move-result v4

    new-array v5, v4, [B

    const v6, -0x35014542    # -8346975.0f

    invoke-static {v6, v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v6

    sget v7, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    sget v7, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v7, v5, v6}, Lorg/mozilla/classfile/ConstantPool;->write([BI)I

    move-result v6

    iget v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFlags:I

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    iget v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:I

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    iget v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperClassIndex:I

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    move v7, v1

    :goto_2
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    invoke-static {v8, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    move v7, v1

    :goto_3
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mozilla/classfile/ClassFileField;

    invoke-virtual {v8, v5, v6}, Lorg/mozilla/classfile/ClassFileField;->write([BI)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    move v7, v1

    :goto_4
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v8, v5, v6}, Lorg/mozilla/classfile/ClassFileMethod;->write([BI)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v2, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v2

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    const/4 v7, 0x2

    if-eqz v6, :cond_5

    invoke-static {v0, v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    add-int/2addr v2, v7

    invoke-static {v2, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v0

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_5
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;

    iget-object v8, v6, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    array-length v9, v8

    invoke-static {v8, v1, v5, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v6, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    array-length v6, v6

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:I

    if-eqz v0, :cond_6

    invoke-static {v3, v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    invoke-static {v7, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v0

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:I

    invoke-static {v1, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v2

    :cond_6
    if-ne v2, v4, :cond_7

    return-object v5

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
